# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::DirectConnect
  module Stubs

    # Operation Stubber for AcceptDirectConnectGatewayAssociationProposal
    class AcceptDirectConnectGatewayAssociationProposal
      def self.default(visited=[])
        {
          direct_connect_gateway_association: DirectConnectGatewayAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['directConnectGatewayAssociation'] = DirectConnectGatewayAssociation.stub(stub[:direct_connect_gateway_association]) unless stub[:direct_connect_gateway_association].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DirectConnectGatewayAssociation
    class DirectConnectGatewayAssociation
      def self.default(visited=[])
        return nil if visited.include?('DirectConnectGatewayAssociation')
        visited = visited + ['DirectConnectGatewayAssociation']
        {
          direct_connect_gateway_id: 'direct_connect_gateway_id',
          direct_connect_gateway_owner_account: 'direct_connect_gateway_owner_account',
          association_state: 'association_state',
          state_change_error: 'state_change_error',
          associated_gateway: AssociatedGateway.default(visited),
          association_id: 'association_id',
          allowed_prefixes_to_direct_connect_gateway: RouteFilterPrefixList.default(visited),
          virtual_gateway_id: 'virtual_gateway_id',
          virtual_gateway_region: 'virtual_gateway_region',
          virtual_gateway_owner_account: 'virtual_gateway_owner_account',
        }
      end

      def self.stub(stub)
        stub ||= Types::DirectConnectGatewayAssociation.new
        data = {}
        data['directConnectGatewayId'] = stub[:direct_connect_gateway_id] unless stub[:direct_connect_gateway_id].nil?
        data['directConnectGatewayOwnerAccount'] = stub[:direct_connect_gateway_owner_account] unless stub[:direct_connect_gateway_owner_account].nil?
        data['associationState'] = stub[:association_state] unless stub[:association_state].nil?
        data['stateChangeError'] = stub[:state_change_error] unless stub[:state_change_error].nil?
        data['associatedGateway'] = AssociatedGateway.stub(stub[:associated_gateway]) unless stub[:associated_gateway].nil?
        data['associationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['allowedPrefixesToDirectConnectGateway'] = RouteFilterPrefixList.stub(stub[:allowed_prefixes_to_direct_connect_gateway]) unless stub[:allowed_prefixes_to_direct_connect_gateway].nil?
        data['virtualGatewayId'] = stub[:virtual_gateway_id] unless stub[:virtual_gateway_id].nil?
        data['virtualGatewayRegion'] = stub[:virtual_gateway_region] unless stub[:virtual_gateway_region].nil?
        data['virtualGatewayOwnerAccount'] = stub[:virtual_gateway_owner_account] unless stub[:virtual_gateway_owner_account].nil?
        data
      end
    end

    # List Stubber for RouteFilterPrefixList
    class RouteFilterPrefixList
      def self.default(visited=[])
        return nil if visited.include?('RouteFilterPrefixList')
        visited = visited + ['RouteFilterPrefixList']
        [
          RouteFilterPrefix.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RouteFilterPrefix.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RouteFilterPrefix
    class RouteFilterPrefix
      def self.default(visited=[])
        return nil if visited.include?('RouteFilterPrefix')
        visited = visited + ['RouteFilterPrefix']
        {
          cidr: 'cidr',
        }
      end

      def self.stub(stub)
        stub ||= Types::RouteFilterPrefix.new
        data = {}
        data['cidr'] = stub[:cidr] unless stub[:cidr].nil?
        data
      end
    end

    # Structure Stubber for AssociatedGateway
    class AssociatedGateway
      def self.default(visited=[])
        return nil if visited.include?('AssociatedGateway')
        visited = visited + ['AssociatedGateway']
        {
          id: 'id',
          type: 'type',
          owner_account: 'owner_account',
          region: 'region',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssociatedGateway.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data
      end
    end

    # Operation Stubber for AllocateConnectionOnInterconnect
    class AllocateConnectionOnInterconnect
      def self.default(visited=[])
        {
          owner_account: 'owner_account',
          connection_id: 'connection_id',
          connection_name: 'connection_name',
          connection_state: 'connection_state',
          region: 'region',
          location: 'location',
          bandwidth: 'bandwidth',
          vlan: 1,
          partner_name: 'partner_name',
          loa_issue_time: Time.now,
          lag_id: 'lag_id',
          aws_device: 'aws_device',
          jumbo_frame_capable: false,
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          has_logical_redundancy: 'has_logical_redundancy',
          tags: TagList.default(visited),
          provider_name: 'provider_name',
          mac_sec_capable: false,
          port_encryption_status: 'port_encryption_status',
          encryption_mode: 'encryption_mode',
          mac_sec_keys: MacSecKeyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['connectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['connectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['bandwidth'] = stub[:bandwidth] unless stub[:bandwidth].nil?
        data['vlan'] = stub[:vlan] unless stub[:vlan].nil?
        data['partnerName'] = stub[:partner_name] unless stub[:partner_name].nil?
        data['loaIssueTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:loa_issue_time]).to_i unless stub[:loa_issue_time].nil?
        data['lagId'] = stub[:lag_id] unless stub[:lag_id].nil?
        data['awsDevice'] = stub[:aws_device] unless stub[:aws_device].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['hasLogicalRedundancy'] = stub[:has_logical_redundancy] unless stub[:has_logical_redundancy].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['providerName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data['macSecCapable'] = stub[:mac_sec_capable] unless stub[:mac_sec_capable].nil?
        data['portEncryptionStatus'] = stub[:port_encryption_status] unless stub[:port_encryption_status].nil?
        data['encryptionMode'] = stub[:encryption_mode] unless stub[:encryption_mode].nil?
        data['macSecKeys'] = MacSecKeyList.stub(stub[:mac_sec_keys]) unless stub[:mac_sec_keys].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MacSecKeyList
    class MacSecKeyList
      def self.default(visited=[])
        return nil if visited.include?('MacSecKeyList')
        visited = visited + ['MacSecKeyList']
        [
          MacSecKey.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MacSecKey.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MacSecKey
    class MacSecKey
      def self.default(visited=[])
        return nil if visited.include?('MacSecKey')
        visited = visited + ['MacSecKey']
        {
          secret_arn: 'secret_arn',
          ckn: 'ckn',
          state: 'state',
          start_on: 'start_on',
        }
      end

      def self.stub(stub)
        stub ||= Types::MacSecKey.new
        data = {}
        data['secretARN'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data['ckn'] = stub[:ckn] unless stub[:ckn].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['startOn'] = stub[:start_on] unless stub[:start_on].nil?
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
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
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for AllocateHostedConnection
    class AllocateHostedConnection
      def self.default(visited=[])
        {
          owner_account: 'owner_account',
          connection_id: 'connection_id',
          connection_name: 'connection_name',
          connection_state: 'connection_state',
          region: 'region',
          location: 'location',
          bandwidth: 'bandwidth',
          vlan: 1,
          partner_name: 'partner_name',
          loa_issue_time: Time.now,
          lag_id: 'lag_id',
          aws_device: 'aws_device',
          jumbo_frame_capable: false,
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          has_logical_redundancy: 'has_logical_redundancy',
          tags: TagList.default(visited),
          provider_name: 'provider_name',
          mac_sec_capable: false,
          port_encryption_status: 'port_encryption_status',
          encryption_mode: 'encryption_mode',
          mac_sec_keys: MacSecKeyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['connectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['connectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['bandwidth'] = stub[:bandwidth] unless stub[:bandwidth].nil?
        data['vlan'] = stub[:vlan] unless stub[:vlan].nil?
        data['partnerName'] = stub[:partner_name] unless stub[:partner_name].nil?
        data['loaIssueTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:loa_issue_time]).to_i unless stub[:loa_issue_time].nil?
        data['lagId'] = stub[:lag_id] unless stub[:lag_id].nil?
        data['awsDevice'] = stub[:aws_device] unless stub[:aws_device].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['hasLogicalRedundancy'] = stub[:has_logical_redundancy] unless stub[:has_logical_redundancy].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['providerName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data['macSecCapable'] = stub[:mac_sec_capable] unless stub[:mac_sec_capable].nil?
        data['portEncryptionStatus'] = stub[:port_encryption_status] unless stub[:port_encryption_status].nil?
        data['encryptionMode'] = stub[:encryption_mode] unless stub[:encryption_mode].nil?
        data['macSecKeys'] = MacSecKeyList.stub(stub[:mac_sec_keys]) unless stub[:mac_sec_keys].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AllocatePrivateVirtualInterface
    class AllocatePrivateVirtualInterface
      def self.default(visited=[])
        {
          owner_account: 'owner_account',
          virtual_interface_id: 'virtual_interface_id',
          location: 'location',
          connection_id: 'connection_id',
          virtual_interface_type: 'virtual_interface_type',
          virtual_interface_name: 'virtual_interface_name',
          vlan: 1,
          asn: 1,
          amazon_side_asn: 1,
          auth_key: 'auth_key',
          amazon_address: 'amazon_address',
          customer_address: 'customer_address',
          address_family: 'address_family',
          virtual_interface_state: 'virtual_interface_state',
          customer_router_config: 'customer_router_config',
          mtu: 1,
          jumbo_frame_capable: false,
          virtual_gateway_id: 'virtual_gateway_id',
          direct_connect_gateway_id: 'direct_connect_gateway_id',
          route_filter_prefixes: RouteFilterPrefixList.default(visited),
          bgp_peers: BGPPeerList.default(visited),
          region: 'region',
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          tags: TagList.default(visited),
          site_link_enabled: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['virtualInterfaceId'] = stub[:virtual_interface_id] unless stub[:virtual_interface_id].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['virtualInterfaceType'] = stub[:virtual_interface_type] unless stub[:virtual_interface_type].nil?
        data['virtualInterfaceName'] = stub[:virtual_interface_name] unless stub[:virtual_interface_name].nil?
        data['vlan'] = stub[:vlan] unless stub[:vlan].nil?
        data['asn'] = stub[:asn] unless stub[:asn].nil?
        data['amazonSideAsn'] = stub[:amazon_side_asn] unless stub[:amazon_side_asn].nil?
        data['authKey'] = stub[:auth_key] unless stub[:auth_key].nil?
        data['amazonAddress'] = stub[:amazon_address] unless stub[:amazon_address].nil?
        data['customerAddress'] = stub[:customer_address] unless stub[:customer_address].nil?
        data['addressFamily'] = stub[:address_family] unless stub[:address_family].nil?
        data['virtualInterfaceState'] = stub[:virtual_interface_state] unless stub[:virtual_interface_state].nil?
        data['customerRouterConfig'] = stub[:customer_router_config] unless stub[:customer_router_config].nil?
        data['mtu'] = stub[:mtu] unless stub[:mtu].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['virtualGatewayId'] = stub[:virtual_gateway_id] unless stub[:virtual_gateway_id].nil?
        data['directConnectGatewayId'] = stub[:direct_connect_gateway_id] unless stub[:direct_connect_gateway_id].nil?
        data['routeFilterPrefixes'] = RouteFilterPrefixList.stub(stub[:route_filter_prefixes]) unless stub[:route_filter_prefixes].nil?
        data['bgpPeers'] = BGPPeerList.stub(stub[:bgp_peers]) unless stub[:bgp_peers].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['siteLinkEnabled'] = stub[:site_link_enabled] unless stub[:site_link_enabled].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BGPPeerList
    class BGPPeerList
      def self.default(visited=[])
        return nil if visited.include?('BGPPeerList')
        visited = visited + ['BGPPeerList']
        [
          BGPPeer.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BGPPeer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BGPPeer
    class BGPPeer
      def self.default(visited=[])
        return nil if visited.include?('BGPPeer')
        visited = visited + ['BGPPeer']
        {
          bgp_peer_id: 'bgp_peer_id',
          asn: 1,
          auth_key: 'auth_key',
          address_family: 'address_family',
          amazon_address: 'amazon_address',
          customer_address: 'customer_address',
          bgp_peer_state: 'bgp_peer_state',
          bgp_status: 'bgp_status',
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::BGPPeer.new
        data = {}
        data['bgpPeerId'] = stub[:bgp_peer_id] unless stub[:bgp_peer_id].nil?
        data['asn'] = stub[:asn] unless stub[:asn].nil?
        data['authKey'] = stub[:auth_key] unless stub[:auth_key].nil?
        data['addressFamily'] = stub[:address_family] unless stub[:address_family].nil?
        data['amazonAddress'] = stub[:amazon_address] unless stub[:amazon_address].nil?
        data['customerAddress'] = stub[:customer_address] unless stub[:customer_address].nil?
        data['bgpPeerState'] = stub[:bgp_peer_state] unless stub[:bgp_peer_state].nil?
        data['bgpStatus'] = stub[:bgp_status] unless stub[:bgp_status].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data
      end
    end

    # Operation Stubber for AllocatePublicVirtualInterface
    class AllocatePublicVirtualInterface
      def self.default(visited=[])
        {
          owner_account: 'owner_account',
          virtual_interface_id: 'virtual_interface_id',
          location: 'location',
          connection_id: 'connection_id',
          virtual_interface_type: 'virtual_interface_type',
          virtual_interface_name: 'virtual_interface_name',
          vlan: 1,
          asn: 1,
          amazon_side_asn: 1,
          auth_key: 'auth_key',
          amazon_address: 'amazon_address',
          customer_address: 'customer_address',
          address_family: 'address_family',
          virtual_interface_state: 'virtual_interface_state',
          customer_router_config: 'customer_router_config',
          mtu: 1,
          jumbo_frame_capable: false,
          virtual_gateway_id: 'virtual_gateway_id',
          direct_connect_gateway_id: 'direct_connect_gateway_id',
          route_filter_prefixes: RouteFilterPrefixList.default(visited),
          bgp_peers: BGPPeerList.default(visited),
          region: 'region',
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          tags: TagList.default(visited),
          site_link_enabled: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['virtualInterfaceId'] = stub[:virtual_interface_id] unless stub[:virtual_interface_id].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['virtualInterfaceType'] = stub[:virtual_interface_type] unless stub[:virtual_interface_type].nil?
        data['virtualInterfaceName'] = stub[:virtual_interface_name] unless stub[:virtual_interface_name].nil?
        data['vlan'] = stub[:vlan] unless stub[:vlan].nil?
        data['asn'] = stub[:asn] unless stub[:asn].nil?
        data['amazonSideAsn'] = stub[:amazon_side_asn] unless stub[:amazon_side_asn].nil?
        data['authKey'] = stub[:auth_key] unless stub[:auth_key].nil?
        data['amazonAddress'] = stub[:amazon_address] unless stub[:amazon_address].nil?
        data['customerAddress'] = stub[:customer_address] unless stub[:customer_address].nil?
        data['addressFamily'] = stub[:address_family] unless stub[:address_family].nil?
        data['virtualInterfaceState'] = stub[:virtual_interface_state] unless stub[:virtual_interface_state].nil?
        data['customerRouterConfig'] = stub[:customer_router_config] unless stub[:customer_router_config].nil?
        data['mtu'] = stub[:mtu] unless stub[:mtu].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['virtualGatewayId'] = stub[:virtual_gateway_id] unless stub[:virtual_gateway_id].nil?
        data['directConnectGatewayId'] = stub[:direct_connect_gateway_id] unless stub[:direct_connect_gateway_id].nil?
        data['routeFilterPrefixes'] = RouteFilterPrefixList.stub(stub[:route_filter_prefixes]) unless stub[:route_filter_prefixes].nil?
        data['bgpPeers'] = BGPPeerList.stub(stub[:bgp_peers]) unless stub[:bgp_peers].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['siteLinkEnabled'] = stub[:site_link_enabled] unless stub[:site_link_enabled].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AllocateTransitVirtualInterface
    class AllocateTransitVirtualInterface
      def self.default(visited=[])
        {
          virtual_interface: VirtualInterface.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['virtualInterface'] = VirtualInterface.stub(stub[:virtual_interface]) unless stub[:virtual_interface].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for VirtualInterface
    class VirtualInterface
      def self.default(visited=[])
        return nil if visited.include?('VirtualInterface')
        visited = visited + ['VirtualInterface']
        {
          owner_account: 'owner_account',
          virtual_interface_id: 'virtual_interface_id',
          location: 'location',
          connection_id: 'connection_id',
          virtual_interface_type: 'virtual_interface_type',
          virtual_interface_name: 'virtual_interface_name',
          vlan: 1,
          asn: 1,
          amazon_side_asn: 1,
          auth_key: 'auth_key',
          amazon_address: 'amazon_address',
          customer_address: 'customer_address',
          address_family: 'address_family',
          virtual_interface_state: 'virtual_interface_state',
          customer_router_config: 'customer_router_config',
          mtu: 1,
          jumbo_frame_capable: false,
          virtual_gateway_id: 'virtual_gateway_id',
          direct_connect_gateway_id: 'direct_connect_gateway_id',
          route_filter_prefixes: RouteFilterPrefixList.default(visited),
          bgp_peers: BGPPeerList.default(visited),
          region: 'region',
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          tags: TagList.default(visited),
          site_link_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualInterface.new
        data = {}
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['virtualInterfaceId'] = stub[:virtual_interface_id] unless stub[:virtual_interface_id].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['virtualInterfaceType'] = stub[:virtual_interface_type] unless stub[:virtual_interface_type].nil?
        data['virtualInterfaceName'] = stub[:virtual_interface_name] unless stub[:virtual_interface_name].nil?
        data['vlan'] = stub[:vlan] unless stub[:vlan].nil?
        data['asn'] = stub[:asn] unless stub[:asn].nil?
        data['amazonSideAsn'] = stub[:amazon_side_asn] unless stub[:amazon_side_asn].nil?
        data['authKey'] = stub[:auth_key] unless stub[:auth_key].nil?
        data['amazonAddress'] = stub[:amazon_address] unless stub[:amazon_address].nil?
        data['customerAddress'] = stub[:customer_address] unless stub[:customer_address].nil?
        data['addressFamily'] = stub[:address_family] unless stub[:address_family].nil?
        data['virtualInterfaceState'] = stub[:virtual_interface_state] unless stub[:virtual_interface_state].nil?
        data['customerRouterConfig'] = stub[:customer_router_config] unless stub[:customer_router_config].nil?
        data['mtu'] = stub[:mtu] unless stub[:mtu].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['virtualGatewayId'] = stub[:virtual_gateway_id] unless stub[:virtual_gateway_id].nil?
        data['directConnectGatewayId'] = stub[:direct_connect_gateway_id] unless stub[:direct_connect_gateway_id].nil?
        data['routeFilterPrefixes'] = RouteFilterPrefixList.stub(stub[:route_filter_prefixes]) unless stub[:route_filter_prefixes].nil?
        data['bgpPeers'] = BGPPeerList.stub(stub[:bgp_peers]) unless stub[:bgp_peers].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['siteLinkEnabled'] = stub[:site_link_enabled] unless stub[:site_link_enabled].nil?
        data
      end
    end

    # Operation Stubber for AssociateConnectionWithLag
    class AssociateConnectionWithLag
      def self.default(visited=[])
        {
          owner_account: 'owner_account',
          connection_id: 'connection_id',
          connection_name: 'connection_name',
          connection_state: 'connection_state',
          region: 'region',
          location: 'location',
          bandwidth: 'bandwidth',
          vlan: 1,
          partner_name: 'partner_name',
          loa_issue_time: Time.now,
          lag_id: 'lag_id',
          aws_device: 'aws_device',
          jumbo_frame_capable: false,
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          has_logical_redundancy: 'has_logical_redundancy',
          tags: TagList.default(visited),
          provider_name: 'provider_name',
          mac_sec_capable: false,
          port_encryption_status: 'port_encryption_status',
          encryption_mode: 'encryption_mode',
          mac_sec_keys: MacSecKeyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['connectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['connectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['bandwidth'] = stub[:bandwidth] unless stub[:bandwidth].nil?
        data['vlan'] = stub[:vlan] unless stub[:vlan].nil?
        data['partnerName'] = stub[:partner_name] unless stub[:partner_name].nil?
        data['loaIssueTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:loa_issue_time]).to_i unless stub[:loa_issue_time].nil?
        data['lagId'] = stub[:lag_id] unless stub[:lag_id].nil?
        data['awsDevice'] = stub[:aws_device] unless stub[:aws_device].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['hasLogicalRedundancy'] = stub[:has_logical_redundancy] unless stub[:has_logical_redundancy].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['providerName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data['macSecCapable'] = stub[:mac_sec_capable] unless stub[:mac_sec_capable].nil?
        data['portEncryptionStatus'] = stub[:port_encryption_status] unless stub[:port_encryption_status].nil?
        data['encryptionMode'] = stub[:encryption_mode] unless stub[:encryption_mode].nil?
        data['macSecKeys'] = MacSecKeyList.stub(stub[:mac_sec_keys]) unless stub[:mac_sec_keys].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateHostedConnection
    class AssociateHostedConnection
      def self.default(visited=[])
        {
          owner_account: 'owner_account',
          connection_id: 'connection_id',
          connection_name: 'connection_name',
          connection_state: 'connection_state',
          region: 'region',
          location: 'location',
          bandwidth: 'bandwidth',
          vlan: 1,
          partner_name: 'partner_name',
          loa_issue_time: Time.now,
          lag_id: 'lag_id',
          aws_device: 'aws_device',
          jumbo_frame_capable: false,
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          has_logical_redundancy: 'has_logical_redundancy',
          tags: TagList.default(visited),
          provider_name: 'provider_name',
          mac_sec_capable: false,
          port_encryption_status: 'port_encryption_status',
          encryption_mode: 'encryption_mode',
          mac_sec_keys: MacSecKeyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['connectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['connectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['bandwidth'] = stub[:bandwidth] unless stub[:bandwidth].nil?
        data['vlan'] = stub[:vlan] unless stub[:vlan].nil?
        data['partnerName'] = stub[:partner_name] unless stub[:partner_name].nil?
        data['loaIssueTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:loa_issue_time]).to_i unless stub[:loa_issue_time].nil?
        data['lagId'] = stub[:lag_id] unless stub[:lag_id].nil?
        data['awsDevice'] = stub[:aws_device] unless stub[:aws_device].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['hasLogicalRedundancy'] = stub[:has_logical_redundancy] unless stub[:has_logical_redundancy].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['providerName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data['macSecCapable'] = stub[:mac_sec_capable] unless stub[:mac_sec_capable].nil?
        data['portEncryptionStatus'] = stub[:port_encryption_status] unless stub[:port_encryption_status].nil?
        data['encryptionMode'] = stub[:encryption_mode] unless stub[:encryption_mode].nil?
        data['macSecKeys'] = MacSecKeyList.stub(stub[:mac_sec_keys]) unless stub[:mac_sec_keys].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateMacSecKey
    class AssociateMacSecKey
      def self.default(visited=[])
        {
          connection_id: 'connection_id',
          mac_sec_keys: MacSecKeyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['macSecKeys'] = MacSecKeyList.stub(stub[:mac_sec_keys]) unless stub[:mac_sec_keys].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateVirtualInterface
    class AssociateVirtualInterface
      def self.default(visited=[])
        {
          owner_account: 'owner_account',
          virtual_interface_id: 'virtual_interface_id',
          location: 'location',
          connection_id: 'connection_id',
          virtual_interface_type: 'virtual_interface_type',
          virtual_interface_name: 'virtual_interface_name',
          vlan: 1,
          asn: 1,
          amazon_side_asn: 1,
          auth_key: 'auth_key',
          amazon_address: 'amazon_address',
          customer_address: 'customer_address',
          address_family: 'address_family',
          virtual_interface_state: 'virtual_interface_state',
          customer_router_config: 'customer_router_config',
          mtu: 1,
          jumbo_frame_capable: false,
          virtual_gateway_id: 'virtual_gateway_id',
          direct_connect_gateway_id: 'direct_connect_gateway_id',
          route_filter_prefixes: RouteFilterPrefixList.default(visited),
          bgp_peers: BGPPeerList.default(visited),
          region: 'region',
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          tags: TagList.default(visited),
          site_link_enabled: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['virtualInterfaceId'] = stub[:virtual_interface_id] unless stub[:virtual_interface_id].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['virtualInterfaceType'] = stub[:virtual_interface_type] unless stub[:virtual_interface_type].nil?
        data['virtualInterfaceName'] = stub[:virtual_interface_name] unless stub[:virtual_interface_name].nil?
        data['vlan'] = stub[:vlan] unless stub[:vlan].nil?
        data['asn'] = stub[:asn] unless stub[:asn].nil?
        data['amazonSideAsn'] = stub[:amazon_side_asn] unless stub[:amazon_side_asn].nil?
        data['authKey'] = stub[:auth_key] unless stub[:auth_key].nil?
        data['amazonAddress'] = stub[:amazon_address] unless stub[:amazon_address].nil?
        data['customerAddress'] = stub[:customer_address] unless stub[:customer_address].nil?
        data['addressFamily'] = stub[:address_family] unless stub[:address_family].nil?
        data['virtualInterfaceState'] = stub[:virtual_interface_state] unless stub[:virtual_interface_state].nil?
        data['customerRouterConfig'] = stub[:customer_router_config] unless stub[:customer_router_config].nil?
        data['mtu'] = stub[:mtu] unless stub[:mtu].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['virtualGatewayId'] = stub[:virtual_gateway_id] unless stub[:virtual_gateway_id].nil?
        data['directConnectGatewayId'] = stub[:direct_connect_gateway_id] unless stub[:direct_connect_gateway_id].nil?
        data['routeFilterPrefixes'] = RouteFilterPrefixList.stub(stub[:route_filter_prefixes]) unless stub[:route_filter_prefixes].nil?
        data['bgpPeers'] = BGPPeerList.stub(stub[:bgp_peers]) unless stub[:bgp_peers].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['siteLinkEnabled'] = stub[:site_link_enabled] unless stub[:site_link_enabled].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ConfirmConnection
    class ConfirmConnection
      def self.default(visited=[])
        {
          connection_state: 'connection_state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['connectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ConfirmCustomerAgreement
    class ConfirmCustomerAgreement
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ConfirmPrivateVirtualInterface
    class ConfirmPrivateVirtualInterface
      def self.default(visited=[])
        {
          virtual_interface_state: 'virtual_interface_state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['virtualInterfaceState'] = stub[:virtual_interface_state] unless stub[:virtual_interface_state].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ConfirmPublicVirtualInterface
    class ConfirmPublicVirtualInterface
      def self.default(visited=[])
        {
          virtual_interface_state: 'virtual_interface_state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['virtualInterfaceState'] = stub[:virtual_interface_state] unless stub[:virtual_interface_state].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ConfirmTransitVirtualInterface
    class ConfirmTransitVirtualInterface
      def self.default(visited=[])
        {
          virtual_interface_state: 'virtual_interface_state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['virtualInterfaceState'] = stub[:virtual_interface_state] unless stub[:virtual_interface_state].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateBGPPeer
    class CreateBGPPeer
      def self.default(visited=[])
        {
          virtual_interface: VirtualInterface.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['virtualInterface'] = VirtualInterface.stub(stub[:virtual_interface]) unless stub[:virtual_interface].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateConnection
    class CreateConnection
      def self.default(visited=[])
        {
          owner_account: 'owner_account',
          connection_id: 'connection_id',
          connection_name: 'connection_name',
          connection_state: 'connection_state',
          region: 'region',
          location: 'location',
          bandwidth: 'bandwidth',
          vlan: 1,
          partner_name: 'partner_name',
          loa_issue_time: Time.now,
          lag_id: 'lag_id',
          aws_device: 'aws_device',
          jumbo_frame_capable: false,
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          has_logical_redundancy: 'has_logical_redundancy',
          tags: TagList.default(visited),
          provider_name: 'provider_name',
          mac_sec_capable: false,
          port_encryption_status: 'port_encryption_status',
          encryption_mode: 'encryption_mode',
          mac_sec_keys: MacSecKeyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['connectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['connectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['bandwidth'] = stub[:bandwidth] unless stub[:bandwidth].nil?
        data['vlan'] = stub[:vlan] unless stub[:vlan].nil?
        data['partnerName'] = stub[:partner_name] unless stub[:partner_name].nil?
        data['loaIssueTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:loa_issue_time]).to_i unless stub[:loa_issue_time].nil?
        data['lagId'] = stub[:lag_id] unless stub[:lag_id].nil?
        data['awsDevice'] = stub[:aws_device] unless stub[:aws_device].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['hasLogicalRedundancy'] = stub[:has_logical_redundancy] unless stub[:has_logical_redundancy].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['providerName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data['macSecCapable'] = stub[:mac_sec_capable] unless stub[:mac_sec_capable].nil?
        data['portEncryptionStatus'] = stub[:port_encryption_status] unless stub[:port_encryption_status].nil?
        data['encryptionMode'] = stub[:encryption_mode] unless stub[:encryption_mode].nil?
        data['macSecKeys'] = MacSecKeyList.stub(stub[:mac_sec_keys]) unless stub[:mac_sec_keys].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDirectConnectGateway
    class CreateDirectConnectGateway
      def self.default(visited=[])
        {
          direct_connect_gateway: DirectConnectGateway.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['directConnectGateway'] = DirectConnectGateway.stub(stub[:direct_connect_gateway]) unless stub[:direct_connect_gateway].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DirectConnectGateway
    class DirectConnectGateway
      def self.default(visited=[])
        return nil if visited.include?('DirectConnectGateway')
        visited = visited + ['DirectConnectGateway']
        {
          direct_connect_gateway_id: 'direct_connect_gateway_id',
          direct_connect_gateway_name: 'direct_connect_gateway_name',
          amazon_side_asn: 1,
          owner_account: 'owner_account',
          direct_connect_gateway_state: 'direct_connect_gateway_state',
          state_change_error: 'state_change_error',
        }
      end

      def self.stub(stub)
        stub ||= Types::DirectConnectGateway.new
        data = {}
        data['directConnectGatewayId'] = stub[:direct_connect_gateway_id] unless stub[:direct_connect_gateway_id].nil?
        data['directConnectGatewayName'] = stub[:direct_connect_gateway_name] unless stub[:direct_connect_gateway_name].nil?
        data['amazonSideAsn'] = stub[:amazon_side_asn] unless stub[:amazon_side_asn].nil?
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['directConnectGatewayState'] = stub[:direct_connect_gateway_state] unless stub[:direct_connect_gateway_state].nil?
        data['stateChangeError'] = stub[:state_change_error] unless stub[:state_change_error].nil?
        data
      end
    end

    # Operation Stubber for CreateDirectConnectGatewayAssociation
    class CreateDirectConnectGatewayAssociation
      def self.default(visited=[])
        {
          direct_connect_gateway_association: DirectConnectGatewayAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['directConnectGatewayAssociation'] = DirectConnectGatewayAssociation.stub(stub[:direct_connect_gateway_association]) unless stub[:direct_connect_gateway_association].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDirectConnectGatewayAssociationProposal
    class CreateDirectConnectGatewayAssociationProposal
      def self.default(visited=[])
        {
          direct_connect_gateway_association_proposal: DirectConnectGatewayAssociationProposal.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['directConnectGatewayAssociationProposal'] = DirectConnectGatewayAssociationProposal.stub(stub[:direct_connect_gateway_association_proposal]) unless stub[:direct_connect_gateway_association_proposal].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DirectConnectGatewayAssociationProposal
    class DirectConnectGatewayAssociationProposal
      def self.default(visited=[])
        return nil if visited.include?('DirectConnectGatewayAssociationProposal')
        visited = visited + ['DirectConnectGatewayAssociationProposal']
        {
          proposal_id: 'proposal_id',
          direct_connect_gateway_id: 'direct_connect_gateway_id',
          direct_connect_gateway_owner_account: 'direct_connect_gateway_owner_account',
          proposal_state: 'proposal_state',
          associated_gateway: AssociatedGateway.default(visited),
          existing_allowed_prefixes_to_direct_connect_gateway: RouteFilterPrefixList.default(visited),
          requested_allowed_prefixes_to_direct_connect_gateway: RouteFilterPrefixList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DirectConnectGatewayAssociationProposal.new
        data = {}
        data['proposalId'] = stub[:proposal_id] unless stub[:proposal_id].nil?
        data['directConnectGatewayId'] = stub[:direct_connect_gateway_id] unless stub[:direct_connect_gateway_id].nil?
        data['directConnectGatewayOwnerAccount'] = stub[:direct_connect_gateway_owner_account] unless stub[:direct_connect_gateway_owner_account].nil?
        data['proposalState'] = stub[:proposal_state] unless stub[:proposal_state].nil?
        data['associatedGateway'] = AssociatedGateway.stub(stub[:associated_gateway]) unless stub[:associated_gateway].nil?
        data['existingAllowedPrefixesToDirectConnectGateway'] = RouteFilterPrefixList.stub(stub[:existing_allowed_prefixes_to_direct_connect_gateway]) unless stub[:existing_allowed_prefixes_to_direct_connect_gateway].nil?
        data['requestedAllowedPrefixesToDirectConnectGateway'] = RouteFilterPrefixList.stub(stub[:requested_allowed_prefixes_to_direct_connect_gateway]) unless stub[:requested_allowed_prefixes_to_direct_connect_gateway].nil?
        data
      end
    end

    # Operation Stubber for CreateInterconnect
    class CreateInterconnect
      def self.default(visited=[])
        {
          interconnect_id: 'interconnect_id',
          interconnect_name: 'interconnect_name',
          interconnect_state: 'interconnect_state',
          region: 'region',
          location: 'location',
          bandwidth: 'bandwidth',
          loa_issue_time: Time.now,
          lag_id: 'lag_id',
          aws_device: 'aws_device',
          jumbo_frame_capable: false,
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          has_logical_redundancy: 'has_logical_redundancy',
          tags: TagList.default(visited),
          provider_name: 'provider_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['interconnectId'] = stub[:interconnect_id] unless stub[:interconnect_id].nil?
        data['interconnectName'] = stub[:interconnect_name] unless stub[:interconnect_name].nil?
        data['interconnectState'] = stub[:interconnect_state] unless stub[:interconnect_state].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['bandwidth'] = stub[:bandwidth] unless stub[:bandwidth].nil?
        data['loaIssueTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:loa_issue_time]).to_i unless stub[:loa_issue_time].nil?
        data['lagId'] = stub[:lag_id] unless stub[:lag_id].nil?
        data['awsDevice'] = stub[:aws_device] unless stub[:aws_device].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['hasLogicalRedundancy'] = stub[:has_logical_redundancy] unless stub[:has_logical_redundancy].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['providerName'] = stub[:provider_name] unless stub[:provider_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLag
    class CreateLag
      def self.default(visited=[])
        {
          connections_bandwidth: 'connections_bandwidth',
          number_of_connections: 1,
          lag_id: 'lag_id',
          owner_account: 'owner_account',
          lag_name: 'lag_name',
          lag_state: 'lag_state',
          location: 'location',
          region: 'region',
          minimum_links: 1,
          aws_device: 'aws_device',
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          connections: ConnectionList.default(visited),
          allows_hosted_connections: false,
          jumbo_frame_capable: false,
          has_logical_redundancy: 'has_logical_redundancy',
          tags: TagList.default(visited),
          provider_name: 'provider_name',
          mac_sec_capable: false,
          encryption_mode: 'encryption_mode',
          mac_sec_keys: MacSecKeyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['connectionsBandwidth'] = stub[:connections_bandwidth] unless stub[:connections_bandwidth].nil?
        data['numberOfConnections'] = stub[:number_of_connections] unless stub[:number_of_connections].nil?
        data['lagId'] = stub[:lag_id] unless stub[:lag_id].nil?
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['lagName'] = stub[:lag_name] unless stub[:lag_name].nil?
        data['lagState'] = stub[:lag_state] unless stub[:lag_state].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['minimumLinks'] = stub[:minimum_links] unless stub[:minimum_links].nil?
        data['awsDevice'] = stub[:aws_device] unless stub[:aws_device].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['connections'] = ConnectionList.stub(stub[:connections]) unless stub[:connections].nil?
        data['allowsHostedConnections'] = stub[:allows_hosted_connections] unless stub[:allows_hosted_connections].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['hasLogicalRedundancy'] = stub[:has_logical_redundancy] unless stub[:has_logical_redundancy].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['providerName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data['macSecCapable'] = stub[:mac_sec_capable] unless stub[:mac_sec_capable].nil?
        data['encryptionMode'] = stub[:encryption_mode] unless stub[:encryption_mode].nil?
        data['macSecKeys'] = MacSecKeyList.stub(stub[:mac_sec_keys]) unless stub[:mac_sec_keys].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConnectionList
    class ConnectionList
      def self.default(visited=[])
        return nil if visited.include?('ConnectionList')
        visited = visited + ['ConnectionList']
        [
          Connection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Connection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Connection
    class Connection
      def self.default(visited=[])
        return nil if visited.include?('Connection')
        visited = visited + ['Connection']
        {
          owner_account: 'owner_account',
          connection_id: 'connection_id',
          connection_name: 'connection_name',
          connection_state: 'connection_state',
          region: 'region',
          location: 'location',
          bandwidth: 'bandwidth',
          vlan: 1,
          partner_name: 'partner_name',
          loa_issue_time: Time.now,
          lag_id: 'lag_id',
          aws_device: 'aws_device',
          jumbo_frame_capable: false,
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          has_logical_redundancy: 'has_logical_redundancy',
          tags: TagList.default(visited),
          provider_name: 'provider_name',
          mac_sec_capable: false,
          port_encryption_status: 'port_encryption_status',
          encryption_mode: 'encryption_mode',
          mac_sec_keys: MacSecKeyList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Connection.new
        data = {}
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['connectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['connectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['bandwidth'] = stub[:bandwidth] unless stub[:bandwidth].nil?
        data['vlan'] = stub[:vlan] unless stub[:vlan].nil?
        data['partnerName'] = stub[:partner_name] unless stub[:partner_name].nil?
        data['loaIssueTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:loa_issue_time]).to_i unless stub[:loa_issue_time].nil?
        data['lagId'] = stub[:lag_id] unless stub[:lag_id].nil?
        data['awsDevice'] = stub[:aws_device] unless stub[:aws_device].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['hasLogicalRedundancy'] = stub[:has_logical_redundancy] unless stub[:has_logical_redundancy].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['providerName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data['macSecCapable'] = stub[:mac_sec_capable] unless stub[:mac_sec_capable].nil?
        data['portEncryptionStatus'] = stub[:port_encryption_status] unless stub[:port_encryption_status].nil?
        data['encryptionMode'] = stub[:encryption_mode] unless stub[:encryption_mode].nil?
        data['macSecKeys'] = MacSecKeyList.stub(stub[:mac_sec_keys]) unless stub[:mac_sec_keys].nil?
        data
      end
    end

    # Operation Stubber for CreatePrivateVirtualInterface
    class CreatePrivateVirtualInterface
      def self.default(visited=[])
        {
          owner_account: 'owner_account',
          virtual_interface_id: 'virtual_interface_id',
          location: 'location',
          connection_id: 'connection_id',
          virtual_interface_type: 'virtual_interface_type',
          virtual_interface_name: 'virtual_interface_name',
          vlan: 1,
          asn: 1,
          amazon_side_asn: 1,
          auth_key: 'auth_key',
          amazon_address: 'amazon_address',
          customer_address: 'customer_address',
          address_family: 'address_family',
          virtual_interface_state: 'virtual_interface_state',
          customer_router_config: 'customer_router_config',
          mtu: 1,
          jumbo_frame_capable: false,
          virtual_gateway_id: 'virtual_gateway_id',
          direct_connect_gateway_id: 'direct_connect_gateway_id',
          route_filter_prefixes: RouteFilterPrefixList.default(visited),
          bgp_peers: BGPPeerList.default(visited),
          region: 'region',
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          tags: TagList.default(visited),
          site_link_enabled: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['virtualInterfaceId'] = stub[:virtual_interface_id] unless stub[:virtual_interface_id].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['virtualInterfaceType'] = stub[:virtual_interface_type] unless stub[:virtual_interface_type].nil?
        data['virtualInterfaceName'] = stub[:virtual_interface_name] unless stub[:virtual_interface_name].nil?
        data['vlan'] = stub[:vlan] unless stub[:vlan].nil?
        data['asn'] = stub[:asn] unless stub[:asn].nil?
        data['amazonSideAsn'] = stub[:amazon_side_asn] unless stub[:amazon_side_asn].nil?
        data['authKey'] = stub[:auth_key] unless stub[:auth_key].nil?
        data['amazonAddress'] = stub[:amazon_address] unless stub[:amazon_address].nil?
        data['customerAddress'] = stub[:customer_address] unless stub[:customer_address].nil?
        data['addressFamily'] = stub[:address_family] unless stub[:address_family].nil?
        data['virtualInterfaceState'] = stub[:virtual_interface_state] unless stub[:virtual_interface_state].nil?
        data['customerRouterConfig'] = stub[:customer_router_config] unless stub[:customer_router_config].nil?
        data['mtu'] = stub[:mtu] unless stub[:mtu].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['virtualGatewayId'] = stub[:virtual_gateway_id] unless stub[:virtual_gateway_id].nil?
        data['directConnectGatewayId'] = stub[:direct_connect_gateway_id] unless stub[:direct_connect_gateway_id].nil?
        data['routeFilterPrefixes'] = RouteFilterPrefixList.stub(stub[:route_filter_prefixes]) unless stub[:route_filter_prefixes].nil?
        data['bgpPeers'] = BGPPeerList.stub(stub[:bgp_peers]) unless stub[:bgp_peers].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['siteLinkEnabled'] = stub[:site_link_enabled] unless stub[:site_link_enabled].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePublicVirtualInterface
    class CreatePublicVirtualInterface
      def self.default(visited=[])
        {
          owner_account: 'owner_account',
          virtual_interface_id: 'virtual_interface_id',
          location: 'location',
          connection_id: 'connection_id',
          virtual_interface_type: 'virtual_interface_type',
          virtual_interface_name: 'virtual_interface_name',
          vlan: 1,
          asn: 1,
          amazon_side_asn: 1,
          auth_key: 'auth_key',
          amazon_address: 'amazon_address',
          customer_address: 'customer_address',
          address_family: 'address_family',
          virtual_interface_state: 'virtual_interface_state',
          customer_router_config: 'customer_router_config',
          mtu: 1,
          jumbo_frame_capable: false,
          virtual_gateway_id: 'virtual_gateway_id',
          direct_connect_gateway_id: 'direct_connect_gateway_id',
          route_filter_prefixes: RouteFilterPrefixList.default(visited),
          bgp_peers: BGPPeerList.default(visited),
          region: 'region',
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          tags: TagList.default(visited),
          site_link_enabled: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['virtualInterfaceId'] = stub[:virtual_interface_id] unless stub[:virtual_interface_id].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['virtualInterfaceType'] = stub[:virtual_interface_type] unless stub[:virtual_interface_type].nil?
        data['virtualInterfaceName'] = stub[:virtual_interface_name] unless stub[:virtual_interface_name].nil?
        data['vlan'] = stub[:vlan] unless stub[:vlan].nil?
        data['asn'] = stub[:asn] unless stub[:asn].nil?
        data['amazonSideAsn'] = stub[:amazon_side_asn] unless stub[:amazon_side_asn].nil?
        data['authKey'] = stub[:auth_key] unless stub[:auth_key].nil?
        data['amazonAddress'] = stub[:amazon_address] unless stub[:amazon_address].nil?
        data['customerAddress'] = stub[:customer_address] unless stub[:customer_address].nil?
        data['addressFamily'] = stub[:address_family] unless stub[:address_family].nil?
        data['virtualInterfaceState'] = stub[:virtual_interface_state] unless stub[:virtual_interface_state].nil?
        data['customerRouterConfig'] = stub[:customer_router_config] unless stub[:customer_router_config].nil?
        data['mtu'] = stub[:mtu] unless stub[:mtu].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['virtualGatewayId'] = stub[:virtual_gateway_id] unless stub[:virtual_gateway_id].nil?
        data['directConnectGatewayId'] = stub[:direct_connect_gateway_id] unless stub[:direct_connect_gateway_id].nil?
        data['routeFilterPrefixes'] = RouteFilterPrefixList.stub(stub[:route_filter_prefixes]) unless stub[:route_filter_prefixes].nil?
        data['bgpPeers'] = BGPPeerList.stub(stub[:bgp_peers]) unless stub[:bgp_peers].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['siteLinkEnabled'] = stub[:site_link_enabled] unless stub[:site_link_enabled].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateTransitVirtualInterface
    class CreateTransitVirtualInterface
      def self.default(visited=[])
        {
          virtual_interface: VirtualInterface.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['virtualInterface'] = VirtualInterface.stub(stub[:virtual_interface]) unless stub[:virtual_interface].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBGPPeer
    class DeleteBGPPeer
      def self.default(visited=[])
        {
          virtual_interface: VirtualInterface.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['virtualInterface'] = VirtualInterface.stub(stub[:virtual_interface]) unless stub[:virtual_interface].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteConnection
    class DeleteConnection
      def self.default(visited=[])
        {
          owner_account: 'owner_account',
          connection_id: 'connection_id',
          connection_name: 'connection_name',
          connection_state: 'connection_state',
          region: 'region',
          location: 'location',
          bandwidth: 'bandwidth',
          vlan: 1,
          partner_name: 'partner_name',
          loa_issue_time: Time.now,
          lag_id: 'lag_id',
          aws_device: 'aws_device',
          jumbo_frame_capable: false,
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          has_logical_redundancy: 'has_logical_redundancy',
          tags: TagList.default(visited),
          provider_name: 'provider_name',
          mac_sec_capable: false,
          port_encryption_status: 'port_encryption_status',
          encryption_mode: 'encryption_mode',
          mac_sec_keys: MacSecKeyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['connectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['connectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['bandwidth'] = stub[:bandwidth] unless stub[:bandwidth].nil?
        data['vlan'] = stub[:vlan] unless stub[:vlan].nil?
        data['partnerName'] = stub[:partner_name] unless stub[:partner_name].nil?
        data['loaIssueTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:loa_issue_time]).to_i unless stub[:loa_issue_time].nil?
        data['lagId'] = stub[:lag_id] unless stub[:lag_id].nil?
        data['awsDevice'] = stub[:aws_device] unless stub[:aws_device].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['hasLogicalRedundancy'] = stub[:has_logical_redundancy] unless stub[:has_logical_redundancy].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['providerName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data['macSecCapable'] = stub[:mac_sec_capable] unless stub[:mac_sec_capable].nil?
        data['portEncryptionStatus'] = stub[:port_encryption_status] unless stub[:port_encryption_status].nil?
        data['encryptionMode'] = stub[:encryption_mode] unless stub[:encryption_mode].nil?
        data['macSecKeys'] = MacSecKeyList.stub(stub[:mac_sec_keys]) unless stub[:mac_sec_keys].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDirectConnectGateway
    class DeleteDirectConnectGateway
      def self.default(visited=[])
        {
          direct_connect_gateway: DirectConnectGateway.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['directConnectGateway'] = DirectConnectGateway.stub(stub[:direct_connect_gateway]) unless stub[:direct_connect_gateway].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDirectConnectGatewayAssociation
    class DeleteDirectConnectGatewayAssociation
      def self.default(visited=[])
        {
          direct_connect_gateway_association: DirectConnectGatewayAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['directConnectGatewayAssociation'] = DirectConnectGatewayAssociation.stub(stub[:direct_connect_gateway_association]) unless stub[:direct_connect_gateway_association].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDirectConnectGatewayAssociationProposal
    class DeleteDirectConnectGatewayAssociationProposal
      def self.default(visited=[])
        {
          direct_connect_gateway_association_proposal: DirectConnectGatewayAssociationProposal.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['directConnectGatewayAssociationProposal'] = DirectConnectGatewayAssociationProposal.stub(stub[:direct_connect_gateway_association_proposal]) unless stub[:direct_connect_gateway_association_proposal].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteInterconnect
    class DeleteInterconnect
      def self.default(visited=[])
        {
          interconnect_state: 'interconnect_state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['interconnectState'] = stub[:interconnect_state] unless stub[:interconnect_state].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLag
    class DeleteLag
      def self.default(visited=[])
        {
          connections_bandwidth: 'connections_bandwidth',
          number_of_connections: 1,
          lag_id: 'lag_id',
          owner_account: 'owner_account',
          lag_name: 'lag_name',
          lag_state: 'lag_state',
          location: 'location',
          region: 'region',
          minimum_links: 1,
          aws_device: 'aws_device',
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          connections: ConnectionList.default(visited),
          allows_hosted_connections: false,
          jumbo_frame_capable: false,
          has_logical_redundancy: 'has_logical_redundancy',
          tags: TagList.default(visited),
          provider_name: 'provider_name',
          mac_sec_capable: false,
          encryption_mode: 'encryption_mode',
          mac_sec_keys: MacSecKeyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['connectionsBandwidth'] = stub[:connections_bandwidth] unless stub[:connections_bandwidth].nil?
        data['numberOfConnections'] = stub[:number_of_connections] unless stub[:number_of_connections].nil?
        data['lagId'] = stub[:lag_id] unless stub[:lag_id].nil?
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['lagName'] = stub[:lag_name] unless stub[:lag_name].nil?
        data['lagState'] = stub[:lag_state] unless stub[:lag_state].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['minimumLinks'] = stub[:minimum_links] unless stub[:minimum_links].nil?
        data['awsDevice'] = stub[:aws_device] unless stub[:aws_device].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['connections'] = ConnectionList.stub(stub[:connections]) unless stub[:connections].nil?
        data['allowsHostedConnections'] = stub[:allows_hosted_connections] unless stub[:allows_hosted_connections].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['hasLogicalRedundancy'] = stub[:has_logical_redundancy] unless stub[:has_logical_redundancy].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['providerName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data['macSecCapable'] = stub[:mac_sec_capable] unless stub[:mac_sec_capable].nil?
        data['encryptionMode'] = stub[:encryption_mode] unless stub[:encryption_mode].nil?
        data['macSecKeys'] = MacSecKeyList.stub(stub[:mac_sec_keys]) unless stub[:mac_sec_keys].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteVirtualInterface
    class DeleteVirtualInterface
      def self.default(visited=[])
        {
          virtual_interface_state: 'virtual_interface_state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['virtualInterfaceState'] = stub[:virtual_interface_state] unless stub[:virtual_interface_state].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeConnectionLoa
    class DescribeConnectionLoa
      def self.default(visited=[])
        {
          loa: Loa.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['loa'] = Loa.stub(stub[:loa]) unless stub[:loa].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Loa
    class Loa
      def self.default(visited=[])
        return nil if visited.include?('Loa')
        visited = visited + ['Loa']
        {
          loa_content: 'loa_content',
          loa_content_type: 'loa_content_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Loa.new
        data = {}
        data['loaContent'] = ::Base64::encode64(stub[:loa_content]) unless stub[:loa_content].nil?
        data['loaContentType'] = stub[:loa_content_type] unless stub[:loa_content_type].nil?
        data
      end
    end

    # Operation Stubber for DescribeConnections
    class DescribeConnections
      def self.default(visited=[])
        {
          connections: ConnectionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['connections'] = ConnectionList.stub(stub[:connections]) unless stub[:connections].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeConnectionsOnInterconnect
    class DescribeConnectionsOnInterconnect
      def self.default(visited=[])
        {
          connections: ConnectionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['connections'] = ConnectionList.stub(stub[:connections]) unless stub[:connections].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeCustomerMetadata
    class DescribeCustomerMetadata
      def self.default(visited=[])
        {
          agreements: AgreementList.default(visited),
          nni_partner_type: 'nni_partner_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['agreements'] = AgreementList.stub(stub[:agreements]) unless stub[:agreements].nil?
        data['nniPartnerType'] = stub[:nni_partner_type] unless stub[:nni_partner_type].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AgreementList
    class AgreementList
      def self.default(visited=[])
        return nil if visited.include?('AgreementList')
        visited = visited + ['AgreementList']
        [
          CustomerAgreement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CustomerAgreement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomerAgreement
    class CustomerAgreement
      def self.default(visited=[])
        return nil if visited.include?('CustomerAgreement')
        visited = visited + ['CustomerAgreement']
        {
          agreement_name: 'agreement_name',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomerAgreement.new
        data = {}
        data['agreementName'] = stub[:agreement_name] unless stub[:agreement_name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for DescribeDirectConnectGatewayAssociationProposals
    class DescribeDirectConnectGatewayAssociationProposals
      def self.default(visited=[])
        {
          direct_connect_gateway_association_proposals: DirectConnectGatewayAssociationProposalList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['directConnectGatewayAssociationProposals'] = DirectConnectGatewayAssociationProposalList.stub(stub[:direct_connect_gateway_association_proposals]) unless stub[:direct_connect_gateway_association_proposals].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DirectConnectGatewayAssociationProposalList
    class DirectConnectGatewayAssociationProposalList
      def self.default(visited=[])
        return nil if visited.include?('DirectConnectGatewayAssociationProposalList')
        visited = visited + ['DirectConnectGatewayAssociationProposalList']
        [
          DirectConnectGatewayAssociationProposal.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DirectConnectGatewayAssociationProposal.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeDirectConnectGatewayAssociations
    class DescribeDirectConnectGatewayAssociations
      def self.default(visited=[])
        {
          direct_connect_gateway_associations: DirectConnectGatewayAssociationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['directConnectGatewayAssociations'] = DirectConnectGatewayAssociationList.stub(stub[:direct_connect_gateway_associations]) unless stub[:direct_connect_gateway_associations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DirectConnectGatewayAssociationList
    class DirectConnectGatewayAssociationList
      def self.default(visited=[])
        return nil if visited.include?('DirectConnectGatewayAssociationList')
        visited = visited + ['DirectConnectGatewayAssociationList']
        [
          DirectConnectGatewayAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DirectConnectGatewayAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeDirectConnectGatewayAttachments
    class DescribeDirectConnectGatewayAttachments
      def self.default(visited=[])
        {
          direct_connect_gateway_attachments: DirectConnectGatewayAttachmentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['directConnectGatewayAttachments'] = DirectConnectGatewayAttachmentList.stub(stub[:direct_connect_gateway_attachments]) unless stub[:direct_connect_gateway_attachments].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DirectConnectGatewayAttachmentList
    class DirectConnectGatewayAttachmentList
      def self.default(visited=[])
        return nil if visited.include?('DirectConnectGatewayAttachmentList')
        visited = visited + ['DirectConnectGatewayAttachmentList']
        [
          DirectConnectGatewayAttachment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DirectConnectGatewayAttachment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DirectConnectGatewayAttachment
    class DirectConnectGatewayAttachment
      def self.default(visited=[])
        return nil if visited.include?('DirectConnectGatewayAttachment')
        visited = visited + ['DirectConnectGatewayAttachment']
        {
          direct_connect_gateway_id: 'direct_connect_gateway_id',
          virtual_interface_id: 'virtual_interface_id',
          virtual_interface_region: 'virtual_interface_region',
          virtual_interface_owner_account: 'virtual_interface_owner_account',
          attachment_state: 'attachment_state',
          attachment_type: 'attachment_type',
          state_change_error: 'state_change_error',
        }
      end

      def self.stub(stub)
        stub ||= Types::DirectConnectGatewayAttachment.new
        data = {}
        data['directConnectGatewayId'] = stub[:direct_connect_gateway_id] unless stub[:direct_connect_gateway_id].nil?
        data['virtualInterfaceId'] = stub[:virtual_interface_id] unless stub[:virtual_interface_id].nil?
        data['virtualInterfaceRegion'] = stub[:virtual_interface_region] unless stub[:virtual_interface_region].nil?
        data['virtualInterfaceOwnerAccount'] = stub[:virtual_interface_owner_account] unless stub[:virtual_interface_owner_account].nil?
        data['attachmentState'] = stub[:attachment_state] unless stub[:attachment_state].nil?
        data['attachmentType'] = stub[:attachment_type] unless stub[:attachment_type].nil?
        data['stateChangeError'] = stub[:state_change_error] unless stub[:state_change_error].nil?
        data
      end
    end

    # Operation Stubber for DescribeDirectConnectGateways
    class DescribeDirectConnectGateways
      def self.default(visited=[])
        {
          direct_connect_gateways: DirectConnectGatewayList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['directConnectGateways'] = DirectConnectGatewayList.stub(stub[:direct_connect_gateways]) unless stub[:direct_connect_gateways].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DirectConnectGatewayList
    class DirectConnectGatewayList
      def self.default(visited=[])
        return nil if visited.include?('DirectConnectGatewayList')
        visited = visited + ['DirectConnectGatewayList']
        [
          DirectConnectGateway.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DirectConnectGateway.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeHostedConnections
    class DescribeHostedConnections
      def self.default(visited=[])
        {
          connections: ConnectionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['connections'] = ConnectionList.stub(stub[:connections]) unless stub[:connections].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeInterconnectLoa
    class DescribeInterconnectLoa
      def self.default(visited=[])
        {
          loa: Loa.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['loa'] = Loa.stub(stub[:loa]) unless stub[:loa].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeInterconnects
    class DescribeInterconnects
      def self.default(visited=[])
        {
          interconnects: InterconnectList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['interconnects'] = InterconnectList.stub(stub[:interconnects]) unless stub[:interconnects].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InterconnectList
    class InterconnectList
      def self.default(visited=[])
        return nil if visited.include?('InterconnectList')
        visited = visited + ['InterconnectList']
        [
          Interconnect.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Interconnect.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Interconnect
    class Interconnect
      def self.default(visited=[])
        return nil if visited.include?('Interconnect')
        visited = visited + ['Interconnect']
        {
          interconnect_id: 'interconnect_id',
          interconnect_name: 'interconnect_name',
          interconnect_state: 'interconnect_state',
          region: 'region',
          location: 'location',
          bandwidth: 'bandwidth',
          loa_issue_time: Time.now,
          lag_id: 'lag_id',
          aws_device: 'aws_device',
          jumbo_frame_capable: false,
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          has_logical_redundancy: 'has_logical_redundancy',
          tags: TagList.default(visited),
          provider_name: 'provider_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Interconnect.new
        data = {}
        data['interconnectId'] = stub[:interconnect_id] unless stub[:interconnect_id].nil?
        data['interconnectName'] = stub[:interconnect_name] unless stub[:interconnect_name].nil?
        data['interconnectState'] = stub[:interconnect_state] unless stub[:interconnect_state].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['bandwidth'] = stub[:bandwidth] unless stub[:bandwidth].nil?
        data['loaIssueTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:loa_issue_time]).to_i unless stub[:loa_issue_time].nil?
        data['lagId'] = stub[:lag_id] unless stub[:lag_id].nil?
        data['awsDevice'] = stub[:aws_device] unless stub[:aws_device].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['hasLogicalRedundancy'] = stub[:has_logical_redundancy] unless stub[:has_logical_redundancy].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['providerName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data
      end
    end

    # Operation Stubber for DescribeLags
    class DescribeLags
      def self.default(visited=[])
        {
          lags: LagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['lags'] = LagList.stub(stub[:lags]) unless stub[:lags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LagList
    class LagList
      def self.default(visited=[])
        return nil if visited.include?('LagList')
        visited = visited + ['LagList']
        [
          Lag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Lag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Lag
    class Lag
      def self.default(visited=[])
        return nil if visited.include?('Lag')
        visited = visited + ['Lag']
        {
          connections_bandwidth: 'connections_bandwidth',
          number_of_connections: 1,
          lag_id: 'lag_id',
          owner_account: 'owner_account',
          lag_name: 'lag_name',
          lag_state: 'lag_state',
          location: 'location',
          region: 'region',
          minimum_links: 1,
          aws_device: 'aws_device',
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          connections: ConnectionList.default(visited),
          allows_hosted_connections: false,
          jumbo_frame_capable: false,
          has_logical_redundancy: 'has_logical_redundancy',
          tags: TagList.default(visited),
          provider_name: 'provider_name',
          mac_sec_capable: false,
          encryption_mode: 'encryption_mode',
          mac_sec_keys: MacSecKeyList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Lag.new
        data = {}
        data['connectionsBandwidth'] = stub[:connections_bandwidth] unless stub[:connections_bandwidth].nil?
        data['numberOfConnections'] = stub[:number_of_connections] unless stub[:number_of_connections].nil?
        data['lagId'] = stub[:lag_id] unless stub[:lag_id].nil?
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['lagName'] = stub[:lag_name] unless stub[:lag_name].nil?
        data['lagState'] = stub[:lag_state] unless stub[:lag_state].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['minimumLinks'] = stub[:minimum_links] unless stub[:minimum_links].nil?
        data['awsDevice'] = stub[:aws_device] unless stub[:aws_device].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['connections'] = ConnectionList.stub(stub[:connections]) unless stub[:connections].nil?
        data['allowsHostedConnections'] = stub[:allows_hosted_connections] unless stub[:allows_hosted_connections].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['hasLogicalRedundancy'] = stub[:has_logical_redundancy] unless stub[:has_logical_redundancy].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['providerName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data['macSecCapable'] = stub[:mac_sec_capable] unless stub[:mac_sec_capable].nil?
        data['encryptionMode'] = stub[:encryption_mode] unless stub[:encryption_mode].nil?
        data['macSecKeys'] = MacSecKeyList.stub(stub[:mac_sec_keys]) unless stub[:mac_sec_keys].nil?
        data
      end
    end

    # Operation Stubber for DescribeLoa
    class DescribeLoa
      def self.default(visited=[])
        {
          loa_content: 'loa_content',
          loa_content_type: 'loa_content_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['loaContent'] = ::Base64::encode64(stub[:loa_content]) unless stub[:loa_content].nil?
        data['loaContentType'] = stub[:loa_content_type] unless stub[:loa_content_type].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeLocations
    class DescribeLocations
      def self.default(visited=[])
        {
          locations: LocationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['locations'] = LocationList.stub(stub[:locations]) unless stub[:locations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LocationList
    class LocationList
      def self.default(visited=[])
        return nil if visited.include?('LocationList')
        visited = visited + ['LocationList']
        [
          Location.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Location.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Location
    class Location
      def self.default(visited=[])
        return nil if visited.include?('Location')
        visited = visited + ['Location']
        {
          location_code: 'location_code',
          location_name: 'location_name',
          region: 'region',
          available_port_speeds: AvailablePortSpeeds.default(visited),
          available_providers: ProviderList.default(visited),
          available_mac_sec_port_speeds: AvailableMacSecPortSpeeds.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Location.new
        data = {}
        data['locationCode'] = stub[:location_code] unless stub[:location_code].nil?
        data['locationName'] = stub[:location_name] unless stub[:location_name].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['availablePortSpeeds'] = AvailablePortSpeeds.stub(stub[:available_port_speeds]) unless stub[:available_port_speeds].nil?
        data['availableProviders'] = ProviderList.stub(stub[:available_providers]) unless stub[:available_providers].nil?
        data['availableMacSecPortSpeeds'] = AvailableMacSecPortSpeeds.stub(stub[:available_mac_sec_port_speeds]) unless stub[:available_mac_sec_port_speeds].nil?
        data
      end
    end

    # List Stubber for AvailableMacSecPortSpeeds
    class AvailableMacSecPortSpeeds
      def self.default(visited=[])
        return nil if visited.include?('AvailableMacSecPortSpeeds')
        visited = visited + ['AvailableMacSecPortSpeeds']
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

    # List Stubber for ProviderList
    class ProviderList
      def self.default(visited=[])
        return nil if visited.include?('ProviderList')
        visited = visited + ['ProviderList']
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

    # List Stubber for AvailablePortSpeeds
    class AvailablePortSpeeds
      def self.default(visited=[])
        return nil if visited.include?('AvailablePortSpeeds')
        visited = visited + ['AvailablePortSpeeds']
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

    # Operation Stubber for DescribeRouterConfiguration
    class DescribeRouterConfiguration
      def self.default(visited=[])
        {
          customer_router_config: 'customer_router_config',
          router: RouterType.default(visited),
          virtual_interface_id: 'virtual_interface_id',
          virtual_interface_name: 'virtual_interface_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['customerRouterConfig'] = stub[:customer_router_config] unless stub[:customer_router_config].nil?
        data['router'] = RouterType.stub(stub[:router]) unless stub[:router].nil?
        data['virtualInterfaceId'] = stub[:virtual_interface_id] unless stub[:virtual_interface_id].nil?
        data['virtualInterfaceName'] = stub[:virtual_interface_name] unless stub[:virtual_interface_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RouterType
    class RouterType
      def self.default(visited=[])
        return nil if visited.include?('RouterType')
        visited = visited + ['RouterType']
        {
          vendor: 'vendor',
          platform: 'platform',
          software: 'software',
          xslt_template_name: 'xslt_template_name',
          xslt_template_name_for_mac_sec: 'xslt_template_name_for_mac_sec',
          router_type_identifier: 'router_type_identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::RouterType.new
        data = {}
        data['vendor'] = stub[:vendor] unless stub[:vendor].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['software'] = stub[:software] unless stub[:software].nil?
        data['xsltTemplateName'] = stub[:xslt_template_name] unless stub[:xslt_template_name].nil?
        data['xsltTemplateNameForMacSec'] = stub[:xslt_template_name_for_mac_sec] unless stub[:xslt_template_name_for_mac_sec].nil?
        data['routerTypeIdentifier'] = stub[:router_type_identifier] unless stub[:router_type_identifier].nil?
        data
      end
    end

    # Operation Stubber for DescribeTags
    class DescribeTags
      def self.default(visited=[])
        {
          resource_tags: ResourceTagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['resourceTags'] = ResourceTagList.stub(stub[:resource_tags]) unless stub[:resource_tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceTagList
    class ResourceTagList
      def self.default(visited=[])
        return nil if visited.include?('ResourceTagList')
        visited = visited + ['ResourceTagList']
        [
          ResourceTag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceTag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceTag
    class ResourceTag
      def self.default(visited=[])
        return nil if visited.include?('ResourceTag')
        visited = visited + ['ResourceTag']
        {
          resource_arn: 'resource_arn',
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceTag.new
        data = {}
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for DescribeVirtualGateways
    class DescribeVirtualGateways
      def self.default(visited=[])
        {
          virtual_gateways: VirtualGatewayList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['virtualGateways'] = VirtualGatewayList.stub(stub[:virtual_gateways]) unless stub[:virtual_gateways].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for VirtualGatewayList
    class VirtualGatewayList
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayList')
        visited = visited + ['VirtualGatewayList']
        [
          VirtualGateway.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VirtualGateway.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VirtualGateway
    class VirtualGateway
      def self.default(visited=[])
        return nil if visited.include?('VirtualGateway')
        visited = visited + ['VirtualGateway']
        {
          virtual_gateway_id: 'virtual_gateway_id',
          virtual_gateway_state: 'virtual_gateway_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGateway.new
        data = {}
        data['virtualGatewayId'] = stub[:virtual_gateway_id] unless stub[:virtual_gateway_id].nil?
        data['virtualGatewayState'] = stub[:virtual_gateway_state] unless stub[:virtual_gateway_state].nil?
        data
      end
    end

    # Operation Stubber for DescribeVirtualInterfaces
    class DescribeVirtualInterfaces
      def self.default(visited=[])
        {
          virtual_interfaces: VirtualInterfaceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['virtualInterfaces'] = VirtualInterfaceList.stub(stub[:virtual_interfaces]) unless stub[:virtual_interfaces].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for VirtualInterfaceList
    class VirtualInterfaceList
      def self.default(visited=[])
        return nil if visited.include?('VirtualInterfaceList')
        visited = visited + ['VirtualInterfaceList']
        [
          VirtualInterface.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VirtualInterface.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DisassociateConnectionFromLag
    class DisassociateConnectionFromLag
      def self.default(visited=[])
        {
          owner_account: 'owner_account',
          connection_id: 'connection_id',
          connection_name: 'connection_name',
          connection_state: 'connection_state',
          region: 'region',
          location: 'location',
          bandwidth: 'bandwidth',
          vlan: 1,
          partner_name: 'partner_name',
          loa_issue_time: Time.now,
          lag_id: 'lag_id',
          aws_device: 'aws_device',
          jumbo_frame_capable: false,
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          has_logical_redundancy: 'has_logical_redundancy',
          tags: TagList.default(visited),
          provider_name: 'provider_name',
          mac_sec_capable: false,
          port_encryption_status: 'port_encryption_status',
          encryption_mode: 'encryption_mode',
          mac_sec_keys: MacSecKeyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['connectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['connectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['bandwidth'] = stub[:bandwidth] unless stub[:bandwidth].nil?
        data['vlan'] = stub[:vlan] unless stub[:vlan].nil?
        data['partnerName'] = stub[:partner_name] unless stub[:partner_name].nil?
        data['loaIssueTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:loa_issue_time]).to_i unless stub[:loa_issue_time].nil?
        data['lagId'] = stub[:lag_id] unless stub[:lag_id].nil?
        data['awsDevice'] = stub[:aws_device] unless stub[:aws_device].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['hasLogicalRedundancy'] = stub[:has_logical_redundancy] unless stub[:has_logical_redundancy].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['providerName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data['macSecCapable'] = stub[:mac_sec_capable] unless stub[:mac_sec_capable].nil?
        data['portEncryptionStatus'] = stub[:port_encryption_status] unless stub[:port_encryption_status].nil?
        data['encryptionMode'] = stub[:encryption_mode] unless stub[:encryption_mode].nil?
        data['macSecKeys'] = MacSecKeyList.stub(stub[:mac_sec_keys]) unless stub[:mac_sec_keys].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateMacSecKey
    class DisassociateMacSecKey
      def self.default(visited=[])
        {
          connection_id: 'connection_id',
          mac_sec_keys: MacSecKeyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['macSecKeys'] = MacSecKeyList.stub(stub[:mac_sec_keys]) unless stub[:mac_sec_keys].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListVirtualInterfaceTestHistory
    class ListVirtualInterfaceTestHistory
      def self.default(visited=[])
        {
          virtual_interface_test_history: VirtualInterfaceTestHistoryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['virtualInterfaceTestHistory'] = VirtualInterfaceTestHistoryList.stub(stub[:virtual_interface_test_history]) unless stub[:virtual_interface_test_history].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for VirtualInterfaceTestHistoryList
    class VirtualInterfaceTestHistoryList
      def self.default(visited=[])
        return nil if visited.include?('VirtualInterfaceTestHistoryList')
        visited = visited + ['VirtualInterfaceTestHistoryList']
        [
          VirtualInterfaceTestHistory.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VirtualInterfaceTestHistory.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VirtualInterfaceTestHistory
    class VirtualInterfaceTestHistory
      def self.default(visited=[])
        return nil if visited.include?('VirtualInterfaceTestHistory')
        visited = visited + ['VirtualInterfaceTestHistory']
        {
          test_id: 'test_id',
          virtual_interface_id: 'virtual_interface_id',
          bgp_peers: BGPPeerIdList.default(visited),
          status: 'status',
          owner_account: 'owner_account',
          test_duration_in_minutes: 1,
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualInterfaceTestHistory.new
        data = {}
        data['testId'] = stub[:test_id] unless stub[:test_id].nil?
        data['virtualInterfaceId'] = stub[:virtual_interface_id] unless stub[:virtual_interface_id].nil?
        data['bgpPeers'] = BGPPeerIdList.stub(stub[:bgp_peers]) unless stub[:bgp_peers].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['testDurationInMinutes'] = stub[:test_duration_in_minutes] unless stub[:test_duration_in_minutes].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data
      end
    end

    # List Stubber for BGPPeerIdList
    class BGPPeerIdList
      def self.default(visited=[])
        return nil if visited.include?('BGPPeerIdList')
        visited = visited + ['BGPPeerIdList']
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

    # Operation Stubber for StartBgpFailoverTest
    class StartBgpFailoverTest
      def self.default(visited=[])
        {
          virtual_interface_test: VirtualInterfaceTestHistory.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['virtualInterfaceTest'] = VirtualInterfaceTestHistory.stub(stub[:virtual_interface_test]) unless stub[:virtual_interface_test].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopBgpFailoverTest
    class StopBgpFailoverTest
      def self.default(visited=[])
        {
          virtual_interface_test: VirtualInterfaceTestHistory.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['virtualInterfaceTest'] = VirtualInterfaceTestHistory.stub(stub[:virtual_interface_test]) unless stub[:virtual_interface_test].nil?
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

    # Operation Stubber for UpdateConnection
    class UpdateConnection
      def self.default(visited=[])
        {
          owner_account: 'owner_account',
          connection_id: 'connection_id',
          connection_name: 'connection_name',
          connection_state: 'connection_state',
          region: 'region',
          location: 'location',
          bandwidth: 'bandwidth',
          vlan: 1,
          partner_name: 'partner_name',
          loa_issue_time: Time.now,
          lag_id: 'lag_id',
          aws_device: 'aws_device',
          jumbo_frame_capable: false,
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          has_logical_redundancy: 'has_logical_redundancy',
          tags: TagList.default(visited),
          provider_name: 'provider_name',
          mac_sec_capable: false,
          port_encryption_status: 'port_encryption_status',
          encryption_mode: 'encryption_mode',
          mac_sec_keys: MacSecKeyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['connectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['connectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['bandwidth'] = stub[:bandwidth] unless stub[:bandwidth].nil?
        data['vlan'] = stub[:vlan] unless stub[:vlan].nil?
        data['partnerName'] = stub[:partner_name] unless stub[:partner_name].nil?
        data['loaIssueTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:loa_issue_time]).to_i unless stub[:loa_issue_time].nil?
        data['lagId'] = stub[:lag_id] unless stub[:lag_id].nil?
        data['awsDevice'] = stub[:aws_device] unless stub[:aws_device].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['hasLogicalRedundancy'] = stub[:has_logical_redundancy] unless stub[:has_logical_redundancy].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['providerName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data['macSecCapable'] = stub[:mac_sec_capable] unless stub[:mac_sec_capable].nil?
        data['portEncryptionStatus'] = stub[:port_encryption_status] unless stub[:port_encryption_status].nil?
        data['encryptionMode'] = stub[:encryption_mode] unless stub[:encryption_mode].nil?
        data['macSecKeys'] = MacSecKeyList.stub(stub[:mac_sec_keys]) unless stub[:mac_sec_keys].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDirectConnectGateway
    class UpdateDirectConnectGateway
      def self.default(visited=[])
        {
          direct_connect_gateway: DirectConnectGateway.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['directConnectGateway'] = DirectConnectGateway.stub(stub[:direct_connect_gateway]) unless stub[:direct_connect_gateway].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDirectConnectGatewayAssociation
    class UpdateDirectConnectGatewayAssociation
      def self.default(visited=[])
        {
          direct_connect_gateway_association: DirectConnectGatewayAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['directConnectGatewayAssociation'] = DirectConnectGatewayAssociation.stub(stub[:direct_connect_gateway_association]) unless stub[:direct_connect_gateway_association].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateLag
    class UpdateLag
      def self.default(visited=[])
        {
          connections_bandwidth: 'connections_bandwidth',
          number_of_connections: 1,
          lag_id: 'lag_id',
          owner_account: 'owner_account',
          lag_name: 'lag_name',
          lag_state: 'lag_state',
          location: 'location',
          region: 'region',
          minimum_links: 1,
          aws_device: 'aws_device',
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          connections: ConnectionList.default(visited),
          allows_hosted_connections: false,
          jumbo_frame_capable: false,
          has_logical_redundancy: 'has_logical_redundancy',
          tags: TagList.default(visited),
          provider_name: 'provider_name',
          mac_sec_capable: false,
          encryption_mode: 'encryption_mode',
          mac_sec_keys: MacSecKeyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['connectionsBandwidth'] = stub[:connections_bandwidth] unless stub[:connections_bandwidth].nil?
        data['numberOfConnections'] = stub[:number_of_connections] unless stub[:number_of_connections].nil?
        data['lagId'] = stub[:lag_id] unless stub[:lag_id].nil?
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['lagName'] = stub[:lag_name] unless stub[:lag_name].nil?
        data['lagState'] = stub[:lag_state] unless stub[:lag_state].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['minimumLinks'] = stub[:minimum_links] unless stub[:minimum_links].nil?
        data['awsDevice'] = stub[:aws_device] unless stub[:aws_device].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['connections'] = ConnectionList.stub(stub[:connections]) unless stub[:connections].nil?
        data['allowsHostedConnections'] = stub[:allows_hosted_connections] unless stub[:allows_hosted_connections].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['hasLogicalRedundancy'] = stub[:has_logical_redundancy] unless stub[:has_logical_redundancy].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['providerName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data['macSecCapable'] = stub[:mac_sec_capable] unless stub[:mac_sec_capable].nil?
        data['encryptionMode'] = stub[:encryption_mode] unless stub[:encryption_mode].nil?
        data['macSecKeys'] = MacSecKeyList.stub(stub[:mac_sec_keys]) unless stub[:mac_sec_keys].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateVirtualInterfaceAttributes
    class UpdateVirtualInterfaceAttributes
      def self.default(visited=[])
        {
          owner_account: 'owner_account',
          virtual_interface_id: 'virtual_interface_id',
          location: 'location',
          connection_id: 'connection_id',
          virtual_interface_type: 'virtual_interface_type',
          virtual_interface_name: 'virtual_interface_name',
          vlan: 1,
          asn: 1,
          amazon_side_asn: 1,
          auth_key: 'auth_key',
          amazon_address: 'amazon_address',
          customer_address: 'customer_address',
          address_family: 'address_family',
          virtual_interface_state: 'virtual_interface_state',
          customer_router_config: 'customer_router_config',
          mtu: 1,
          jumbo_frame_capable: false,
          virtual_gateway_id: 'virtual_gateway_id',
          direct_connect_gateway_id: 'direct_connect_gateway_id',
          route_filter_prefixes: RouteFilterPrefixList.default(visited),
          bgp_peers: BGPPeerList.default(visited),
          region: 'region',
          aws_device_v2: 'aws_device_v2',
          aws_logical_device_id: 'aws_logical_device_id',
          tags: TagList.default(visited),
          site_link_enabled: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ownerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['virtualInterfaceId'] = stub[:virtual_interface_id] unless stub[:virtual_interface_id].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['virtualInterfaceType'] = stub[:virtual_interface_type] unless stub[:virtual_interface_type].nil?
        data['virtualInterfaceName'] = stub[:virtual_interface_name] unless stub[:virtual_interface_name].nil?
        data['vlan'] = stub[:vlan] unless stub[:vlan].nil?
        data['asn'] = stub[:asn] unless stub[:asn].nil?
        data['amazonSideAsn'] = stub[:amazon_side_asn] unless stub[:amazon_side_asn].nil?
        data['authKey'] = stub[:auth_key] unless stub[:auth_key].nil?
        data['amazonAddress'] = stub[:amazon_address] unless stub[:amazon_address].nil?
        data['customerAddress'] = stub[:customer_address] unless stub[:customer_address].nil?
        data['addressFamily'] = stub[:address_family] unless stub[:address_family].nil?
        data['virtualInterfaceState'] = stub[:virtual_interface_state] unless stub[:virtual_interface_state].nil?
        data['customerRouterConfig'] = stub[:customer_router_config] unless stub[:customer_router_config].nil?
        data['mtu'] = stub[:mtu] unless stub[:mtu].nil?
        data['jumboFrameCapable'] = stub[:jumbo_frame_capable] unless stub[:jumbo_frame_capable].nil?
        data['virtualGatewayId'] = stub[:virtual_gateway_id] unless stub[:virtual_gateway_id].nil?
        data['directConnectGatewayId'] = stub[:direct_connect_gateway_id] unless stub[:direct_connect_gateway_id].nil?
        data['routeFilterPrefixes'] = RouteFilterPrefixList.stub(stub[:route_filter_prefixes]) unless stub[:route_filter_prefixes].nil?
        data['bgpPeers'] = BGPPeerList.stub(stub[:bgp_peers]) unless stub[:bgp_peers].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['awsDeviceV2'] = stub[:aws_device_v2] unless stub[:aws_device_v2].nil?
        data['awsLogicalDeviceId'] = stub[:aws_logical_device_id] unless stub[:aws_logical_device_id].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['siteLinkEnabled'] = stub[:site_link_enabled] unless stub[:site_link_enabled].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
