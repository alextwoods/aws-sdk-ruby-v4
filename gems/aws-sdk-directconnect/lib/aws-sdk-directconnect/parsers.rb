# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::DirectConnect
  module Parsers

    # Operation Parser for AcceptDirectConnectGatewayAssociationProposal
    class AcceptDirectConnectGatewayAssociationProposal
      def self.parse(http_resp)
        data = Types::AcceptDirectConnectGatewayAssociationProposalOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.direct_connect_gateway_association = (DirectConnectGatewayAssociation.parse(map['directConnectGatewayAssociation']) unless map['directConnectGatewayAssociation'].nil?)
        data
      end
    end

    class DirectConnectGatewayAssociation
      def self.parse(map)
        data = Types::DirectConnectGatewayAssociation.new
        data.direct_connect_gateway_id = map['directConnectGatewayId']
        data.direct_connect_gateway_owner_account = map['directConnectGatewayOwnerAccount']
        data.association_state = map['associationState']
        data.state_change_error = map['stateChangeError']
        data.associated_gateway = (AssociatedGateway.parse(map['associatedGateway']) unless map['associatedGateway'].nil?)
        data.association_id = map['associationId']
        data.allowed_prefixes_to_direct_connect_gateway = (RouteFilterPrefixList.parse(map['allowedPrefixesToDirectConnectGateway']) unless map['allowedPrefixesToDirectConnectGateway'].nil?)
        data.virtual_gateway_id = map['virtualGatewayId']
        data.virtual_gateway_region = map['virtualGatewayRegion']
        data.virtual_gateway_owner_account = map['virtualGatewayOwnerAccount']
        return data
      end
    end

    class RouteFilterPrefixList
      def self.parse(list)
        list.map do |value|
          RouteFilterPrefix.parse(value) unless value.nil?
        end
      end
    end

    class RouteFilterPrefix
      def self.parse(map)
        data = Types::RouteFilterPrefix.new
        data.cidr = map['cidr']
        return data
      end
    end

    class AssociatedGateway
      def self.parse(map)
        data = Types::AssociatedGateway.new
        data.id = map['id']
        data.type = map['type']
        data.owner_account = map['ownerAccount']
        data.region = map['region']
        return data
      end
    end

    # Error Parser for DirectConnectServerException
    class DirectConnectServerException
      def self.parse(http_resp)
        data = Types::DirectConnectServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DirectConnectClientException
    class DirectConnectClientException
      def self.parse(http_resp)
        data = Types::DirectConnectClientException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AllocateConnectionOnInterconnect
    class AllocateConnectionOnInterconnect
      def self.parse(http_resp)
        data = Types::AllocateConnectionOnInterconnectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.owner_account = map['ownerAccount']
        data.connection_id = map['connectionId']
        data.connection_name = map['connectionName']
        data.connection_state = map['connectionState']
        data.region = map['region']
        data.location = map['location']
        data.bandwidth = map['bandwidth']
        data.vlan = map['vlan']
        data.partner_name = map['partnerName']
        data.loa_issue_time = Time.at(map['loaIssueTime'].to_i) if map['loaIssueTime']
        data.lag_id = map['lagId']
        data.aws_device = map['awsDevice']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.has_logical_redundancy = map['hasLogicalRedundancy']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.provider_name = map['providerName']
        data.mac_sec_capable = map['macSecCapable']
        data.port_encryption_status = map['portEncryptionStatus']
        data.encryption_mode = map['encryptionMode']
        data.mac_sec_keys = (MacSecKeyList.parse(map['macSecKeys']) unless map['macSecKeys'].nil?)
        data
      end
    end

    class MacSecKeyList
      def self.parse(list)
        list.map do |value|
          MacSecKey.parse(value) unless value.nil?
        end
      end
    end

    class MacSecKey
      def self.parse(map)
        data = Types::MacSecKey.new
        data.secret_arn = map['secretARN']
        data.ckn = map['ckn']
        data.state = map['state']
        data.start_on = map['startOn']
        return data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for AllocateHostedConnection
    class AllocateHostedConnection
      def self.parse(http_resp)
        data = Types::AllocateHostedConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.owner_account = map['ownerAccount']
        data.connection_id = map['connectionId']
        data.connection_name = map['connectionName']
        data.connection_state = map['connectionState']
        data.region = map['region']
        data.location = map['location']
        data.bandwidth = map['bandwidth']
        data.vlan = map['vlan']
        data.partner_name = map['partnerName']
        data.loa_issue_time = Time.at(map['loaIssueTime'].to_i) if map['loaIssueTime']
        data.lag_id = map['lagId']
        data.aws_device = map['awsDevice']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.has_logical_redundancy = map['hasLogicalRedundancy']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.provider_name = map['providerName']
        data.mac_sec_capable = map['macSecCapable']
        data.port_encryption_status = map['portEncryptionStatus']
        data.encryption_mode = map['encryptionMode']
        data.mac_sec_keys = (MacSecKeyList.parse(map['macSecKeys']) unless map['macSecKeys'].nil?)
        data
      end
    end

    # Error Parser for DuplicateTagKeysException
    class DuplicateTagKeysException
      def self.parse(http_resp)
        data = Types::DuplicateTagKeysException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AllocatePrivateVirtualInterface
    class AllocatePrivateVirtualInterface
      def self.parse(http_resp)
        data = Types::AllocatePrivateVirtualInterfaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.owner_account = map['ownerAccount']
        data.virtual_interface_id = map['virtualInterfaceId']
        data.location = map['location']
        data.connection_id = map['connectionId']
        data.virtual_interface_type = map['virtualInterfaceType']
        data.virtual_interface_name = map['virtualInterfaceName']
        data.vlan = map['vlan']
        data.asn = map['asn']
        data.amazon_side_asn = map['amazonSideAsn']
        data.auth_key = map['authKey']
        data.amazon_address = map['amazonAddress']
        data.customer_address = map['customerAddress']
        data.address_family = map['addressFamily']
        data.virtual_interface_state = map['virtualInterfaceState']
        data.customer_router_config = map['customerRouterConfig']
        data.mtu = map['mtu']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.virtual_gateway_id = map['virtualGatewayId']
        data.direct_connect_gateway_id = map['directConnectGatewayId']
        data.route_filter_prefixes = (RouteFilterPrefixList.parse(map['routeFilterPrefixes']) unless map['routeFilterPrefixes'].nil?)
        data.bgp_peers = (BGPPeerList.parse(map['bgpPeers']) unless map['bgpPeers'].nil?)
        data.region = map['region']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.site_link_enabled = map['siteLinkEnabled']
        data
      end
    end

    class BGPPeerList
      def self.parse(list)
        list.map do |value|
          BGPPeer.parse(value) unless value.nil?
        end
      end
    end

    class BGPPeer
      def self.parse(map)
        data = Types::BGPPeer.new
        data.bgp_peer_id = map['bgpPeerId']
        data.asn = map['asn']
        data.auth_key = map['authKey']
        data.address_family = map['addressFamily']
        data.amazon_address = map['amazonAddress']
        data.customer_address = map['customerAddress']
        data.bgp_peer_state = map['bgpPeerState']
        data.bgp_status = map['bgpStatus']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        return data
      end
    end

    # Operation Parser for AllocatePublicVirtualInterface
    class AllocatePublicVirtualInterface
      def self.parse(http_resp)
        data = Types::AllocatePublicVirtualInterfaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.owner_account = map['ownerAccount']
        data.virtual_interface_id = map['virtualInterfaceId']
        data.location = map['location']
        data.connection_id = map['connectionId']
        data.virtual_interface_type = map['virtualInterfaceType']
        data.virtual_interface_name = map['virtualInterfaceName']
        data.vlan = map['vlan']
        data.asn = map['asn']
        data.amazon_side_asn = map['amazonSideAsn']
        data.auth_key = map['authKey']
        data.amazon_address = map['amazonAddress']
        data.customer_address = map['customerAddress']
        data.address_family = map['addressFamily']
        data.virtual_interface_state = map['virtualInterfaceState']
        data.customer_router_config = map['customerRouterConfig']
        data.mtu = map['mtu']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.virtual_gateway_id = map['virtualGatewayId']
        data.direct_connect_gateway_id = map['directConnectGatewayId']
        data.route_filter_prefixes = (RouteFilterPrefixList.parse(map['routeFilterPrefixes']) unless map['routeFilterPrefixes'].nil?)
        data.bgp_peers = (BGPPeerList.parse(map['bgpPeers']) unless map['bgpPeers'].nil?)
        data.region = map['region']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.site_link_enabled = map['siteLinkEnabled']
        data
      end
    end

    # Operation Parser for AllocateTransitVirtualInterface
    class AllocateTransitVirtualInterface
      def self.parse(http_resp)
        data = Types::AllocateTransitVirtualInterfaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.virtual_interface = (VirtualInterface.parse(map['virtualInterface']) unless map['virtualInterface'].nil?)
        data
      end
    end

    class VirtualInterface
      def self.parse(map)
        data = Types::VirtualInterface.new
        data.owner_account = map['ownerAccount']
        data.virtual_interface_id = map['virtualInterfaceId']
        data.location = map['location']
        data.connection_id = map['connectionId']
        data.virtual_interface_type = map['virtualInterfaceType']
        data.virtual_interface_name = map['virtualInterfaceName']
        data.vlan = map['vlan']
        data.asn = map['asn']
        data.amazon_side_asn = map['amazonSideAsn']
        data.auth_key = map['authKey']
        data.amazon_address = map['amazonAddress']
        data.customer_address = map['customerAddress']
        data.address_family = map['addressFamily']
        data.virtual_interface_state = map['virtualInterfaceState']
        data.customer_router_config = map['customerRouterConfig']
        data.mtu = map['mtu']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.virtual_gateway_id = map['virtualGatewayId']
        data.direct_connect_gateway_id = map['directConnectGatewayId']
        data.route_filter_prefixes = (RouteFilterPrefixList.parse(map['routeFilterPrefixes']) unless map['routeFilterPrefixes'].nil?)
        data.bgp_peers = (BGPPeerList.parse(map['bgpPeers']) unless map['bgpPeers'].nil?)
        data.region = map['region']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.site_link_enabled = map['siteLinkEnabled']
        return data
      end
    end

    # Operation Parser for AssociateConnectionWithLag
    class AssociateConnectionWithLag
      def self.parse(http_resp)
        data = Types::AssociateConnectionWithLagOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.owner_account = map['ownerAccount']
        data.connection_id = map['connectionId']
        data.connection_name = map['connectionName']
        data.connection_state = map['connectionState']
        data.region = map['region']
        data.location = map['location']
        data.bandwidth = map['bandwidth']
        data.vlan = map['vlan']
        data.partner_name = map['partnerName']
        data.loa_issue_time = Time.at(map['loaIssueTime'].to_i) if map['loaIssueTime']
        data.lag_id = map['lagId']
        data.aws_device = map['awsDevice']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.has_logical_redundancy = map['hasLogicalRedundancy']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.provider_name = map['providerName']
        data.mac_sec_capable = map['macSecCapable']
        data.port_encryption_status = map['portEncryptionStatus']
        data.encryption_mode = map['encryptionMode']
        data.mac_sec_keys = (MacSecKeyList.parse(map['macSecKeys']) unless map['macSecKeys'].nil?)
        data
      end
    end

    # Operation Parser for AssociateHostedConnection
    class AssociateHostedConnection
      def self.parse(http_resp)
        data = Types::AssociateHostedConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.owner_account = map['ownerAccount']
        data.connection_id = map['connectionId']
        data.connection_name = map['connectionName']
        data.connection_state = map['connectionState']
        data.region = map['region']
        data.location = map['location']
        data.bandwidth = map['bandwidth']
        data.vlan = map['vlan']
        data.partner_name = map['partnerName']
        data.loa_issue_time = Time.at(map['loaIssueTime'].to_i) if map['loaIssueTime']
        data.lag_id = map['lagId']
        data.aws_device = map['awsDevice']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.has_logical_redundancy = map['hasLogicalRedundancy']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.provider_name = map['providerName']
        data.mac_sec_capable = map['macSecCapable']
        data.port_encryption_status = map['portEncryptionStatus']
        data.encryption_mode = map['encryptionMode']
        data.mac_sec_keys = (MacSecKeyList.parse(map['macSecKeys']) unless map['macSecKeys'].nil?)
        data
      end
    end

    # Operation Parser for AssociateMacSecKey
    class AssociateMacSecKey
      def self.parse(http_resp)
        data = Types::AssociateMacSecKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connection_id = map['connectionId']
        data.mac_sec_keys = (MacSecKeyList.parse(map['macSecKeys']) unless map['macSecKeys'].nil?)
        data
      end
    end

    # Operation Parser for AssociateVirtualInterface
    class AssociateVirtualInterface
      def self.parse(http_resp)
        data = Types::AssociateVirtualInterfaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.owner_account = map['ownerAccount']
        data.virtual_interface_id = map['virtualInterfaceId']
        data.location = map['location']
        data.connection_id = map['connectionId']
        data.virtual_interface_type = map['virtualInterfaceType']
        data.virtual_interface_name = map['virtualInterfaceName']
        data.vlan = map['vlan']
        data.asn = map['asn']
        data.amazon_side_asn = map['amazonSideAsn']
        data.auth_key = map['authKey']
        data.amazon_address = map['amazonAddress']
        data.customer_address = map['customerAddress']
        data.address_family = map['addressFamily']
        data.virtual_interface_state = map['virtualInterfaceState']
        data.customer_router_config = map['customerRouterConfig']
        data.mtu = map['mtu']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.virtual_gateway_id = map['virtualGatewayId']
        data.direct_connect_gateway_id = map['directConnectGatewayId']
        data.route_filter_prefixes = (RouteFilterPrefixList.parse(map['routeFilterPrefixes']) unless map['routeFilterPrefixes'].nil?)
        data.bgp_peers = (BGPPeerList.parse(map['bgpPeers']) unless map['bgpPeers'].nil?)
        data.region = map['region']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.site_link_enabled = map['siteLinkEnabled']
        data
      end
    end

    # Operation Parser for ConfirmConnection
    class ConfirmConnection
      def self.parse(http_resp)
        data = Types::ConfirmConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connection_state = map['connectionState']
        data
      end
    end

    # Operation Parser for ConfirmCustomerAgreement
    class ConfirmCustomerAgreement
      def self.parse(http_resp)
        data = Types::ConfirmCustomerAgreementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['status']
        data
      end
    end

    # Operation Parser for ConfirmPrivateVirtualInterface
    class ConfirmPrivateVirtualInterface
      def self.parse(http_resp)
        data = Types::ConfirmPrivateVirtualInterfaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.virtual_interface_state = map['virtualInterfaceState']
        data
      end
    end

    # Operation Parser for ConfirmPublicVirtualInterface
    class ConfirmPublicVirtualInterface
      def self.parse(http_resp)
        data = Types::ConfirmPublicVirtualInterfaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.virtual_interface_state = map['virtualInterfaceState']
        data
      end
    end

    # Operation Parser for ConfirmTransitVirtualInterface
    class ConfirmTransitVirtualInterface
      def self.parse(http_resp)
        data = Types::ConfirmTransitVirtualInterfaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.virtual_interface_state = map['virtualInterfaceState']
        data
      end
    end

    # Operation Parser for CreateBGPPeer
    class CreateBGPPeer
      def self.parse(http_resp)
        data = Types::CreateBGPPeerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.virtual_interface = (VirtualInterface.parse(map['virtualInterface']) unless map['virtualInterface'].nil?)
        data
      end
    end

    # Operation Parser for CreateConnection
    class CreateConnection
      def self.parse(http_resp)
        data = Types::CreateConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.owner_account = map['ownerAccount']
        data.connection_id = map['connectionId']
        data.connection_name = map['connectionName']
        data.connection_state = map['connectionState']
        data.region = map['region']
        data.location = map['location']
        data.bandwidth = map['bandwidth']
        data.vlan = map['vlan']
        data.partner_name = map['partnerName']
        data.loa_issue_time = Time.at(map['loaIssueTime'].to_i) if map['loaIssueTime']
        data.lag_id = map['lagId']
        data.aws_device = map['awsDevice']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.has_logical_redundancy = map['hasLogicalRedundancy']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.provider_name = map['providerName']
        data.mac_sec_capable = map['macSecCapable']
        data.port_encryption_status = map['portEncryptionStatus']
        data.encryption_mode = map['encryptionMode']
        data.mac_sec_keys = (MacSecKeyList.parse(map['macSecKeys']) unless map['macSecKeys'].nil?)
        data
      end
    end

    # Operation Parser for CreateDirectConnectGateway
    class CreateDirectConnectGateway
      def self.parse(http_resp)
        data = Types::CreateDirectConnectGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.direct_connect_gateway = (DirectConnectGateway.parse(map['directConnectGateway']) unless map['directConnectGateway'].nil?)
        data
      end
    end

    class DirectConnectGateway
      def self.parse(map)
        data = Types::DirectConnectGateway.new
        data.direct_connect_gateway_id = map['directConnectGatewayId']
        data.direct_connect_gateway_name = map['directConnectGatewayName']
        data.amazon_side_asn = map['amazonSideAsn']
        data.owner_account = map['ownerAccount']
        data.direct_connect_gateway_state = map['directConnectGatewayState']
        data.state_change_error = map['stateChangeError']
        return data
      end
    end

    # Operation Parser for CreateDirectConnectGatewayAssociation
    class CreateDirectConnectGatewayAssociation
      def self.parse(http_resp)
        data = Types::CreateDirectConnectGatewayAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.direct_connect_gateway_association = (DirectConnectGatewayAssociation.parse(map['directConnectGatewayAssociation']) unless map['directConnectGatewayAssociation'].nil?)
        data
      end
    end

    # Operation Parser for CreateDirectConnectGatewayAssociationProposal
    class CreateDirectConnectGatewayAssociationProposal
      def self.parse(http_resp)
        data = Types::CreateDirectConnectGatewayAssociationProposalOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.direct_connect_gateway_association_proposal = (DirectConnectGatewayAssociationProposal.parse(map['directConnectGatewayAssociationProposal']) unless map['directConnectGatewayAssociationProposal'].nil?)
        data
      end
    end

    class DirectConnectGatewayAssociationProposal
      def self.parse(map)
        data = Types::DirectConnectGatewayAssociationProposal.new
        data.proposal_id = map['proposalId']
        data.direct_connect_gateway_id = map['directConnectGatewayId']
        data.direct_connect_gateway_owner_account = map['directConnectGatewayOwnerAccount']
        data.proposal_state = map['proposalState']
        data.associated_gateway = (AssociatedGateway.parse(map['associatedGateway']) unless map['associatedGateway'].nil?)
        data.existing_allowed_prefixes_to_direct_connect_gateway = (RouteFilterPrefixList.parse(map['existingAllowedPrefixesToDirectConnectGateway']) unless map['existingAllowedPrefixesToDirectConnectGateway'].nil?)
        data.requested_allowed_prefixes_to_direct_connect_gateway = (RouteFilterPrefixList.parse(map['requestedAllowedPrefixesToDirectConnectGateway']) unless map['requestedAllowedPrefixesToDirectConnectGateway'].nil?)
        return data
      end
    end

    # Operation Parser for CreateInterconnect
    class CreateInterconnect
      def self.parse(http_resp)
        data = Types::CreateInterconnectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.interconnect_id = map['interconnectId']
        data.interconnect_name = map['interconnectName']
        data.interconnect_state = map['interconnectState']
        data.region = map['region']
        data.location = map['location']
        data.bandwidth = map['bandwidth']
        data.loa_issue_time = Time.at(map['loaIssueTime'].to_i) if map['loaIssueTime']
        data.lag_id = map['lagId']
        data.aws_device = map['awsDevice']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.has_logical_redundancy = map['hasLogicalRedundancy']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.provider_name = map['providerName']
        data
      end
    end

    # Operation Parser for CreateLag
    class CreateLag
      def self.parse(http_resp)
        data = Types::CreateLagOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connections_bandwidth = map['connectionsBandwidth']
        data.number_of_connections = map['numberOfConnections']
        data.lag_id = map['lagId']
        data.owner_account = map['ownerAccount']
        data.lag_name = map['lagName']
        data.lag_state = map['lagState']
        data.location = map['location']
        data.region = map['region']
        data.minimum_links = map['minimumLinks']
        data.aws_device = map['awsDevice']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.connections = (ConnectionList.parse(map['connections']) unless map['connections'].nil?)
        data.allows_hosted_connections = map['allowsHostedConnections']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.has_logical_redundancy = map['hasLogicalRedundancy']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.provider_name = map['providerName']
        data.mac_sec_capable = map['macSecCapable']
        data.encryption_mode = map['encryptionMode']
        data.mac_sec_keys = (MacSecKeyList.parse(map['macSecKeys']) unless map['macSecKeys'].nil?)
        data
      end
    end

    class ConnectionList
      def self.parse(list)
        list.map do |value|
          Connection.parse(value) unless value.nil?
        end
      end
    end

    class Connection
      def self.parse(map)
        data = Types::Connection.new
        data.owner_account = map['ownerAccount']
        data.connection_id = map['connectionId']
        data.connection_name = map['connectionName']
        data.connection_state = map['connectionState']
        data.region = map['region']
        data.location = map['location']
        data.bandwidth = map['bandwidth']
        data.vlan = map['vlan']
        data.partner_name = map['partnerName']
        data.loa_issue_time = Time.at(map['loaIssueTime'].to_i) if map['loaIssueTime']
        data.lag_id = map['lagId']
        data.aws_device = map['awsDevice']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.has_logical_redundancy = map['hasLogicalRedundancy']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.provider_name = map['providerName']
        data.mac_sec_capable = map['macSecCapable']
        data.port_encryption_status = map['portEncryptionStatus']
        data.encryption_mode = map['encryptionMode']
        data.mac_sec_keys = (MacSecKeyList.parse(map['macSecKeys']) unless map['macSecKeys'].nil?)
        return data
      end
    end

    # Operation Parser for CreatePrivateVirtualInterface
    class CreatePrivateVirtualInterface
      def self.parse(http_resp)
        data = Types::CreatePrivateVirtualInterfaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.owner_account = map['ownerAccount']
        data.virtual_interface_id = map['virtualInterfaceId']
        data.location = map['location']
        data.connection_id = map['connectionId']
        data.virtual_interface_type = map['virtualInterfaceType']
        data.virtual_interface_name = map['virtualInterfaceName']
        data.vlan = map['vlan']
        data.asn = map['asn']
        data.amazon_side_asn = map['amazonSideAsn']
        data.auth_key = map['authKey']
        data.amazon_address = map['amazonAddress']
        data.customer_address = map['customerAddress']
        data.address_family = map['addressFamily']
        data.virtual_interface_state = map['virtualInterfaceState']
        data.customer_router_config = map['customerRouterConfig']
        data.mtu = map['mtu']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.virtual_gateway_id = map['virtualGatewayId']
        data.direct_connect_gateway_id = map['directConnectGatewayId']
        data.route_filter_prefixes = (RouteFilterPrefixList.parse(map['routeFilterPrefixes']) unless map['routeFilterPrefixes'].nil?)
        data.bgp_peers = (BGPPeerList.parse(map['bgpPeers']) unless map['bgpPeers'].nil?)
        data.region = map['region']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.site_link_enabled = map['siteLinkEnabled']
        data
      end
    end

    # Operation Parser for CreatePublicVirtualInterface
    class CreatePublicVirtualInterface
      def self.parse(http_resp)
        data = Types::CreatePublicVirtualInterfaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.owner_account = map['ownerAccount']
        data.virtual_interface_id = map['virtualInterfaceId']
        data.location = map['location']
        data.connection_id = map['connectionId']
        data.virtual_interface_type = map['virtualInterfaceType']
        data.virtual_interface_name = map['virtualInterfaceName']
        data.vlan = map['vlan']
        data.asn = map['asn']
        data.amazon_side_asn = map['amazonSideAsn']
        data.auth_key = map['authKey']
        data.amazon_address = map['amazonAddress']
        data.customer_address = map['customerAddress']
        data.address_family = map['addressFamily']
        data.virtual_interface_state = map['virtualInterfaceState']
        data.customer_router_config = map['customerRouterConfig']
        data.mtu = map['mtu']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.virtual_gateway_id = map['virtualGatewayId']
        data.direct_connect_gateway_id = map['directConnectGatewayId']
        data.route_filter_prefixes = (RouteFilterPrefixList.parse(map['routeFilterPrefixes']) unless map['routeFilterPrefixes'].nil?)
        data.bgp_peers = (BGPPeerList.parse(map['bgpPeers']) unless map['bgpPeers'].nil?)
        data.region = map['region']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.site_link_enabled = map['siteLinkEnabled']
        data
      end
    end

    # Operation Parser for CreateTransitVirtualInterface
    class CreateTransitVirtualInterface
      def self.parse(http_resp)
        data = Types::CreateTransitVirtualInterfaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.virtual_interface = (VirtualInterface.parse(map['virtualInterface']) unless map['virtualInterface'].nil?)
        data
      end
    end

    # Operation Parser for DeleteBGPPeer
    class DeleteBGPPeer
      def self.parse(http_resp)
        data = Types::DeleteBGPPeerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.virtual_interface = (VirtualInterface.parse(map['virtualInterface']) unless map['virtualInterface'].nil?)
        data
      end
    end

    # Operation Parser for DeleteConnection
    class DeleteConnection
      def self.parse(http_resp)
        data = Types::DeleteConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.owner_account = map['ownerAccount']
        data.connection_id = map['connectionId']
        data.connection_name = map['connectionName']
        data.connection_state = map['connectionState']
        data.region = map['region']
        data.location = map['location']
        data.bandwidth = map['bandwidth']
        data.vlan = map['vlan']
        data.partner_name = map['partnerName']
        data.loa_issue_time = Time.at(map['loaIssueTime'].to_i) if map['loaIssueTime']
        data.lag_id = map['lagId']
        data.aws_device = map['awsDevice']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.has_logical_redundancy = map['hasLogicalRedundancy']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.provider_name = map['providerName']
        data.mac_sec_capable = map['macSecCapable']
        data.port_encryption_status = map['portEncryptionStatus']
        data.encryption_mode = map['encryptionMode']
        data.mac_sec_keys = (MacSecKeyList.parse(map['macSecKeys']) unless map['macSecKeys'].nil?)
        data
      end
    end

    # Operation Parser for DeleteDirectConnectGateway
    class DeleteDirectConnectGateway
      def self.parse(http_resp)
        data = Types::DeleteDirectConnectGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.direct_connect_gateway = (DirectConnectGateway.parse(map['directConnectGateway']) unless map['directConnectGateway'].nil?)
        data
      end
    end

    # Operation Parser for DeleteDirectConnectGatewayAssociation
    class DeleteDirectConnectGatewayAssociation
      def self.parse(http_resp)
        data = Types::DeleteDirectConnectGatewayAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.direct_connect_gateway_association = (DirectConnectGatewayAssociation.parse(map['directConnectGatewayAssociation']) unless map['directConnectGatewayAssociation'].nil?)
        data
      end
    end

    # Operation Parser for DeleteDirectConnectGatewayAssociationProposal
    class DeleteDirectConnectGatewayAssociationProposal
      def self.parse(http_resp)
        data = Types::DeleteDirectConnectGatewayAssociationProposalOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.direct_connect_gateway_association_proposal = (DirectConnectGatewayAssociationProposal.parse(map['directConnectGatewayAssociationProposal']) unless map['directConnectGatewayAssociationProposal'].nil?)
        data
      end
    end

    # Operation Parser for DeleteInterconnect
    class DeleteInterconnect
      def self.parse(http_resp)
        data = Types::DeleteInterconnectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.interconnect_state = map['interconnectState']
        data
      end
    end

    # Operation Parser for DeleteLag
    class DeleteLag
      def self.parse(http_resp)
        data = Types::DeleteLagOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connections_bandwidth = map['connectionsBandwidth']
        data.number_of_connections = map['numberOfConnections']
        data.lag_id = map['lagId']
        data.owner_account = map['ownerAccount']
        data.lag_name = map['lagName']
        data.lag_state = map['lagState']
        data.location = map['location']
        data.region = map['region']
        data.minimum_links = map['minimumLinks']
        data.aws_device = map['awsDevice']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.connections = (ConnectionList.parse(map['connections']) unless map['connections'].nil?)
        data.allows_hosted_connections = map['allowsHostedConnections']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.has_logical_redundancy = map['hasLogicalRedundancy']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.provider_name = map['providerName']
        data.mac_sec_capable = map['macSecCapable']
        data.encryption_mode = map['encryptionMode']
        data.mac_sec_keys = (MacSecKeyList.parse(map['macSecKeys']) unless map['macSecKeys'].nil?)
        data
      end
    end

    # Operation Parser for DeleteVirtualInterface
    class DeleteVirtualInterface
      def self.parse(http_resp)
        data = Types::DeleteVirtualInterfaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.virtual_interface_state = map['virtualInterfaceState']
        data
      end
    end

    # Operation Parser for DescribeConnectionLoa
    class DescribeConnectionLoa
      def self.parse(http_resp)
        data = Types::DescribeConnectionLoaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.loa = (Loa.parse(map['loa']) unless map['loa'].nil?)
        data
      end
    end

    class Loa
      def self.parse(map)
        data = Types::Loa.new
        data.loa_content = ::Base64::decode64(map['loaContent']) unless map['loaContent'].nil?
        data.loa_content_type = map['loaContentType']
        return data
      end
    end

    # Operation Parser for DescribeConnections
    class DescribeConnections
      def self.parse(http_resp)
        data = Types::DescribeConnectionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connections = (ConnectionList.parse(map['connections']) unless map['connections'].nil?)
        data
      end
    end

    # Operation Parser for DescribeConnectionsOnInterconnect
    class DescribeConnectionsOnInterconnect
      def self.parse(http_resp)
        data = Types::DescribeConnectionsOnInterconnectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connections = (ConnectionList.parse(map['connections']) unless map['connections'].nil?)
        data
      end
    end

    # Operation Parser for DescribeCustomerMetadata
    class DescribeCustomerMetadata
      def self.parse(http_resp)
        data = Types::DescribeCustomerMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.agreements = (AgreementList.parse(map['agreements']) unless map['agreements'].nil?)
        data.nni_partner_type = map['nniPartnerType']
        data
      end
    end

    class AgreementList
      def self.parse(list)
        list.map do |value|
          CustomerAgreement.parse(value) unless value.nil?
        end
      end
    end

    class CustomerAgreement
      def self.parse(map)
        data = Types::CustomerAgreement.new
        data.agreement_name = map['agreementName']
        data.status = map['status']
        return data
      end
    end

    # Operation Parser for DescribeDirectConnectGatewayAssociationProposals
    class DescribeDirectConnectGatewayAssociationProposals
      def self.parse(http_resp)
        data = Types::DescribeDirectConnectGatewayAssociationProposalsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.direct_connect_gateway_association_proposals = (DirectConnectGatewayAssociationProposalList.parse(map['directConnectGatewayAssociationProposals']) unless map['directConnectGatewayAssociationProposals'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DirectConnectGatewayAssociationProposalList
      def self.parse(list)
        list.map do |value|
          DirectConnectGatewayAssociationProposal.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeDirectConnectGatewayAssociations
    class DescribeDirectConnectGatewayAssociations
      def self.parse(http_resp)
        data = Types::DescribeDirectConnectGatewayAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.direct_connect_gateway_associations = (DirectConnectGatewayAssociationList.parse(map['directConnectGatewayAssociations']) unless map['directConnectGatewayAssociations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DirectConnectGatewayAssociationList
      def self.parse(list)
        list.map do |value|
          DirectConnectGatewayAssociation.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeDirectConnectGatewayAttachments
    class DescribeDirectConnectGatewayAttachments
      def self.parse(http_resp)
        data = Types::DescribeDirectConnectGatewayAttachmentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.direct_connect_gateway_attachments = (DirectConnectGatewayAttachmentList.parse(map['directConnectGatewayAttachments']) unless map['directConnectGatewayAttachments'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DirectConnectGatewayAttachmentList
      def self.parse(list)
        list.map do |value|
          DirectConnectGatewayAttachment.parse(value) unless value.nil?
        end
      end
    end

    class DirectConnectGatewayAttachment
      def self.parse(map)
        data = Types::DirectConnectGatewayAttachment.new
        data.direct_connect_gateway_id = map['directConnectGatewayId']
        data.virtual_interface_id = map['virtualInterfaceId']
        data.virtual_interface_region = map['virtualInterfaceRegion']
        data.virtual_interface_owner_account = map['virtualInterfaceOwnerAccount']
        data.attachment_state = map['attachmentState']
        data.attachment_type = map['attachmentType']
        data.state_change_error = map['stateChangeError']
        return data
      end
    end

    # Operation Parser for DescribeDirectConnectGateways
    class DescribeDirectConnectGateways
      def self.parse(http_resp)
        data = Types::DescribeDirectConnectGatewaysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.direct_connect_gateways = (DirectConnectGatewayList.parse(map['directConnectGateways']) unless map['directConnectGateways'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DirectConnectGatewayList
      def self.parse(list)
        list.map do |value|
          DirectConnectGateway.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeHostedConnections
    class DescribeHostedConnections
      def self.parse(http_resp)
        data = Types::DescribeHostedConnectionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connections = (ConnectionList.parse(map['connections']) unless map['connections'].nil?)
        data
      end
    end

    # Operation Parser for DescribeInterconnectLoa
    class DescribeInterconnectLoa
      def self.parse(http_resp)
        data = Types::DescribeInterconnectLoaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.loa = (Loa.parse(map['loa']) unless map['loa'].nil?)
        data
      end
    end

    # Operation Parser for DescribeInterconnects
    class DescribeInterconnects
      def self.parse(http_resp)
        data = Types::DescribeInterconnectsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.interconnects = (InterconnectList.parse(map['interconnects']) unless map['interconnects'].nil?)
        data
      end
    end

    class InterconnectList
      def self.parse(list)
        list.map do |value|
          Interconnect.parse(value) unless value.nil?
        end
      end
    end

    class Interconnect
      def self.parse(map)
        data = Types::Interconnect.new
        data.interconnect_id = map['interconnectId']
        data.interconnect_name = map['interconnectName']
        data.interconnect_state = map['interconnectState']
        data.region = map['region']
        data.location = map['location']
        data.bandwidth = map['bandwidth']
        data.loa_issue_time = Time.at(map['loaIssueTime'].to_i) if map['loaIssueTime']
        data.lag_id = map['lagId']
        data.aws_device = map['awsDevice']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.has_logical_redundancy = map['hasLogicalRedundancy']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.provider_name = map['providerName']
        return data
      end
    end

    # Operation Parser for DescribeLags
    class DescribeLags
      def self.parse(http_resp)
        data = Types::DescribeLagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.lags = (LagList.parse(map['lags']) unless map['lags'].nil?)
        data
      end
    end

    class LagList
      def self.parse(list)
        list.map do |value|
          Lag.parse(value) unless value.nil?
        end
      end
    end

    class Lag
      def self.parse(map)
        data = Types::Lag.new
        data.connections_bandwidth = map['connectionsBandwidth']
        data.number_of_connections = map['numberOfConnections']
        data.lag_id = map['lagId']
        data.owner_account = map['ownerAccount']
        data.lag_name = map['lagName']
        data.lag_state = map['lagState']
        data.location = map['location']
        data.region = map['region']
        data.minimum_links = map['minimumLinks']
        data.aws_device = map['awsDevice']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.connections = (ConnectionList.parse(map['connections']) unless map['connections'].nil?)
        data.allows_hosted_connections = map['allowsHostedConnections']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.has_logical_redundancy = map['hasLogicalRedundancy']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.provider_name = map['providerName']
        data.mac_sec_capable = map['macSecCapable']
        data.encryption_mode = map['encryptionMode']
        data.mac_sec_keys = (MacSecKeyList.parse(map['macSecKeys']) unless map['macSecKeys'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeLoa
    class DescribeLoa
      def self.parse(http_resp)
        data = Types::DescribeLoaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.loa_content = ::Base64::decode64(map['loaContent']) unless map['loaContent'].nil?
        data.loa_content_type = map['loaContentType']
        data
      end
    end

    # Operation Parser for DescribeLocations
    class DescribeLocations
      def self.parse(http_resp)
        data = Types::DescribeLocationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.locations = (LocationList.parse(map['locations']) unless map['locations'].nil?)
        data
      end
    end

    class LocationList
      def self.parse(list)
        list.map do |value|
          Location.parse(value) unless value.nil?
        end
      end
    end

    class Location
      def self.parse(map)
        data = Types::Location.new
        data.location_code = map['locationCode']
        data.location_name = map['locationName']
        data.region = map['region']
        data.available_port_speeds = (AvailablePortSpeeds.parse(map['availablePortSpeeds']) unless map['availablePortSpeeds'].nil?)
        data.available_providers = (ProviderList.parse(map['availableProviders']) unless map['availableProviders'].nil?)
        data.available_mac_sec_port_speeds = (AvailableMacSecPortSpeeds.parse(map['availableMacSecPortSpeeds']) unless map['availableMacSecPortSpeeds'].nil?)
        return data
      end
    end

    class AvailableMacSecPortSpeeds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ProviderList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class AvailablePortSpeeds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeRouterConfiguration
    class DescribeRouterConfiguration
      def self.parse(http_resp)
        data = Types::DescribeRouterConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.customer_router_config = map['customerRouterConfig']
        data.router = (RouterType.parse(map['router']) unless map['router'].nil?)
        data.virtual_interface_id = map['virtualInterfaceId']
        data.virtual_interface_name = map['virtualInterfaceName']
        data
      end
    end

    class RouterType
      def self.parse(map)
        data = Types::RouterType.new
        data.vendor = map['vendor']
        data.platform = map['platform']
        data.software = map['software']
        data.xslt_template_name = map['xsltTemplateName']
        data.xslt_template_name_for_mac_sec = map['xsltTemplateNameForMacSec']
        data.router_type_identifier = map['routerTypeIdentifier']
        return data
      end
    end

    # Operation Parser for DescribeTags
    class DescribeTags
      def self.parse(http_resp)
        data = Types::DescribeTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_tags = (ResourceTagList.parse(map['resourceTags']) unless map['resourceTags'].nil?)
        data
      end
    end

    class ResourceTagList
      def self.parse(list)
        list.map do |value|
          ResourceTag.parse(value) unless value.nil?
        end
      end
    end

    class ResourceTag
      def self.parse(map)
        data = Types::ResourceTag.new
        data.resource_arn = map['resourceArn']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeVirtualGateways
    class DescribeVirtualGateways
      def self.parse(http_resp)
        data = Types::DescribeVirtualGatewaysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.virtual_gateways = (VirtualGatewayList.parse(map['virtualGateways']) unless map['virtualGateways'].nil?)
        data
      end
    end

    class VirtualGatewayList
      def self.parse(list)
        list.map do |value|
          VirtualGateway.parse(value) unless value.nil?
        end
      end
    end

    class VirtualGateway
      def self.parse(map)
        data = Types::VirtualGateway.new
        data.virtual_gateway_id = map['virtualGatewayId']
        data.virtual_gateway_state = map['virtualGatewayState']
        return data
      end
    end

    # Operation Parser for DescribeVirtualInterfaces
    class DescribeVirtualInterfaces
      def self.parse(http_resp)
        data = Types::DescribeVirtualInterfacesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.virtual_interfaces = (VirtualInterfaceList.parse(map['virtualInterfaces']) unless map['virtualInterfaces'].nil?)
        data
      end
    end

    class VirtualInterfaceList
      def self.parse(list)
        list.map do |value|
          VirtualInterface.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DisassociateConnectionFromLag
    class DisassociateConnectionFromLag
      def self.parse(http_resp)
        data = Types::DisassociateConnectionFromLagOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.owner_account = map['ownerAccount']
        data.connection_id = map['connectionId']
        data.connection_name = map['connectionName']
        data.connection_state = map['connectionState']
        data.region = map['region']
        data.location = map['location']
        data.bandwidth = map['bandwidth']
        data.vlan = map['vlan']
        data.partner_name = map['partnerName']
        data.loa_issue_time = Time.at(map['loaIssueTime'].to_i) if map['loaIssueTime']
        data.lag_id = map['lagId']
        data.aws_device = map['awsDevice']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.has_logical_redundancy = map['hasLogicalRedundancy']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.provider_name = map['providerName']
        data.mac_sec_capable = map['macSecCapable']
        data.port_encryption_status = map['portEncryptionStatus']
        data.encryption_mode = map['encryptionMode']
        data.mac_sec_keys = (MacSecKeyList.parse(map['macSecKeys']) unless map['macSecKeys'].nil?)
        data
      end
    end

    # Operation Parser for DisassociateMacSecKey
    class DisassociateMacSecKey
      def self.parse(http_resp)
        data = Types::DisassociateMacSecKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connection_id = map['connectionId']
        data.mac_sec_keys = (MacSecKeyList.parse(map['macSecKeys']) unless map['macSecKeys'].nil?)
        data
      end
    end

    # Operation Parser for ListVirtualInterfaceTestHistory
    class ListVirtualInterfaceTestHistory
      def self.parse(http_resp)
        data = Types::ListVirtualInterfaceTestHistoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.virtual_interface_test_history = (VirtualInterfaceTestHistoryList.parse(map['virtualInterfaceTestHistory']) unless map['virtualInterfaceTestHistory'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class VirtualInterfaceTestHistoryList
      def self.parse(list)
        list.map do |value|
          VirtualInterfaceTestHistory.parse(value) unless value.nil?
        end
      end
    end

    class VirtualInterfaceTestHistory
      def self.parse(map)
        data = Types::VirtualInterfaceTestHistory.new
        data.test_id = map['testId']
        data.virtual_interface_id = map['virtualInterfaceId']
        data.bgp_peers = (BGPPeerIdList.parse(map['bgpPeers']) unless map['bgpPeers'].nil?)
        data.status = map['status']
        data.owner_account = map['ownerAccount']
        data.test_duration_in_minutes = map['testDurationInMinutes']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        return data
      end
    end

    class BGPPeerIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for StartBgpFailoverTest
    class StartBgpFailoverTest
      def self.parse(http_resp)
        data = Types::StartBgpFailoverTestOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.virtual_interface_test = (VirtualInterfaceTestHistory.parse(map['virtualInterfaceTest']) unless map['virtualInterfaceTest'].nil?)
        data
      end
    end

    # Operation Parser for StopBgpFailoverTest
    class StopBgpFailoverTest
      def self.parse(http_resp)
        data = Types::StopBgpFailoverTestOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.virtual_interface_test = (VirtualInterfaceTestHistory.parse(map['virtualInterfaceTest']) unless map['virtualInterfaceTest'].nil?)
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

    # Operation Parser for UpdateConnection
    class UpdateConnection
      def self.parse(http_resp)
        data = Types::UpdateConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.owner_account = map['ownerAccount']
        data.connection_id = map['connectionId']
        data.connection_name = map['connectionName']
        data.connection_state = map['connectionState']
        data.region = map['region']
        data.location = map['location']
        data.bandwidth = map['bandwidth']
        data.vlan = map['vlan']
        data.partner_name = map['partnerName']
        data.loa_issue_time = Time.at(map['loaIssueTime'].to_i) if map['loaIssueTime']
        data.lag_id = map['lagId']
        data.aws_device = map['awsDevice']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.has_logical_redundancy = map['hasLogicalRedundancy']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.provider_name = map['providerName']
        data.mac_sec_capable = map['macSecCapable']
        data.port_encryption_status = map['portEncryptionStatus']
        data.encryption_mode = map['encryptionMode']
        data.mac_sec_keys = (MacSecKeyList.parse(map['macSecKeys']) unless map['macSecKeys'].nil?)
        data
      end
    end

    # Operation Parser for UpdateDirectConnectGateway
    class UpdateDirectConnectGateway
      def self.parse(http_resp)
        data = Types::UpdateDirectConnectGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.direct_connect_gateway = (DirectConnectGateway.parse(map['directConnectGateway']) unless map['directConnectGateway'].nil?)
        data
      end
    end

    # Operation Parser for UpdateDirectConnectGatewayAssociation
    class UpdateDirectConnectGatewayAssociation
      def self.parse(http_resp)
        data = Types::UpdateDirectConnectGatewayAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.direct_connect_gateway_association = (DirectConnectGatewayAssociation.parse(map['directConnectGatewayAssociation']) unless map['directConnectGatewayAssociation'].nil?)
        data
      end
    end

    # Operation Parser for UpdateLag
    class UpdateLag
      def self.parse(http_resp)
        data = Types::UpdateLagOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connections_bandwidth = map['connectionsBandwidth']
        data.number_of_connections = map['numberOfConnections']
        data.lag_id = map['lagId']
        data.owner_account = map['ownerAccount']
        data.lag_name = map['lagName']
        data.lag_state = map['lagState']
        data.location = map['location']
        data.region = map['region']
        data.minimum_links = map['minimumLinks']
        data.aws_device = map['awsDevice']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.connections = (ConnectionList.parse(map['connections']) unless map['connections'].nil?)
        data.allows_hosted_connections = map['allowsHostedConnections']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.has_logical_redundancy = map['hasLogicalRedundancy']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.provider_name = map['providerName']
        data.mac_sec_capable = map['macSecCapable']
        data.encryption_mode = map['encryptionMode']
        data.mac_sec_keys = (MacSecKeyList.parse(map['macSecKeys']) unless map['macSecKeys'].nil?)
        data
      end
    end

    # Operation Parser for UpdateVirtualInterfaceAttributes
    class UpdateVirtualInterfaceAttributes
      def self.parse(http_resp)
        data = Types::UpdateVirtualInterfaceAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.owner_account = map['ownerAccount']
        data.virtual_interface_id = map['virtualInterfaceId']
        data.location = map['location']
        data.connection_id = map['connectionId']
        data.virtual_interface_type = map['virtualInterfaceType']
        data.virtual_interface_name = map['virtualInterfaceName']
        data.vlan = map['vlan']
        data.asn = map['asn']
        data.amazon_side_asn = map['amazonSideAsn']
        data.auth_key = map['authKey']
        data.amazon_address = map['amazonAddress']
        data.customer_address = map['customerAddress']
        data.address_family = map['addressFamily']
        data.virtual_interface_state = map['virtualInterfaceState']
        data.customer_router_config = map['customerRouterConfig']
        data.mtu = map['mtu']
        data.jumbo_frame_capable = map['jumboFrameCapable']
        data.virtual_gateway_id = map['virtualGatewayId']
        data.direct_connect_gateway_id = map['directConnectGatewayId']
        data.route_filter_prefixes = (RouteFilterPrefixList.parse(map['routeFilterPrefixes']) unless map['routeFilterPrefixes'].nil?)
        data.bgp_peers = (BGPPeerList.parse(map['bgpPeers']) unless map['bgpPeers'].nil?)
        data.region = map['region']
        data.aws_device_v2 = map['awsDeviceV2']
        data.aws_logical_device_id = map['awsLogicalDeviceId']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.site_link_enabled = map['siteLinkEnabled']
        data
      end
    end
  end
end
