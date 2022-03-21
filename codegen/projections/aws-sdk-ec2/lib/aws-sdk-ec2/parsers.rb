# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::Ec2
  module Parsers

    # Operation Parser for AcceptReservedInstancesExchangeQuote
    class AcceptReservedInstancesExchangeQuote
      def self.parse(http_resp)
        data = Types::AcceptReservedInstancesExchangeQuoteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('exchangeId') do |node|
          data.exchange_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AcceptTransitGatewayMulticastDomainAssociations
    class AcceptTransitGatewayMulticastDomainAssociations
      def self.parse(http_resp)
        data = Types::AcceptTransitGatewayMulticastDomainAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('associations') do |node|
          data.associations = Parsers::TransitGatewayMulticastDomainAssociations.parse(node)
        end
        data
      end
    end

    class TransitGatewayMulticastDomainAssociations
      def self.parse(xml)
        data = Types::TransitGatewayMulticastDomainAssociations.new
        xml.at('transitGatewayMulticastDomainId') do |node|
          data.transit_gateway_multicast_domain_id = (node.text || '')
        end
        xml.at('transitGatewayAttachmentId') do |node|
          data.transit_gateway_attachment_id = (node.text || '')
        end
        xml.at('resourceId') do |node|
          data.resource_id = (node.text || '')
        end
        xml.at('resourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('resourceOwnerId') do |node|
          data.resource_owner_id = (node.text || '')
        end
        xml.at('subnets') do |node|
          children = node.children('item')
          data.subnets = Parsers::SubnetAssociationList.parse(children)
        end
        return data
      end
    end

    class SubnetAssociationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SubnetAssociation.parse(node)
        end
        data
      end
    end

    class SubnetAssociation
      def self.parse(xml)
        data = Types::SubnetAssociation.new
        xml.at('subnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for AcceptTransitGatewayPeeringAttachment
    class AcceptTransitGatewayPeeringAttachment
      def self.parse(http_resp)
        data = Types::AcceptTransitGatewayPeeringAttachmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayPeeringAttachment') do |node|
          data.transit_gateway_peering_attachment = Parsers::TransitGatewayPeeringAttachment.parse(node)
        end
        data
      end
    end

    class TransitGatewayPeeringAttachment
      def self.parse(xml)
        data = Types::TransitGatewayPeeringAttachment.new
        xml.at('transitGatewayAttachmentId') do |node|
          data.transit_gateway_attachment_id = (node.text || '')
        end
        xml.at('requesterTgwInfo') do |node|
          data.requester_tgw_info = Parsers::PeeringTgwInfo.parse(node)
        end
        xml.at('accepterTgwInfo') do |node|
          data.accepter_tgw_info = Parsers::PeeringTgwInfo.parse(node)
        end
        xml.at('status') do |node|
          data.status = Parsers::PeeringAttachmentStatus.parse(node)
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('creationTime') do |node|
          data.creation_time = Time.parse(node.text) if node.text
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class TagList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Tag.parse(node)
        end
        data
      end
    end

    class Tag
      def self.parse(xml)
        data = Types::Tag.new
        xml.at('key') do |node|
          data.key = (node.text || '')
        end
        xml.at('value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    class PeeringAttachmentStatus
      def self.parse(xml)
        data = Types::PeeringAttachmentStatus.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    class PeeringTgwInfo
      def self.parse(xml)
        data = Types::PeeringTgwInfo.new
        xml.at('transitGatewayId') do |node|
          data.transit_gateway_id = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('region') do |node|
          data.region = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for AcceptTransitGatewayVpcAttachment
    class AcceptTransitGatewayVpcAttachment
      def self.parse(http_resp)
        data = Types::AcceptTransitGatewayVpcAttachmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayVpcAttachment') do |node|
          data.transit_gateway_vpc_attachment = Parsers::TransitGatewayVpcAttachment.parse(node)
        end
        data
      end
    end

    class TransitGatewayVpcAttachment
      def self.parse(xml)
        data = Types::TransitGatewayVpcAttachment.new
        xml.at('transitGatewayAttachmentId') do |node|
          data.transit_gateway_attachment_id = (node.text || '')
        end
        xml.at('transitGatewayId') do |node|
          data.transit_gateway_id = (node.text || '')
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('vpcOwnerId') do |node|
          data.vpc_owner_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('subnetIds') do |node|
          children = node.children('item')
          data.subnet_ids = Parsers::ValueStringList.parse(children)
        end
        xml.at('creationTime') do |node|
          data.creation_time = Time.parse(node.text) if node.text
        end
        xml.at('options') do |node|
          data.options = Parsers::TransitGatewayVpcAttachmentOptions.parse(node)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class TransitGatewayVpcAttachmentOptions
      def self.parse(xml)
        data = Types::TransitGatewayVpcAttachmentOptions.new
        xml.at('dnsSupport') do |node|
          data.dns_support = (node.text || '')
        end
        xml.at('ipv6Support') do |node|
          data.ipv6_support = (node.text || '')
        end
        xml.at('applianceModeSupport') do |node|
          data.appliance_mode_support = (node.text || '')
        end
        return data
      end
    end

    class ValueStringList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AcceptVpcEndpointConnections
    class AcceptVpcEndpointConnections
      def self.parse(http_resp)
        data = Types::AcceptVpcEndpointConnectionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('unsuccessful') do |node|
          children = node.children('item')
          data.unsuccessful = Parsers::UnsuccessfulItemSet.parse(children)
        end
        data
      end
    end

    class UnsuccessfulItemSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::UnsuccessfulItem.parse(node)
        end
        data
      end
    end

    class UnsuccessfulItem
      def self.parse(xml)
        data = Types::UnsuccessfulItem.new
        xml.at('error') do |node|
          data.error = Parsers::UnsuccessfulItemError.parse(node)
        end
        xml.at('resourceId') do |node|
          data.resource_id = (node.text || '')
        end
        return data
      end
    end

    class UnsuccessfulItemError
      def self.parse(xml)
        data = Types::UnsuccessfulItemError.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for AcceptVpcPeeringConnection
    class AcceptVpcPeeringConnection
      def self.parse(http_resp)
        data = Types::AcceptVpcPeeringConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpcPeeringConnection') do |node|
          data.vpc_peering_connection = Parsers::VpcPeeringConnection.parse(node)
        end
        data
      end
    end

    class VpcPeeringConnection
      def self.parse(xml)
        data = Types::VpcPeeringConnection.new
        xml.at('accepterVpcInfo') do |node|
          data.accepter_vpc_info = Parsers::VpcPeeringConnectionVpcInfo.parse(node)
        end
        xml.at('expirationTime') do |node|
          data.expiration_time = Time.parse(node.text) if node.text
        end
        xml.at('requesterVpcInfo') do |node|
          data.requester_vpc_info = Parsers::VpcPeeringConnectionVpcInfo.parse(node)
        end
        xml.at('status') do |node|
          data.status = Parsers::VpcPeeringConnectionStateReason.parse(node)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('vpcPeeringConnectionId') do |node|
          data.vpc_peering_connection_id = (node.text || '')
        end
        return data
      end
    end

    class VpcPeeringConnectionStateReason
      def self.parse(xml)
        data = Types::VpcPeeringConnectionStateReason.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    class VpcPeeringConnectionVpcInfo
      def self.parse(xml)
        data = Types::VpcPeeringConnectionVpcInfo.new
        xml.at('cidrBlock') do |node|
          data.cidr_block = (node.text || '')
        end
        xml.at('ipv6CidrBlockSet') do |node|
          children = node.children('item')
          data.ipv6_cidr_block_set = Parsers::Ipv6CidrBlockSet.parse(children)
        end
        xml.at('cidrBlockSet') do |node|
          children = node.children('item')
          data.cidr_block_set = Parsers::CidrBlockSet.parse(children)
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('peeringOptions') do |node|
          data.peering_options = Parsers::VpcPeeringConnectionOptionsDescription.parse(node)
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('region') do |node|
          data.region = (node.text || '')
        end
        return data
      end
    end

    class VpcPeeringConnectionOptionsDescription
      def self.parse(xml)
        data = Types::VpcPeeringConnectionOptionsDescription.new
        xml.at('allowDnsResolutionFromRemoteVpc') do |node|
          data.allow_dns_resolution_from_remote_vpc = (node.text == 'true')
        end
        xml.at('allowEgressFromLocalClassicLinkToRemoteVpc') do |node|
          data.allow_egress_from_local_classic_link_to_remote_vpc = (node.text == 'true')
        end
        xml.at('allowEgressFromLocalVpcToRemoteClassicLink') do |node|
          data.allow_egress_from_local_vpc_to_remote_classic_link = (node.text == 'true')
        end
        return data
      end
    end

    class CidrBlockSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CidrBlock.parse(node)
        end
        data
      end
    end

    class CidrBlock
      def self.parse(xml)
        data = Types::CidrBlock.new
        xml.at('cidrBlock') do |node|
          data.cidr_block = (node.text || '')
        end
        return data
      end
    end

    class Ipv6CidrBlockSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Ipv6CidrBlock.parse(node)
        end
        data
      end
    end

    class Ipv6CidrBlock
      def self.parse(xml)
        data = Types::Ipv6CidrBlock.new
        xml.at('ipv6CidrBlock') do |node|
          data.ipv6_cidr_block = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for AdvertiseByoipCidr
    class AdvertiseByoipCidr
      def self.parse(http_resp)
        data = Types::AdvertiseByoipCidrOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('byoipCidr') do |node|
          data.byoip_cidr = Parsers::ByoipCidr.parse(node)
        end
        data
      end
    end

    class ByoipCidr
      def self.parse(xml)
        data = Types::ByoipCidr.new
        xml.at('cidr') do |node|
          data.cidr = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for AllocateAddress
    class AllocateAddress
      def self.parse(http_resp)
        data = Types::AllocateAddressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('publicIp') do |node|
          data.public_ip = (node.text || '')
        end
        xml.at('allocationId') do |node|
          data.allocation_id = (node.text || '')
        end
        xml.at('publicIpv4Pool') do |node|
          data.public_ipv4_pool = (node.text || '')
        end
        xml.at('networkBorderGroup') do |node|
          data.network_border_group = (node.text || '')
        end
        xml.at('domain') do |node|
          data.domain = (node.text || '')
        end
        xml.at('customerOwnedIp') do |node|
          data.customer_owned_ip = (node.text || '')
        end
        xml.at('customerOwnedIpv4Pool') do |node|
          data.customer_owned_ipv4_pool = (node.text || '')
        end
        xml.at('carrierIp') do |node|
          data.carrier_ip = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AllocateHosts
    class AllocateHosts
      def self.parse(http_resp)
        data = Types::AllocateHostsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('hostIdSet') do |node|
          children = node.children('item')
          data.host_ids = Parsers::ResponseHostIdList.parse(children)
        end
        data
      end
    end

    class ResponseHostIdList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AllocateIpamPoolCidr
    class AllocateIpamPoolCidr
      def self.parse(http_resp)
        data = Types::AllocateIpamPoolCidrOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipamPoolAllocation') do |node|
          data.ipam_pool_allocation = Parsers::IpamPoolAllocation.parse(node)
        end
        data
      end
    end

    class IpamPoolAllocation
      def self.parse(xml)
        data = Types::IpamPoolAllocation.new
        xml.at('cidr') do |node|
          data.cidr = (node.text || '')
        end
        xml.at('ipamPoolAllocationId') do |node|
          data.ipam_pool_allocation_id = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('resourceId') do |node|
          data.resource_id = (node.text || '')
        end
        xml.at('resourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('resourceRegion') do |node|
          data.resource_region = (node.text || '')
        end
        xml.at('resourceOwner') do |node|
          data.resource_owner = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ApplySecurityGroupsToClientVpnTargetNetwork
    class ApplySecurityGroupsToClientVpnTargetNetwork
      def self.parse(http_resp)
        data = Types::ApplySecurityGroupsToClientVpnTargetNetworkOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('securityGroupIds') do |node|
          children = node.children('item')
          data.security_group_ids = Parsers::ClientVpnSecurityGroupIdSet.parse(children)
        end
        data
      end
    end

    class ClientVpnSecurityGroupIdSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AssignIpv6Addresses
    class AssignIpv6Addresses
      def self.parse(http_resp)
        data = Types::AssignIpv6AddressesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('assignedIpv6Addresses') do |node|
          children = node.children('item')
          data.assigned_ipv6_addresses = Parsers::Ipv6AddressList.parse(children)
        end
        xml.at('assignedIpv6PrefixSet') do |node|
          children = node.children('item')
          data.assigned_ipv6_prefixes = Parsers::IpPrefixList.parse(children)
        end
        xml.at('networkInterfaceId') do |node|
          data.network_interface_id = (node.text || '')
        end
        data
      end
    end

    class IpPrefixList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class Ipv6AddressList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AssignPrivateIpAddresses
    class AssignPrivateIpAddresses
      def self.parse(http_resp)
        data = Types::AssignPrivateIpAddressesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkInterfaceId') do |node|
          data.network_interface_id = (node.text || '')
        end
        xml.at('assignedPrivateIpAddressesSet') do |node|
          children = node.children('item')
          data.assigned_private_ip_addresses = Parsers::AssignedPrivateIpAddressList.parse(children)
        end
        xml.at('assignedIpv4PrefixSet') do |node|
          children = node.children('item')
          data.assigned_ipv4_prefixes = Parsers::Ipv4PrefixesList.parse(children)
        end
        data
      end
    end

    class Ipv4PrefixesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Ipv4PrefixSpecification.parse(node)
        end
        data
      end
    end

    class Ipv4PrefixSpecification
      def self.parse(xml)
        data = Types::Ipv4PrefixSpecification.new
        xml.at('ipv4Prefix') do |node|
          data.ipv4_prefix = (node.text || '')
        end
        return data
      end
    end

    class AssignedPrivateIpAddressList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AssignedPrivateIpAddress.parse(node)
        end
        data
      end
    end

    class AssignedPrivateIpAddress
      def self.parse(xml)
        data = Types::AssignedPrivateIpAddress.new
        xml.at('privateIpAddress') do |node|
          data.private_ip_address = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for AssociateAddress
    class AssociateAddress
      def self.parse(http_resp)
        data = Types::AssociateAddressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('associationId') do |node|
          data.association_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AssociateClientVpnTargetNetwork
    class AssociateClientVpnTargetNetwork
      def self.parse(http_resp)
        data = Types::AssociateClientVpnTargetNetworkOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('associationId') do |node|
          data.association_id = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = Parsers::AssociationStatus.parse(node)
        end
        data
      end
    end

    class AssociationStatus
      def self.parse(xml)
        data = Types::AssociationStatus.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for AssociateDhcpOptions
    class AssociateDhcpOptions
      def self.parse(http_resp)
        data = Types::AssociateDhcpOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for AssociateEnclaveCertificateIamRole
    class AssociateEnclaveCertificateIamRole
      def self.parse(http_resp)
        data = Types::AssociateEnclaveCertificateIamRoleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('certificateS3BucketName') do |node|
          data.certificate_s3_bucket_name = (node.text || '')
        end
        xml.at('certificateS3ObjectKey') do |node|
          data.certificate_s3_object_key = (node.text || '')
        end
        xml.at('encryptionKmsKeyId') do |node|
          data.encryption_kms_key_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AssociateIamInstanceProfile
    class AssociateIamInstanceProfile
      def self.parse(http_resp)
        data = Types::AssociateIamInstanceProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('iamInstanceProfileAssociation') do |node|
          data.iam_instance_profile_association = Parsers::IamInstanceProfileAssociation.parse(node)
        end
        data
      end
    end

    class IamInstanceProfileAssociation
      def self.parse(xml)
        data = Types::IamInstanceProfileAssociation.new
        xml.at('associationId') do |node|
          data.association_id = (node.text || '')
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('iamInstanceProfile') do |node|
          data.iam_instance_profile = Parsers::IamInstanceProfile.parse(node)
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('timestamp') do |node|
          data.timestamp = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class IamInstanceProfile
      def self.parse(xml)
        data = Types::IamInstanceProfile.new
        xml.at('arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('id') do |node|
          data.id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for AssociateInstanceEventWindow
    class AssociateInstanceEventWindow
      def self.parse(http_resp)
        data = Types::AssociateInstanceEventWindowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceEventWindow') do |node|
          data.instance_event_window = Parsers::InstanceEventWindow.parse(node)
        end
        data
      end
    end

    class InstanceEventWindow
      def self.parse(xml)
        data = Types::InstanceEventWindow.new
        xml.at('instanceEventWindowId') do |node|
          data.instance_event_window_id = (node.text || '')
        end
        xml.at('timeRangeSet') do |node|
          children = node.children('item')
          data.time_ranges = Parsers::InstanceEventWindowTimeRangeList.parse(children)
        end
        xml.at('name') do |node|
          data.member_name = (node.text || '')
        end
        xml.at('cronExpression') do |node|
          data.cron_expression = (node.text || '')
        end
        xml.at('associationTarget') do |node|
          data.association_target = Parsers::InstanceEventWindowAssociationTarget.parse(node)
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class InstanceEventWindowAssociationTarget
      def self.parse(xml)
        data = Types::InstanceEventWindowAssociationTarget.new
        xml.at('instanceIdSet') do |node|
          children = node.children('item')
          data.instance_ids = Parsers::InstanceIdList.parse(children)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('dedicatedHostIdSet') do |node|
          children = node.children('item')
          data.dedicated_host_ids = Parsers::DedicatedHostIdList.parse(children)
        end
        return data
      end
    end

    class DedicatedHostIdList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class InstanceIdList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class InstanceEventWindowTimeRangeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceEventWindowTimeRange.parse(node)
        end
        data
      end
    end

    class InstanceEventWindowTimeRange
      def self.parse(xml)
        data = Types::InstanceEventWindowTimeRange.new
        xml.at('startWeekDay') do |node|
          data.start_week_day = (node.text || '')
        end
        xml.at('startHour') do |node|
          data.start_hour = node.text&.to_i
        end
        xml.at('endWeekDay') do |node|
          data.end_week_day = (node.text || '')
        end
        xml.at('endHour') do |node|
          data.end_hour = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for AssociateRouteTable
    class AssociateRouteTable
      def self.parse(http_resp)
        data = Types::AssociateRouteTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('associationId') do |node|
          data.association_id = (node.text || '')
        end
        xml.at('associationState') do |node|
          data.association_state = Parsers::RouteTableAssociationState.parse(node)
        end
        data
      end
    end

    class RouteTableAssociationState
      def self.parse(xml)
        data = Types::RouteTableAssociationState.new
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for AssociateSubnetCidrBlock
    class AssociateSubnetCidrBlock
      def self.parse(http_resp)
        data = Types::AssociateSubnetCidrBlockOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipv6CidrBlockAssociation') do |node|
          data.ipv6_cidr_block_association = Parsers::SubnetIpv6CidrBlockAssociation.parse(node)
        end
        xml.at('subnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        data
      end
    end

    class SubnetIpv6CidrBlockAssociation
      def self.parse(xml)
        data = Types::SubnetIpv6CidrBlockAssociation.new
        xml.at('associationId') do |node|
          data.association_id = (node.text || '')
        end
        xml.at('ipv6CidrBlock') do |node|
          data.ipv6_cidr_block = (node.text || '')
        end
        xml.at('ipv6CidrBlockState') do |node|
          data.ipv6_cidr_block_state = Parsers::SubnetCidrBlockState.parse(node)
        end
        return data
      end
    end

    class SubnetCidrBlockState
      def self.parse(xml)
        data = Types::SubnetCidrBlockState.new
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for AssociateTransitGatewayMulticastDomain
    class AssociateTransitGatewayMulticastDomain
      def self.parse(http_resp)
        data = Types::AssociateTransitGatewayMulticastDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('associations') do |node|
          data.associations = Parsers::TransitGatewayMulticastDomainAssociations.parse(node)
        end
        data
      end
    end

    # Operation Parser for AssociateTransitGatewayRouteTable
    class AssociateTransitGatewayRouteTable
      def self.parse(http_resp)
        data = Types::AssociateTransitGatewayRouteTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('association') do |node|
          data.association = Parsers::TransitGatewayAssociation.parse(node)
        end
        data
      end
    end

    class TransitGatewayAssociation
      def self.parse(xml)
        data = Types::TransitGatewayAssociation.new
        xml.at('transitGatewayRouteTableId') do |node|
          data.transit_gateway_route_table_id = (node.text || '')
        end
        xml.at('transitGatewayAttachmentId') do |node|
          data.transit_gateway_attachment_id = (node.text || '')
        end
        xml.at('resourceId') do |node|
          data.resource_id = (node.text || '')
        end
        xml.at('resourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for AssociateTrunkInterface
    class AssociateTrunkInterface
      def self.parse(http_resp)
        data = Types::AssociateTrunkInterfaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('interfaceAssociation') do |node|
          data.interface_association = Parsers::TrunkInterfaceAssociation.parse(node)
        end
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        data
      end
    end

    class TrunkInterfaceAssociation
      def self.parse(xml)
        data = Types::TrunkInterfaceAssociation.new
        xml.at('associationId') do |node|
          data.association_id = (node.text || '')
        end
        xml.at('branchInterfaceId') do |node|
          data.branch_interface_id = (node.text || '')
        end
        xml.at('trunkInterfaceId') do |node|
          data.trunk_interface_id = (node.text || '')
        end
        xml.at('interfaceProtocol') do |node|
          data.interface_protocol = (node.text || '')
        end
        xml.at('vlanId') do |node|
          data.vlan_id = node.text&.to_i
        end
        xml.at('greKey') do |node|
          data.gre_key = node.text&.to_i
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for AssociateVpcCidrBlock
    class AssociateVpcCidrBlock
      def self.parse(http_resp)
        data = Types::AssociateVpcCidrBlockOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipv6CidrBlockAssociation') do |node|
          data.ipv6_cidr_block_association = Parsers::VpcIpv6CidrBlockAssociation.parse(node)
        end
        xml.at('cidrBlockAssociation') do |node|
          data.cidr_block_association = Parsers::VpcCidrBlockAssociation.parse(node)
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        data
      end
    end

    class VpcCidrBlockAssociation
      def self.parse(xml)
        data = Types::VpcCidrBlockAssociation.new
        xml.at('associationId') do |node|
          data.association_id = (node.text || '')
        end
        xml.at('cidrBlock') do |node|
          data.cidr_block = (node.text || '')
        end
        xml.at('cidrBlockState') do |node|
          data.cidr_block_state = Parsers::VpcCidrBlockState.parse(node)
        end
        return data
      end
    end

    class VpcCidrBlockState
      def self.parse(xml)
        data = Types::VpcCidrBlockState.new
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        return data
      end
    end

    class VpcIpv6CidrBlockAssociation
      def self.parse(xml)
        data = Types::VpcIpv6CidrBlockAssociation.new
        xml.at('associationId') do |node|
          data.association_id = (node.text || '')
        end
        xml.at('ipv6CidrBlock') do |node|
          data.ipv6_cidr_block = (node.text || '')
        end
        xml.at('ipv6CidrBlockState') do |node|
          data.ipv6_cidr_block_state = Parsers::VpcCidrBlockState.parse(node)
        end
        xml.at('networkBorderGroup') do |node|
          data.network_border_group = (node.text || '')
        end
        xml.at('ipv6Pool') do |node|
          data.ipv6_pool = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for AttachClassicLinkVpc
    class AttachClassicLinkVpc
      def self.parse(http_resp)
        data = Types::AttachClassicLinkVpcOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for AttachInternetGateway
    class AttachInternetGateway
      def self.parse(http_resp)
        data = Types::AttachInternetGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for AttachNetworkInterface
    class AttachNetworkInterface
      def self.parse(http_resp)
        data = Types::AttachNetworkInterfaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('attachmentId') do |node|
          data.attachment_id = (node.text || '')
        end
        xml.at('networkCardIndex') do |node|
          data.network_card_index = node.text&.to_i
        end
        data
      end
    end

    # Operation Parser for AttachVolume
    class AttachVolume
      def self.parse(http_resp)
        data = Types::AttachVolumeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('attachTime') do |node|
          data.attach_time = Time.parse(node.text) if node.text
        end
        xml.at('device') do |node|
          data.device = (node.text || '')
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('status') do |node|
          data.state = (node.text || '')
        end
        xml.at('volumeId') do |node|
          data.volume_id = (node.text || '')
        end
        xml.at('deleteOnTermination') do |node|
          data.delete_on_termination = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for AttachVpnGateway
    class AttachVpnGateway
      def self.parse(http_resp)
        data = Types::AttachVpnGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('attachment') do |node|
          data.vpc_attachment = Parsers::VpcAttachment.parse(node)
        end
        data
      end
    end

    class VpcAttachment
      def self.parse(xml)
        data = Types::VpcAttachment.new
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for AuthorizeClientVpnIngress
    class AuthorizeClientVpnIngress
      def self.parse(http_resp)
        data = Types::AuthorizeClientVpnIngressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('status') do |node|
          data.status = Parsers::ClientVpnAuthorizationRuleStatus.parse(node)
        end
        data
      end
    end

    class ClientVpnAuthorizationRuleStatus
      def self.parse(xml)
        data = Types::ClientVpnAuthorizationRuleStatus.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for AuthorizeSecurityGroupEgress
    class AuthorizeSecurityGroupEgress
      def self.parse(http_resp)
        data = Types::AuthorizeSecurityGroupEgressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        xml.at('securityGroupRuleSet') do |node|
          children = node.children('item')
          data.security_group_rules = Parsers::SecurityGroupRuleList.parse(children)
        end
        data
      end
    end

    class SecurityGroupRuleList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SecurityGroupRule.parse(node)
        end
        data
      end
    end

    class SecurityGroupRule
      def self.parse(xml)
        data = Types::SecurityGroupRule.new
        xml.at('securityGroupRuleId') do |node|
          data.security_group_rule_id = (node.text || '')
        end
        xml.at('groupId') do |node|
          data.group_id = (node.text || '')
        end
        xml.at('groupOwnerId') do |node|
          data.group_owner_id = (node.text || '')
        end
        xml.at('isEgress') do |node|
          data.is_egress = (node.text == 'true')
        end
        xml.at('ipProtocol') do |node|
          data.ip_protocol = (node.text || '')
        end
        xml.at('fromPort') do |node|
          data.from_port = node.text&.to_i
        end
        xml.at('toPort') do |node|
          data.to_port = node.text&.to_i
        end
        xml.at('cidrIpv4') do |node|
          data.cidr_ipv4 = (node.text || '')
        end
        xml.at('cidrIpv6') do |node|
          data.cidr_ipv6 = (node.text || '')
        end
        xml.at('prefixListId') do |node|
          data.prefix_list_id = (node.text || '')
        end
        xml.at('referencedGroupInfo') do |node|
          data.referenced_group_info = Parsers::ReferencedSecurityGroup.parse(node)
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class ReferencedSecurityGroup
      def self.parse(xml)
        data = Types::ReferencedSecurityGroup.new
        xml.at('groupId') do |node|
          data.group_id = (node.text || '')
        end
        xml.at('peeringStatus') do |node|
          data.peering_status = (node.text || '')
        end
        xml.at('userId') do |node|
          data.user_id = (node.text || '')
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('vpcPeeringConnectionId') do |node|
          data.vpc_peering_connection_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for AuthorizeSecurityGroupIngress
    class AuthorizeSecurityGroupIngress
      def self.parse(http_resp)
        data = Types::AuthorizeSecurityGroupIngressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        xml.at('securityGroupRuleSet') do |node|
          children = node.children('item')
          data.security_group_rules = Parsers::SecurityGroupRuleList.parse(children)
        end
        data
      end
    end

    # Operation Parser for BundleInstance
    class BundleInstance
      def self.parse(http_resp)
        data = Types::BundleInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('bundleInstanceTask') do |node|
          data.bundle_task = Parsers::BundleTask.parse(node)
        end
        data
      end
    end

    class BundleTask
      def self.parse(xml)
        data = Types::BundleTask.new
        xml.at('bundleId') do |node|
          data.bundle_id = (node.text || '')
        end
        xml.at('error') do |node|
          data.bundle_task_error = Parsers::BundleTaskError.parse(node)
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('progress') do |node|
          data.progress = (node.text || '')
        end
        xml.at('startTime') do |node|
          data.start_time = Time.parse(node.text) if node.text
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('storage') do |node|
          data.storage = Parsers::Storage.parse(node)
        end
        xml.at('updateTime') do |node|
          data.update_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class Storage
      def self.parse(xml)
        data = Types::Storage.new
        xml.at('S3') do |node|
          data.s3 = Parsers::S3Storage.parse(node)
        end
        return data
      end
    end

    class S3Storage
      def self.parse(xml)
        data = Types::S3Storage.new
        xml.at('AWSAccessKeyId') do |node|
          data.aws_access_key_id = (node.text || '')
        end
        xml.at('bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('prefix') do |node|
          data.prefix = (node.text || '')
        end
        xml.at('uploadPolicy') do |node|
          data.upload_policy = ((Base64::decode64(node.text) unless node.text.nil?) || '')
        end
        xml.at('uploadPolicySignature') do |node|
          data.upload_policy_signature = (node.text || '')
        end
        return data
      end
    end

    class BundleTaskError
      def self.parse(xml)
        data = Types::BundleTaskError.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CancelBundleTask
    class CancelBundleTask
      def self.parse(http_resp)
        data = Types::CancelBundleTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('bundleInstanceTask') do |node|
          data.bundle_task = Parsers::BundleTask.parse(node)
        end
        data
      end
    end

    # Operation Parser for CancelCapacityReservation
    class CancelCapacityReservation
      def self.parse(http_resp)
        data = Types::CancelCapacityReservationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for CancelCapacityReservationFleets
    class CancelCapacityReservationFleets
      def self.parse(http_resp)
        data = Types::CancelCapacityReservationFleetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('successfulFleetCancellationSet') do |node|
          children = node.children('item')
          data.successful_fleet_cancellations = Parsers::CapacityReservationFleetCancellationStateSet.parse(children)
        end
        xml.at('failedFleetCancellationSet') do |node|
          children = node.children('item')
          data.failed_fleet_cancellations = Parsers::FailedCapacityReservationFleetCancellationResultSet.parse(children)
        end
        data
      end
    end

    class FailedCapacityReservationFleetCancellationResultSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::FailedCapacityReservationFleetCancellationResult.parse(node)
        end
        data
      end
    end

    class FailedCapacityReservationFleetCancellationResult
      def self.parse(xml)
        data = Types::FailedCapacityReservationFleetCancellationResult.new
        xml.at('capacityReservationFleetId') do |node|
          data.capacity_reservation_fleet_id = (node.text || '')
        end
        xml.at('cancelCapacityReservationFleetError') do |node|
          data.cancel_capacity_reservation_fleet_error = Parsers::CancelCapacityReservationFleetError.parse(node)
        end
        return data
      end
    end

    class CancelCapacityReservationFleetError
      def self.parse(xml)
        data = Types::CancelCapacityReservationFleetError.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    class CapacityReservationFleetCancellationStateSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CapacityReservationFleetCancellationState.parse(node)
        end
        data
      end
    end

    class CapacityReservationFleetCancellationState
      def self.parse(xml)
        data = Types::CapacityReservationFleetCancellationState.new
        xml.at('currentFleetState') do |node|
          data.current_fleet_state = (node.text || '')
        end
        xml.at('previousFleetState') do |node|
          data.previous_fleet_state = (node.text || '')
        end
        xml.at('capacityReservationFleetId') do |node|
          data.capacity_reservation_fleet_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CancelConversionTask
    class CancelConversionTask
      def self.parse(http_resp)
        data = Types::CancelConversionTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for CancelExportTask
    class CancelExportTask
      def self.parse(http_resp)
        data = Types::CancelExportTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for CancelImportTask
    class CancelImportTask
      def self.parse(http_resp)
        data = Types::CancelImportTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('importTaskId') do |node|
          data.import_task_id = (node.text || '')
        end
        xml.at('previousState') do |node|
          data.previous_state = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CancelReservedInstancesListing
    class CancelReservedInstancesListing
      def self.parse(http_resp)
        data = Types::CancelReservedInstancesListingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('reservedInstancesListingsSet') do |node|
          children = node.children('item')
          data.reserved_instances_listings = Parsers::ReservedInstancesListingList.parse(children)
        end
        data
      end
    end

    class ReservedInstancesListingList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ReservedInstancesListing.parse(node)
        end
        data
      end
    end

    class ReservedInstancesListing
      def self.parse(xml)
        data = Types::ReservedInstancesListing.new
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        xml.at('createDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        xml.at('instanceCounts') do |node|
          children = node.children('item')
          data.instance_counts = Parsers::InstanceCountList.parse(children)
        end
        xml.at('priceSchedules') do |node|
          children = node.children('item')
          data.price_schedules = Parsers::PriceScheduleList.parse(children)
        end
        xml.at('reservedInstancesId') do |node|
          data.reserved_instances_id = (node.text || '')
        end
        xml.at('reservedInstancesListingId') do |node|
          data.reserved_instances_listing_id = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('updateDate') do |node|
          data.update_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class PriceScheduleList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PriceSchedule.parse(node)
        end
        data
      end
    end

    class PriceSchedule
      def self.parse(xml)
        data = Types::PriceSchedule.new
        xml.at('active') do |node|
          data.active = (node.text == 'true')
        end
        xml.at('currencyCode') do |node|
          data.currency_code = (node.text || '')
        end
        xml.at('price') do |node|
          data.price = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('term') do |node|
          data.term = node.text&.to_i
        end
        return data
      end
    end

    class InstanceCountList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceCount.parse(node)
        end
        data
      end
    end

    class InstanceCount
      def self.parse(xml)
        data = Types::InstanceCount.new
        xml.at('instanceCount') do |node|
          data.instance_count = node.text&.to_i
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CancelSpotFleetRequests
    class CancelSpotFleetRequests
      def self.parse(http_resp)
        data = Types::CancelSpotFleetRequestsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('successfulFleetRequestSet') do |node|
          children = node.children('item')
          data.successful_fleet_requests = Parsers::CancelSpotFleetRequestsSuccessSet.parse(children)
        end
        xml.at('unsuccessfulFleetRequestSet') do |node|
          children = node.children('item')
          data.unsuccessful_fleet_requests = Parsers::CancelSpotFleetRequestsErrorSet.parse(children)
        end
        data
      end
    end

    class CancelSpotFleetRequestsErrorSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CancelSpotFleetRequestsErrorItem.parse(node)
        end
        data
      end
    end

    class CancelSpotFleetRequestsErrorItem
      def self.parse(xml)
        data = Types::CancelSpotFleetRequestsErrorItem.new
        xml.at('error') do |node|
          data.error = Parsers::CancelSpotFleetRequestsError.parse(node)
        end
        xml.at('spotFleetRequestId') do |node|
          data.spot_fleet_request_id = (node.text || '')
        end
        return data
      end
    end

    class CancelSpotFleetRequestsError
      def self.parse(xml)
        data = Types::CancelSpotFleetRequestsError.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    class CancelSpotFleetRequestsSuccessSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CancelSpotFleetRequestsSuccessItem.parse(node)
        end
        data
      end
    end

    class CancelSpotFleetRequestsSuccessItem
      def self.parse(xml)
        data = Types::CancelSpotFleetRequestsSuccessItem.new
        xml.at('currentSpotFleetRequestState') do |node|
          data.current_spot_fleet_request_state = (node.text || '')
        end
        xml.at('previousSpotFleetRequestState') do |node|
          data.previous_spot_fleet_request_state = (node.text || '')
        end
        xml.at('spotFleetRequestId') do |node|
          data.spot_fleet_request_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CancelSpotInstanceRequests
    class CancelSpotInstanceRequests
      def self.parse(http_resp)
        data = Types::CancelSpotInstanceRequestsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('spotInstanceRequestSet') do |node|
          children = node.children('item')
          data.cancelled_spot_instance_requests = Parsers::CancelledSpotInstanceRequestList.parse(children)
        end
        data
      end
    end

    class CancelledSpotInstanceRequestList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CancelledSpotInstanceRequest.parse(node)
        end
        data
      end
    end

    class CancelledSpotInstanceRequest
      def self.parse(xml)
        data = Types::CancelledSpotInstanceRequest.new
        xml.at('spotInstanceRequestId') do |node|
          data.spot_instance_request_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ConfirmProductInstance
    class ConfirmProductInstance
      def self.parse(http_resp)
        data = Types::ConfirmProductInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for CopyFpgaImage
    class CopyFpgaImage
      def self.parse(http_resp)
        data = Types::CopyFpgaImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('fpgaImageId') do |node|
          data.fpga_image_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CopyImage
    class CopyImage
      def self.parse(http_resp)
        data = Types::CopyImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('imageId') do |node|
          data.image_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CopySnapshot
    class CopySnapshot
      def self.parse(http_resp)
        data = Types::CopySnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        data
      end
    end

    # Operation Parser for CreateCapacityReservation
    class CreateCapacityReservation
      def self.parse(http_resp)
        data = Types::CreateCapacityReservationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('capacityReservation') do |node|
          data.capacity_reservation = Parsers::CapacityReservation.parse(node)
        end
        data
      end
    end

    class CapacityReservation
      def self.parse(xml)
        data = Types::CapacityReservation.new
        xml.at('capacityReservationId') do |node|
          data.capacity_reservation_id = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('capacityReservationArn') do |node|
          data.capacity_reservation_arn = (node.text || '')
        end
        xml.at('availabilityZoneId') do |node|
          data.availability_zone_id = (node.text || '')
        end
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('instancePlatform') do |node|
          data.instance_platform = (node.text || '')
        end
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('tenancy') do |node|
          data.tenancy = (node.text || '')
        end
        xml.at('totalInstanceCount') do |node|
          data.total_instance_count = node.text&.to_i
        end
        xml.at('availableInstanceCount') do |node|
          data.available_instance_count = node.text&.to_i
        end
        xml.at('ebsOptimized') do |node|
          data.ebs_optimized = (node.text == 'true')
        end
        xml.at('ephemeralStorage') do |node|
          data.ephemeral_storage = (node.text == 'true')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('startDate') do |node|
          data.start_date = Time.parse(node.text) if node.text
        end
        xml.at('endDate') do |node|
          data.end_date = Time.parse(node.text) if node.text
        end
        xml.at('endDateType') do |node|
          data.end_date_type = (node.text || '')
        end
        xml.at('instanceMatchCriteria') do |node|
          data.instance_match_criteria = (node.text || '')
        end
        xml.at('createDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('outpostArn') do |node|
          data.outpost_arn = (node.text || '')
        end
        xml.at('capacityReservationFleetId') do |node|
          data.capacity_reservation_fleet_id = (node.text || '')
        end
        xml.at('placementGroupArn') do |node|
          data.placement_group_arn = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateCapacityReservationFleet
    class CreateCapacityReservationFleet
      def self.parse(http_resp)
        data = Types::CreateCapacityReservationFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('capacityReservationFleetId') do |node|
          data.capacity_reservation_fleet_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('totalTargetCapacity') do |node|
          data.total_target_capacity = node.text&.to_i
        end
        xml.at('totalFulfilledCapacity') do |node|
          data.total_fulfilled_capacity = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('instanceMatchCriteria') do |node|
          data.instance_match_criteria = (node.text || '')
        end
        xml.at('allocationStrategy') do |node|
          data.allocation_strategy = (node.text || '')
        end
        xml.at('createTime') do |node|
          data.create_time = Time.parse(node.text) if node.text
        end
        xml.at('endDate') do |node|
          data.end_date = Time.parse(node.text) if node.text
        end
        xml.at('tenancy') do |node|
          data.tenancy = (node.text || '')
        end
        xml.at('fleetCapacityReservationSet') do |node|
          children = node.children('item')
          data.fleet_capacity_reservations = Parsers::FleetCapacityReservationSet.parse(children)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        data
      end
    end

    class FleetCapacityReservationSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::FleetCapacityReservation.parse(node)
        end
        data
      end
    end

    class FleetCapacityReservation
      def self.parse(xml)
        data = Types::FleetCapacityReservation.new
        xml.at('capacityReservationId') do |node|
          data.capacity_reservation_id = (node.text || '')
        end
        xml.at('availabilityZoneId') do |node|
          data.availability_zone_id = (node.text || '')
        end
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('instancePlatform') do |node|
          data.instance_platform = (node.text || '')
        end
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('totalInstanceCount') do |node|
          data.total_instance_count = node.text&.to_i
        end
        xml.at('fulfilledCapacity') do |node|
          data.fulfilled_capacity = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('ebsOptimized') do |node|
          data.ebs_optimized = (node.text == 'true')
        end
        xml.at('createDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        xml.at('weight') do |node|
          data.weight = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('priority') do |node|
          data.priority = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for CreateCarrierGateway
    class CreateCarrierGateway
      def self.parse(http_resp)
        data = Types::CreateCarrierGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('carrierGateway') do |node|
          data.carrier_gateway = Parsers::CarrierGateway.parse(node)
        end
        data
      end
    end

    class CarrierGateway
      def self.parse(xml)
        data = Types::CarrierGateway.new
        xml.at('carrierGatewayId') do |node|
          data.carrier_gateway_id = (node.text || '')
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for CreateClientVpnEndpoint
    class CreateClientVpnEndpoint
      def self.parse(http_resp)
        data = Types::CreateClientVpnEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('clientVpnEndpointId') do |node|
          data.client_vpn_endpoint_id = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = Parsers::ClientVpnEndpointStatus.parse(node)
        end
        xml.at('dnsName') do |node|
          data.dns_name = (node.text || '')
        end
        data
      end
    end

    class ClientVpnEndpointStatus
      def self.parse(xml)
        data = Types::ClientVpnEndpointStatus.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateClientVpnRoute
    class CreateClientVpnRoute
      def self.parse(http_resp)
        data = Types::CreateClientVpnRouteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('status') do |node|
          data.status = Parsers::ClientVpnRouteStatus.parse(node)
        end
        data
      end
    end

    class ClientVpnRouteStatus
      def self.parse(xml)
        data = Types::ClientVpnRouteStatus.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateCustomerGateway
    class CreateCustomerGateway
      def self.parse(http_resp)
        data = Types::CreateCustomerGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('customerGateway') do |node|
          data.customer_gateway = Parsers::CustomerGateway.parse(node)
        end
        data
      end
    end

    class CustomerGateway
      def self.parse(xml)
        data = Types::CustomerGateway.new
        xml.at('bgpAsn') do |node|
          data.bgp_asn = (node.text || '')
        end
        xml.at('customerGatewayId') do |node|
          data.customer_gateway_id = (node.text || '')
        end
        xml.at('ipAddress') do |node|
          data.ip_address = (node.text || '')
        end
        xml.at('certificateArn') do |node|
          data.certificate_arn = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('type') do |node|
          data.type = (node.text || '')
        end
        xml.at('deviceName') do |node|
          data.device_name = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for CreateDefaultSubnet
    class CreateDefaultSubnet
      def self.parse(http_resp)
        data = Types::CreateDefaultSubnetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('subnet') do |node|
          data.subnet = Parsers::Subnet.parse(node)
        end
        data
      end
    end

    class Subnet
      def self.parse(xml)
        data = Types::Subnet.new
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('availabilityZoneId') do |node|
          data.availability_zone_id = (node.text || '')
        end
        xml.at('availableIpAddressCount') do |node|
          data.available_ip_address_count = node.text&.to_i
        end
        xml.at('cidrBlock') do |node|
          data.cidr_block = (node.text || '')
        end
        xml.at('defaultForAz') do |node|
          data.default_for_az = (node.text == 'true')
        end
        xml.at('enableLniAtDeviceIndex') do |node|
          data.enable_lni_at_device_index = node.text&.to_i
        end
        xml.at('mapPublicIpOnLaunch') do |node|
          data.map_public_ip_on_launch = (node.text == 'true')
        end
        xml.at('mapCustomerOwnedIpOnLaunch') do |node|
          data.map_customer_owned_ip_on_launch = (node.text == 'true')
        end
        xml.at('customerOwnedIpv4Pool') do |node|
          data.customer_owned_ipv4_pool = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('subnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('assignIpv6AddressOnCreation') do |node|
          data.assign_ipv6_address_on_creation = (node.text == 'true')
        end
        xml.at('ipv6CidrBlockAssociationSet') do |node|
          children = node.children('item')
          data.ipv6_cidr_block_association_set = Parsers::SubnetIpv6CidrBlockAssociationSet.parse(children)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('subnetArn') do |node|
          data.subnet_arn = (node.text || '')
        end
        xml.at('outpostArn') do |node|
          data.outpost_arn = (node.text || '')
        end
        xml.at('enableDns64') do |node|
          data.enable_dns64 = (node.text == 'true')
        end
        xml.at('ipv6Native') do |node|
          data.ipv6_native = (node.text == 'true')
        end
        xml.at('privateDnsNameOptionsOnLaunch') do |node|
          data.private_dns_name_options_on_launch = Parsers::PrivateDnsNameOptionsOnLaunch.parse(node)
        end
        return data
      end
    end

    class PrivateDnsNameOptionsOnLaunch
      def self.parse(xml)
        data = Types::PrivateDnsNameOptionsOnLaunch.new
        xml.at('hostnameType') do |node|
          data.hostname_type = (node.text || '')
        end
        xml.at('enableResourceNameDnsARecord') do |node|
          data.enable_resource_name_dns_a_record = (node.text == 'true')
        end
        xml.at('enableResourceNameDnsAAAARecord') do |node|
          data.enable_resource_name_dns_aaaa_record = (node.text == 'true')
        end
        return data
      end
    end

    class SubnetIpv6CidrBlockAssociationSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SubnetIpv6CidrBlockAssociation.parse(node)
        end
        data
      end
    end

    # Operation Parser for CreateDefaultVpc
    class CreateDefaultVpc
      def self.parse(http_resp)
        data = Types::CreateDefaultVpcOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpc') do |node|
          data.vpc = Parsers::Vpc.parse(node)
        end
        data
      end
    end

    class Vpc
      def self.parse(xml)
        data = Types::Vpc.new
        xml.at('cidrBlock') do |node|
          data.cidr_block = (node.text || '')
        end
        xml.at('dhcpOptionsId') do |node|
          data.dhcp_options_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('instanceTenancy') do |node|
          data.instance_tenancy = (node.text || '')
        end
        xml.at('ipv6CidrBlockAssociationSet') do |node|
          children = node.children('item')
          data.ipv6_cidr_block_association_set = Parsers::VpcIpv6CidrBlockAssociationSet.parse(children)
        end
        xml.at('cidrBlockAssociationSet') do |node|
          children = node.children('item')
          data.cidr_block_association_set = Parsers::VpcCidrBlockAssociationSet.parse(children)
        end
        xml.at('isDefault') do |node|
          data.is_default = (node.text == 'true')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class VpcCidrBlockAssociationSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VpcCidrBlockAssociation.parse(node)
        end
        data
      end
    end

    class VpcIpv6CidrBlockAssociationSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VpcIpv6CidrBlockAssociation.parse(node)
        end
        data
      end
    end

    # Operation Parser for CreateDhcpOptions
    class CreateDhcpOptions
      def self.parse(http_resp)
        data = Types::CreateDhcpOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('dhcpOptions') do |node|
          data.dhcp_options = Parsers::DhcpOptions.parse(node)
        end
        data
      end
    end

    class DhcpOptions
      def self.parse(xml)
        data = Types::DhcpOptions.new
        xml.at('dhcpConfigurationSet') do |node|
          children = node.children('item')
          data.dhcp_configurations = Parsers::DhcpConfigurationList.parse(children)
        end
        xml.at('dhcpOptionsId') do |node|
          data.dhcp_options_id = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class DhcpConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DhcpConfiguration.parse(node)
        end
        data
      end
    end

    class DhcpConfiguration
      def self.parse(xml)
        data = Types::DhcpConfiguration.new
        xml.at('key') do |node|
          data.key = (node.text || '')
        end
        xml.at('valueSet') do |node|
          children = node.children('item')
          data.values = Parsers::DhcpConfigurationValueList.parse(children)
        end
        return data
      end
    end

    class DhcpConfigurationValueList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AttributeValue.parse(node)
        end
        data
      end
    end

    class AttributeValue
      def self.parse(xml)
        data = Types::AttributeValue.new
        xml.at('value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateEgressOnlyInternetGateway
    class CreateEgressOnlyInternetGateway
      def self.parse(http_resp)
        data = Types::CreateEgressOnlyInternetGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        xml.at('egressOnlyInternetGateway') do |node|
          data.egress_only_internet_gateway = Parsers::EgressOnlyInternetGateway.parse(node)
        end
        data
      end
    end

    class EgressOnlyInternetGateway
      def self.parse(xml)
        data = Types::EgressOnlyInternetGateway.new
        xml.at('attachmentSet') do |node|
          children = node.children('item')
          data.attachments = Parsers::InternetGatewayAttachmentList.parse(children)
        end
        xml.at('egressOnlyInternetGatewayId') do |node|
          data.egress_only_internet_gateway_id = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class InternetGatewayAttachmentList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InternetGatewayAttachment.parse(node)
        end
        data
      end
    end

    class InternetGatewayAttachment
      def self.parse(xml)
        data = Types::InternetGatewayAttachment.new
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateFleet
    class CreateFleet
      def self.parse(http_resp)
        data = Types::CreateFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('fleetId') do |node|
          data.fleet_id = (node.text || '')
        end
        xml.at('errorSet') do |node|
          children = node.children('item')
          data.errors = Parsers::CreateFleetErrorsSet.parse(children)
        end
        xml.at('fleetInstanceSet') do |node|
          children = node.children('item')
          data.instances = Parsers::CreateFleetInstancesSet.parse(children)
        end
        data
      end
    end

    class CreateFleetInstancesSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CreateFleetInstance.parse(node)
        end
        data
      end
    end

    class CreateFleetInstance
      def self.parse(xml)
        data = Types::CreateFleetInstance.new
        xml.at('launchTemplateAndOverrides') do |node|
          data.launch_template_and_overrides = Parsers::LaunchTemplateAndOverridesResponse.parse(node)
        end
        xml.at('lifecycle') do |node|
          data.lifecycle = (node.text || '')
        end
        xml.at('instanceIds') do |node|
          children = node.children('item')
          data.instance_ids = Parsers::InstanceIdsSet.parse(children)
        end
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('platform') do |node|
          data.platform = (node.text || '')
        end
        return data
      end
    end

    class InstanceIdsSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class LaunchTemplateAndOverridesResponse
      def self.parse(xml)
        data = Types::LaunchTemplateAndOverridesResponse.new
        xml.at('launchTemplateSpecification') do |node|
          data.launch_template_specification = Parsers::FleetLaunchTemplateSpecification.parse(node)
        end
        xml.at('overrides') do |node|
          data.overrides = Parsers::FleetLaunchTemplateOverrides.parse(node)
        end
        return data
      end
    end

    class FleetLaunchTemplateOverrides
      def self.parse(xml)
        data = Types::FleetLaunchTemplateOverrides.new
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('maxPrice') do |node|
          data.max_price = (node.text || '')
        end
        xml.at('subnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('weightedCapacity') do |node|
          data.weighted_capacity = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('priority') do |node|
          data.priority = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('placement') do |node|
          data.placement = Parsers::PlacementResponse.parse(node)
        end
        xml.at('instanceRequirements') do |node|
          data.instance_requirements = Parsers::InstanceRequirements.parse(node)
        end
        return data
      end
    end

    class InstanceRequirements
      def self.parse(xml)
        data = Types::InstanceRequirements.new
        xml.at('vCpuCount') do |node|
          data.v_cpu_count = Parsers::VCpuCountRange.parse(node)
        end
        xml.at('memoryMiB') do |node|
          data.memory_mi_b = Parsers::MemoryMiB.parse(node)
        end
        xml.at('cpuManufacturerSet') do |node|
          children = node.children('item')
          data.cpu_manufacturers = Parsers::CpuManufacturerSet.parse(children)
        end
        xml.at('memoryGiBPerVCpu') do |node|
          data.memory_gi_b_per_v_cpu = Parsers::MemoryGiBPerVCpu.parse(node)
        end
        xml.at('excludedInstanceTypeSet') do |node|
          children = node.children('item')
          data.excluded_instance_types = Parsers::ExcludedInstanceTypeSet.parse(children)
        end
        xml.at('instanceGenerationSet') do |node|
          children = node.children('item')
          data.instance_generations = Parsers::InstanceGenerationSet.parse(children)
        end
        xml.at('spotMaxPricePercentageOverLowestPrice') do |node|
          data.spot_max_price_percentage_over_lowest_price = node.text&.to_i
        end
        xml.at('onDemandMaxPricePercentageOverLowestPrice') do |node|
          data.on_demand_max_price_percentage_over_lowest_price = node.text&.to_i
        end
        xml.at('bareMetal') do |node|
          data.bare_metal = (node.text || '')
        end
        xml.at('burstablePerformance') do |node|
          data.burstable_performance = (node.text || '')
        end
        xml.at('requireHibernateSupport') do |node|
          data.require_hibernate_support = (node.text == 'true')
        end
        xml.at('networkInterfaceCount') do |node|
          data.network_interface_count = Parsers::NetworkInterfaceCount.parse(node)
        end
        xml.at('localStorage') do |node|
          data.local_storage = (node.text || '')
        end
        xml.at('localStorageTypeSet') do |node|
          children = node.children('item')
          data.local_storage_types = Parsers::LocalStorageTypeSet.parse(children)
        end
        xml.at('totalLocalStorageGB') do |node|
          data.total_local_storage_gb = Parsers::TotalLocalStorageGB.parse(node)
        end
        xml.at('baselineEbsBandwidthMbps') do |node|
          data.baseline_ebs_bandwidth_mbps = Parsers::BaselineEbsBandwidthMbps.parse(node)
        end
        xml.at('acceleratorTypeSet') do |node|
          children = node.children('item')
          data.accelerator_types = Parsers::AcceleratorTypeSet.parse(children)
        end
        xml.at('acceleratorCount') do |node|
          data.accelerator_count = Parsers::AcceleratorCount.parse(node)
        end
        xml.at('acceleratorManufacturerSet') do |node|
          children = node.children('item')
          data.accelerator_manufacturers = Parsers::AcceleratorManufacturerSet.parse(children)
        end
        xml.at('acceleratorNameSet') do |node|
          children = node.children('item')
          data.accelerator_names = Parsers::AcceleratorNameSet.parse(children)
        end
        xml.at('acceleratorTotalMemoryMiB') do |node|
          data.accelerator_total_memory_mi_b = Parsers::AcceleratorTotalMemoryMiB.parse(node)
        end
        return data
      end
    end

    class AcceleratorTotalMemoryMiB
      def self.parse(xml)
        data = Types::AcceleratorTotalMemoryMiB.new
        xml.at('min') do |node|
          data.min = node.text&.to_i
        end
        xml.at('max') do |node|
          data.max = node.text&.to_i
        end
        return data
      end
    end

    class AcceleratorNameSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class AcceleratorManufacturerSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class AcceleratorCount
      def self.parse(xml)
        data = Types::AcceleratorCount.new
        xml.at('min') do |node|
          data.min = node.text&.to_i
        end
        xml.at('max') do |node|
          data.max = node.text&.to_i
        end
        return data
      end
    end

    class AcceleratorTypeSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class BaselineEbsBandwidthMbps
      def self.parse(xml)
        data = Types::BaselineEbsBandwidthMbps.new
        xml.at('min') do |node|
          data.min = node.text&.to_i
        end
        xml.at('max') do |node|
          data.max = node.text&.to_i
        end
        return data
      end
    end

    class TotalLocalStorageGB
      def self.parse(xml)
        data = Types::TotalLocalStorageGB.new
        xml.at('min') do |node|
          data.min = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('max') do |node|
          data.max = Hearth::NumberHelper.deserialize(node.text)
        end
        return data
      end
    end

    class LocalStorageTypeSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class NetworkInterfaceCount
      def self.parse(xml)
        data = Types::NetworkInterfaceCount.new
        xml.at('min') do |node|
          data.min = node.text&.to_i
        end
        xml.at('max') do |node|
          data.max = node.text&.to_i
        end
        return data
      end
    end

    class InstanceGenerationSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ExcludedInstanceTypeSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class MemoryGiBPerVCpu
      def self.parse(xml)
        data = Types::MemoryGiBPerVCpu.new
        xml.at('min') do |node|
          data.min = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('max') do |node|
          data.max = Hearth::NumberHelper.deserialize(node.text)
        end
        return data
      end
    end

    class CpuManufacturerSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class MemoryMiB
      def self.parse(xml)
        data = Types::MemoryMiB.new
        xml.at('min') do |node|
          data.min = node.text&.to_i
        end
        xml.at('max') do |node|
          data.max = node.text&.to_i
        end
        return data
      end
    end

    class VCpuCountRange
      def self.parse(xml)
        data = Types::VCpuCountRange.new
        xml.at('min') do |node|
          data.min = node.text&.to_i
        end
        xml.at('max') do |node|
          data.max = node.text&.to_i
        end
        return data
      end
    end

    class PlacementResponse
      def self.parse(xml)
        data = Types::PlacementResponse.new
        xml.at('groupName') do |node|
          data.group_name = (node.text || '')
        end
        return data
      end
    end

    class FleetLaunchTemplateSpecification
      def self.parse(xml)
        data = Types::FleetLaunchTemplateSpecification.new
        xml.at('launchTemplateId') do |node|
          data.launch_template_id = (node.text || '')
        end
        xml.at('launchTemplateName') do |node|
          data.launch_template_name = (node.text || '')
        end
        xml.at('version') do |node|
          data.version = (node.text || '')
        end
        return data
      end
    end

    class CreateFleetErrorsSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CreateFleetError.parse(node)
        end
        data
      end
    end

    class CreateFleetError
      def self.parse(xml)
        data = Types::CreateFleetError.new
        xml.at('launchTemplateAndOverrides') do |node|
          data.launch_template_and_overrides = Parsers::LaunchTemplateAndOverridesResponse.parse(node)
        end
        xml.at('lifecycle') do |node|
          data.lifecycle = (node.text || '')
        end
        xml.at('errorCode') do |node|
          data.error_code = (node.text || '')
        end
        xml.at('errorMessage') do |node|
          data.error_message = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateFlowLogs
    class CreateFlowLogs
      def self.parse(http_resp)
        data = Types::CreateFlowLogsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        xml.at('flowLogIdSet') do |node|
          children = node.children('item')
          data.flow_log_ids = Parsers::ValueStringList.parse(children)
        end
        xml.at('unsuccessful') do |node|
          children = node.children('item')
          data.unsuccessful = Parsers::UnsuccessfulItemSet.parse(children)
        end
        data
      end
    end

    # Operation Parser for CreateFpgaImage
    class CreateFpgaImage
      def self.parse(http_resp)
        data = Types::CreateFpgaImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('fpgaImageId') do |node|
          data.fpga_image_id = (node.text || '')
        end
        xml.at('fpgaImageGlobalId') do |node|
          data.fpga_image_global_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateImage
    class CreateImage
      def self.parse(http_resp)
        data = Types::CreateImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('imageId') do |node|
          data.image_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateInstanceEventWindow
    class CreateInstanceEventWindow
      def self.parse(http_resp)
        data = Types::CreateInstanceEventWindowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceEventWindow') do |node|
          data.instance_event_window = Parsers::InstanceEventWindow.parse(node)
        end
        data
      end
    end

    # Operation Parser for CreateInstanceExportTask
    class CreateInstanceExportTask
      def self.parse(http_resp)
        data = Types::CreateInstanceExportTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('exportTask') do |node|
          data.export_task = Parsers::ExportTask.parse(node)
        end
        data
      end
    end

    class ExportTask
      def self.parse(xml)
        data = Types::ExportTask.new
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('exportTaskId') do |node|
          data.export_task_id = (node.text || '')
        end
        xml.at('exportToS3') do |node|
          data.export_to_s3_task = Parsers::ExportToS3Task.parse(node)
        end
        xml.at('instanceExport') do |node|
          data.instance_export_details = Parsers::InstanceExportDetails.parse(node)
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class InstanceExportDetails
      def self.parse(xml)
        data = Types::InstanceExportDetails.new
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('targetEnvironment') do |node|
          data.target_environment = (node.text || '')
        end
        return data
      end
    end

    class ExportToS3Task
      def self.parse(xml)
        data = Types::ExportToS3Task.new
        xml.at('containerFormat') do |node|
          data.container_format = (node.text || '')
        end
        xml.at('diskImageFormat') do |node|
          data.disk_image_format = (node.text || '')
        end
        xml.at('s3Bucket') do |node|
          data.s3_bucket = (node.text || '')
        end
        xml.at('s3Key') do |node|
          data.s3_key = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateInternetGateway
    class CreateInternetGateway
      def self.parse(http_resp)
        data = Types::CreateInternetGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('internetGateway') do |node|
          data.internet_gateway = Parsers::InternetGateway.parse(node)
        end
        data
      end
    end

    class InternetGateway
      def self.parse(xml)
        data = Types::InternetGateway.new
        xml.at('attachmentSet') do |node|
          children = node.children('item')
          data.attachments = Parsers::InternetGatewayAttachmentList.parse(children)
        end
        xml.at('internetGatewayId') do |node|
          data.internet_gateway_id = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for CreateIpam
    class CreateIpam
      def self.parse(http_resp)
        data = Types::CreateIpamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipam') do |node|
          data.ipam = Parsers::Ipam.parse(node)
        end
        data
      end
    end

    class Ipam
      def self.parse(xml)
        data = Types::Ipam.new
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('ipamId') do |node|
          data.ipam_id = (node.text || '')
        end
        xml.at('ipamArn') do |node|
          data.ipam_arn = (node.text || '')
        end
        xml.at('ipamRegion') do |node|
          data.ipam_region = (node.text || '')
        end
        xml.at('publicDefaultScopeId') do |node|
          data.public_default_scope_id = (node.text || '')
        end
        xml.at('privateDefaultScopeId') do |node|
          data.private_default_scope_id = (node.text || '')
        end
        xml.at('scopeCount') do |node|
          data.scope_count = node.text&.to_i
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('operatingRegionSet') do |node|
          children = node.children('item')
          data.operating_regions = Parsers::IpamOperatingRegionSet.parse(children)
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class IpamOperatingRegionSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::IpamOperatingRegion.parse(node)
        end
        data
      end
    end

    class IpamOperatingRegion
      def self.parse(xml)
        data = Types::IpamOperatingRegion.new
        xml.at('regionName') do |node|
          data.region_name = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateIpamPool
    class CreateIpamPool
      def self.parse(http_resp)
        data = Types::CreateIpamPoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipamPool') do |node|
          data.ipam_pool = Parsers::IpamPool.parse(node)
        end
        data
      end
    end

    class IpamPool
      def self.parse(xml)
        data = Types::IpamPool.new
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('ipamPoolId') do |node|
          data.ipam_pool_id = (node.text || '')
        end
        xml.at('sourceIpamPoolId') do |node|
          data.source_ipam_pool_id = (node.text || '')
        end
        xml.at('ipamPoolArn') do |node|
          data.ipam_pool_arn = (node.text || '')
        end
        xml.at('ipamScopeArn') do |node|
          data.ipam_scope_arn = (node.text || '')
        end
        xml.at('ipamScopeType') do |node|
          data.ipam_scope_type = (node.text || '')
        end
        xml.at('ipamArn') do |node|
          data.ipam_arn = (node.text || '')
        end
        xml.at('ipamRegion') do |node|
          data.ipam_region = (node.text || '')
        end
        xml.at('locale') do |node|
          data.locale = (node.text || '')
        end
        xml.at('poolDepth') do |node|
          data.pool_depth = node.text&.to_i
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('stateMessage') do |node|
          data.state_message = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('autoImport') do |node|
          data.auto_import = (node.text == 'true')
        end
        xml.at('publiclyAdvertisable') do |node|
          data.publicly_advertisable = (node.text == 'true')
        end
        xml.at('addressFamily') do |node|
          data.address_family = (node.text || '')
        end
        xml.at('allocationMinNetmaskLength') do |node|
          data.allocation_min_netmask_length = node.text&.to_i
        end
        xml.at('allocationMaxNetmaskLength') do |node|
          data.allocation_max_netmask_length = node.text&.to_i
        end
        xml.at('allocationDefaultNetmaskLength') do |node|
          data.allocation_default_netmask_length = node.text&.to_i
        end
        xml.at('allocationResourceTagSet') do |node|
          children = node.children('item')
          data.allocation_resource_tags = Parsers::IpamResourceTagList.parse(children)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('awsService') do |node|
          data.aws_service = (node.text || '')
        end
        return data
      end
    end

    class IpamResourceTagList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::IpamResourceTag.parse(node)
        end
        data
      end
    end

    class IpamResourceTag
      def self.parse(xml)
        data = Types::IpamResourceTag.new
        xml.at('key') do |node|
          data.key = (node.text || '')
        end
        xml.at('value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateIpamScope
    class CreateIpamScope
      def self.parse(http_resp)
        data = Types::CreateIpamScopeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipamScope') do |node|
          data.ipam_scope = Parsers::IpamScope.parse(node)
        end
        data
      end
    end

    class IpamScope
      def self.parse(xml)
        data = Types::IpamScope.new
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('ipamScopeId') do |node|
          data.ipam_scope_id = (node.text || '')
        end
        xml.at('ipamScopeArn') do |node|
          data.ipam_scope_arn = (node.text || '')
        end
        xml.at('ipamArn') do |node|
          data.ipam_arn = (node.text || '')
        end
        xml.at('ipamRegion') do |node|
          data.ipam_region = (node.text || '')
        end
        xml.at('ipamScopeType') do |node|
          data.ipam_scope_type = (node.text || '')
        end
        xml.at('isDefault') do |node|
          data.is_default = (node.text == 'true')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('poolCount') do |node|
          data.pool_count = node.text&.to_i
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for CreateKeyPair
    class CreateKeyPair
      def self.parse(http_resp)
        data = Types::CreateKeyPairOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('keyFingerprint') do |node|
          data.key_fingerprint = (node.text || '')
        end
        xml.at('keyMaterial') do |node|
          data.key_material = (node.text || '')
        end
        xml.at('keyName') do |node|
          data.key_name = (node.text || '')
        end
        xml.at('keyPairId') do |node|
          data.key_pair_id = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        data
      end
    end

    # Operation Parser for CreateLaunchTemplate
    class CreateLaunchTemplate
      def self.parse(http_resp)
        data = Types::CreateLaunchTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('launchTemplate') do |node|
          data.launch_template = Parsers::LaunchTemplate.parse(node)
        end
        xml.at('warning') do |node|
          data.warning = Parsers::ValidationWarning.parse(node)
        end
        data
      end
    end

    class ValidationWarning
      def self.parse(xml)
        data = Types::ValidationWarning.new
        xml.at('errorSet') do |node|
          children = node.children('item')
          data.errors = Parsers::ErrorSet.parse(children)
        end
        return data
      end
    end

    class ErrorSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ValidationError.parse(node)
        end
        data
      end
    end

    class ValidationError
      def self.parse(xml)
        data = Types::ValidationError.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    class LaunchTemplate
      def self.parse(xml)
        data = Types::LaunchTemplate.new
        xml.at('launchTemplateId') do |node|
          data.launch_template_id = (node.text || '')
        end
        xml.at('launchTemplateName') do |node|
          data.launch_template_name = (node.text || '')
        end
        xml.at('createTime') do |node|
          data.create_time = Time.parse(node.text) if node.text
        end
        xml.at('createdBy') do |node|
          data.created_by = (node.text || '')
        end
        xml.at('defaultVersionNumber') do |node|
          data.default_version_number = node.text&.to_i
        end
        xml.at('latestVersionNumber') do |node|
          data.latest_version_number = node.text&.to_i
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for CreateLaunchTemplateVersion
    class CreateLaunchTemplateVersion
      def self.parse(http_resp)
        data = Types::CreateLaunchTemplateVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('launchTemplateVersion') do |node|
          data.launch_template_version = Parsers::LaunchTemplateVersion.parse(node)
        end
        xml.at('warning') do |node|
          data.warning = Parsers::ValidationWarning.parse(node)
        end
        data
      end
    end

    class LaunchTemplateVersion
      def self.parse(xml)
        data = Types::LaunchTemplateVersion.new
        xml.at('launchTemplateId') do |node|
          data.launch_template_id = (node.text || '')
        end
        xml.at('launchTemplateName') do |node|
          data.launch_template_name = (node.text || '')
        end
        xml.at('versionNumber') do |node|
          data.version_number = node.text&.to_i
        end
        xml.at('versionDescription') do |node|
          data.version_description = (node.text || '')
        end
        xml.at('createTime') do |node|
          data.create_time = Time.parse(node.text) if node.text
        end
        xml.at('createdBy') do |node|
          data.created_by = (node.text || '')
        end
        xml.at('defaultVersion') do |node|
          data.default_version = (node.text == 'true')
        end
        xml.at('launchTemplateData') do |node|
          data.launch_template_data = Parsers::ResponseLaunchTemplateData.parse(node)
        end
        return data
      end
    end

    class ResponseLaunchTemplateData
      def self.parse(xml)
        data = Types::ResponseLaunchTemplateData.new
        xml.at('kernelId') do |node|
          data.kernel_id = (node.text || '')
        end
        xml.at('ebsOptimized') do |node|
          data.ebs_optimized = (node.text == 'true')
        end
        xml.at('iamInstanceProfile') do |node|
          data.iam_instance_profile = Parsers::LaunchTemplateIamInstanceProfileSpecification.parse(node)
        end
        xml.at('blockDeviceMappingSet') do |node|
          children = node.children('item')
          data.block_device_mappings = Parsers::LaunchTemplateBlockDeviceMappingList.parse(children)
        end
        xml.at('networkInterfaceSet') do |node|
          children = node.children('item')
          data.network_interfaces = Parsers::LaunchTemplateInstanceNetworkInterfaceSpecificationList.parse(children)
        end
        xml.at('imageId') do |node|
          data.image_id = (node.text || '')
        end
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('keyName') do |node|
          data.key_name = (node.text || '')
        end
        xml.at('monitoring') do |node|
          data.monitoring = Parsers::LaunchTemplatesMonitoring.parse(node)
        end
        xml.at('placement') do |node|
          data.placement = Parsers::LaunchTemplatePlacement.parse(node)
        end
        xml.at('ramDiskId') do |node|
          data.ram_disk_id = (node.text || '')
        end
        xml.at('disableApiTermination') do |node|
          data.disable_api_termination = (node.text == 'true')
        end
        xml.at('instanceInitiatedShutdownBehavior') do |node|
          data.instance_initiated_shutdown_behavior = (node.text || '')
        end
        xml.at('userData') do |node|
          data.user_data = (node.text || '')
        end
        xml.at('tagSpecificationSet') do |node|
          children = node.children('item')
          data.tag_specifications = Parsers::LaunchTemplateTagSpecificationList.parse(children)
        end
        xml.at('elasticGpuSpecificationSet') do |node|
          children = node.children('item')
          data.elastic_gpu_specifications = Parsers::ElasticGpuSpecificationResponseList.parse(children)
        end
        xml.at('elasticInferenceAcceleratorSet') do |node|
          children = node.children('item')
          data.elastic_inference_accelerators = Parsers::LaunchTemplateElasticInferenceAcceleratorResponseList.parse(children)
        end
        xml.at('securityGroupIdSet') do |node|
          children = node.children('item')
          data.security_group_ids = Parsers::ValueStringList.parse(children)
        end
        xml.at('securityGroupSet') do |node|
          children = node.children('item')
          data.security_groups = Parsers::ValueStringList.parse(children)
        end
        xml.at('instanceMarketOptions') do |node|
          data.instance_market_options = Parsers::LaunchTemplateInstanceMarketOptions.parse(node)
        end
        xml.at('creditSpecification') do |node|
          data.credit_specification = Parsers::CreditSpecification.parse(node)
        end
        xml.at('cpuOptions') do |node|
          data.cpu_options = Parsers::LaunchTemplateCpuOptions.parse(node)
        end
        xml.at('capacityReservationSpecification') do |node|
          data.capacity_reservation_specification = Parsers::LaunchTemplateCapacityReservationSpecificationResponse.parse(node)
        end
        xml.at('licenseSet') do |node|
          children = node.children('item')
          data.license_specifications = Parsers::LaunchTemplateLicenseList.parse(children)
        end
        xml.at('hibernationOptions') do |node|
          data.hibernation_options = Parsers::LaunchTemplateHibernationOptions.parse(node)
        end
        xml.at('metadataOptions') do |node|
          data.metadata_options = Parsers::LaunchTemplateInstanceMetadataOptions.parse(node)
        end
        xml.at('enclaveOptions') do |node|
          data.enclave_options = Parsers::LaunchTemplateEnclaveOptions.parse(node)
        end
        xml.at('instanceRequirements') do |node|
          data.instance_requirements = Parsers::InstanceRequirements.parse(node)
        end
        xml.at('privateDnsNameOptions') do |node|
          data.private_dns_name_options = Parsers::LaunchTemplatePrivateDnsNameOptions.parse(node)
        end
        return data
      end
    end

    class LaunchTemplatePrivateDnsNameOptions
      def self.parse(xml)
        data = Types::LaunchTemplatePrivateDnsNameOptions.new
        xml.at('hostnameType') do |node|
          data.hostname_type = (node.text || '')
        end
        xml.at('enableResourceNameDnsARecord') do |node|
          data.enable_resource_name_dns_a_record = (node.text == 'true')
        end
        xml.at('enableResourceNameDnsAAAARecord') do |node|
          data.enable_resource_name_dns_aaaa_record = (node.text == 'true')
        end
        return data
      end
    end

    class LaunchTemplateEnclaveOptions
      def self.parse(xml)
        data = Types::LaunchTemplateEnclaveOptions.new
        xml.at('enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        return data
      end
    end

    class LaunchTemplateInstanceMetadataOptions
      def self.parse(xml)
        data = Types::LaunchTemplateInstanceMetadataOptions.new
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('httpTokens') do |node|
          data.http_tokens = (node.text || '')
        end
        xml.at('httpPutResponseHopLimit') do |node|
          data.http_put_response_hop_limit = node.text&.to_i
        end
        xml.at('httpEndpoint') do |node|
          data.http_endpoint = (node.text || '')
        end
        xml.at('httpProtocolIpv6') do |node|
          data.http_protocol_ipv6 = (node.text || '')
        end
        xml.at('instanceMetadataTags') do |node|
          data.instance_metadata_tags = (node.text || '')
        end
        return data
      end
    end

    class LaunchTemplateHibernationOptions
      def self.parse(xml)
        data = Types::LaunchTemplateHibernationOptions.new
        xml.at('configured') do |node|
          data.configured = (node.text == 'true')
        end
        return data
      end
    end

    class LaunchTemplateLicenseList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LaunchTemplateLicenseConfiguration.parse(node)
        end
        data
      end
    end

    class LaunchTemplateLicenseConfiguration
      def self.parse(xml)
        data = Types::LaunchTemplateLicenseConfiguration.new
        xml.at('licenseConfigurationArn') do |node|
          data.license_configuration_arn = (node.text || '')
        end
        return data
      end
    end

    class LaunchTemplateCapacityReservationSpecificationResponse
      def self.parse(xml)
        data = Types::LaunchTemplateCapacityReservationSpecificationResponse.new
        xml.at('capacityReservationPreference') do |node|
          data.capacity_reservation_preference = (node.text || '')
        end
        xml.at('capacityReservationTarget') do |node|
          data.capacity_reservation_target = Parsers::CapacityReservationTargetResponse.parse(node)
        end
        return data
      end
    end

    class CapacityReservationTargetResponse
      def self.parse(xml)
        data = Types::CapacityReservationTargetResponse.new
        xml.at('capacityReservationId') do |node|
          data.capacity_reservation_id = (node.text || '')
        end
        xml.at('capacityReservationResourceGroupArn') do |node|
          data.capacity_reservation_resource_group_arn = (node.text || '')
        end
        return data
      end
    end

    class LaunchTemplateCpuOptions
      def self.parse(xml)
        data = Types::LaunchTemplateCpuOptions.new
        xml.at('coreCount') do |node|
          data.core_count = node.text&.to_i
        end
        xml.at('threadsPerCore') do |node|
          data.threads_per_core = node.text&.to_i
        end
        return data
      end
    end

    class CreditSpecification
      def self.parse(xml)
        data = Types::CreditSpecification.new
        xml.at('cpuCredits') do |node|
          data.cpu_credits = (node.text || '')
        end
        return data
      end
    end

    class LaunchTemplateInstanceMarketOptions
      def self.parse(xml)
        data = Types::LaunchTemplateInstanceMarketOptions.new
        xml.at('marketType') do |node|
          data.market_type = (node.text || '')
        end
        xml.at('spotOptions') do |node|
          data.spot_options = Parsers::LaunchTemplateSpotMarketOptions.parse(node)
        end
        return data
      end
    end

    class LaunchTemplateSpotMarketOptions
      def self.parse(xml)
        data = Types::LaunchTemplateSpotMarketOptions.new
        xml.at('maxPrice') do |node|
          data.max_price = (node.text || '')
        end
        xml.at('spotInstanceType') do |node|
          data.spot_instance_type = (node.text || '')
        end
        xml.at('blockDurationMinutes') do |node|
          data.block_duration_minutes = node.text&.to_i
        end
        xml.at('validUntil') do |node|
          data.valid_until = Time.parse(node.text) if node.text
        end
        xml.at('instanceInterruptionBehavior') do |node|
          data.instance_interruption_behavior = (node.text || '')
        end
        return data
      end
    end

    class LaunchTemplateElasticInferenceAcceleratorResponseList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LaunchTemplateElasticInferenceAcceleratorResponse.parse(node)
        end
        data
      end
    end

    class LaunchTemplateElasticInferenceAcceleratorResponse
      def self.parse(xml)
        data = Types::LaunchTemplateElasticInferenceAcceleratorResponse.new
        xml.at('type') do |node|
          data.type = (node.text || '')
        end
        xml.at('count') do |node|
          data.count = node.text&.to_i
        end
        return data
      end
    end

    class ElasticGpuSpecificationResponseList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ElasticGpuSpecificationResponse.parse(node)
        end
        data
      end
    end

    class ElasticGpuSpecificationResponse
      def self.parse(xml)
        data = Types::ElasticGpuSpecificationResponse.new
        xml.at('type') do |node|
          data.type = (node.text || '')
        end
        return data
      end
    end

    class LaunchTemplateTagSpecificationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LaunchTemplateTagSpecification.parse(node)
        end
        data
      end
    end

    class LaunchTemplateTagSpecification
      def self.parse(xml)
        data = Types::LaunchTemplateTagSpecification.new
        xml.at('resourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class LaunchTemplatePlacement
      def self.parse(xml)
        data = Types::LaunchTemplatePlacement.new
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('affinity') do |node|
          data.affinity = (node.text || '')
        end
        xml.at('groupName') do |node|
          data.group_name = (node.text || '')
        end
        xml.at('hostId') do |node|
          data.host_id = (node.text || '')
        end
        xml.at('tenancy') do |node|
          data.tenancy = (node.text || '')
        end
        xml.at('spreadDomain') do |node|
          data.spread_domain = (node.text || '')
        end
        xml.at('hostResourceGroupArn') do |node|
          data.host_resource_group_arn = (node.text || '')
        end
        xml.at('partitionNumber') do |node|
          data.partition_number = node.text&.to_i
        end
        return data
      end
    end

    class LaunchTemplatesMonitoring
      def self.parse(xml)
        data = Types::LaunchTemplatesMonitoring.new
        xml.at('enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        return data
      end
    end

    class LaunchTemplateInstanceNetworkInterfaceSpecificationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LaunchTemplateInstanceNetworkInterfaceSpecification.parse(node)
        end
        data
      end
    end

    class LaunchTemplateInstanceNetworkInterfaceSpecification
      def self.parse(xml)
        data = Types::LaunchTemplateInstanceNetworkInterfaceSpecification.new
        xml.at('associateCarrierIpAddress') do |node|
          data.associate_carrier_ip_address = (node.text == 'true')
        end
        xml.at('associatePublicIpAddress') do |node|
          data.associate_public_ip_address = (node.text == 'true')
        end
        xml.at('deleteOnTermination') do |node|
          data.delete_on_termination = (node.text == 'true')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('deviceIndex') do |node|
          data.device_index = node.text&.to_i
        end
        xml.at('groupSet') do |node|
          children = node.children('groupId')
          data.groups = Parsers::GroupIdStringList.parse(children)
        end
        xml.at('interfaceType') do |node|
          data.interface_type = (node.text || '')
        end
        xml.at('ipv6AddressCount') do |node|
          data.ipv6_address_count = node.text&.to_i
        end
        xml.at('ipv6AddressesSet') do |node|
          children = node.children('item')
          data.ipv6_addresses = Parsers::InstanceIpv6AddressList.parse(children)
        end
        xml.at('networkInterfaceId') do |node|
          data.network_interface_id = (node.text || '')
        end
        xml.at('privateIpAddress') do |node|
          data.private_ip_address = (node.text || '')
        end
        xml.at('privateIpAddressesSet') do |node|
          children = node.children('item')
          data.private_ip_addresses = Parsers::PrivateIpAddressSpecificationList.parse(children)
        end
        xml.at('secondaryPrivateIpAddressCount') do |node|
          data.secondary_private_ip_address_count = node.text&.to_i
        end
        xml.at('subnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        xml.at('networkCardIndex') do |node|
          data.network_card_index = node.text&.to_i
        end
        xml.at('ipv4PrefixSet') do |node|
          children = node.children('item')
          data.ipv4_prefixes = Parsers::Ipv4PrefixListResponse.parse(children)
        end
        xml.at('ipv4PrefixCount') do |node|
          data.ipv4_prefix_count = node.text&.to_i
        end
        xml.at('ipv6PrefixSet') do |node|
          children = node.children('item')
          data.ipv6_prefixes = Parsers::Ipv6PrefixListResponse.parse(children)
        end
        xml.at('ipv6PrefixCount') do |node|
          data.ipv6_prefix_count = node.text&.to_i
        end
        return data
      end
    end

    class Ipv6PrefixListResponse
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Ipv6PrefixSpecificationResponse.parse(node)
        end
        data
      end
    end

    class Ipv6PrefixSpecificationResponse
      def self.parse(xml)
        data = Types::Ipv6PrefixSpecificationResponse.new
        xml.at('ipv6Prefix') do |node|
          data.ipv6_prefix = (node.text || '')
        end
        return data
      end
    end

    class Ipv4PrefixListResponse
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Ipv4PrefixSpecificationResponse.parse(node)
        end
        data
      end
    end

    class Ipv4PrefixSpecificationResponse
      def self.parse(xml)
        data = Types::Ipv4PrefixSpecificationResponse.new
        xml.at('ipv4Prefix') do |node|
          data.ipv4_prefix = (node.text || '')
        end
        return data
      end
    end

    class PrivateIpAddressSpecificationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PrivateIpAddressSpecification.parse(node)
        end
        data
      end
    end

    class PrivateIpAddressSpecification
      def self.parse(xml)
        data = Types::PrivateIpAddressSpecification.new
        xml.at('primary') do |node|
          data.primary = (node.text == 'true')
        end
        xml.at('privateIpAddress') do |node|
          data.private_ip_address = (node.text || '')
        end
        return data
      end
    end

    class InstanceIpv6AddressList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceIpv6Address.parse(node)
        end
        data
      end
    end

    class InstanceIpv6Address
      def self.parse(xml)
        data = Types::InstanceIpv6Address.new
        xml.at('ipv6Address') do |node|
          data.ipv6_address = (node.text || '')
        end
        return data
      end
    end

    class GroupIdStringList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class LaunchTemplateBlockDeviceMappingList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LaunchTemplateBlockDeviceMapping.parse(node)
        end
        data
      end
    end

    class LaunchTemplateBlockDeviceMapping
      def self.parse(xml)
        data = Types::LaunchTemplateBlockDeviceMapping.new
        xml.at('deviceName') do |node|
          data.device_name = (node.text || '')
        end
        xml.at('virtualName') do |node|
          data.virtual_name = (node.text || '')
        end
        xml.at('ebs') do |node|
          data.ebs = Parsers::LaunchTemplateEbsBlockDevice.parse(node)
        end
        xml.at('noDevice') do |node|
          data.no_device = (node.text || '')
        end
        return data
      end
    end

    class LaunchTemplateEbsBlockDevice
      def self.parse(xml)
        data = Types::LaunchTemplateEbsBlockDevice.new
        xml.at('encrypted') do |node|
          data.encrypted = (node.text == 'true')
        end
        xml.at('deleteOnTermination') do |node|
          data.delete_on_termination = (node.text == 'true')
        end
        xml.at('iops') do |node|
          data.iops = node.text&.to_i
        end
        xml.at('kmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('volumeSize') do |node|
          data.volume_size = node.text&.to_i
        end
        xml.at('volumeType') do |node|
          data.volume_type = (node.text || '')
        end
        xml.at('throughput') do |node|
          data.throughput = node.text&.to_i
        end
        return data
      end
    end

    class LaunchTemplateIamInstanceProfileSpecification
      def self.parse(xml)
        data = Types::LaunchTemplateIamInstanceProfileSpecification.new
        xml.at('arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('name') do |node|
          data.member_name = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateLocalGatewayRoute
    class CreateLocalGatewayRoute
      def self.parse(http_resp)
        data = Types::CreateLocalGatewayRouteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('route') do |node|
          data.route = Parsers::LocalGatewayRoute.parse(node)
        end
        data
      end
    end

    class LocalGatewayRoute
      def self.parse(xml)
        data = Types::LocalGatewayRoute.new
        xml.at('destinationCidrBlock') do |node|
          data.destination_cidr_block = (node.text || '')
        end
        xml.at('localGatewayVirtualInterfaceGroupId') do |node|
          data.local_gateway_virtual_interface_group_id = (node.text || '')
        end
        xml.at('type') do |node|
          data.type = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('localGatewayRouteTableId') do |node|
          data.local_gateway_route_table_id = (node.text || '')
        end
        xml.at('localGatewayRouteTableArn') do |node|
          data.local_gateway_route_table_arn = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateLocalGatewayRouteTableVpcAssociation
    class CreateLocalGatewayRouteTableVpcAssociation
      def self.parse(http_resp)
        data = Types::CreateLocalGatewayRouteTableVpcAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('localGatewayRouteTableVpcAssociation') do |node|
          data.local_gateway_route_table_vpc_association = Parsers::LocalGatewayRouteTableVpcAssociation.parse(node)
        end
        data
      end
    end

    class LocalGatewayRouteTableVpcAssociation
      def self.parse(xml)
        data = Types::LocalGatewayRouteTableVpcAssociation.new
        xml.at('localGatewayRouteTableVpcAssociationId') do |node|
          data.local_gateway_route_table_vpc_association_id = (node.text || '')
        end
        xml.at('localGatewayRouteTableId') do |node|
          data.local_gateway_route_table_id = (node.text || '')
        end
        xml.at('localGatewayRouteTableArn') do |node|
          data.local_gateway_route_table_arn = (node.text || '')
        end
        xml.at('localGatewayId') do |node|
          data.local_gateway_id = (node.text || '')
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for CreateManagedPrefixList
    class CreateManagedPrefixList
      def self.parse(http_resp)
        data = Types::CreateManagedPrefixListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('prefixList') do |node|
          data.prefix_list = Parsers::ManagedPrefixList.parse(node)
        end
        data
      end
    end

    class ManagedPrefixList
      def self.parse(xml)
        data = Types::ManagedPrefixList.new
        xml.at('prefixListId') do |node|
          data.prefix_list_id = (node.text || '')
        end
        xml.at('addressFamily') do |node|
          data.address_family = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('stateMessage') do |node|
          data.state_message = (node.text || '')
        end
        xml.at('prefixListArn') do |node|
          data.prefix_list_arn = (node.text || '')
        end
        xml.at('prefixListName') do |node|
          data.prefix_list_name = (node.text || '')
        end
        xml.at('maxEntries') do |node|
          data.max_entries = node.text&.to_i
        end
        xml.at('version') do |node|
          data.version = node.text&.to_i
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateNatGateway
    class CreateNatGateway
      def self.parse(http_resp)
        data = Types::CreateNatGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        xml.at('natGateway') do |node|
          data.nat_gateway = Parsers::NatGateway.parse(node)
        end
        data
      end
    end

    class NatGateway
      def self.parse(xml)
        data = Types::NatGateway.new
        xml.at('createTime') do |node|
          data.create_time = Time.parse(node.text) if node.text
        end
        xml.at('deleteTime') do |node|
          data.delete_time = Time.parse(node.text) if node.text
        end
        xml.at('failureCode') do |node|
          data.failure_code = (node.text || '')
        end
        xml.at('failureMessage') do |node|
          data.failure_message = (node.text || '')
        end
        xml.at('natGatewayAddressSet') do |node|
          children = node.children('item')
          data.nat_gateway_addresses = Parsers::NatGatewayAddressList.parse(children)
        end
        xml.at('natGatewayId') do |node|
          data.nat_gateway_id = (node.text || '')
        end
        xml.at('provisionedBandwidth') do |node|
          data.provisioned_bandwidth = Parsers::ProvisionedBandwidth.parse(node)
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('subnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('connectivityType') do |node|
          data.connectivity_type = (node.text || '')
        end
        return data
      end
    end

    class ProvisionedBandwidth
      def self.parse(xml)
        data = Types::ProvisionedBandwidth.new
        xml.at('provisionTime') do |node|
          data.provision_time = Time.parse(node.text) if node.text
        end
        xml.at('provisioned') do |node|
          data.provisioned = (node.text || '')
        end
        xml.at('requestTime') do |node|
          data.request_time = Time.parse(node.text) if node.text
        end
        xml.at('requested') do |node|
          data.requested = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class NatGatewayAddressList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::NatGatewayAddress.parse(node)
        end
        data
      end
    end

    class NatGatewayAddress
      def self.parse(xml)
        data = Types::NatGatewayAddress.new
        xml.at('allocationId') do |node|
          data.allocation_id = (node.text || '')
        end
        xml.at('networkInterfaceId') do |node|
          data.network_interface_id = (node.text || '')
        end
        xml.at('privateIp') do |node|
          data.private_ip = (node.text || '')
        end
        xml.at('publicIp') do |node|
          data.public_ip = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateNetworkAcl
    class CreateNetworkAcl
      def self.parse(http_resp)
        data = Types::CreateNetworkAclOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkAcl') do |node|
          data.network_acl = Parsers::NetworkAcl.parse(node)
        end
        data
      end
    end

    class NetworkAcl
      def self.parse(xml)
        data = Types::NetworkAcl.new
        xml.at('associationSet') do |node|
          children = node.children('item')
          data.associations = Parsers::NetworkAclAssociationList.parse(children)
        end
        xml.at('entrySet') do |node|
          children = node.children('item')
          data.entries = Parsers::NetworkAclEntryList.parse(children)
        end
        xml.at('default') do |node|
          data.is_default = (node.text == 'true')
        end
        xml.at('networkAclId') do |node|
          data.network_acl_id = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        return data
      end
    end

    class NetworkAclEntryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::NetworkAclEntry.parse(node)
        end
        data
      end
    end

    class NetworkAclEntry
      def self.parse(xml)
        data = Types::NetworkAclEntry.new
        xml.at('cidrBlock') do |node|
          data.cidr_block = (node.text || '')
        end
        xml.at('egress') do |node|
          data.egress = (node.text == 'true')
        end
        xml.at('icmpTypeCode') do |node|
          data.icmp_type_code = Parsers::IcmpTypeCode.parse(node)
        end
        xml.at('ipv6CidrBlock') do |node|
          data.ipv6_cidr_block = (node.text || '')
        end
        xml.at('portRange') do |node|
          data.port_range = Parsers::PortRange.parse(node)
        end
        xml.at('protocol') do |node|
          data.protocol = (node.text || '')
        end
        xml.at('ruleAction') do |node|
          data.rule_action = (node.text || '')
        end
        xml.at('ruleNumber') do |node|
          data.rule_number = node.text&.to_i
        end
        return data
      end
    end

    class PortRange
      def self.parse(xml)
        data = Types::PortRange.new
        xml.at('from') do |node|
          data.from = node.text&.to_i
        end
        xml.at('to') do |node|
          data.to = node.text&.to_i
        end
        return data
      end
    end

    class IcmpTypeCode
      def self.parse(xml)
        data = Types::IcmpTypeCode.new
        xml.at('code') do |node|
          data.code = node.text&.to_i
        end
        xml.at('type') do |node|
          data.type = node.text&.to_i
        end
        return data
      end
    end

    class NetworkAclAssociationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::NetworkAclAssociation.parse(node)
        end
        data
      end
    end

    class NetworkAclAssociation
      def self.parse(xml)
        data = Types::NetworkAclAssociation.new
        xml.at('networkAclAssociationId') do |node|
          data.network_acl_association_id = (node.text || '')
        end
        xml.at('networkAclId') do |node|
          data.network_acl_id = (node.text || '')
        end
        xml.at('subnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateNetworkAclEntry
    class CreateNetworkAclEntry
      def self.parse(http_resp)
        data = Types::CreateNetworkAclEntryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for CreateNetworkInsightsAccessScope
    class CreateNetworkInsightsAccessScope
      def self.parse(http_resp)
        data = Types::CreateNetworkInsightsAccessScopeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkInsightsAccessScope') do |node|
          data.network_insights_access_scope = Parsers::NetworkInsightsAccessScope.parse(node)
        end
        xml.at('networkInsightsAccessScopeContent') do |node|
          data.network_insights_access_scope_content = Parsers::NetworkInsightsAccessScopeContent.parse(node)
        end
        data
      end
    end

    class NetworkInsightsAccessScopeContent
      def self.parse(xml)
        data = Types::NetworkInsightsAccessScopeContent.new
        xml.at('networkInsightsAccessScopeId') do |node|
          data.network_insights_access_scope_id = (node.text || '')
        end
        xml.at('matchPathSet') do |node|
          children = node.children('item')
          data.match_paths = Parsers::AccessScopePathList.parse(children)
        end
        xml.at('excludePathSet') do |node|
          children = node.children('item')
          data.exclude_paths = Parsers::AccessScopePathList.parse(children)
        end
        return data
      end
    end

    class AccessScopePathList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AccessScopePath.parse(node)
        end
        data
      end
    end

    class AccessScopePath
      def self.parse(xml)
        data = Types::AccessScopePath.new
        xml.at('source') do |node|
          data.source = Parsers::PathStatement.parse(node)
        end
        xml.at('destination') do |node|
          data.destination = Parsers::PathStatement.parse(node)
        end
        xml.at('throughResourceSet') do |node|
          children = node.children('item')
          data.through_resources = Parsers::ThroughResourcesStatementList.parse(children)
        end
        return data
      end
    end

    class ThroughResourcesStatementList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ThroughResourcesStatement.parse(node)
        end
        data
      end
    end

    class ThroughResourcesStatement
      def self.parse(xml)
        data = Types::ThroughResourcesStatement.new
        xml.at('resourceStatement') do |node|
          data.resource_statement = Parsers::ResourceStatement.parse(node)
        end
        return data
      end
    end

    class ResourceStatement
      def self.parse(xml)
        data = Types::ResourceStatement.new
        xml.at('resourceSet') do |node|
          children = node.children('item')
          data.resources = Parsers::ValueStringList.parse(children)
        end
        xml.at('resourceTypeSet') do |node|
          children = node.children('item')
          data.resource_types = Parsers::ValueStringList.parse(children)
        end
        return data
      end
    end

    class PathStatement
      def self.parse(xml)
        data = Types::PathStatement.new
        xml.at('packetHeaderStatement') do |node|
          data.packet_header_statement = Parsers::PacketHeaderStatement.parse(node)
        end
        xml.at('resourceStatement') do |node|
          data.resource_statement = Parsers::ResourceStatement.parse(node)
        end
        return data
      end
    end

    class PacketHeaderStatement
      def self.parse(xml)
        data = Types::PacketHeaderStatement.new
        xml.at('sourceAddressSet') do |node|
          children = node.children('item')
          data.source_addresses = Parsers::ValueStringList.parse(children)
        end
        xml.at('destinationAddressSet') do |node|
          children = node.children('item')
          data.destination_addresses = Parsers::ValueStringList.parse(children)
        end
        xml.at('sourcePortSet') do |node|
          children = node.children('item')
          data.source_ports = Parsers::ValueStringList.parse(children)
        end
        xml.at('destinationPortSet') do |node|
          children = node.children('item')
          data.destination_ports = Parsers::ValueStringList.parse(children)
        end
        xml.at('sourcePrefixListSet') do |node|
          children = node.children('item')
          data.source_prefix_lists = Parsers::ValueStringList.parse(children)
        end
        xml.at('destinationPrefixListSet') do |node|
          children = node.children('item')
          data.destination_prefix_lists = Parsers::ValueStringList.parse(children)
        end
        xml.at('protocolSet') do |node|
          children = node.children('item')
          data.protocols = Parsers::ProtocolList.parse(children)
        end
        return data
      end
    end

    class ProtocolList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class NetworkInsightsAccessScope
      def self.parse(xml)
        data = Types::NetworkInsightsAccessScope.new
        xml.at('networkInsightsAccessScopeId') do |node|
          data.network_insights_access_scope_id = (node.text || '')
        end
        xml.at('networkInsightsAccessScopeArn') do |node|
          data.network_insights_access_scope_arn = (node.text || '')
        end
        xml.at('createdDate') do |node|
          data.created_date = Time.parse(node.text) if node.text
        end
        xml.at('updatedDate') do |node|
          data.updated_date = Time.parse(node.text) if node.text
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for CreateNetworkInsightsPath
    class CreateNetworkInsightsPath
      def self.parse(http_resp)
        data = Types::CreateNetworkInsightsPathOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkInsightsPath') do |node|
          data.network_insights_path = Parsers::NetworkInsightsPath.parse(node)
        end
        data
      end
    end

    class NetworkInsightsPath
      def self.parse(xml)
        data = Types::NetworkInsightsPath.new
        xml.at('networkInsightsPathId') do |node|
          data.network_insights_path_id = (node.text || '')
        end
        xml.at('networkInsightsPathArn') do |node|
          data.network_insights_path_arn = (node.text || '')
        end
        xml.at('createdDate') do |node|
          data.created_date = Time.parse(node.text) if node.text
        end
        xml.at('source') do |node|
          data.source = (node.text || '')
        end
        xml.at('destination') do |node|
          data.destination = (node.text || '')
        end
        xml.at('sourceIp') do |node|
          data.source_ip = (node.text || '')
        end
        xml.at('destinationIp') do |node|
          data.destination_ip = (node.text || '')
        end
        xml.at('protocol') do |node|
          data.protocol = (node.text || '')
        end
        xml.at('destinationPort') do |node|
          data.destination_port = node.text&.to_i
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for CreateNetworkInterface
    class CreateNetworkInterface
      def self.parse(http_resp)
        data = Types::CreateNetworkInterfaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkInterface') do |node|
          data.network_interface = Parsers::NetworkInterface.parse(node)
        end
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        data
      end
    end

    class NetworkInterface
      def self.parse(xml)
        data = Types::NetworkInterface.new
        xml.at('association') do |node|
          data.association = Parsers::NetworkInterfaceAssociation.parse(node)
        end
        xml.at('attachment') do |node|
          data.attachment = Parsers::NetworkInterfaceAttachment.parse(node)
        end
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('groupSet') do |node|
          children = node.children('item')
          data.groups = Parsers::GroupIdentifierList.parse(children)
        end
        xml.at('interfaceType') do |node|
          data.interface_type = (node.text || '')
        end
        xml.at('ipv6AddressesSet') do |node|
          children = node.children('item')
          data.ipv6_addresses = Parsers::NetworkInterfaceIpv6AddressesList.parse(children)
        end
        xml.at('macAddress') do |node|
          data.mac_address = (node.text || '')
        end
        xml.at('networkInterfaceId') do |node|
          data.network_interface_id = (node.text || '')
        end
        xml.at('outpostArn') do |node|
          data.outpost_arn = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('privateDnsName') do |node|
          data.private_dns_name = (node.text || '')
        end
        xml.at('privateIpAddress') do |node|
          data.private_ip_address = (node.text || '')
        end
        xml.at('privateIpAddressesSet') do |node|
          children = node.children('item')
          data.private_ip_addresses = Parsers::NetworkInterfacePrivateIpAddressList.parse(children)
        end
        xml.at('ipv4PrefixSet') do |node|
          children = node.children('item')
          data.ipv4_prefixes = Parsers::Ipv4PrefixesList.parse(children)
        end
        xml.at('ipv6PrefixSet') do |node|
          children = node.children('item')
          data.ipv6_prefixes = Parsers::Ipv6PrefixesList.parse(children)
        end
        xml.at('requesterId') do |node|
          data.requester_id = (node.text || '')
        end
        xml.at('requesterManaged') do |node|
          data.requester_managed = (node.text == 'true')
        end
        xml.at('sourceDestCheck') do |node|
          data.source_dest_check = (node.text == 'true')
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        xml.at('subnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tag_set = Parsers::TagList.parse(children)
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('denyAllIgwTraffic') do |node|
          data.deny_all_igw_traffic = (node.text == 'true')
        end
        xml.at('ipv6Native') do |node|
          data.ipv6_native = (node.text == 'true')
        end
        xml.at('ipv6Address') do |node|
          data.ipv6_address = (node.text || '')
        end
        return data
      end
    end

    class Ipv6PrefixesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Ipv6PrefixSpecification.parse(node)
        end
        data
      end
    end

    class Ipv6PrefixSpecification
      def self.parse(xml)
        data = Types::Ipv6PrefixSpecification.new
        xml.at('ipv6Prefix') do |node|
          data.ipv6_prefix = (node.text || '')
        end
        return data
      end
    end

    class NetworkInterfacePrivateIpAddressList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::NetworkInterfacePrivateIpAddress.parse(node)
        end
        data
      end
    end

    class NetworkInterfacePrivateIpAddress
      def self.parse(xml)
        data = Types::NetworkInterfacePrivateIpAddress.new
        xml.at('association') do |node|
          data.association = Parsers::NetworkInterfaceAssociation.parse(node)
        end
        xml.at('primary') do |node|
          data.primary = (node.text == 'true')
        end
        xml.at('privateDnsName') do |node|
          data.private_dns_name = (node.text || '')
        end
        xml.at('privateIpAddress') do |node|
          data.private_ip_address = (node.text || '')
        end
        return data
      end
    end

    class NetworkInterfaceAssociation
      def self.parse(xml)
        data = Types::NetworkInterfaceAssociation.new
        xml.at('allocationId') do |node|
          data.allocation_id = (node.text || '')
        end
        xml.at('associationId') do |node|
          data.association_id = (node.text || '')
        end
        xml.at('ipOwnerId') do |node|
          data.ip_owner_id = (node.text || '')
        end
        xml.at('publicDnsName') do |node|
          data.public_dns_name = (node.text || '')
        end
        xml.at('publicIp') do |node|
          data.public_ip = (node.text || '')
        end
        xml.at('customerOwnedIp') do |node|
          data.customer_owned_ip = (node.text || '')
        end
        xml.at('carrierIp') do |node|
          data.carrier_ip = (node.text || '')
        end
        return data
      end
    end

    class NetworkInterfaceIpv6AddressesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::NetworkInterfaceIpv6Address.parse(node)
        end
        data
      end
    end

    class NetworkInterfaceIpv6Address
      def self.parse(xml)
        data = Types::NetworkInterfaceIpv6Address.new
        xml.at('ipv6Address') do |node|
          data.ipv6_address = (node.text || '')
        end
        return data
      end
    end

    class GroupIdentifierList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::GroupIdentifier.parse(node)
        end
        data
      end
    end

    class GroupIdentifier
      def self.parse(xml)
        data = Types::GroupIdentifier.new
        xml.at('groupName') do |node|
          data.group_name = (node.text || '')
        end
        xml.at('groupId') do |node|
          data.group_id = (node.text || '')
        end
        return data
      end
    end

    class NetworkInterfaceAttachment
      def self.parse(xml)
        data = Types::NetworkInterfaceAttachment.new
        xml.at('attachTime') do |node|
          data.attach_time = Time.parse(node.text) if node.text
        end
        xml.at('attachmentId') do |node|
          data.attachment_id = (node.text || '')
        end
        xml.at('deleteOnTermination') do |node|
          data.delete_on_termination = (node.text == 'true')
        end
        xml.at('deviceIndex') do |node|
          data.device_index = node.text&.to_i
        end
        xml.at('networkCardIndex') do |node|
          data.network_card_index = node.text&.to_i
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('instanceOwnerId') do |node|
          data.instance_owner_id = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateNetworkInterfacePermission
    class CreateNetworkInterfacePermission
      def self.parse(http_resp)
        data = Types::CreateNetworkInterfacePermissionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('interfacePermission') do |node|
          data.interface_permission = Parsers::NetworkInterfacePermission.parse(node)
        end
        data
      end
    end

    class NetworkInterfacePermission
      def self.parse(xml)
        data = Types::NetworkInterfacePermission.new
        xml.at('networkInterfacePermissionId') do |node|
          data.network_interface_permission_id = (node.text || '')
        end
        xml.at('networkInterfaceId') do |node|
          data.network_interface_id = (node.text || '')
        end
        xml.at('awsAccountId') do |node|
          data.aws_account_id = (node.text || '')
        end
        xml.at('awsService') do |node|
          data.aws_service = (node.text || '')
        end
        xml.at('permission') do |node|
          data.permission = (node.text || '')
        end
        xml.at('permissionState') do |node|
          data.permission_state = Parsers::NetworkInterfacePermissionState.parse(node)
        end
        return data
      end
    end

    class NetworkInterfacePermissionState
      def self.parse(xml)
        data = Types::NetworkInterfacePermissionState.new
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreatePlacementGroup
    class CreatePlacementGroup
      def self.parse(http_resp)
        data = Types::CreatePlacementGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('placementGroup') do |node|
          data.placement_group = Parsers::PlacementGroup.parse(node)
        end
        data
      end
    end

    class PlacementGroup
      def self.parse(xml)
        data = Types::PlacementGroup.new
        xml.at('groupName') do |node|
          data.group_name = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('strategy') do |node|
          data.strategy = (node.text || '')
        end
        xml.at('partitionCount') do |node|
          data.partition_count = node.text&.to_i
        end
        xml.at('groupId') do |node|
          data.group_id = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('groupArn') do |node|
          data.group_arn = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreatePublicIpv4Pool
    class CreatePublicIpv4Pool
      def self.parse(http_resp)
        data = Types::CreatePublicIpv4PoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('poolId') do |node|
          data.pool_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateReplaceRootVolumeTask
    class CreateReplaceRootVolumeTask
      def self.parse(http_resp)
        data = Types::CreateReplaceRootVolumeTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('replaceRootVolumeTask') do |node|
          data.replace_root_volume_task = Parsers::ReplaceRootVolumeTask.parse(node)
        end
        data
      end
    end

    class ReplaceRootVolumeTask
      def self.parse(xml)
        data = Types::ReplaceRootVolumeTask.new
        xml.at('replaceRootVolumeTaskId') do |node|
          data.replace_root_volume_task_id = (node.text || '')
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('taskState') do |node|
          data.task_state = (node.text || '')
        end
        xml.at('startTime') do |node|
          data.start_time = (node.text || '')
        end
        xml.at('completeTime') do |node|
          data.complete_time = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for CreateReservedInstancesListing
    class CreateReservedInstancesListing
      def self.parse(http_resp)
        data = Types::CreateReservedInstancesListingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('reservedInstancesListingsSet') do |node|
          children = node.children('item')
          data.reserved_instances_listings = Parsers::ReservedInstancesListingList.parse(children)
        end
        data
      end
    end

    # Operation Parser for CreateRestoreImageTask
    class CreateRestoreImageTask
      def self.parse(http_resp)
        data = Types::CreateRestoreImageTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('imageId') do |node|
          data.image_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateRoute
    class CreateRoute
      def self.parse(http_resp)
        data = Types::CreateRouteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for CreateRouteTable
    class CreateRouteTable
      def self.parse(http_resp)
        data = Types::CreateRouteTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('routeTable') do |node|
          data.route_table = Parsers::RouteTable.parse(node)
        end
        data
      end
    end

    class RouteTable
      def self.parse(xml)
        data = Types::RouteTable.new
        xml.at('associationSet') do |node|
          children = node.children('item')
          data.associations = Parsers::RouteTableAssociationList.parse(children)
        end
        xml.at('propagatingVgwSet') do |node|
          children = node.children('item')
          data.propagating_vgws = Parsers::PropagatingVgwList.parse(children)
        end
        xml.at('routeTableId') do |node|
          data.route_table_id = (node.text || '')
        end
        xml.at('routeSet') do |node|
          children = node.children('item')
          data.routes = Parsers::RouteList.parse(children)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        return data
      end
    end

    class RouteList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Route.parse(node)
        end
        data
      end
    end

    class Route
      def self.parse(xml)
        data = Types::Route.new
        xml.at('destinationCidrBlock') do |node|
          data.destination_cidr_block = (node.text || '')
        end
        xml.at('destinationIpv6CidrBlock') do |node|
          data.destination_ipv6_cidr_block = (node.text || '')
        end
        xml.at('destinationPrefixListId') do |node|
          data.destination_prefix_list_id = (node.text || '')
        end
        xml.at('egressOnlyInternetGatewayId') do |node|
          data.egress_only_internet_gateway_id = (node.text || '')
        end
        xml.at('gatewayId') do |node|
          data.gateway_id = (node.text || '')
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('instanceOwnerId') do |node|
          data.instance_owner_id = (node.text || '')
        end
        xml.at('natGatewayId') do |node|
          data.nat_gateway_id = (node.text || '')
        end
        xml.at('transitGatewayId') do |node|
          data.transit_gateway_id = (node.text || '')
        end
        xml.at('localGatewayId') do |node|
          data.local_gateway_id = (node.text || '')
        end
        xml.at('carrierGatewayId') do |node|
          data.carrier_gateway_id = (node.text || '')
        end
        xml.at('networkInterfaceId') do |node|
          data.network_interface_id = (node.text || '')
        end
        xml.at('origin') do |node|
          data.origin = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('vpcPeeringConnectionId') do |node|
          data.vpc_peering_connection_id = (node.text || '')
        end
        xml.at('coreNetworkArn') do |node|
          data.core_network_arn = (node.text || '')
        end
        return data
      end
    end

    class PropagatingVgwList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PropagatingVgw.parse(node)
        end
        data
      end
    end

    class PropagatingVgw
      def self.parse(xml)
        data = Types::PropagatingVgw.new
        xml.at('gatewayId') do |node|
          data.gateway_id = (node.text || '')
        end
        return data
      end
    end

    class RouteTableAssociationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::RouteTableAssociation.parse(node)
        end
        data
      end
    end

    class RouteTableAssociation
      def self.parse(xml)
        data = Types::RouteTableAssociation.new
        xml.at('main') do |node|
          data.main = (node.text == 'true')
        end
        xml.at('routeTableAssociationId') do |node|
          data.route_table_association_id = (node.text || '')
        end
        xml.at('routeTableId') do |node|
          data.route_table_id = (node.text || '')
        end
        xml.at('subnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        xml.at('gatewayId') do |node|
          data.gateway_id = (node.text || '')
        end
        xml.at('associationState') do |node|
          data.association_state = Parsers::RouteTableAssociationState.parse(node)
        end
        return data
      end
    end

    # Operation Parser for CreateSecurityGroup
    class CreateSecurityGroup
      def self.parse(http_resp)
        data = Types::CreateSecurityGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('groupId') do |node|
          data.group_id = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        data
      end
    end

    # Operation Parser for CreateSnapshot
    class CreateSnapshot
      def self.parse(http_resp)
        data = Types::CreateSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('dataEncryptionKeyId') do |node|
          data.data_encryption_key_id = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('encrypted') do |node|
          data.encrypted = (node.text == 'true')
        end
        xml.at('kmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('progress') do |node|
          data.progress = (node.text || '')
        end
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('startTime') do |node|
          data.start_time = Time.parse(node.text) if node.text
        end
        xml.at('status') do |node|
          data.state = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.state_message = (node.text || '')
        end
        xml.at('volumeId') do |node|
          data.volume_id = (node.text || '')
        end
        xml.at('volumeSize') do |node|
          data.volume_size = node.text&.to_i
        end
        xml.at('ownerAlias') do |node|
          data.owner_alias = (node.text || '')
        end
        xml.at('outpostArn') do |node|
          data.outpost_arn = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('storageTier') do |node|
          data.storage_tier = (node.text || '')
        end
        xml.at('restoreExpiryTime') do |node|
          data.restore_expiry_time = Time.parse(node.text) if node.text
        end
        data
      end
    end

    # Operation Parser for CreateSnapshots
    class CreateSnapshots
      def self.parse(http_resp)
        data = Types::CreateSnapshotsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('snapshotSet') do |node|
          children = node.children('item')
          data.snapshots = Parsers::SnapshotSet.parse(children)
        end
        data
      end
    end

    class SnapshotSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SnapshotInfo.parse(node)
        end
        data
      end
    end

    class SnapshotInfo
      def self.parse(xml)
        data = Types::SnapshotInfo.new
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('encrypted') do |node|
          data.encrypted = (node.text == 'true')
        end
        xml.at('volumeId') do |node|
          data.volume_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('volumeSize') do |node|
          data.volume_size = node.text&.to_i
        end
        xml.at('startTime') do |node|
          data.start_time = Time.parse(node.text) if node.text
        end
        xml.at('progress') do |node|
          data.progress = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('outpostArn') do |node|
          data.outpost_arn = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateSpotDatafeedSubscription
    class CreateSpotDatafeedSubscription
      def self.parse(http_resp)
        data = Types::CreateSpotDatafeedSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('spotDatafeedSubscription') do |node|
          data.spot_datafeed_subscription = Parsers::SpotDatafeedSubscription.parse(node)
        end
        data
      end
    end

    class SpotDatafeedSubscription
      def self.parse(xml)
        data = Types::SpotDatafeedSubscription.new
        xml.at('bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('fault') do |node|
          data.fault = Parsers::SpotInstanceStateFault.parse(node)
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('prefix') do |node|
          data.prefix = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        return data
      end
    end

    class SpotInstanceStateFault
      def self.parse(xml)
        data = Types::SpotInstanceStateFault.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateStoreImageTask
    class CreateStoreImageTask
      def self.parse(http_resp)
        data = Types::CreateStoreImageTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('objectKey') do |node|
          data.object_key = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateSubnet
    class CreateSubnet
      def self.parse(http_resp)
        data = Types::CreateSubnetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('subnet') do |node|
          data.subnet = Parsers::Subnet.parse(node)
        end
        data
      end
    end

    # Operation Parser for CreateSubnetCidrReservation
    class CreateSubnetCidrReservation
      def self.parse(http_resp)
        data = Types::CreateSubnetCidrReservationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('subnetCidrReservation') do |node|
          data.subnet_cidr_reservation = Parsers::SubnetCidrReservation.parse(node)
        end
        data
      end
    end

    class SubnetCidrReservation
      def self.parse(xml)
        data = Types::SubnetCidrReservation.new
        xml.at('subnetCidrReservationId') do |node|
          data.subnet_cidr_reservation_id = (node.text || '')
        end
        xml.at('subnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        xml.at('cidr') do |node|
          data.cidr = (node.text || '')
        end
        xml.at('reservationType') do |node|
          data.reservation_type = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for CreateTags
    class CreateTags
      def self.parse(http_resp)
        data = Types::CreateTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for CreateTrafficMirrorFilter
    class CreateTrafficMirrorFilter
      def self.parse(http_resp)
        data = Types::CreateTrafficMirrorFilterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('trafficMirrorFilter') do |node|
          data.traffic_mirror_filter = Parsers::TrafficMirrorFilter.parse(node)
        end
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        data
      end
    end

    class TrafficMirrorFilter
      def self.parse(xml)
        data = Types::TrafficMirrorFilter.new
        xml.at('trafficMirrorFilterId') do |node|
          data.traffic_mirror_filter_id = (node.text || '')
        end
        xml.at('ingressFilterRuleSet') do |node|
          children = node.children('item')
          data.ingress_filter_rules = Parsers::TrafficMirrorFilterRuleList.parse(children)
        end
        xml.at('egressFilterRuleSet') do |node|
          children = node.children('item')
          data.egress_filter_rules = Parsers::TrafficMirrorFilterRuleList.parse(children)
        end
        xml.at('networkServiceSet') do |node|
          children = node.children('item')
          data.network_services = Parsers::TrafficMirrorNetworkServiceList.parse(children)
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class TrafficMirrorNetworkServiceList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class TrafficMirrorFilterRuleList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TrafficMirrorFilterRule.parse(node)
        end
        data
      end
    end

    class TrafficMirrorFilterRule
      def self.parse(xml)
        data = Types::TrafficMirrorFilterRule.new
        xml.at('trafficMirrorFilterRuleId') do |node|
          data.traffic_mirror_filter_rule_id = (node.text || '')
        end
        xml.at('trafficMirrorFilterId') do |node|
          data.traffic_mirror_filter_id = (node.text || '')
        end
        xml.at('trafficDirection') do |node|
          data.traffic_direction = (node.text || '')
        end
        xml.at('ruleNumber') do |node|
          data.rule_number = node.text&.to_i
        end
        xml.at('ruleAction') do |node|
          data.rule_action = (node.text || '')
        end
        xml.at('protocol') do |node|
          data.protocol = node.text&.to_i
        end
        xml.at('destinationPortRange') do |node|
          data.destination_port_range = Parsers::TrafficMirrorPortRange.parse(node)
        end
        xml.at('sourcePortRange') do |node|
          data.source_port_range = Parsers::TrafficMirrorPortRange.parse(node)
        end
        xml.at('destinationCidrBlock') do |node|
          data.destination_cidr_block = (node.text || '')
        end
        xml.at('sourceCidrBlock') do |node|
          data.source_cidr_block = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        return data
      end
    end

    class TrafficMirrorPortRange
      def self.parse(xml)
        data = Types::TrafficMirrorPortRange.new
        xml.at('fromPort') do |node|
          data.from_port = node.text&.to_i
        end
        xml.at('toPort') do |node|
          data.to_port = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for CreateTrafficMirrorFilterRule
    class CreateTrafficMirrorFilterRule
      def self.parse(http_resp)
        data = Types::CreateTrafficMirrorFilterRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('trafficMirrorFilterRule') do |node|
          data.traffic_mirror_filter_rule = Parsers::TrafficMirrorFilterRule.parse(node)
        end
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateTrafficMirrorSession
    class CreateTrafficMirrorSession
      def self.parse(http_resp)
        data = Types::CreateTrafficMirrorSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('trafficMirrorSession') do |node|
          data.traffic_mirror_session = Parsers::TrafficMirrorSession.parse(node)
        end
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        data
      end
    end

    class TrafficMirrorSession
      def self.parse(xml)
        data = Types::TrafficMirrorSession.new
        xml.at('trafficMirrorSessionId') do |node|
          data.traffic_mirror_session_id = (node.text || '')
        end
        xml.at('trafficMirrorTargetId') do |node|
          data.traffic_mirror_target_id = (node.text || '')
        end
        xml.at('trafficMirrorFilterId') do |node|
          data.traffic_mirror_filter_id = (node.text || '')
        end
        xml.at('networkInterfaceId') do |node|
          data.network_interface_id = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('packetLength') do |node|
          data.packet_length = node.text&.to_i
        end
        xml.at('sessionNumber') do |node|
          data.session_number = node.text&.to_i
        end
        xml.at('virtualNetworkId') do |node|
          data.virtual_network_id = node.text&.to_i
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for CreateTrafficMirrorTarget
    class CreateTrafficMirrorTarget
      def self.parse(http_resp)
        data = Types::CreateTrafficMirrorTargetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('trafficMirrorTarget') do |node|
          data.traffic_mirror_target = Parsers::TrafficMirrorTarget.parse(node)
        end
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        data
      end
    end

    class TrafficMirrorTarget
      def self.parse(xml)
        data = Types::TrafficMirrorTarget.new
        xml.at('trafficMirrorTargetId') do |node|
          data.traffic_mirror_target_id = (node.text || '')
        end
        xml.at('networkInterfaceId') do |node|
          data.network_interface_id = (node.text || '')
        end
        xml.at('networkLoadBalancerArn') do |node|
          data.network_load_balancer_arn = (node.text || '')
        end
        xml.at('type') do |node|
          data.type = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for CreateTransitGateway
    class CreateTransitGateway
      def self.parse(http_resp)
        data = Types::CreateTransitGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGateway') do |node|
          data.transit_gateway = Parsers::TransitGateway.parse(node)
        end
        data
      end
    end

    class TransitGateway
      def self.parse(xml)
        data = Types::TransitGateway.new
        xml.at('transitGatewayId') do |node|
          data.transit_gateway_id = (node.text || '')
        end
        xml.at('transitGatewayArn') do |node|
          data.transit_gateway_arn = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('creationTime') do |node|
          data.creation_time = Time.parse(node.text) if node.text
        end
        xml.at('options') do |node|
          data.options = Parsers::TransitGatewayOptions.parse(node)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class TransitGatewayOptions
      def self.parse(xml)
        data = Types::TransitGatewayOptions.new
        xml.at('amazonSideAsn') do |node|
          data.amazon_side_asn = node.text&.to_i
        end
        xml.at('transitGatewayCidrBlocks') do |node|
          children = node.children('item')
          data.transit_gateway_cidr_blocks = Parsers::ValueStringList.parse(children)
        end
        xml.at('autoAcceptSharedAttachments') do |node|
          data.auto_accept_shared_attachments = (node.text || '')
        end
        xml.at('defaultRouteTableAssociation') do |node|
          data.default_route_table_association = (node.text || '')
        end
        xml.at('associationDefaultRouteTableId') do |node|
          data.association_default_route_table_id = (node.text || '')
        end
        xml.at('defaultRouteTablePropagation') do |node|
          data.default_route_table_propagation = (node.text || '')
        end
        xml.at('propagationDefaultRouteTableId') do |node|
          data.propagation_default_route_table_id = (node.text || '')
        end
        xml.at('vpnEcmpSupport') do |node|
          data.vpn_ecmp_support = (node.text || '')
        end
        xml.at('dnsSupport') do |node|
          data.dns_support = (node.text || '')
        end
        xml.at('multicastSupport') do |node|
          data.multicast_support = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateTransitGatewayConnect
    class CreateTransitGatewayConnect
      def self.parse(http_resp)
        data = Types::CreateTransitGatewayConnectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayConnect') do |node|
          data.transit_gateway_connect = Parsers::TransitGatewayConnect.parse(node)
        end
        data
      end
    end

    class TransitGatewayConnect
      def self.parse(xml)
        data = Types::TransitGatewayConnect.new
        xml.at('transitGatewayAttachmentId') do |node|
          data.transit_gateway_attachment_id = (node.text || '')
        end
        xml.at('transportTransitGatewayAttachmentId') do |node|
          data.transport_transit_gateway_attachment_id = (node.text || '')
        end
        xml.at('transitGatewayId') do |node|
          data.transit_gateway_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('creationTime') do |node|
          data.creation_time = Time.parse(node.text) if node.text
        end
        xml.at('options') do |node|
          data.options = Parsers::TransitGatewayConnectOptions.parse(node)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class TransitGatewayConnectOptions
      def self.parse(xml)
        data = Types::TransitGatewayConnectOptions.new
        xml.at('protocol') do |node|
          data.protocol = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateTransitGatewayConnectPeer
    class CreateTransitGatewayConnectPeer
      def self.parse(http_resp)
        data = Types::CreateTransitGatewayConnectPeerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayConnectPeer') do |node|
          data.transit_gateway_connect_peer = Parsers::TransitGatewayConnectPeer.parse(node)
        end
        data
      end
    end

    class TransitGatewayConnectPeer
      def self.parse(xml)
        data = Types::TransitGatewayConnectPeer.new
        xml.at('transitGatewayAttachmentId') do |node|
          data.transit_gateway_attachment_id = (node.text || '')
        end
        xml.at('transitGatewayConnectPeerId') do |node|
          data.transit_gateway_connect_peer_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('creationTime') do |node|
          data.creation_time = Time.parse(node.text) if node.text
        end
        xml.at('connectPeerConfiguration') do |node|
          data.connect_peer_configuration = Parsers::TransitGatewayConnectPeerConfiguration.parse(node)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class TransitGatewayConnectPeerConfiguration
      def self.parse(xml)
        data = Types::TransitGatewayConnectPeerConfiguration.new
        xml.at('transitGatewayAddress') do |node|
          data.transit_gateway_address = (node.text || '')
        end
        xml.at('peerAddress') do |node|
          data.peer_address = (node.text || '')
        end
        xml.at('insideCidrBlocks') do |node|
          children = node.children('item')
          data.inside_cidr_blocks = Parsers::InsideCidrBlocksStringList.parse(children)
        end
        xml.at('protocol') do |node|
          data.protocol = (node.text || '')
        end
        xml.at('bgpConfigurations') do |node|
          children = node.children('item')
          data.bgp_configurations = Parsers::TransitGatewayAttachmentBgpConfigurationList.parse(children)
        end
        return data
      end
    end

    class TransitGatewayAttachmentBgpConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TransitGatewayAttachmentBgpConfiguration.parse(node)
        end
        data
      end
    end

    class TransitGatewayAttachmentBgpConfiguration
      def self.parse(xml)
        data = Types::TransitGatewayAttachmentBgpConfiguration.new
        xml.at('transitGatewayAsn') do |node|
          data.transit_gateway_asn = node.text&.to_i
        end
        xml.at('peerAsn') do |node|
          data.peer_asn = node.text&.to_i
        end
        xml.at('transitGatewayAddress') do |node|
          data.transit_gateway_address = (node.text || '')
        end
        xml.at('peerAddress') do |node|
          data.peer_address = (node.text || '')
        end
        xml.at('bgpStatus') do |node|
          data.bgp_status = (node.text || '')
        end
        return data
      end
    end

    class InsideCidrBlocksStringList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateTransitGatewayMulticastDomain
    class CreateTransitGatewayMulticastDomain
      def self.parse(http_resp)
        data = Types::CreateTransitGatewayMulticastDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayMulticastDomain') do |node|
          data.transit_gateway_multicast_domain = Parsers::TransitGatewayMulticastDomain.parse(node)
        end
        data
      end
    end

    class TransitGatewayMulticastDomain
      def self.parse(xml)
        data = Types::TransitGatewayMulticastDomain.new
        xml.at('transitGatewayMulticastDomainId') do |node|
          data.transit_gateway_multicast_domain_id = (node.text || '')
        end
        xml.at('transitGatewayId') do |node|
          data.transit_gateway_id = (node.text || '')
        end
        xml.at('transitGatewayMulticastDomainArn') do |node|
          data.transit_gateway_multicast_domain_arn = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('options') do |node|
          data.options = Parsers::TransitGatewayMulticastDomainOptions.parse(node)
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('creationTime') do |node|
          data.creation_time = Time.parse(node.text) if node.text
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class TransitGatewayMulticastDomainOptions
      def self.parse(xml)
        data = Types::TransitGatewayMulticastDomainOptions.new
        xml.at('igmpv2Support') do |node|
          data.igmpv2_support = (node.text || '')
        end
        xml.at('staticSourcesSupport') do |node|
          data.static_sources_support = (node.text || '')
        end
        xml.at('autoAcceptSharedAssociations') do |node|
          data.auto_accept_shared_associations = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateTransitGatewayPeeringAttachment
    class CreateTransitGatewayPeeringAttachment
      def self.parse(http_resp)
        data = Types::CreateTransitGatewayPeeringAttachmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayPeeringAttachment') do |node|
          data.transit_gateway_peering_attachment = Parsers::TransitGatewayPeeringAttachment.parse(node)
        end
        data
      end
    end

    # Operation Parser for CreateTransitGatewayPrefixListReference
    class CreateTransitGatewayPrefixListReference
      def self.parse(http_resp)
        data = Types::CreateTransitGatewayPrefixListReferenceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayPrefixListReference') do |node|
          data.transit_gateway_prefix_list_reference = Parsers::TransitGatewayPrefixListReference.parse(node)
        end
        data
      end
    end

    class TransitGatewayPrefixListReference
      def self.parse(xml)
        data = Types::TransitGatewayPrefixListReference.new
        xml.at('transitGatewayRouteTableId') do |node|
          data.transit_gateway_route_table_id = (node.text || '')
        end
        xml.at('prefixListId') do |node|
          data.prefix_list_id = (node.text || '')
        end
        xml.at('prefixListOwnerId') do |node|
          data.prefix_list_owner_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('blackhole') do |node|
          data.blackhole = (node.text == 'true')
        end
        xml.at('transitGatewayAttachment') do |node|
          data.transit_gateway_attachment = Parsers::TransitGatewayPrefixListAttachment.parse(node)
        end
        return data
      end
    end

    class TransitGatewayPrefixListAttachment
      def self.parse(xml)
        data = Types::TransitGatewayPrefixListAttachment.new
        xml.at('transitGatewayAttachmentId') do |node|
          data.transit_gateway_attachment_id = (node.text || '')
        end
        xml.at('resourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('resourceId') do |node|
          data.resource_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateTransitGatewayRoute
    class CreateTransitGatewayRoute
      def self.parse(http_resp)
        data = Types::CreateTransitGatewayRouteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('route') do |node|
          data.route = Parsers::TransitGatewayRoute.parse(node)
        end
        data
      end
    end

    class TransitGatewayRoute
      def self.parse(xml)
        data = Types::TransitGatewayRoute.new
        xml.at('destinationCidrBlock') do |node|
          data.destination_cidr_block = (node.text || '')
        end
        xml.at('prefixListId') do |node|
          data.prefix_list_id = (node.text || '')
        end
        xml.at('transitGatewayAttachments') do |node|
          children = node.children('item')
          data.transit_gateway_attachments = Parsers::TransitGatewayRouteAttachmentList.parse(children)
        end
        xml.at('type') do |node|
          data.type = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        return data
      end
    end

    class TransitGatewayRouteAttachmentList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TransitGatewayRouteAttachment.parse(node)
        end
        data
      end
    end

    class TransitGatewayRouteAttachment
      def self.parse(xml)
        data = Types::TransitGatewayRouteAttachment.new
        xml.at('resourceId') do |node|
          data.resource_id = (node.text || '')
        end
        xml.at('transitGatewayAttachmentId') do |node|
          data.transit_gateway_attachment_id = (node.text || '')
        end
        xml.at('resourceType') do |node|
          data.resource_type = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateTransitGatewayRouteTable
    class CreateTransitGatewayRouteTable
      def self.parse(http_resp)
        data = Types::CreateTransitGatewayRouteTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayRouteTable') do |node|
          data.transit_gateway_route_table = Parsers::TransitGatewayRouteTable.parse(node)
        end
        data
      end
    end

    class TransitGatewayRouteTable
      def self.parse(xml)
        data = Types::TransitGatewayRouteTable.new
        xml.at('transitGatewayRouteTableId') do |node|
          data.transit_gateway_route_table_id = (node.text || '')
        end
        xml.at('transitGatewayId') do |node|
          data.transit_gateway_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('defaultAssociationRouteTable') do |node|
          data.default_association_route_table = (node.text == 'true')
        end
        xml.at('defaultPropagationRouteTable') do |node|
          data.default_propagation_route_table = (node.text == 'true')
        end
        xml.at('creationTime') do |node|
          data.creation_time = Time.parse(node.text) if node.text
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for CreateTransitGatewayVpcAttachment
    class CreateTransitGatewayVpcAttachment
      def self.parse(http_resp)
        data = Types::CreateTransitGatewayVpcAttachmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayVpcAttachment') do |node|
          data.transit_gateway_vpc_attachment = Parsers::TransitGatewayVpcAttachment.parse(node)
        end
        data
      end
    end

    # Operation Parser for CreateVolume
    class CreateVolume
      def self.parse(http_resp)
        data = Types::CreateVolumeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('attachmentSet') do |node|
          children = node.children('item')
          data.attachments = Parsers::VolumeAttachmentList.parse(children)
        end
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('createTime') do |node|
          data.create_time = Time.parse(node.text) if node.text
        end
        xml.at('encrypted') do |node|
          data.encrypted = (node.text == 'true')
        end
        xml.at('kmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('outpostArn') do |node|
          data.outpost_arn = (node.text || '')
        end
        xml.at('size') do |node|
          data.size = node.text&.to_i
        end
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('status') do |node|
          data.state = (node.text || '')
        end
        xml.at('volumeId') do |node|
          data.volume_id = (node.text || '')
        end
        xml.at('iops') do |node|
          data.iops = node.text&.to_i
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('volumeType') do |node|
          data.volume_type = (node.text || '')
        end
        xml.at('fastRestored') do |node|
          data.fast_restored = (node.text == 'true')
        end
        xml.at('multiAttachEnabled') do |node|
          data.multi_attach_enabled = (node.text == 'true')
        end
        xml.at('throughput') do |node|
          data.throughput = node.text&.to_i
        end
        data
      end
    end

    class VolumeAttachmentList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VolumeAttachment.parse(node)
        end
        data
      end
    end

    class VolumeAttachment
      def self.parse(xml)
        data = Types::VolumeAttachment.new
        xml.at('attachTime') do |node|
          data.attach_time = Time.parse(node.text) if node.text
        end
        xml.at('device') do |node|
          data.device = (node.text || '')
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('status') do |node|
          data.state = (node.text || '')
        end
        xml.at('volumeId') do |node|
          data.volume_id = (node.text || '')
        end
        xml.at('deleteOnTermination') do |node|
          data.delete_on_termination = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for CreateVpc
    class CreateVpc
      def self.parse(http_resp)
        data = Types::CreateVpcOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpc') do |node|
          data.vpc = Parsers::Vpc.parse(node)
        end
        data
      end
    end

    # Operation Parser for CreateVpcEndpoint
    class CreateVpcEndpoint
      def self.parse(http_resp)
        data = Types::CreateVpcEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpcEndpoint') do |node|
          data.vpc_endpoint = Parsers::VpcEndpoint.parse(node)
        end
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        data
      end
    end

    class VpcEndpoint
      def self.parse(xml)
        data = Types::VpcEndpoint.new
        xml.at('vpcEndpointId') do |node|
          data.vpc_endpoint_id = (node.text || '')
        end
        xml.at('vpcEndpointType') do |node|
          data.vpc_endpoint_type = (node.text || '')
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('serviceName') do |node|
          data.service_name = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('policyDocument') do |node|
          data.policy_document = (node.text || '')
        end
        xml.at('routeTableIdSet') do |node|
          children = node.children('item')
          data.route_table_ids = Parsers::ValueStringList.parse(children)
        end
        xml.at('subnetIdSet') do |node|
          children = node.children('item')
          data.subnet_ids = Parsers::ValueStringList.parse(children)
        end
        xml.at('groupSet') do |node|
          children = node.children('item')
          data.groups = Parsers::GroupIdentifierSet.parse(children)
        end
        xml.at('privateDnsEnabled') do |node|
          data.private_dns_enabled = (node.text == 'true')
        end
        xml.at('requesterManaged') do |node|
          data.requester_managed = (node.text == 'true')
        end
        xml.at('networkInterfaceIdSet') do |node|
          children = node.children('item')
          data.network_interface_ids = Parsers::ValueStringList.parse(children)
        end
        xml.at('dnsEntrySet') do |node|
          children = node.children('item')
          data.dns_entries = Parsers::DnsEntrySet.parse(children)
        end
        xml.at('creationTimestamp') do |node|
          data.creation_timestamp = Time.parse(node.text) if node.text
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('lastError') do |node|
          data.last_error = Parsers::LastError.parse(node)
        end
        return data
      end
    end

    class LastError
      def self.parse(xml)
        data = Types::LastError.new
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        return data
      end
    end

    class DnsEntrySet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DnsEntry.parse(node)
        end
        data
      end
    end

    class DnsEntry
      def self.parse(xml)
        data = Types::DnsEntry.new
        xml.at('dnsName') do |node|
          data.dns_name = (node.text || '')
        end
        xml.at('hostedZoneId') do |node|
          data.hosted_zone_id = (node.text || '')
        end
        return data
      end
    end

    class GroupIdentifierSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SecurityGroupIdentifier.parse(node)
        end
        data
      end
    end

    class SecurityGroupIdentifier
      def self.parse(xml)
        data = Types::SecurityGroupIdentifier.new
        xml.at('groupId') do |node|
          data.group_id = (node.text || '')
        end
        xml.at('groupName') do |node|
          data.group_name = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateVpcEndpointConnectionNotification
    class CreateVpcEndpointConnectionNotification
      def self.parse(http_resp)
        data = Types::CreateVpcEndpointConnectionNotificationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('connectionNotification') do |node|
          data.connection_notification = Parsers::ConnectionNotification.parse(node)
        end
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        data
      end
    end

    class ConnectionNotification
      def self.parse(xml)
        data = Types::ConnectionNotification.new
        xml.at('connectionNotificationId') do |node|
          data.connection_notification_id = (node.text || '')
        end
        xml.at('serviceId') do |node|
          data.service_id = (node.text || '')
        end
        xml.at('vpcEndpointId') do |node|
          data.vpc_endpoint_id = (node.text || '')
        end
        xml.at('connectionNotificationType') do |node|
          data.connection_notification_type = (node.text || '')
        end
        xml.at('connectionNotificationArn') do |node|
          data.connection_notification_arn = (node.text || '')
        end
        xml.at('connectionEvents') do |node|
          children = node.children('item')
          data.connection_events = Parsers::ValueStringList.parse(children)
        end
        xml.at('connectionNotificationState') do |node|
          data.connection_notification_state = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateVpcEndpointServiceConfiguration
    class CreateVpcEndpointServiceConfiguration
      def self.parse(http_resp)
        data = Types::CreateVpcEndpointServiceConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('serviceConfiguration') do |node|
          data.service_configuration = Parsers::ServiceConfiguration.parse(node)
        end
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        data
      end
    end

    class ServiceConfiguration
      def self.parse(xml)
        data = Types::ServiceConfiguration.new
        xml.at('serviceType') do |node|
          children = node.children('item')
          data.service_type = Parsers::ServiceTypeDetailSet.parse(children)
        end
        xml.at('serviceId') do |node|
          data.service_id = (node.text || '')
        end
        xml.at('serviceName') do |node|
          data.service_name = (node.text || '')
        end
        xml.at('serviceState') do |node|
          data.service_state = (node.text || '')
        end
        xml.at('availabilityZoneSet') do |node|
          children = node.children('item')
          data.availability_zones = Parsers::ValueStringList.parse(children)
        end
        xml.at('acceptanceRequired') do |node|
          data.acceptance_required = (node.text == 'true')
        end
        xml.at('managesVpcEndpoints') do |node|
          data.manages_vpc_endpoints = (node.text == 'true')
        end
        xml.at('networkLoadBalancerArnSet') do |node|
          children = node.children('item')
          data.network_load_balancer_arns = Parsers::ValueStringList.parse(children)
        end
        xml.at('gatewayLoadBalancerArnSet') do |node|
          children = node.children('item')
          data.gateway_load_balancer_arns = Parsers::ValueStringList.parse(children)
        end
        xml.at('baseEndpointDnsNameSet') do |node|
          children = node.children('item')
          data.base_endpoint_dns_names = Parsers::ValueStringList.parse(children)
        end
        xml.at('privateDnsName') do |node|
          data.private_dns_name = (node.text || '')
        end
        xml.at('privateDnsNameConfiguration') do |node|
          data.private_dns_name_configuration = Parsers::PrivateDnsNameConfiguration.parse(node)
        end
        xml.at('payerResponsibility') do |node|
          data.payer_responsibility = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class PrivateDnsNameConfiguration
      def self.parse(xml)
        data = Types::PrivateDnsNameConfiguration.new
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('type') do |node|
          data.type = (node.text || '')
        end
        xml.at('value') do |node|
          data.value = (node.text || '')
        end
        xml.at('name') do |node|
          data.member_name = (node.text || '')
        end
        return data
      end
    end

    class ServiceTypeDetailSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ServiceTypeDetail.parse(node)
        end
        data
      end
    end

    class ServiceTypeDetail
      def self.parse(xml)
        data = Types::ServiceTypeDetail.new
        xml.at('serviceType') do |node|
          data.service_type = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateVpcPeeringConnection
    class CreateVpcPeeringConnection
      def self.parse(http_resp)
        data = Types::CreateVpcPeeringConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpcPeeringConnection') do |node|
          data.vpc_peering_connection = Parsers::VpcPeeringConnection.parse(node)
        end
        data
      end
    end

    # Operation Parser for CreateVpnConnection
    class CreateVpnConnection
      def self.parse(http_resp)
        data = Types::CreateVpnConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpnConnection') do |node|
          data.vpn_connection = Parsers::VpnConnection.parse(node)
        end
        data
      end
    end

    class VpnConnection
      def self.parse(xml)
        data = Types::VpnConnection.new
        xml.at('customerGatewayConfiguration') do |node|
          data.customer_gateway_configuration = (node.text || '')
        end
        xml.at('customerGatewayId') do |node|
          data.customer_gateway_id = (node.text || '')
        end
        xml.at('category') do |node|
          data.category = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('type') do |node|
          data.type = (node.text || '')
        end
        xml.at('vpnConnectionId') do |node|
          data.vpn_connection_id = (node.text || '')
        end
        xml.at('vpnGatewayId') do |node|
          data.vpn_gateway_id = (node.text || '')
        end
        xml.at('transitGatewayId') do |node|
          data.transit_gateway_id = (node.text || '')
        end
        xml.at('coreNetworkArn') do |node|
          data.core_network_arn = (node.text || '')
        end
        xml.at('coreNetworkAttachmentArn') do |node|
          data.core_network_attachment_arn = (node.text || '')
        end
        xml.at('gatewayAssociationState') do |node|
          data.gateway_association_state = (node.text || '')
        end
        xml.at('options') do |node|
          data.options = Parsers::VpnConnectionOptions.parse(node)
        end
        xml.at('routes') do |node|
          children = node.children('item')
          data.routes = Parsers::VpnStaticRouteList.parse(children)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('vgwTelemetry') do |node|
          children = node.children('item')
          data.vgw_telemetry = Parsers::VgwTelemetryList.parse(children)
        end
        return data
      end
    end

    class VgwTelemetryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VgwTelemetry.parse(node)
        end
        data
      end
    end

    class VgwTelemetry
      def self.parse(xml)
        data = Types::VgwTelemetry.new
        xml.at('acceptedRouteCount') do |node|
          data.accepted_route_count = node.text&.to_i
        end
        xml.at('lastStatusChange') do |node|
          data.last_status_change = Time.parse(node.text) if node.text
        end
        xml.at('outsideIpAddress') do |node|
          data.outside_ip_address = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        xml.at('certificateArn') do |node|
          data.certificate_arn = (node.text || '')
        end
        return data
      end
    end

    class VpnStaticRouteList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VpnStaticRoute.parse(node)
        end
        data
      end
    end

    class VpnStaticRoute
      def self.parse(xml)
        data = Types::VpnStaticRoute.new
        xml.at('destinationCidrBlock') do |node|
          data.destination_cidr_block = (node.text || '')
        end
        xml.at('source') do |node|
          data.source = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        return data
      end
    end

    class VpnConnectionOptions
      def self.parse(xml)
        data = Types::VpnConnectionOptions.new
        xml.at('enableAcceleration') do |node|
          data.enable_acceleration = (node.text == 'true')
        end
        xml.at('staticRoutesOnly') do |node|
          data.static_routes_only = (node.text == 'true')
        end
        xml.at('localIpv4NetworkCidr') do |node|
          data.local_ipv4_network_cidr = (node.text || '')
        end
        xml.at('remoteIpv4NetworkCidr') do |node|
          data.remote_ipv4_network_cidr = (node.text || '')
        end
        xml.at('localIpv6NetworkCidr') do |node|
          data.local_ipv6_network_cidr = (node.text || '')
        end
        xml.at('remoteIpv6NetworkCidr') do |node|
          data.remote_ipv6_network_cidr = (node.text || '')
        end
        xml.at('tunnelInsideIpVersion') do |node|
          data.tunnel_inside_ip_version = (node.text || '')
        end
        xml.at('tunnelOptionSet') do |node|
          children = node.children('item')
          data.tunnel_options = Parsers::TunnelOptionsList.parse(children)
        end
        return data
      end
    end

    class TunnelOptionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TunnelOption.parse(node)
        end
        data
      end
    end

    class TunnelOption
      def self.parse(xml)
        data = Types::TunnelOption.new
        xml.at('outsideIpAddress') do |node|
          data.outside_ip_address = (node.text || '')
        end
        xml.at('tunnelInsideCidr') do |node|
          data.tunnel_inside_cidr = (node.text || '')
        end
        xml.at('tunnelInsideIpv6Cidr') do |node|
          data.tunnel_inside_ipv6_cidr = (node.text || '')
        end
        xml.at('preSharedKey') do |node|
          data.pre_shared_key = (node.text || '')
        end
        xml.at('phase1LifetimeSeconds') do |node|
          data.phase1_lifetime_seconds = node.text&.to_i
        end
        xml.at('phase2LifetimeSeconds') do |node|
          data.phase2_lifetime_seconds = node.text&.to_i
        end
        xml.at('rekeyMarginTimeSeconds') do |node|
          data.rekey_margin_time_seconds = node.text&.to_i
        end
        xml.at('rekeyFuzzPercentage') do |node|
          data.rekey_fuzz_percentage = node.text&.to_i
        end
        xml.at('replayWindowSize') do |node|
          data.replay_window_size = node.text&.to_i
        end
        xml.at('dpdTimeoutSeconds') do |node|
          data.dpd_timeout_seconds = node.text&.to_i
        end
        xml.at('dpdTimeoutAction') do |node|
          data.dpd_timeout_action = (node.text || '')
        end
        xml.at('phase1EncryptionAlgorithmSet') do |node|
          children = node.children('item')
          data.phase1_encryption_algorithms = Parsers::Phase1EncryptionAlgorithmsList.parse(children)
        end
        xml.at('phase2EncryptionAlgorithmSet') do |node|
          children = node.children('item')
          data.phase2_encryption_algorithms = Parsers::Phase2EncryptionAlgorithmsList.parse(children)
        end
        xml.at('phase1IntegrityAlgorithmSet') do |node|
          children = node.children('item')
          data.phase1_integrity_algorithms = Parsers::Phase1IntegrityAlgorithmsList.parse(children)
        end
        xml.at('phase2IntegrityAlgorithmSet') do |node|
          children = node.children('item')
          data.phase2_integrity_algorithms = Parsers::Phase2IntegrityAlgorithmsList.parse(children)
        end
        xml.at('phase1DHGroupNumberSet') do |node|
          children = node.children('item')
          data.phase1_dh_group_numbers = Parsers::Phase1DHGroupNumbersList.parse(children)
        end
        xml.at('phase2DHGroupNumberSet') do |node|
          children = node.children('item')
          data.phase2_dh_group_numbers = Parsers::Phase2DHGroupNumbersList.parse(children)
        end
        xml.at('ikeVersionSet') do |node|
          children = node.children('item')
          data.ike_versions = Parsers::IKEVersionsList.parse(children)
        end
        xml.at('startupAction') do |node|
          data.startup_action = (node.text || '')
        end
        return data
      end
    end

    class IKEVersionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::IKEVersionsListValue.parse(node)
        end
        data
      end
    end

    class IKEVersionsListValue
      def self.parse(xml)
        data = Types::IKEVersionsListValue.new
        xml.at('value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    class Phase2DHGroupNumbersList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Phase2DHGroupNumbersListValue.parse(node)
        end
        data
      end
    end

    class Phase2DHGroupNumbersListValue
      def self.parse(xml)
        data = Types::Phase2DHGroupNumbersListValue.new
        xml.at('value') do |node|
          data.value = node.text&.to_i
        end
        return data
      end
    end

    class Phase1DHGroupNumbersList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Phase1DHGroupNumbersListValue.parse(node)
        end
        data
      end
    end

    class Phase1DHGroupNumbersListValue
      def self.parse(xml)
        data = Types::Phase1DHGroupNumbersListValue.new
        xml.at('value') do |node|
          data.value = node.text&.to_i
        end
        return data
      end
    end

    class Phase2IntegrityAlgorithmsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Phase2IntegrityAlgorithmsListValue.parse(node)
        end
        data
      end
    end

    class Phase2IntegrityAlgorithmsListValue
      def self.parse(xml)
        data = Types::Phase2IntegrityAlgorithmsListValue.new
        xml.at('value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    class Phase1IntegrityAlgorithmsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Phase1IntegrityAlgorithmsListValue.parse(node)
        end
        data
      end
    end

    class Phase1IntegrityAlgorithmsListValue
      def self.parse(xml)
        data = Types::Phase1IntegrityAlgorithmsListValue.new
        xml.at('value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    class Phase2EncryptionAlgorithmsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Phase2EncryptionAlgorithmsListValue.parse(node)
        end
        data
      end
    end

    class Phase2EncryptionAlgorithmsListValue
      def self.parse(xml)
        data = Types::Phase2EncryptionAlgorithmsListValue.new
        xml.at('value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    class Phase1EncryptionAlgorithmsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Phase1EncryptionAlgorithmsListValue.parse(node)
        end
        data
      end
    end

    class Phase1EncryptionAlgorithmsListValue
      def self.parse(xml)
        data = Types::Phase1EncryptionAlgorithmsListValue.new
        xml.at('value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateVpnConnectionRoute
    class CreateVpnConnectionRoute
      def self.parse(http_resp)
        data = Types::CreateVpnConnectionRouteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for CreateVpnGateway
    class CreateVpnGateway
      def self.parse(http_resp)
        data = Types::CreateVpnGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpnGateway') do |node|
          data.vpn_gateway = Parsers::VpnGateway.parse(node)
        end
        data
      end
    end

    class VpnGateway
      def self.parse(xml)
        data = Types::VpnGateway.new
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('type') do |node|
          data.type = (node.text || '')
        end
        xml.at('attachments') do |node|
          children = node.children('item')
          data.vpc_attachments = Parsers::VpcAttachmentList.parse(children)
        end
        xml.at('vpnGatewayId') do |node|
          data.vpn_gateway_id = (node.text || '')
        end
        xml.at('amazonSideAsn') do |node|
          data.amazon_side_asn = node.text&.to_i
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class VpcAttachmentList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VpcAttachment.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteCarrierGateway
    class DeleteCarrierGateway
      def self.parse(http_resp)
        data = Types::DeleteCarrierGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('carrierGateway') do |node|
          data.carrier_gateway = Parsers::CarrierGateway.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteClientVpnEndpoint
    class DeleteClientVpnEndpoint
      def self.parse(http_resp)
        data = Types::DeleteClientVpnEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('status') do |node|
          data.status = Parsers::ClientVpnEndpointStatus.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteClientVpnRoute
    class DeleteClientVpnRoute
      def self.parse(http_resp)
        data = Types::DeleteClientVpnRouteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('status') do |node|
          data.status = Parsers::ClientVpnRouteStatus.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteCustomerGateway
    class DeleteCustomerGateway
      def self.parse(http_resp)
        data = Types::DeleteCustomerGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteDhcpOptions
    class DeleteDhcpOptions
      def self.parse(http_resp)
        data = Types::DeleteDhcpOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteEgressOnlyInternetGateway
    class DeleteEgressOnlyInternetGateway
      def self.parse(http_resp)
        data = Types::DeleteEgressOnlyInternetGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('returnCode') do |node|
          data.return_code = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for DeleteFleets
    class DeleteFleets
      def self.parse(http_resp)
        data = Types::DeleteFleetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('successfulFleetDeletionSet') do |node|
          children = node.children('item')
          data.successful_fleet_deletions = Parsers::DeleteFleetSuccessSet.parse(children)
        end
        xml.at('unsuccessfulFleetDeletionSet') do |node|
          children = node.children('item')
          data.unsuccessful_fleet_deletions = Parsers::DeleteFleetErrorSet.parse(children)
        end
        data
      end
    end

    class DeleteFleetErrorSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DeleteFleetErrorItem.parse(node)
        end
        data
      end
    end

    class DeleteFleetErrorItem
      def self.parse(xml)
        data = Types::DeleteFleetErrorItem.new
        xml.at('error') do |node|
          data.error = Parsers::DeleteFleetError.parse(node)
        end
        xml.at('fleetId') do |node|
          data.fleet_id = (node.text || '')
        end
        return data
      end
    end

    class DeleteFleetError
      def self.parse(xml)
        data = Types::DeleteFleetError.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    class DeleteFleetSuccessSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DeleteFleetSuccessItem.parse(node)
        end
        data
      end
    end

    class DeleteFleetSuccessItem
      def self.parse(xml)
        data = Types::DeleteFleetSuccessItem.new
        xml.at('currentFleetState') do |node|
          data.current_fleet_state = (node.text || '')
        end
        xml.at('previousFleetState') do |node|
          data.previous_fleet_state = (node.text || '')
        end
        xml.at('fleetId') do |node|
          data.fleet_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DeleteFlowLogs
    class DeleteFlowLogs
      def self.parse(http_resp)
        data = Types::DeleteFlowLogsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('unsuccessful') do |node|
          children = node.children('item')
          data.unsuccessful = Parsers::UnsuccessfulItemSet.parse(children)
        end
        data
      end
    end

    # Operation Parser for DeleteFpgaImage
    class DeleteFpgaImage
      def self.parse(http_resp)
        data = Types::DeleteFpgaImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for DeleteInstanceEventWindow
    class DeleteInstanceEventWindow
      def self.parse(http_resp)
        data = Types::DeleteInstanceEventWindowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceEventWindowState') do |node|
          data.instance_event_window_state = Parsers::InstanceEventWindowStateChange.parse(node)
        end
        data
      end
    end

    class InstanceEventWindowStateChange
      def self.parse(xml)
        data = Types::InstanceEventWindowStateChange.new
        xml.at('instanceEventWindowId') do |node|
          data.instance_event_window_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DeleteInternetGateway
    class DeleteInternetGateway
      def self.parse(http_resp)
        data = Types::DeleteInternetGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteIpam
    class DeleteIpam
      def self.parse(http_resp)
        data = Types::DeleteIpamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipam') do |node|
          data.ipam = Parsers::Ipam.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteIpamPool
    class DeleteIpamPool
      def self.parse(http_resp)
        data = Types::DeleteIpamPoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipamPool') do |node|
          data.ipam_pool = Parsers::IpamPool.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteIpamScope
    class DeleteIpamScope
      def self.parse(http_resp)
        data = Types::DeleteIpamScopeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipamScope') do |node|
          data.ipam_scope = Parsers::IpamScope.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteKeyPair
    class DeleteKeyPair
      def self.parse(http_resp)
        data = Types::DeleteKeyPairOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteLaunchTemplate
    class DeleteLaunchTemplate
      def self.parse(http_resp)
        data = Types::DeleteLaunchTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('launchTemplate') do |node|
          data.launch_template = Parsers::LaunchTemplate.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteLaunchTemplateVersions
    class DeleteLaunchTemplateVersions
      def self.parse(http_resp)
        data = Types::DeleteLaunchTemplateVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('successfullyDeletedLaunchTemplateVersionSet') do |node|
          children = node.children('item')
          data.successfully_deleted_launch_template_versions = Parsers::DeleteLaunchTemplateVersionsResponseSuccessSet.parse(children)
        end
        xml.at('unsuccessfullyDeletedLaunchTemplateVersionSet') do |node|
          children = node.children('item')
          data.unsuccessfully_deleted_launch_template_versions = Parsers::DeleteLaunchTemplateVersionsResponseErrorSet.parse(children)
        end
        data
      end
    end

    class DeleteLaunchTemplateVersionsResponseErrorSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DeleteLaunchTemplateVersionsResponseErrorItem.parse(node)
        end
        data
      end
    end

    class DeleteLaunchTemplateVersionsResponseErrorItem
      def self.parse(xml)
        data = Types::DeleteLaunchTemplateVersionsResponseErrorItem.new
        xml.at('launchTemplateId') do |node|
          data.launch_template_id = (node.text || '')
        end
        xml.at('launchTemplateName') do |node|
          data.launch_template_name = (node.text || '')
        end
        xml.at('versionNumber') do |node|
          data.version_number = node.text&.to_i
        end
        xml.at('responseError') do |node|
          data.response_error = Parsers::ResponseError.parse(node)
        end
        return data
      end
    end

    class ResponseError
      def self.parse(xml)
        data = Types::ResponseError.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    class DeleteLaunchTemplateVersionsResponseSuccessSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DeleteLaunchTemplateVersionsResponseSuccessItem.parse(node)
        end
        data
      end
    end

    class DeleteLaunchTemplateVersionsResponseSuccessItem
      def self.parse(xml)
        data = Types::DeleteLaunchTemplateVersionsResponseSuccessItem.new
        xml.at('launchTemplateId') do |node|
          data.launch_template_id = (node.text || '')
        end
        xml.at('launchTemplateName') do |node|
          data.launch_template_name = (node.text || '')
        end
        xml.at('versionNumber') do |node|
          data.version_number = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for DeleteLocalGatewayRoute
    class DeleteLocalGatewayRoute
      def self.parse(http_resp)
        data = Types::DeleteLocalGatewayRouteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('route') do |node|
          data.route = Parsers::LocalGatewayRoute.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteLocalGatewayRouteTableVpcAssociation
    class DeleteLocalGatewayRouteTableVpcAssociation
      def self.parse(http_resp)
        data = Types::DeleteLocalGatewayRouteTableVpcAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('localGatewayRouteTableVpcAssociation') do |node|
          data.local_gateway_route_table_vpc_association = Parsers::LocalGatewayRouteTableVpcAssociation.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteManagedPrefixList
    class DeleteManagedPrefixList
      def self.parse(http_resp)
        data = Types::DeleteManagedPrefixListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('prefixList') do |node|
          data.prefix_list = Parsers::ManagedPrefixList.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteNatGateway
    class DeleteNatGateway
      def self.parse(http_resp)
        data = Types::DeleteNatGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('natGatewayId') do |node|
          data.nat_gateway_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteNetworkAcl
    class DeleteNetworkAcl
      def self.parse(http_resp)
        data = Types::DeleteNetworkAclOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteNetworkAclEntry
    class DeleteNetworkAclEntry
      def self.parse(http_resp)
        data = Types::DeleteNetworkAclEntryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteNetworkInsightsAccessScope
    class DeleteNetworkInsightsAccessScope
      def self.parse(http_resp)
        data = Types::DeleteNetworkInsightsAccessScopeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkInsightsAccessScopeId') do |node|
          data.network_insights_access_scope_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteNetworkInsightsAccessScopeAnalysis
    class DeleteNetworkInsightsAccessScopeAnalysis
      def self.parse(http_resp)
        data = Types::DeleteNetworkInsightsAccessScopeAnalysisOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkInsightsAccessScopeAnalysisId') do |node|
          data.network_insights_access_scope_analysis_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteNetworkInsightsAnalysis
    class DeleteNetworkInsightsAnalysis
      def self.parse(http_resp)
        data = Types::DeleteNetworkInsightsAnalysisOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkInsightsAnalysisId') do |node|
          data.network_insights_analysis_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteNetworkInsightsPath
    class DeleteNetworkInsightsPath
      def self.parse(http_resp)
        data = Types::DeleteNetworkInsightsPathOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkInsightsPathId') do |node|
          data.network_insights_path_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteNetworkInterface
    class DeleteNetworkInterface
      def self.parse(http_resp)
        data = Types::DeleteNetworkInterfaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteNetworkInterfacePermission
    class DeleteNetworkInterfacePermission
      def self.parse(http_resp)
        data = Types::DeleteNetworkInterfacePermissionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for DeletePlacementGroup
    class DeletePlacementGroup
      def self.parse(http_resp)
        data = Types::DeletePlacementGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeletePublicIpv4Pool
    class DeletePublicIpv4Pool
      def self.parse(http_resp)
        data = Types::DeletePublicIpv4PoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('returnValue') do |node|
          data.return_value = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for DeleteQueuedReservedInstances
    class DeleteQueuedReservedInstances
      def self.parse(http_resp)
        data = Types::DeleteQueuedReservedInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('successfulQueuedPurchaseDeletionSet') do |node|
          children = node.children('item')
          data.successful_queued_purchase_deletions = Parsers::SuccessfulQueuedPurchaseDeletionSet.parse(children)
        end
        xml.at('failedQueuedPurchaseDeletionSet') do |node|
          children = node.children('item')
          data.failed_queued_purchase_deletions = Parsers::FailedQueuedPurchaseDeletionSet.parse(children)
        end
        data
      end
    end

    class FailedQueuedPurchaseDeletionSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::FailedQueuedPurchaseDeletion.parse(node)
        end
        data
      end
    end

    class FailedQueuedPurchaseDeletion
      def self.parse(xml)
        data = Types::FailedQueuedPurchaseDeletion.new
        xml.at('error') do |node|
          data.error = Parsers::DeleteQueuedReservedInstancesError.parse(node)
        end
        xml.at('reservedInstancesId') do |node|
          data.reserved_instances_id = (node.text || '')
        end
        return data
      end
    end

    class DeleteQueuedReservedInstancesError
      def self.parse(xml)
        data = Types::DeleteQueuedReservedInstancesError.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    class SuccessfulQueuedPurchaseDeletionSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SuccessfulQueuedPurchaseDeletion.parse(node)
        end
        data
      end
    end

    class SuccessfulQueuedPurchaseDeletion
      def self.parse(xml)
        data = Types::SuccessfulQueuedPurchaseDeletion.new
        xml.at('reservedInstancesId') do |node|
          data.reserved_instances_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DeleteRoute
    class DeleteRoute
      def self.parse(http_resp)
        data = Types::DeleteRouteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteRouteTable
    class DeleteRouteTable
      def self.parse(http_resp)
        data = Types::DeleteRouteTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteSecurityGroup
    class DeleteSecurityGroup
      def self.parse(http_resp)
        data = Types::DeleteSecurityGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteSnapshot
    class DeleteSnapshot
      def self.parse(http_resp)
        data = Types::DeleteSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteSpotDatafeedSubscription
    class DeleteSpotDatafeedSubscription
      def self.parse(http_resp)
        data = Types::DeleteSpotDatafeedSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteSubnet
    class DeleteSubnet
      def self.parse(http_resp)
        data = Types::DeleteSubnetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteSubnetCidrReservation
    class DeleteSubnetCidrReservation
      def self.parse(http_resp)
        data = Types::DeleteSubnetCidrReservationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('deletedSubnetCidrReservation') do |node|
          data.deleted_subnet_cidr_reservation = Parsers::SubnetCidrReservation.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteTags
    class DeleteTags
      def self.parse(http_resp)
        data = Types::DeleteTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteTrafficMirrorFilter
    class DeleteTrafficMirrorFilter
      def self.parse(http_resp)
        data = Types::DeleteTrafficMirrorFilterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('trafficMirrorFilterId') do |node|
          data.traffic_mirror_filter_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteTrafficMirrorFilterRule
    class DeleteTrafficMirrorFilterRule
      def self.parse(http_resp)
        data = Types::DeleteTrafficMirrorFilterRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('trafficMirrorFilterRuleId') do |node|
          data.traffic_mirror_filter_rule_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteTrafficMirrorSession
    class DeleteTrafficMirrorSession
      def self.parse(http_resp)
        data = Types::DeleteTrafficMirrorSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('trafficMirrorSessionId') do |node|
          data.traffic_mirror_session_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteTrafficMirrorTarget
    class DeleteTrafficMirrorTarget
      def self.parse(http_resp)
        data = Types::DeleteTrafficMirrorTargetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('trafficMirrorTargetId') do |node|
          data.traffic_mirror_target_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteTransitGateway
    class DeleteTransitGateway
      def self.parse(http_resp)
        data = Types::DeleteTransitGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGateway') do |node|
          data.transit_gateway = Parsers::TransitGateway.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteTransitGatewayConnect
    class DeleteTransitGatewayConnect
      def self.parse(http_resp)
        data = Types::DeleteTransitGatewayConnectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayConnect') do |node|
          data.transit_gateway_connect = Parsers::TransitGatewayConnect.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteTransitGatewayConnectPeer
    class DeleteTransitGatewayConnectPeer
      def self.parse(http_resp)
        data = Types::DeleteTransitGatewayConnectPeerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayConnectPeer') do |node|
          data.transit_gateway_connect_peer = Parsers::TransitGatewayConnectPeer.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteTransitGatewayMulticastDomain
    class DeleteTransitGatewayMulticastDomain
      def self.parse(http_resp)
        data = Types::DeleteTransitGatewayMulticastDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayMulticastDomain') do |node|
          data.transit_gateway_multicast_domain = Parsers::TransitGatewayMulticastDomain.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteTransitGatewayPeeringAttachment
    class DeleteTransitGatewayPeeringAttachment
      def self.parse(http_resp)
        data = Types::DeleteTransitGatewayPeeringAttachmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayPeeringAttachment') do |node|
          data.transit_gateway_peering_attachment = Parsers::TransitGatewayPeeringAttachment.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteTransitGatewayPrefixListReference
    class DeleteTransitGatewayPrefixListReference
      def self.parse(http_resp)
        data = Types::DeleteTransitGatewayPrefixListReferenceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayPrefixListReference') do |node|
          data.transit_gateway_prefix_list_reference = Parsers::TransitGatewayPrefixListReference.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteTransitGatewayRoute
    class DeleteTransitGatewayRoute
      def self.parse(http_resp)
        data = Types::DeleteTransitGatewayRouteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('route') do |node|
          data.route = Parsers::TransitGatewayRoute.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteTransitGatewayRouteTable
    class DeleteTransitGatewayRouteTable
      def self.parse(http_resp)
        data = Types::DeleteTransitGatewayRouteTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayRouteTable') do |node|
          data.transit_gateway_route_table = Parsers::TransitGatewayRouteTable.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteTransitGatewayVpcAttachment
    class DeleteTransitGatewayVpcAttachment
      def self.parse(http_resp)
        data = Types::DeleteTransitGatewayVpcAttachmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayVpcAttachment') do |node|
          data.transit_gateway_vpc_attachment = Parsers::TransitGatewayVpcAttachment.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteVolume
    class DeleteVolume
      def self.parse(http_resp)
        data = Types::DeleteVolumeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteVpc
    class DeleteVpc
      def self.parse(http_resp)
        data = Types::DeleteVpcOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteVpcEndpointConnectionNotifications
    class DeleteVpcEndpointConnectionNotifications
      def self.parse(http_resp)
        data = Types::DeleteVpcEndpointConnectionNotificationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('unsuccessful') do |node|
          children = node.children('item')
          data.unsuccessful = Parsers::UnsuccessfulItemSet.parse(children)
        end
        data
      end
    end

    # Operation Parser for DeleteVpcEndpointServiceConfigurations
    class DeleteVpcEndpointServiceConfigurations
      def self.parse(http_resp)
        data = Types::DeleteVpcEndpointServiceConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('unsuccessful') do |node|
          children = node.children('item')
          data.unsuccessful = Parsers::UnsuccessfulItemSet.parse(children)
        end
        data
      end
    end

    # Operation Parser for DeleteVpcEndpoints
    class DeleteVpcEndpoints
      def self.parse(http_resp)
        data = Types::DeleteVpcEndpointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('unsuccessful') do |node|
          children = node.children('item')
          data.unsuccessful = Parsers::UnsuccessfulItemSet.parse(children)
        end
        data
      end
    end

    # Operation Parser for DeleteVpcPeeringConnection
    class DeleteVpcPeeringConnection
      def self.parse(http_resp)
        data = Types::DeleteVpcPeeringConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for DeleteVpnConnection
    class DeleteVpnConnection
      def self.parse(http_resp)
        data = Types::DeleteVpnConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteVpnConnectionRoute
    class DeleteVpnConnectionRoute
      def self.parse(http_resp)
        data = Types::DeleteVpnConnectionRouteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteVpnGateway
    class DeleteVpnGateway
      def self.parse(http_resp)
        data = Types::DeleteVpnGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeprovisionByoipCidr
    class DeprovisionByoipCidr
      def self.parse(http_resp)
        data = Types::DeprovisionByoipCidrOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('byoipCidr') do |node|
          data.byoip_cidr = Parsers::ByoipCidr.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeprovisionIpamPoolCidr
    class DeprovisionIpamPoolCidr
      def self.parse(http_resp)
        data = Types::DeprovisionIpamPoolCidrOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipamPoolCidr') do |node|
          data.ipam_pool_cidr = Parsers::IpamPoolCidr.parse(node)
        end
        data
      end
    end

    class IpamPoolCidr
      def self.parse(xml)
        data = Types::IpamPoolCidr.new
        xml.at('cidr') do |node|
          data.cidr = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('failureReason') do |node|
          data.failure_reason = Parsers::IpamPoolCidrFailureReason.parse(node)
        end
        return data
      end
    end

    class IpamPoolCidrFailureReason
      def self.parse(xml)
        data = Types::IpamPoolCidrFailureReason.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DeprovisionPublicIpv4PoolCidr
    class DeprovisionPublicIpv4PoolCidr
      def self.parse(http_resp)
        data = Types::DeprovisionPublicIpv4PoolCidrOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('poolId') do |node|
          data.pool_id = (node.text || '')
        end
        xml.at('deprovisionedAddressSet') do |node|
          children = node.children('item')
          data.deprovisioned_addresses = Parsers::DeprovisionedAddressSet.parse(children)
        end
        data
      end
    end

    class DeprovisionedAddressSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeregisterImage
    class DeregisterImage
      def self.parse(http_resp)
        data = Types::DeregisterImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeregisterInstanceEventNotificationAttributes
    class DeregisterInstanceEventNotificationAttributes
      def self.parse(http_resp)
        data = Types::DeregisterInstanceEventNotificationAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceTagAttribute') do |node|
          data.instance_tag_attribute = Parsers::InstanceTagNotificationAttribute.parse(node)
        end
        data
      end
    end

    class InstanceTagNotificationAttribute
      def self.parse(xml)
        data = Types::InstanceTagNotificationAttribute.new
        xml.at('instanceTagKeySet') do |node|
          children = node.children('item')
          data.instance_tag_keys = Parsers::InstanceTagKeySet.parse(children)
        end
        xml.at('includeAllTagsOfInstance') do |node|
          data.include_all_tags_of_instance = (node.text == 'true')
        end
        return data
      end
    end

    class InstanceTagKeySet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeregisterTransitGatewayMulticastGroupMembers
    class DeregisterTransitGatewayMulticastGroupMembers
      def self.parse(http_resp)
        data = Types::DeregisterTransitGatewayMulticastGroupMembersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('deregisteredMulticastGroupMembers') do |node|
          data.deregistered_multicast_group_members = Parsers::TransitGatewayMulticastDeregisteredGroupMembers.parse(node)
        end
        data
      end
    end

    class TransitGatewayMulticastDeregisteredGroupMembers
      def self.parse(xml)
        data = Types::TransitGatewayMulticastDeregisteredGroupMembers.new
        xml.at('transitGatewayMulticastDomainId') do |node|
          data.transit_gateway_multicast_domain_id = (node.text || '')
        end
        xml.at('deregisteredNetworkInterfaceIds') do |node|
          children = node.children('item')
          data.deregistered_network_interface_ids = Parsers::ValueStringList.parse(children)
        end
        xml.at('groupIpAddress') do |node|
          data.group_ip_address = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DeregisterTransitGatewayMulticastGroupSources
    class DeregisterTransitGatewayMulticastGroupSources
      def self.parse(http_resp)
        data = Types::DeregisterTransitGatewayMulticastGroupSourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('deregisteredMulticastGroupSources') do |node|
          data.deregistered_multicast_group_sources = Parsers::TransitGatewayMulticastDeregisteredGroupSources.parse(node)
        end
        data
      end
    end

    class TransitGatewayMulticastDeregisteredGroupSources
      def self.parse(xml)
        data = Types::TransitGatewayMulticastDeregisteredGroupSources.new
        xml.at('transitGatewayMulticastDomainId') do |node|
          data.transit_gateway_multicast_domain_id = (node.text || '')
        end
        xml.at('deregisteredNetworkInterfaceIds') do |node|
          children = node.children('item')
          data.deregistered_network_interface_ids = Parsers::ValueStringList.parse(children)
        end
        xml.at('groupIpAddress') do |node|
          data.group_ip_address = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.parse(http_resp)
        data = Types::DescribeAccountAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('accountAttributeSet') do |node|
          children = node.children('item')
          data.account_attributes = Parsers::AccountAttributeList.parse(children)
        end
        data
      end
    end

    class AccountAttributeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AccountAttribute.parse(node)
        end
        data
      end
    end

    class AccountAttribute
      def self.parse(xml)
        data = Types::AccountAttribute.new
        xml.at('attributeName') do |node|
          data.attribute_name = (node.text || '')
        end
        xml.at('attributeValueSet') do |node|
          children = node.children('item')
          data.attribute_values = Parsers::AccountAttributeValueList.parse(children)
        end
        return data
      end
    end

    class AccountAttributeValueList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AccountAttributeValue.parse(node)
        end
        data
      end
    end

    class AccountAttributeValue
      def self.parse(xml)
        data = Types::AccountAttributeValue.new
        xml.at('attributeValue') do |node|
          data.attribute_value = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeAddresses
    class DescribeAddresses
      def self.parse(http_resp)
        data = Types::DescribeAddressesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('addressesSet') do |node|
          children = node.children('item')
          data.addresses = Parsers::AddressList.parse(children)
        end
        data
      end
    end

    class AddressList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Address.parse(node)
        end
        data
      end
    end

    class Address
      def self.parse(xml)
        data = Types::Address.new
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('publicIp') do |node|
          data.public_ip = (node.text || '')
        end
        xml.at('allocationId') do |node|
          data.allocation_id = (node.text || '')
        end
        xml.at('associationId') do |node|
          data.association_id = (node.text || '')
        end
        xml.at('domain') do |node|
          data.domain = (node.text || '')
        end
        xml.at('networkInterfaceId') do |node|
          data.network_interface_id = (node.text || '')
        end
        xml.at('networkInterfaceOwnerId') do |node|
          data.network_interface_owner_id = (node.text || '')
        end
        xml.at('privateIpAddress') do |node|
          data.private_ip_address = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('publicIpv4Pool') do |node|
          data.public_ipv4_pool = (node.text || '')
        end
        xml.at('networkBorderGroup') do |node|
          data.network_border_group = (node.text || '')
        end
        xml.at('customerOwnedIp') do |node|
          data.customer_owned_ip = (node.text || '')
        end
        xml.at('customerOwnedIpv4Pool') do |node|
          data.customer_owned_ipv4_pool = (node.text || '')
        end
        xml.at('carrierIp') do |node|
          data.carrier_ip = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeAddressesAttribute
    class DescribeAddressesAttribute
      def self.parse(http_resp)
        data = Types::DescribeAddressesAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('addressSet') do |node|
          children = node.children('item')
          data.addresses = Parsers::AddressSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class AddressSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AddressAttribute.parse(node)
        end
        data
      end
    end

    class AddressAttribute
      def self.parse(xml)
        data = Types::AddressAttribute.new
        xml.at('publicIp') do |node|
          data.public_ip = (node.text || '')
        end
        xml.at('allocationId') do |node|
          data.allocation_id = (node.text || '')
        end
        xml.at('ptrRecord') do |node|
          data.ptr_record = (node.text || '')
        end
        xml.at('ptrRecordUpdate') do |node|
          data.ptr_record_update = Parsers::PtrUpdateStatus.parse(node)
        end
        return data
      end
    end

    class PtrUpdateStatus
      def self.parse(xml)
        data = Types::PtrUpdateStatus.new
        xml.at('value') do |node|
          data.value = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        xml.at('reason') do |node|
          data.reason = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeAggregateIdFormat
    class DescribeAggregateIdFormat
      def self.parse(http_resp)
        data = Types::DescribeAggregateIdFormatOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('useLongIdsAggregated') do |node|
          data.use_long_ids_aggregated = (node.text == 'true')
        end
        xml.at('statusSet') do |node|
          children = node.children('item')
          data.statuses = Parsers::IdFormatList.parse(children)
        end
        data
      end
    end

    class IdFormatList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::IdFormat.parse(node)
        end
        data
      end
    end

    class IdFormat
      def self.parse(xml)
        data = Types::IdFormat.new
        xml.at('deadline') do |node|
          data.deadline = Time.parse(node.text) if node.text
        end
        xml.at('resource') do |node|
          data.resource = (node.text || '')
        end
        xml.at('useLongIds') do |node|
          data.use_long_ids = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for DescribeAvailabilityZones
    class DescribeAvailabilityZones
      def self.parse(http_resp)
        data = Types::DescribeAvailabilityZonesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('availabilityZoneInfo') do |node|
          children = node.children('item')
          data.availability_zones = Parsers::AvailabilityZoneList.parse(children)
        end
        data
      end
    end

    class AvailabilityZoneList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AvailabilityZone.parse(node)
        end
        data
      end
    end

    class AvailabilityZone
      def self.parse(xml)
        data = Types::AvailabilityZone.new
        xml.at('zoneState') do |node|
          data.state = (node.text || '')
        end
        xml.at('optInStatus') do |node|
          data.opt_in_status = (node.text || '')
        end
        xml.at('messageSet') do |node|
          children = node.children('item')
          data.messages = Parsers::AvailabilityZoneMessageList.parse(children)
        end
        xml.at('regionName') do |node|
          data.region_name = (node.text || '')
        end
        xml.at('zoneName') do |node|
          data.zone_name = (node.text || '')
        end
        xml.at('zoneId') do |node|
          data.zone_id = (node.text || '')
        end
        xml.at('groupName') do |node|
          data.group_name = (node.text || '')
        end
        xml.at('networkBorderGroup') do |node|
          data.network_border_group = (node.text || '')
        end
        xml.at('zoneType') do |node|
          data.zone_type = (node.text || '')
        end
        xml.at('parentZoneName') do |node|
          data.parent_zone_name = (node.text || '')
        end
        xml.at('parentZoneId') do |node|
          data.parent_zone_id = (node.text || '')
        end
        return data
      end
    end

    class AvailabilityZoneMessageList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AvailabilityZoneMessage.parse(node)
        end
        data
      end
    end

    class AvailabilityZoneMessage
      def self.parse(xml)
        data = Types::AvailabilityZoneMessage.new
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeBundleTasks
    class DescribeBundleTasks
      def self.parse(http_resp)
        data = Types::DescribeBundleTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('bundleInstanceTasksSet') do |node|
          children = node.children('item')
          data.bundle_tasks = Parsers::BundleTaskList.parse(children)
        end
        data
      end
    end

    class BundleTaskList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::BundleTask.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeByoipCidrs
    class DescribeByoipCidrs
      def self.parse(http_resp)
        data = Types::DescribeByoipCidrsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('byoipCidrSet') do |node|
          children = node.children('item')
          data.byoip_cidrs = Parsers::ByoipCidrSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ByoipCidrSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ByoipCidr.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeCapacityReservationFleets
    class DescribeCapacityReservationFleets
      def self.parse(http_resp)
        data = Types::DescribeCapacityReservationFleetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('capacityReservationFleetSet') do |node|
          children = node.children('item')
          data.capacity_reservation_fleets = Parsers::CapacityReservationFleetSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class CapacityReservationFleetSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CapacityReservationFleet.parse(node)
        end
        data
      end
    end

    class CapacityReservationFleet
      def self.parse(xml)
        data = Types::CapacityReservationFleet.new
        xml.at('capacityReservationFleetId') do |node|
          data.capacity_reservation_fleet_id = (node.text || '')
        end
        xml.at('capacityReservationFleetArn') do |node|
          data.capacity_reservation_fleet_arn = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('totalTargetCapacity') do |node|
          data.total_target_capacity = node.text&.to_i
        end
        xml.at('totalFulfilledCapacity') do |node|
          data.total_fulfilled_capacity = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('tenancy') do |node|
          data.tenancy = (node.text || '')
        end
        xml.at('endDate') do |node|
          data.end_date = Time.parse(node.text) if node.text
        end
        xml.at('createTime') do |node|
          data.create_time = Time.parse(node.text) if node.text
        end
        xml.at('instanceMatchCriteria') do |node|
          data.instance_match_criteria = (node.text || '')
        end
        xml.at('allocationStrategy') do |node|
          data.allocation_strategy = (node.text || '')
        end
        xml.at('instanceTypeSpecificationSet') do |node|
          children = node.children('item')
          data.instance_type_specifications = Parsers::FleetCapacityReservationSet.parse(children)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for DescribeCapacityReservations
    class DescribeCapacityReservations
      def self.parse(http_resp)
        data = Types::DescribeCapacityReservationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('capacityReservationSet') do |node|
          children = node.children('item')
          data.capacity_reservations = Parsers::CapacityReservationSet.parse(children)
        end
        data
      end
    end

    class CapacityReservationSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CapacityReservation.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeCarrierGateways
    class DescribeCarrierGateways
      def self.parse(http_resp)
        data = Types::DescribeCarrierGatewaysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('carrierGatewaySet') do |node|
          children = node.children('item')
          data.carrier_gateways = Parsers::CarrierGatewaySet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class CarrierGatewaySet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CarrierGateway.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeClassicLinkInstances
    class DescribeClassicLinkInstances
      def self.parse(http_resp)
        data = Types::DescribeClassicLinkInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instancesSet') do |node|
          children = node.children('item')
          data.instances = Parsers::ClassicLinkInstanceList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ClassicLinkInstanceList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ClassicLinkInstance.parse(node)
        end
        data
      end
    end

    class ClassicLinkInstance
      def self.parse(xml)
        data = Types::ClassicLinkInstance.new
        xml.at('groupSet') do |node|
          children = node.children('item')
          data.groups = Parsers::GroupIdentifierList.parse(children)
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeClientVpnAuthorizationRules
    class DescribeClientVpnAuthorizationRules
      def self.parse(http_resp)
        data = Types::DescribeClientVpnAuthorizationRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('authorizationRule') do |node|
          children = node.children('item')
          data.authorization_rules = Parsers::AuthorizationRuleSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class AuthorizationRuleSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AuthorizationRule.parse(node)
        end
        data
      end
    end

    class AuthorizationRule
      def self.parse(xml)
        data = Types::AuthorizationRule.new
        xml.at('clientVpnEndpointId') do |node|
          data.client_vpn_endpoint_id = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('groupId') do |node|
          data.group_id = (node.text || '')
        end
        xml.at('accessAll') do |node|
          data.access_all = (node.text == 'true')
        end
        xml.at('destinationCidr') do |node|
          data.destination_cidr = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = Parsers::ClientVpnAuthorizationRuleStatus.parse(node)
        end
        return data
      end
    end

    # Operation Parser for DescribeClientVpnConnections
    class DescribeClientVpnConnections
      def self.parse(http_resp)
        data = Types::DescribeClientVpnConnectionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('connections') do |node|
          children = node.children('item')
          data.connections = Parsers::ClientVpnConnectionSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ClientVpnConnectionSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ClientVpnConnection.parse(node)
        end
        data
      end
    end

    class ClientVpnConnection
      def self.parse(xml)
        data = Types::ClientVpnConnection.new
        xml.at('clientVpnEndpointId') do |node|
          data.client_vpn_endpoint_id = (node.text || '')
        end
        xml.at('timestamp') do |node|
          data.timestamp = (node.text || '')
        end
        xml.at('connectionId') do |node|
          data.connection_id = (node.text || '')
        end
        xml.at('username') do |node|
          data.username = (node.text || '')
        end
        xml.at('connectionEstablishedTime') do |node|
          data.connection_established_time = (node.text || '')
        end
        xml.at('ingressBytes') do |node|
          data.ingress_bytes = (node.text || '')
        end
        xml.at('egressBytes') do |node|
          data.egress_bytes = (node.text || '')
        end
        xml.at('ingressPackets') do |node|
          data.ingress_packets = (node.text || '')
        end
        xml.at('egressPackets') do |node|
          data.egress_packets = (node.text || '')
        end
        xml.at('clientIp') do |node|
          data.client_ip = (node.text || '')
        end
        xml.at('commonName') do |node|
          data.common_name = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = Parsers::ClientVpnConnectionStatus.parse(node)
        end
        xml.at('connectionEndTime') do |node|
          data.connection_end_time = (node.text || '')
        end
        xml.at('postureComplianceStatusSet') do |node|
          children = node.children('item')
          data.posture_compliance_statuses = Parsers::ValueStringList.parse(children)
        end
        return data
      end
    end

    class ClientVpnConnectionStatus
      def self.parse(xml)
        data = Types::ClientVpnConnectionStatus.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeClientVpnEndpoints
    class DescribeClientVpnEndpoints
      def self.parse(http_resp)
        data = Types::DescribeClientVpnEndpointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('clientVpnEndpoint') do |node|
          children = node.children('item')
          data.client_vpn_endpoints = Parsers::EndpointSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class EndpointSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ClientVpnEndpoint.parse(node)
        end
        data
      end
    end

    class ClientVpnEndpoint
      def self.parse(xml)
        data = Types::ClientVpnEndpoint.new
        xml.at('clientVpnEndpointId') do |node|
          data.client_vpn_endpoint_id = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = Parsers::ClientVpnEndpointStatus.parse(node)
        end
        xml.at('creationTime') do |node|
          data.creation_time = (node.text || '')
        end
        xml.at('deletionTime') do |node|
          data.deletion_time = (node.text || '')
        end
        xml.at('dnsName') do |node|
          data.dns_name = (node.text || '')
        end
        xml.at('clientCidrBlock') do |node|
          data.client_cidr_block = (node.text || '')
        end
        xml.at('dnsServer') do |node|
          children = node.children('item')
          data.dns_servers = Parsers::ValueStringList.parse(children)
        end
        xml.at('splitTunnel') do |node|
          data.split_tunnel = (node.text == 'true')
        end
        xml.at('vpnProtocol') do |node|
          data.vpn_protocol = (node.text || '')
        end
        xml.at('transportProtocol') do |node|
          data.transport_protocol = (node.text || '')
        end
        xml.at('vpnPort') do |node|
          data.vpn_port = node.text&.to_i
        end
        xml.at('associatedTargetNetwork') do |node|
          children = node.children('item')
          data.associated_target_networks = Parsers::AssociatedTargetNetworkSet.parse(children)
        end
        xml.at('serverCertificateArn') do |node|
          data.server_certificate_arn = (node.text || '')
        end
        xml.at('authenticationOptions') do |node|
          children = node.children('item')
          data.authentication_options = Parsers::ClientVpnAuthenticationList.parse(children)
        end
        xml.at('connectionLogOptions') do |node|
          data.connection_log_options = Parsers::ConnectionLogResponseOptions.parse(node)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('securityGroupIdSet') do |node|
          children = node.children('item')
          data.security_group_ids = Parsers::ClientVpnSecurityGroupIdSet.parse(children)
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('selfServicePortalUrl') do |node|
          data.self_service_portal_url = (node.text || '')
        end
        xml.at('clientConnectOptions') do |node|
          data.client_connect_options = Parsers::ClientConnectResponseOptions.parse(node)
        end
        return data
      end
    end

    class ClientConnectResponseOptions
      def self.parse(xml)
        data = Types::ClientConnectResponseOptions.new
        xml.at('enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('lambdaFunctionArn') do |node|
          data.lambda_function_arn = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = Parsers::ClientVpnEndpointAttributeStatus.parse(node)
        end
        return data
      end
    end

    class ClientVpnEndpointAttributeStatus
      def self.parse(xml)
        data = Types::ClientVpnEndpointAttributeStatus.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    class ConnectionLogResponseOptions
      def self.parse(xml)
        data = Types::ConnectionLogResponseOptions.new
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('CloudwatchLogGroup') do |node|
          data.cloudwatch_log_group = (node.text || '')
        end
        xml.at('CloudwatchLogStream') do |node|
          data.cloudwatch_log_stream = (node.text || '')
        end
        return data
      end
    end

    class ClientVpnAuthenticationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ClientVpnAuthentication.parse(node)
        end
        data
      end
    end

    class ClientVpnAuthentication
      def self.parse(xml)
        data = Types::ClientVpnAuthentication.new
        xml.at('type') do |node|
          data.type = (node.text || '')
        end
        xml.at('activeDirectory') do |node|
          data.active_directory = Parsers::DirectoryServiceAuthentication.parse(node)
        end
        xml.at('mutualAuthentication') do |node|
          data.mutual_authentication = Parsers::CertificateAuthentication.parse(node)
        end
        xml.at('federatedAuthentication') do |node|
          data.federated_authentication = Parsers::FederatedAuthentication.parse(node)
        end
        return data
      end
    end

    class FederatedAuthentication
      def self.parse(xml)
        data = Types::FederatedAuthentication.new
        xml.at('samlProviderArn') do |node|
          data.saml_provider_arn = (node.text || '')
        end
        xml.at('selfServiceSamlProviderArn') do |node|
          data.self_service_saml_provider_arn = (node.text || '')
        end
        return data
      end
    end

    class CertificateAuthentication
      def self.parse(xml)
        data = Types::CertificateAuthentication.new
        xml.at('clientRootCertificateChain') do |node|
          data.client_root_certificate_chain = (node.text || '')
        end
        return data
      end
    end

    class DirectoryServiceAuthentication
      def self.parse(xml)
        data = Types::DirectoryServiceAuthentication.new
        xml.at('directoryId') do |node|
          data.directory_id = (node.text || '')
        end
        return data
      end
    end

    class AssociatedTargetNetworkSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AssociatedTargetNetwork.parse(node)
        end
        data
      end
    end

    class AssociatedTargetNetwork
      def self.parse(xml)
        data = Types::AssociatedTargetNetwork.new
        xml.at('networkId') do |node|
          data.network_id = (node.text || '')
        end
        xml.at('networkType') do |node|
          data.network_type = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeClientVpnRoutes
    class DescribeClientVpnRoutes
      def self.parse(http_resp)
        data = Types::DescribeClientVpnRoutesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('routes') do |node|
          children = node.children('item')
          data.routes = Parsers::ClientVpnRouteSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ClientVpnRouteSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ClientVpnRoute.parse(node)
        end
        data
      end
    end

    class ClientVpnRoute
      def self.parse(xml)
        data = Types::ClientVpnRoute.new
        xml.at('clientVpnEndpointId') do |node|
          data.client_vpn_endpoint_id = (node.text || '')
        end
        xml.at('destinationCidr') do |node|
          data.destination_cidr = (node.text || '')
        end
        xml.at('targetSubnet') do |node|
          data.target_subnet = (node.text || '')
        end
        xml.at('type') do |node|
          data.type = (node.text || '')
        end
        xml.at('origin') do |node|
          data.origin = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = Parsers::ClientVpnRouteStatus.parse(node)
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeClientVpnTargetNetworks
    class DescribeClientVpnTargetNetworks
      def self.parse(http_resp)
        data = Types::DescribeClientVpnTargetNetworksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('clientVpnTargetNetworks') do |node|
          children = node.children('item')
          data.client_vpn_target_networks = Parsers::TargetNetworkSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TargetNetworkSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TargetNetwork.parse(node)
        end
        data
      end
    end

    class TargetNetwork
      def self.parse(xml)
        data = Types::TargetNetwork.new
        xml.at('associationId') do |node|
          data.association_id = (node.text || '')
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('targetNetworkId') do |node|
          data.target_network_id = (node.text || '')
        end
        xml.at('clientVpnEndpointId') do |node|
          data.client_vpn_endpoint_id = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = Parsers::AssociationStatus.parse(node)
        end
        xml.at('securityGroups') do |node|
          children = node.children('item')
          data.security_groups = Parsers::ValueStringList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for DescribeCoipPools
    class DescribeCoipPools
      def self.parse(http_resp)
        data = Types::DescribeCoipPoolsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('coipPoolSet') do |node|
          children = node.children('item')
          data.coip_pools = Parsers::CoipPoolSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class CoipPoolSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CoipPool.parse(node)
        end
        data
      end
    end

    class CoipPool
      def self.parse(xml)
        data = Types::CoipPool.new
        xml.at('poolId') do |node|
          data.pool_id = (node.text || '')
        end
        xml.at('poolCidrSet') do |node|
          children = node.children('item')
          data.pool_cidrs = Parsers::ValueStringList.parse(children)
        end
        xml.at('localGatewayRouteTableId') do |node|
          data.local_gateway_route_table_id = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('poolArn') do |node|
          data.pool_arn = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeConversionTasks
    class DescribeConversionTasks
      def self.parse(http_resp)
        data = Types::DescribeConversionTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('conversionTasks') do |node|
          children = node.children('item')
          data.conversion_tasks = Parsers::DescribeConversionTaskList.parse(children)
        end
        data
      end
    end

    class DescribeConversionTaskList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ConversionTask.parse(node)
        end
        data
      end
    end

    class ConversionTask
      def self.parse(xml)
        data = Types::ConversionTask.new
        xml.at('conversionTaskId') do |node|
          data.conversion_task_id = (node.text || '')
        end
        xml.at('expirationTime') do |node|
          data.expiration_time = (node.text || '')
        end
        xml.at('importInstance') do |node|
          data.import_instance = Parsers::ImportInstanceTaskDetails.parse(node)
        end
        xml.at('importVolume') do |node|
          data.import_volume = Parsers::ImportVolumeTaskDetails.parse(node)
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class ImportVolumeTaskDetails
      def self.parse(xml)
        data = Types::ImportVolumeTaskDetails.new
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('bytesConverted') do |node|
          data.bytes_converted = node.text&.to_i
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('image') do |node|
          data.image = Parsers::DiskImageDescription.parse(node)
        end
        xml.at('volume') do |node|
          data.volume = Parsers::DiskImageVolumeDescription.parse(node)
        end
        return data
      end
    end

    class DiskImageVolumeDescription
      def self.parse(xml)
        data = Types::DiskImageVolumeDescription.new
        xml.at('id') do |node|
          data.id = (node.text || '')
        end
        xml.at('size') do |node|
          data.size = node.text&.to_i
        end
        return data
      end
    end

    class DiskImageDescription
      def self.parse(xml)
        data = Types::DiskImageDescription.new
        xml.at('checksum') do |node|
          data.checksum = (node.text || '')
        end
        xml.at('format') do |node|
          data.format = (node.text || '')
        end
        xml.at('importManifestUrl') do |node|
          data.import_manifest_url = (node.text || '')
        end
        xml.at('size') do |node|
          data.size = node.text&.to_i
        end
        return data
      end
    end

    class ImportInstanceTaskDetails
      def self.parse(xml)
        data = Types::ImportInstanceTaskDetails.new
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('platform') do |node|
          data.platform = (node.text || '')
        end
        xml.at('volumes') do |node|
          children = node.children('item')
          data.volumes = Parsers::ImportInstanceVolumeDetailSet.parse(children)
        end
        return data
      end
    end

    class ImportInstanceVolumeDetailSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ImportInstanceVolumeDetailItem.parse(node)
        end
        data
      end
    end

    class ImportInstanceVolumeDetailItem
      def self.parse(xml)
        data = Types::ImportInstanceVolumeDetailItem.new
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('bytesConverted') do |node|
          data.bytes_converted = node.text&.to_i
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('image') do |node|
          data.image = Parsers::DiskImageDescription.parse(node)
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        xml.at('volume') do |node|
          data.volume = Parsers::DiskImageVolumeDescription.parse(node)
        end
        return data
      end
    end

    # Operation Parser for DescribeCustomerGateways
    class DescribeCustomerGateways
      def self.parse(http_resp)
        data = Types::DescribeCustomerGatewaysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('customerGatewaySet') do |node|
          children = node.children('item')
          data.customer_gateways = Parsers::CustomerGatewayList.parse(children)
        end
        data
      end
    end

    class CustomerGatewayList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CustomerGateway.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeDhcpOptions
    class DescribeDhcpOptions
      def self.parse(http_resp)
        data = Types::DescribeDhcpOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('dhcpOptionsSet') do |node|
          children = node.children('item')
          data.dhcp_options = Parsers::DhcpOptionsList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class DhcpOptionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DhcpOptions.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeEgressOnlyInternetGateways
    class DescribeEgressOnlyInternetGateways
      def self.parse(http_resp)
        data = Types::DescribeEgressOnlyInternetGatewaysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('egressOnlyInternetGatewaySet') do |node|
          children = node.children('item')
          data.egress_only_internet_gateways = Parsers::EgressOnlyInternetGatewayList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class EgressOnlyInternetGatewayList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EgressOnlyInternetGateway.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeElasticGpus
    class DescribeElasticGpus
      def self.parse(http_resp)
        data = Types::DescribeElasticGpusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('elasticGpuSet') do |node|
          children = node.children('item')
          data.elastic_gpu_set = Parsers::ElasticGpuSet.parse(children)
        end
        xml.at('maxResults') do |node|
          data.max_results = node.text&.to_i
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ElasticGpuSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ElasticGpus.parse(node)
        end
        data
      end
    end

    class ElasticGpus
      def self.parse(xml)
        data = Types::ElasticGpus.new
        xml.at('elasticGpuId') do |node|
          data.elastic_gpu_id = (node.text || '')
        end
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('elasticGpuType') do |node|
          data.elastic_gpu_type = (node.text || '')
        end
        xml.at('elasticGpuHealth') do |node|
          data.elastic_gpu_health = Parsers::ElasticGpuHealth.parse(node)
        end
        xml.at('elasticGpuState') do |node|
          data.elastic_gpu_state = (node.text || '')
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class ElasticGpuHealth
      def self.parse(xml)
        data = Types::ElasticGpuHealth.new
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeExportImageTasks
    class DescribeExportImageTasks
      def self.parse(http_resp)
        data = Types::DescribeExportImageTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('exportImageTaskSet') do |node|
          children = node.children('item')
          data.export_image_tasks = Parsers::ExportImageTaskList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ExportImageTaskList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ExportImageTask.parse(node)
        end
        data
      end
    end

    class ExportImageTask
      def self.parse(xml)
        data = Types::ExportImageTask.new
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('exportImageTaskId') do |node|
          data.export_image_task_id = (node.text || '')
        end
        xml.at('imageId') do |node|
          data.image_id = (node.text || '')
        end
        xml.at('progress') do |node|
          data.progress = (node.text || '')
        end
        xml.at('s3ExportLocation') do |node|
          data.s3_export_location = Parsers::ExportTaskS3Location.parse(node)
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class ExportTaskS3Location
      def self.parse(xml)
        data = Types::ExportTaskS3Location.new
        xml.at('s3Bucket') do |node|
          data.s3_bucket = (node.text || '')
        end
        xml.at('s3Prefix') do |node|
          data.s3_prefix = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeExportTasks
    class DescribeExportTasks
      def self.parse(http_resp)
        data = Types::DescribeExportTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('exportTaskSet') do |node|
          children = node.children('item')
          data.export_tasks = Parsers::ExportTaskList.parse(children)
        end
        data
      end
    end

    class ExportTaskList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ExportTask.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeFastSnapshotRestores
    class DescribeFastSnapshotRestores
      def self.parse(http_resp)
        data = Types::DescribeFastSnapshotRestoresOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('fastSnapshotRestoreSet') do |node|
          children = node.children('item')
          data.fast_snapshot_restores = Parsers::DescribeFastSnapshotRestoreSuccessSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class DescribeFastSnapshotRestoreSuccessSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DescribeFastSnapshotRestoreSuccessItem.parse(node)
        end
        data
      end
    end

    class DescribeFastSnapshotRestoreSuccessItem
      def self.parse(xml)
        data = Types::DescribeFastSnapshotRestoreSuccessItem.new
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('stateTransitionReason') do |node|
          data.state_transition_reason = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('ownerAlias') do |node|
          data.owner_alias = (node.text || '')
        end
        xml.at('enablingTime') do |node|
          data.enabling_time = Time.parse(node.text) if node.text
        end
        xml.at('optimizingTime') do |node|
          data.optimizing_time = Time.parse(node.text) if node.text
        end
        xml.at('enabledTime') do |node|
          data.enabled_time = Time.parse(node.text) if node.text
        end
        xml.at('disablingTime') do |node|
          data.disabling_time = Time.parse(node.text) if node.text
        end
        xml.at('disabledTime') do |node|
          data.disabled_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for DescribeFleetHistory
    class DescribeFleetHistory
      def self.parse(http_resp)
        data = Types::DescribeFleetHistoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('historyRecordSet') do |node|
          children = node.children('item')
          data.history_records = Parsers::HistoryRecordSet.parse(children)
        end
        xml.at('lastEvaluatedTime') do |node|
          data.last_evaluated_time = Time.parse(node.text) if node.text
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('fleetId') do |node|
          data.fleet_id = (node.text || '')
        end
        xml.at('startTime') do |node|
          data.start_time = Time.parse(node.text) if node.text
        end
        data
      end
    end

    class HistoryRecordSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::HistoryRecordEntry.parse(node)
        end
        data
      end
    end

    class HistoryRecordEntry
      def self.parse(xml)
        data = Types::HistoryRecordEntry.new
        xml.at('eventInformation') do |node|
          data.event_information = Parsers::EventInformation.parse(node)
        end
        xml.at('eventType') do |node|
          data.event_type = (node.text || '')
        end
        xml.at('timestamp') do |node|
          data.timestamp = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class EventInformation
      def self.parse(xml)
        data = Types::EventInformation.new
        xml.at('eventDescription') do |node|
          data.event_description = (node.text || '')
        end
        xml.at('eventSubType') do |node|
          data.event_sub_type = (node.text || '')
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeFleetInstances
    class DescribeFleetInstances
      def self.parse(http_resp)
        data = Types::DescribeFleetInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('activeInstanceSet') do |node|
          children = node.children('item')
          data.active_instances = Parsers::ActiveInstanceSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('fleetId') do |node|
          data.fleet_id = (node.text || '')
        end
        data
      end
    end

    class ActiveInstanceSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ActiveInstance.parse(node)
        end
        data
      end
    end

    class ActiveInstance
      def self.parse(xml)
        data = Types::ActiveInstance.new
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('spotInstanceRequestId') do |node|
          data.spot_instance_request_id = (node.text || '')
        end
        xml.at('instanceHealth') do |node|
          data.instance_health = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeFleets
    class DescribeFleets
      def self.parse(http_resp)
        data = Types::DescribeFleetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('fleetSet') do |node|
          children = node.children('item')
          data.fleets = Parsers::FleetSet.parse(children)
        end
        data
      end
    end

    class FleetSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::FleetData.parse(node)
        end
        data
      end
    end

    class FleetData
      def self.parse(xml)
        data = Types::FleetData.new
        xml.at('activityStatus') do |node|
          data.activity_status = (node.text || '')
        end
        xml.at('createTime') do |node|
          data.create_time = Time.parse(node.text) if node.text
        end
        xml.at('fleetId') do |node|
          data.fleet_id = (node.text || '')
        end
        xml.at('fleetState') do |node|
          data.fleet_state = (node.text || '')
        end
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        xml.at('excessCapacityTerminationPolicy') do |node|
          data.excess_capacity_termination_policy = (node.text || '')
        end
        xml.at('fulfilledCapacity') do |node|
          data.fulfilled_capacity = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('fulfilledOnDemandCapacity') do |node|
          data.fulfilled_on_demand_capacity = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('launchTemplateConfigs') do |node|
          children = node.children('item')
          data.launch_template_configs = Parsers::FleetLaunchTemplateConfigList.parse(children)
        end
        xml.at('targetCapacitySpecification') do |node|
          data.target_capacity_specification = Parsers::TargetCapacitySpecification.parse(node)
        end
        xml.at('terminateInstancesWithExpiration') do |node|
          data.terminate_instances_with_expiration = (node.text == 'true')
        end
        xml.at('type') do |node|
          data.type = (node.text || '')
        end
        xml.at('validFrom') do |node|
          data.valid_from = Time.parse(node.text) if node.text
        end
        xml.at('validUntil') do |node|
          data.valid_until = Time.parse(node.text) if node.text
        end
        xml.at('replaceUnhealthyInstances') do |node|
          data.replace_unhealthy_instances = (node.text == 'true')
        end
        xml.at('spotOptions') do |node|
          data.spot_options = Parsers::SpotOptions.parse(node)
        end
        xml.at('onDemandOptions') do |node|
          data.on_demand_options = Parsers::OnDemandOptions.parse(node)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('errorSet') do |node|
          children = node.children('item')
          data.errors = Parsers::DescribeFleetsErrorSet.parse(children)
        end
        xml.at('fleetInstanceSet') do |node|
          children = node.children('item')
          data.instances = Parsers::DescribeFleetsInstancesSet.parse(children)
        end
        xml.at('context') do |node|
          data.context = (node.text || '')
        end
        return data
      end
    end

    class DescribeFleetsInstancesSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DescribeFleetsInstances.parse(node)
        end
        data
      end
    end

    class DescribeFleetsInstances
      def self.parse(xml)
        data = Types::DescribeFleetsInstances.new
        xml.at('launchTemplateAndOverrides') do |node|
          data.launch_template_and_overrides = Parsers::LaunchTemplateAndOverridesResponse.parse(node)
        end
        xml.at('lifecycle') do |node|
          data.lifecycle = (node.text || '')
        end
        xml.at('instanceIds') do |node|
          children = node.children('item')
          data.instance_ids = Parsers::InstanceIdsSet.parse(children)
        end
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('platform') do |node|
          data.platform = (node.text || '')
        end
        return data
      end
    end

    class DescribeFleetsErrorSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DescribeFleetError.parse(node)
        end
        data
      end
    end

    class DescribeFleetError
      def self.parse(xml)
        data = Types::DescribeFleetError.new
        xml.at('launchTemplateAndOverrides') do |node|
          data.launch_template_and_overrides = Parsers::LaunchTemplateAndOverridesResponse.parse(node)
        end
        xml.at('lifecycle') do |node|
          data.lifecycle = (node.text || '')
        end
        xml.at('errorCode') do |node|
          data.error_code = (node.text || '')
        end
        xml.at('errorMessage') do |node|
          data.error_message = (node.text || '')
        end
        return data
      end
    end

    class OnDemandOptions
      def self.parse(xml)
        data = Types::OnDemandOptions.new
        xml.at('allocationStrategy') do |node|
          data.allocation_strategy = (node.text || '')
        end
        xml.at('capacityReservationOptions') do |node|
          data.capacity_reservation_options = Parsers::CapacityReservationOptions.parse(node)
        end
        xml.at('singleInstanceType') do |node|
          data.single_instance_type = (node.text == 'true')
        end
        xml.at('singleAvailabilityZone') do |node|
          data.single_availability_zone = (node.text == 'true')
        end
        xml.at('minTargetCapacity') do |node|
          data.min_target_capacity = node.text&.to_i
        end
        xml.at('maxTotalPrice') do |node|
          data.max_total_price = (node.text || '')
        end
        return data
      end
    end

    class CapacityReservationOptions
      def self.parse(xml)
        data = Types::CapacityReservationOptions.new
        xml.at('usageStrategy') do |node|
          data.usage_strategy = (node.text || '')
        end
        return data
      end
    end

    class SpotOptions
      def self.parse(xml)
        data = Types::SpotOptions.new
        xml.at('allocationStrategy') do |node|
          data.allocation_strategy = (node.text || '')
        end
        xml.at('maintenanceStrategies') do |node|
          data.maintenance_strategies = Parsers::FleetSpotMaintenanceStrategies.parse(node)
        end
        xml.at('instanceInterruptionBehavior') do |node|
          data.instance_interruption_behavior = (node.text || '')
        end
        xml.at('instancePoolsToUseCount') do |node|
          data.instance_pools_to_use_count = node.text&.to_i
        end
        xml.at('singleInstanceType') do |node|
          data.single_instance_type = (node.text == 'true')
        end
        xml.at('singleAvailabilityZone') do |node|
          data.single_availability_zone = (node.text == 'true')
        end
        xml.at('minTargetCapacity') do |node|
          data.min_target_capacity = node.text&.to_i
        end
        xml.at('maxTotalPrice') do |node|
          data.max_total_price = (node.text || '')
        end
        return data
      end
    end

    class FleetSpotMaintenanceStrategies
      def self.parse(xml)
        data = Types::FleetSpotMaintenanceStrategies.new
        xml.at('capacityRebalance') do |node|
          data.capacity_rebalance = Parsers::FleetSpotCapacityRebalance.parse(node)
        end
        return data
      end
    end

    class FleetSpotCapacityRebalance
      def self.parse(xml)
        data = Types::FleetSpotCapacityRebalance.new
        xml.at('replacementStrategy') do |node|
          data.replacement_strategy = (node.text || '')
        end
        xml.at('terminationDelay') do |node|
          data.termination_delay = node.text&.to_i
        end
        return data
      end
    end

    class TargetCapacitySpecification
      def self.parse(xml)
        data = Types::TargetCapacitySpecification.new
        xml.at('totalTargetCapacity') do |node|
          data.total_target_capacity = node.text&.to_i
        end
        xml.at('onDemandTargetCapacity') do |node|
          data.on_demand_target_capacity = node.text&.to_i
        end
        xml.at('spotTargetCapacity') do |node|
          data.spot_target_capacity = node.text&.to_i
        end
        xml.at('defaultTargetCapacityType') do |node|
          data.default_target_capacity_type = (node.text || '')
        end
        xml.at('targetCapacityUnitType') do |node|
          data.target_capacity_unit_type = (node.text || '')
        end
        return data
      end
    end

    class FleetLaunchTemplateConfigList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::FleetLaunchTemplateConfig.parse(node)
        end
        data
      end
    end

    class FleetLaunchTemplateConfig
      def self.parse(xml)
        data = Types::FleetLaunchTemplateConfig.new
        xml.at('launchTemplateSpecification') do |node|
          data.launch_template_specification = Parsers::FleetLaunchTemplateSpecification.parse(node)
        end
        xml.at('overrides') do |node|
          children = node.children('item')
          data.overrides = Parsers::FleetLaunchTemplateOverridesList.parse(children)
        end
        return data
      end
    end

    class FleetLaunchTemplateOverridesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::FleetLaunchTemplateOverrides.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeFlowLogs
    class DescribeFlowLogs
      def self.parse(http_resp)
        data = Types::DescribeFlowLogsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('flowLogSet') do |node|
          children = node.children('item')
          data.flow_logs = Parsers::FlowLogSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class FlowLogSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::FlowLog.parse(node)
        end
        data
      end
    end

    class FlowLog
      def self.parse(xml)
        data = Types::FlowLog.new
        xml.at('creationTime') do |node|
          data.creation_time = Time.parse(node.text) if node.text
        end
        xml.at('deliverLogsErrorMessage') do |node|
          data.deliver_logs_error_message = (node.text || '')
        end
        xml.at('deliverLogsPermissionArn') do |node|
          data.deliver_logs_permission_arn = (node.text || '')
        end
        xml.at('deliverLogsStatus') do |node|
          data.deliver_logs_status = (node.text || '')
        end
        xml.at('flowLogId') do |node|
          data.flow_log_id = (node.text || '')
        end
        xml.at('flowLogStatus') do |node|
          data.flow_log_status = (node.text || '')
        end
        xml.at('logGroupName') do |node|
          data.log_group_name = (node.text || '')
        end
        xml.at('resourceId') do |node|
          data.resource_id = (node.text || '')
        end
        xml.at('trafficType') do |node|
          data.traffic_type = (node.text || '')
        end
        xml.at('logDestinationType') do |node|
          data.log_destination_type = (node.text || '')
        end
        xml.at('logDestination') do |node|
          data.log_destination = (node.text || '')
        end
        xml.at('logFormat') do |node|
          data.log_format = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('maxAggregationInterval') do |node|
          data.max_aggregation_interval = node.text&.to_i
        end
        xml.at('destinationOptions') do |node|
          data.destination_options = Parsers::DestinationOptionsResponse.parse(node)
        end
        return data
      end
    end

    class DestinationOptionsResponse
      def self.parse(xml)
        data = Types::DestinationOptionsResponse.new
        xml.at('fileFormat') do |node|
          data.file_format = (node.text || '')
        end
        xml.at('hiveCompatiblePartitions') do |node|
          data.hive_compatible_partitions = (node.text == 'true')
        end
        xml.at('perHourPartition') do |node|
          data.per_hour_partition = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for DescribeFpgaImageAttribute
    class DescribeFpgaImageAttribute
      def self.parse(http_resp)
        data = Types::DescribeFpgaImageAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('fpgaImageAttribute') do |node|
          data.fpga_image_attribute = Parsers::FpgaImageAttribute.parse(node)
        end
        data
      end
    end

    class FpgaImageAttribute
      def self.parse(xml)
        data = Types::FpgaImageAttribute.new
        xml.at('fpgaImageId') do |node|
          data.fpga_image_id = (node.text || '')
        end
        xml.at('name') do |node|
          data.member_name = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('loadPermissions') do |node|
          children = node.children('item')
          data.load_permissions = Parsers::LoadPermissionList.parse(children)
        end
        xml.at('productCodes') do |node|
          children = node.children('item')
          data.product_codes = Parsers::ProductCodeList.parse(children)
        end
        return data
      end
    end

    class ProductCodeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ProductCode.parse(node)
        end
        data
      end
    end

    class ProductCode
      def self.parse(xml)
        data = Types::ProductCode.new
        xml.at('productCode') do |node|
          data.product_code_id = (node.text || '')
        end
        xml.at('type') do |node|
          data.product_code_type = (node.text || '')
        end
        return data
      end
    end

    class LoadPermissionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LoadPermission.parse(node)
        end
        data
      end
    end

    class LoadPermission
      def self.parse(xml)
        data = Types::LoadPermission.new
        xml.at('userId') do |node|
          data.user_id = (node.text || '')
        end
        xml.at('group') do |node|
          data.group = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeFpgaImages
    class DescribeFpgaImages
      def self.parse(http_resp)
        data = Types::DescribeFpgaImagesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('fpgaImageSet') do |node|
          children = node.children('item')
          data.fpga_images = Parsers::FpgaImageList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class FpgaImageList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::FpgaImage.parse(node)
        end
        data
      end
    end

    class FpgaImage
      def self.parse(xml)
        data = Types::FpgaImage.new
        xml.at('fpgaImageId') do |node|
          data.fpga_image_id = (node.text || '')
        end
        xml.at('fpgaImageGlobalId') do |node|
          data.fpga_image_global_id = (node.text || '')
        end
        xml.at('name') do |node|
          data.member_name = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('shellVersion') do |node|
          data.shell_version = (node.text || '')
        end
        xml.at('pciId') do |node|
          data.pci_id = Parsers::PciId.parse(node)
        end
        xml.at('state') do |node|
          data.state = Parsers::FpgaImageState.parse(node)
        end
        xml.at('createTime') do |node|
          data.create_time = Time.parse(node.text) if node.text
        end
        xml.at('updateTime') do |node|
          data.update_time = Time.parse(node.text) if node.text
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('ownerAlias') do |node|
          data.owner_alias = (node.text || '')
        end
        xml.at('productCodes') do |node|
          children = node.children('item')
          data.product_codes = Parsers::ProductCodeList.parse(children)
        end
        xml.at('tags') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('public') do |node|
          data.public = (node.text == 'true')
        end
        xml.at('dataRetentionSupport') do |node|
          data.data_retention_support = (node.text == 'true')
        end
        return data
      end
    end

    class FpgaImageState
      def self.parse(xml)
        data = Types::FpgaImageState.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    class PciId
      def self.parse(xml)
        data = Types::PciId.new
        xml.at('DeviceId') do |node|
          data.device_id = (node.text || '')
        end
        xml.at('VendorId') do |node|
          data.vendor_id = (node.text || '')
        end
        xml.at('SubsystemId') do |node|
          data.subsystem_id = (node.text || '')
        end
        xml.at('SubsystemVendorId') do |node|
          data.subsystem_vendor_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeHostReservationOfferings
    class DescribeHostReservationOfferings
      def self.parse(http_resp)
        data = Types::DescribeHostReservationOfferingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('offeringSet') do |node|
          children = node.children('item')
          data.offering_set = Parsers::HostOfferingSet.parse(children)
        end
        data
      end
    end

    class HostOfferingSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::HostOffering.parse(node)
        end
        data
      end
    end

    class HostOffering
      def self.parse(xml)
        data = Types::HostOffering.new
        xml.at('currencyCode') do |node|
          data.currency_code = (node.text || '')
        end
        xml.at('duration') do |node|
          data.duration = node.text&.to_i
        end
        xml.at('hourlyPrice') do |node|
          data.hourly_price = (node.text || '')
        end
        xml.at('instanceFamily') do |node|
          data.instance_family = (node.text || '')
        end
        xml.at('offeringId') do |node|
          data.offering_id = (node.text || '')
        end
        xml.at('paymentOption') do |node|
          data.payment_option = (node.text || '')
        end
        xml.at('upfrontPrice') do |node|
          data.upfront_price = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeHostReservations
    class DescribeHostReservations
      def self.parse(http_resp)
        data = Types::DescribeHostReservationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('hostReservationSet') do |node|
          children = node.children('item')
          data.host_reservation_set = Parsers::HostReservationSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class HostReservationSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::HostReservation.parse(node)
        end
        data
      end
    end

    class HostReservation
      def self.parse(xml)
        data = Types::HostReservation.new
        xml.at('count') do |node|
          data.count = node.text&.to_i
        end
        xml.at('currencyCode') do |node|
          data.currency_code = (node.text || '')
        end
        xml.at('duration') do |node|
          data.duration = node.text&.to_i
        end
        xml.at('end') do |node|
          data.end = Time.parse(node.text) if node.text
        end
        xml.at('hostIdSet') do |node|
          children = node.children('item')
          data.host_id_set = Parsers::ResponseHostIdSet.parse(children)
        end
        xml.at('hostReservationId') do |node|
          data.host_reservation_id = (node.text || '')
        end
        xml.at('hourlyPrice') do |node|
          data.hourly_price = (node.text || '')
        end
        xml.at('instanceFamily') do |node|
          data.instance_family = (node.text || '')
        end
        xml.at('offeringId') do |node|
          data.offering_id = (node.text || '')
        end
        xml.at('paymentOption') do |node|
          data.payment_option = (node.text || '')
        end
        xml.at('start') do |node|
          data.start = Time.parse(node.text) if node.text
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('upfrontPrice') do |node|
          data.upfront_price = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class ResponseHostIdSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeHosts
    class DescribeHosts
      def self.parse(http_resp)
        data = Types::DescribeHostsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('hostSet') do |node|
          children = node.children('item')
          data.hosts = Parsers::HostList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class HostList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Host.parse(node)
        end
        data
      end
    end

    class Host
      def self.parse(xml)
        data = Types::Host.new
        xml.at('autoPlacement') do |node|
          data.auto_placement = (node.text || '')
        end
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('availableCapacity') do |node|
          data.available_capacity = Parsers::AvailableCapacity.parse(node)
        end
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        xml.at('hostId') do |node|
          data.host_id = (node.text || '')
        end
        xml.at('hostProperties') do |node|
          data.host_properties = Parsers::HostProperties.parse(node)
        end
        xml.at('hostReservationId') do |node|
          data.host_reservation_id = (node.text || '')
        end
        xml.at('instances') do |node|
          children = node.children('item')
          data.instances = Parsers::HostInstanceList.parse(children)
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('allocationTime') do |node|
          data.allocation_time = Time.parse(node.text) if node.text
        end
        xml.at('releaseTime') do |node|
          data.release_time = Time.parse(node.text) if node.text
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('hostRecovery') do |node|
          data.host_recovery = (node.text || '')
        end
        xml.at('allowsMultipleInstanceTypes') do |node|
          data.allows_multiple_instance_types = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('availabilityZoneId') do |node|
          data.availability_zone_id = (node.text || '')
        end
        xml.at('memberOfServiceLinkedResourceGroup') do |node|
          data.member_of_service_linked_resource_group = (node.text == 'true')
        end
        return data
      end
    end

    class HostInstanceList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::HostInstance.parse(node)
        end
        data
      end
    end

    class HostInstance
      def self.parse(xml)
        data = Types::HostInstance.new
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        return data
      end
    end

    class HostProperties
      def self.parse(xml)
        data = Types::HostProperties.new
        xml.at('cores') do |node|
          data.cores = node.text&.to_i
        end
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('instanceFamily') do |node|
          data.instance_family = (node.text || '')
        end
        xml.at('sockets') do |node|
          data.sockets = node.text&.to_i
        end
        xml.at('totalVCpus') do |node|
          data.total_v_cpus = node.text&.to_i
        end
        return data
      end
    end

    class AvailableCapacity
      def self.parse(xml)
        data = Types::AvailableCapacity.new
        xml.at('availableInstanceCapacity') do |node|
          children = node.children('item')
          data.available_instance_capacity = Parsers::AvailableInstanceCapacityList.parse(children)
        end
        xml.at('availableVCpus') do |node|
          data.available_v_cpus = node.text&.to_i
        end
        return data
      end
    end

    class AvailableInstanceCapacityList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceCapacity.parse(node)
        end
        data
      end
    end

    class InstanceCapacity
      def self.parse(xml)
        data = Types::InstanceCapacity.new
        xml.at('availableCapacity') do |node|
          data.available_capacity = node.text&.to_i
        end
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('totalCapacity') do |node|
          data.total_capacity = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for DescribeIamInstanceProfileAssociations
    class DescribeIamInstanceProfileAssociations
      def self.parse(http_resp)
        data = Types::DescribeIamInstanceProfileAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('iamInstanceProfileAssociationSet') do |node|
          children = node.children('item')
          data.iam_instance_profile_associations = Parsers::IamInstanceProfileAssociationSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class IamInstanceProfileAssociationSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::IamInstanceProfileAssociation.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeIdFormat
    class DescribeIdFormat
      def self.parse(http_resp)
        data = Types::DescribeIdFormatOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('statusSet') do |node|
          children = node.children('item')
          data.statuses = Parsers::IdFormatList.parse(children)
        end
        data
      end
    end

    # Operation Parser for DescribeIdentityIdFormat
    class DescribeIdentityIdFormat
      def self.parse(http_resp)
        data = Types::DescribeIdentityIdFormatOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('statusSet') do |node|
          children = node.children('item')
          data.statuses = Parsers::IdFormatList.parse(children)
        end
        data
      end
    end

    # Operation Parser for DescribeImageAttribute
    class DescribeImageAttribute
      def self.parse(http_resp)
        data = Types::DescribeImageAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('blockDeviceMapping') do |node|
          children = node.children('item')
          data.block_device_mappings = Parsers::BlockDeviceMappingList.parse(children)
        end
        xml.at('imageId') do |node|
          data.image_id = (node.text || '')
        end
        xml.at('launchPermission') do |node|
          children = node.children('item')
          data.launch_permissions = Parsers::LaunchPermissionList.parse(children)
        end
        xml.at('productCodes') do |node|
          children = node.children('item')
          data.product_codes = Parsers::ProductCodeList.parse(children)
        end
        xml.at('description') do |node|
          data.description = Parsers::AttributeValue.parse(node)
        end
        xml.at('kernel') do |node|
          data.kernel_id = Parsers::AttributeValue.parse(node)
        end
        xml.at('ramdisk') do |node|
          data.ramdisk_id = Parsers::AttributeValue.parse(node)
        end
        xml.at('sriovNetSupport') do |node|
          data.sriov_net_support = Parsers::AttributeValue.parse(node)
        end
        xml.at('bootMode') do |node|
          data.boot_mode = Parsers::AttributeValue.parse(node)
        end
        data
      end
    end

    class LaunchPermissionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LaunchPermission.parse(node)
        end
        data
      end
    end

    class LaunchPermission
      def self.parse(xml)
        data = Types::LaunchPermission.new
        xml.at('group') do |node|
          data.group = (node.text || '')
        end
        xml.at('userId') do |node|
          data.user_id = (node.text || '')
        end
        xml.at('organizationArn') do |node|
          data.organization_arn = (node.text || '')
        end
        xml.at('organizationalUnitArn') do |node|
          data.organizational_unit_arn = (node.text || '')
        end
        return data
      end
    end

    class BlockDeviceMappingList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::BlockDeviceMapping.parse(node)
        end
        data
      end
    end

    class BlockDeviceMapping
      def self.parse(xml)
        data = Types::BlockDeviceMapping.new
        xml.at('deviceName') do |node|
          data.device_name = (node.text || '')
        end
        xml.at('virtualName') do |node|
          data.virtual_name = (node.text || '')
        end
        xml.at('ebs') do |node|
          data.ebs = Parsers::EbsBlockDevice.parse(node)
        end
        xml.at('noDevice') do |node|
          data.no_device = (node.text || '')
        end
        return data
      end
    end

    class EbsBlockDevice
      def self.parse(xml)
        data = Types::EbsBlockDevice.new
        xml.at('deleteOnTermination') do |node|
          data.delete_on_termination = (node.text == 'true')
        end
        xml.at('iops') do |node|
          data.iops = node.text&.to_i
        end
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('volumeSize') do |node|
          data.volume_size = node.text&.to_i
        end
        xml.at('volumeType') do |node|
          data.volume_type = (node.text || '')
        end
        xml.at('KmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('throughput') do |node|
          data.throughput = node.text&.to_i
        end
        xml.at('outpostArn') do |node|
          data.outpost_arn = (node.text || '')
        end
        xml.at('encrypted') do |node|
          data.encrypted = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for DescribeImages
    class DescribeImages
      def self.parse(http_resp)
        data = Types::DescribeImagesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('imagesSet') do |node|
          children = node.children('item')
          data.images = Parsers::ImageList.parse(children)
        end
        data
      end
    end

    class ImageList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Image.parse(node)
        end
        data
      end
    end

    class Image
      def self.parse(xml)
        data = Types::Image.new
        xml.at('architecture') do |node|
          data.architecture = (node.text || '')
        end
        xml.at('creationDate') do |node|
          data.creation_date = (node.text || '')
        end
        xml.at('imageId') do |node|
          data.image_id = (node.text || '')
        end
        xml.at('imageLocation') do |node|
          data.image_location = (node.text || '')
        end
        xml.at('imageType') do |node|
          data.image_type = (node.text || '')
        end
        xml.at('isPublic') do |node|
          data.public = (node.text == 'true')
        end
        xml.at('kernelId') do |node|
          data.kernel_id = (node.text || '')
        end
        xml.at('imageOwnerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('platform') do |node|
          data.platform = (node.text || '')
        end
        xml.at('platformDetails') do |node|
          data.platform_details = (node.text || '')
        end
        xml.at('usageOperation') do |node|
          data.usage_operation = (node.text || '')
        end
        xml.at('productCodes') do |node|
          children = node.children('item')
          data.product_codes = Parsers::ProductCodeList.parse(children)
        end
        xml.at('ramdiskId') do |node|
          data.ramdisk_id = (node.text || '')
        end
        xml.at('imageState') do |node|
          data.state = (node.text || '')
        end
        xml.at('blockDeviceMapping') do |node|
          children = node.children('item')
          data.block_device_mappings = Parsers::BlockDeviceMappingList.parse(children)
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('enaSupport') do |node|
          data.ena_support = (node.text == 'true')
        end
        xml.at('hypervisor') do |node|
          data.hypervisor = (node.text || '')
        end
        xml.at('imageOwnerAlias') do |node|
          data.image_owner_alias = (node.text || '')
        end
        xml.at('name') do |node|
          data.member_name = (node.text || '')
        end
        xml.at('rootDeviceName') do |node|
          data.root_device_name = (node.text || '')
        end
        xml.at('rootDeviceType') do |node|
          data.root_device_type = (node.text || '')
        end
        xml.at('sriovNetSupport') do |node|
          data.sriov_net_support = (node.text || '')
        end
        xml.at('stateReason') do |node|
          data.state_reason = Parsers::StateReason.parse(node)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('virtualizationType') do |node|
          data.virtualization_type = (node.text || '')
        end
        xml.at('bootMode') do |node|
          data.boot_mode = (node.text || '')
        end
        xml.at('deprecationTime') do |node|
          data.deprecation_time = (node.text || '')
        end
        return data
      end
    end

    class StateReason
      def self.parse(xml)
        data = Types::StateReason.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeImportImageTasks
    class DescribeImportImageTasks
      def self.parse(http_resp)
        data = Types::DescribeImportImageTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('importImageTaskSet') do |node|
          children = node.children('item')
          data.import_image_tasks = Parsers::ImportImageTaskList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ImportImageTaskList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ImportImageTask.parse(node)
        end
        data
      end
    end

    class ImportImageTask
      def self.parse(xml)
        data = Types::ImportImageTask.new
        xml.at('architecture') do |node|
          data.architecture = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('encrypted') do |node|
          data.encrypted = (node.text == 'true')
        end
        xml.at('hypervisor') do |node|
          data.hypervisor = (node.text || '')
        end
        xml.at('imageId') do |node|
          data.image_id = (node.text || '')
        end
        xml.at('importTaskId') do |node|
          data.import_task_id = (node.text || '')
        end
        xml.at('kmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('licenseType') do |node|
          data.license_type = (node.text || '')
        end
        xml.at('platform') do |node|
          data.platform = (node.text || '')
        end
        xml.at('progress') do |node|
          data.progress = (node.text || '')
        end
        xml.at('snapshotDetailSet') do |node|
          children = node.children('item')
          data.snapshot_details = Parsers::SnapshotDetailList.parse(children)
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('licenseSpecifications') do |node|
          children = node.children('item')
          data.license_specifications = Parsers::ImportImageLicenseSpecificationListResponse.parse(children)
        end
        xml.at('usageOperation') do |node|
          data.usage_operation = (node.text || '')
        end
        xml.at('bootMode') do |node|
          data.boot_mode = (node.text || '')
        end
        return data
      end
    end

    class ImportImageLicenseSpecificationListResponse
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ImportImageLicenseConfigurationResponse.parse(node)
        end
        data
      end
    end

    class ImportImageLicenseConfigurationResponse
      def self.parse(xml)
        data = Types::ImportImageLicenseConfigurationResponse.new
        xml.at('licenseConfigurationArn') do |node|
          data.license_configuration_arn = (node.text || '')
        end
        return data
      end
    end

    class SnapshotDetailList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SnapshotDetail.parse(node)
        end
        data
      end
    end

    class SnapshotDetail
      def self.parse(xml)
        data = Types::SnapshotDetail.new
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('deviceName') do |node|
          data.device_name = (node.text || '')
        end
        xml.at('diskImageSize') do |node|
          data.disk_image_size = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('format') do |node|
          data.format = (node.text || '')
        end
        xml.at('progress') do |node|
          data.progress = (node.text || '')
        end
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        xml.at('url') do |node|
          data.url = (node.text || '')
        end
        xml.at('userBucket') do |node|
          data.user_bucket = Parsers::UserBucketDetails.parse(node)
        end
        return data
      end
    end

    class UserBucketDetails
      def self.parse(xml)
        data = Types::UserBucketDetails.new
        xml.at('s3Bucket') do |node|
          data.s3_bucket = (node.text || '')
        end
        xml.at('s3Key') do |node|
          data.s3_key = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeImportSnapshotTasks
    class DescribeImportSnapshotTasks
      def self.parse(http_resp)
        data = Types::DescribeImportSnapshotTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('importSnapshotTaskSet') do |node|
          children = node.children('item')
          data.import_snapshot_tasks = Parsers::ImportSnapshotTaskList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ImportSnapshotTaskList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ImportSnapshotTask.parse(node)
        end
        data
      end
    end

    class ImportSnapshotTask
      def self.parse(xml)
        data = Types::ImportSnapshotTask.new
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('importTaskId') do |node|
          data.import_task_id = (node.text || '')
        end
        xml.at('snapshotTaskDetail') do |node|
          data.snapshot_task_detail = Parsers::SnapshotTaskDetail.parse(node)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class SnapshotTaskDetail
      def self.parse(xml)
        data = Types::SnapshotTaskDetail.new
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('diskImageSize') do |node|
          data.disk_image_size = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('encrypted') do |node|
          data.encrypted = (node.text == 'true')
        end
        xml.at('format') do |node|
          data.format = (node.text || '')
        end
        xml.at('kmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('progress') do |node|
          data.progress = (node.text || '')
        end
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        xml.at('url') do |node|
          data.url = (node.text || '')
        end
        xml.at('userBucket') do |node|
          data.user_bucket = Parsers::UserBucketDetails.parse(node)
        end
        return data
      end
    end

    # Operation Parser for DescribeInstanceAttribute
    class DescribeInstanceAttribute
      def self.parse(http_resp)
        data = Types::DescribeInstanceAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('groupSet') do |node|
          children = node.children('item')
          data.groups = Parsers::GroupIdentifierList.parse(children)
        end
        xml.at('blockDeviceMapping') do |node|
          children = node.children('item')
          data.block_device_mappings = Parsers::InstanceBlockDeviceMappingList.parse(children)
        end
        xml.at('disableApiTermination') do |node|
          data.disable_api_termination = Parsers::AttributeBooleanValue.parse(node)
        end
        xml.at('enaSupport') do |node|
          data.ena_support = Parsers::AttributeBooleanValue.parse(node)
        end
        xml.at('enclaveOptions') do |node|
          data.enclave_options = Parsers::EnclaveOptions.parse(node)
        end
        xml.at('ebsOptimized') do |node|
          data.ebs_optimized = Parsers::AttributeBooleanValue.parse(node)
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('instanceInitiatedShutdownBehavior') do |node|
          data.instance_initiated_shutdown_behavior = Parsers::AttributeValue.parse(node)
        end
        xml.at('instanceType') do |node|
          data.instance_type = Parsers::AttributeValue.parse(node)
        end
        xml.at('kernel') do |node|
          data.kernel_id = Parsers::AttributeValue.parse(node)
        end
        xml.at('productCodes') do |node|
          children = node.children('item')
          data.product_codes = Parsers::ProductCodeList.parse(children)
        end
        xml.at('ramdisk') do |node|
          data.ramdisk_id = Parsers::AttributeValue.parse(node)
        end
        xml.at('rootDeviceName') do |node|
          data.root_device_name = Parsers::AttributeValue.parse(node)
        end
        xml.at('sourceDestCheck') do |node|
          data.source_dest_check = Parsers::AttributeBooleanValue.parse(node)
        end
        xml.at('sriovNetSupport') do |node|
          data.sriov_net_support = Parsers::AttributeValue.parse(node)
        end
        xml.at('userData') do |node|
          data.user_data = Parsers::AttributeValue.parse(node)
        end
        data
      end
    end

    class AttributeBooleanValue
      def self.parse(xml)
        data = Types::AttributeBooleanValue.new
        xml.at('value') do |node|
          data.value = (node.text == 'true')
        end
        return data
      end
    end

    class EnclaveOptions
      def self.parse(xml)
        data = Types::EnclaveOptions.new
        xml.at('enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        return data
      end
    end

    class InstanceBlockDeviceMappingList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceBlockDeviceMapping.parse(node)
        end
        data
      end
    end

    class InstanceBlockDeviceMapping
      def self.parse(xml)
        data = Types::InstanceBlockDeviceMapping.new
        xml.at('deviceName') do |node|
          data.device_name = (node.text || '')
        end
        xml.at('ebs') do |node|
          data.ebs = Parsers::EbsInstanceBlockDevice.parse(node)
        end
        return data
      end
    end

    class EbsInstanceBlockDevice
      def self.parse(xml)
        data = Types::EbsInstanceBlockDevice.new
        xml.at('attachTime') do |node|
          data.attach_time = Time.parse(node.text) if node.text
        end
        xml.at('deleteOnTermination') do |node|
          data.delete_on_termination = (node.text == 'true')
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        xml.at('volumeId') do |node|
          data.volume_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeInstanceCreditSpecifications
    class DescribeInstanceCreditSpecifications
      def self.parse(http_resp)
        data = Types::DescribeInstanceCreditSpecificationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceCreditSpecificationSet') do |node|
          children = node.children('item')
          data.instance_credit_specifications = Parsers::InstanceCreditSpecificationList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class InstanceCreditSpecificationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceCreditSpecification.parse(node)
        end
        data
      end
    end

    class InstanceCreditSpecification
      def self.parse(xml)
        data = Types::InstanceCreditSpecification.new
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('cpuCredits') do |node|
          data.cpu_credits = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeInstanceEventNotificationAttributes
    class DescribeInstanceEventNotificationAttributes
      def self.parse(http_resp)
        data = Types::DescribeInstanceEventNotificationAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceTagAttribute') do |node|
          data.instance_tag_attribute = Parsers::InstanceTagNotificationAttribute.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeInstanceEventWindows
    class DescribeInstanceEventWindows
      def self.parse(http_resp)
        data = Types::DescribeInstanceEventWindowsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceEventWindowSet') do |node|
          children = node.children('item')
          data.instance_event_windows = Parsers::InstanceEventWindowSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class InstanceEventWindowSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceEventWindow.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeInstanceStatus
    class DescribeInstanceStatus
      def self.parse(http_resp)
        data = Types::DescribeInstanceStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceStatusSet') do |node|
          children = node.children('item')
          data.instance_statuses = Parsers::InstanceStatusList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class InstanceStatusList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceStatus.parse(node)
        end
        data
      end
    end

    class InstanceStatus
      def self.parse(xml)
        data = Types::InstanceStatus.new
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('outpostArn') do |node|
          data.outpost_arn = (node.text || '')
        end
        xml.at('eventsSet') do |node|
          children = node.children('item')
          data.events = Parsers::InstanceStatusEventList.parse(children)
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('instanceState') do |node|
          data.instance_state = Parsers::InstanceState.parse(node)
        end
        xml.at('instanceStatus') do |node|
          data.instance_status = Parsers::InstanceStatusSummary.parse(node)
        end
        xml.at('systemStatus') do |node|
          data.system_status = Parsers::InstanceStatusSummary.parse(node)
        end
        return data
      end
    end

    class InstanceStatusSummary
      def self.parse(xml)
        data = Types::InstanceStatusSummary.new
        xml.at('details') do |node|
          children = node.children('item')
          data.details = Parsers::InstanceStatusDetailsList.parse(children)
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class InstanceStatusDetailsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceStatusDetails.parse(node)
        end
        data
      end
    end

    class InstanceStatusDetails
      def self.parse(xml)
        data = Types::InstanceStatusDetails.new
        xml.at('impairedSince') do |node|
          data.impaired_since = Time.parse(node.text) if node.text
        end
        xml.at('name') do |node|
          data.member_name = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class InstanceState
      def self.parse(xml)
        data = Types::InstanceState.new
        xml.at('code') do |node|
          data.code = node.text&.to_i
        end
        xml.at('name') do |node|
          data.member_name = (node.text || '')
        end
        return data
      end
    end

    class InstanceStatusEventList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceStatusEvent.parse(node)
        end
        data
      end
    end

    class InstanceStatusEvent
      def self.parse(xml)
        data = Types::InstanceStatusEvent.new
        xml.at('instanceEventId') do |node|
          data.instance_event_id = (node.text || '')
        end
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('notAfter') do |node|
          data.not_after = Time.parse(node.text) if node.text
        end
        xml.at('notBefore') do |node|
          data.not_before = Time.parse(node.text) if node.text
        end
        xml.at('notBeforeDeadline') do |node|
          data.not_before_deadline = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for DescribeInstanceTypeOfferings
    class DescribeInstanceTypeOfferings
      def self.parse(http_resp)
        data = Types::DescribeInstanceTypeOfferingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceTypeOfferingSet') do |node|
          children = node.children('item')
          data.instance_type_offerings = Parsers::InstanceTypeOfferingsList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class InstanceTypeOfferingsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceTypeOffering.parse(node)
        end
        data
      end
    end

    class InstanceTypeOffering
      def self.parse(xml)
        data = Types::InstanceTypeOffering.new
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('locationType') do |node|
          data.location_type = (node.text || '')
        end
        xml.at('location') do |node|
          data.location = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeInstanceTypes
    class DescribeInstanceTypes
      def self.parse(http_resp)
        data = Types::DescribeInstanceTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceTypeSet') do |node|
          children = node.children('item')
          data.instance_types = Parsers::InstanceTypeInfoList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class InstanceTypeInfoList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceTypeInfo.parse(node)
        end
        data
      end
    end

    class InstanceTypeInfo
      def self.parse(xml)
        data = Types::InstanceTypeInfo.new
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('currentGeneration') do |node|
          data.current_generation = (node.text == 'true')
        end
        xml.at('freeTierEligible') do |node|
          data.free_tier_eligible = (node.text == 'true')
        end
        xml.at('supportedUsageClasses') do |node|
          children = node.children('item')
          data.supported_usage_classes = Parsers::UsageClassTypeList.parse(children)
        end
        xml.at('supportedRootDeviceTypes') do |node|
          children = node.children('item')
          data.supported_root_device_types = Parsers::RootDeviceTypeList.parse(children)
        end
        xml.at('supportedVirtualizationTypes') do |node|
          children = node.children('item')
          data.supported_virtualization_types = Parsers::VirtualizationTypeList.parse(children)
        end
        xml.at('bareMetal') do |node|
          data.bare_metal = (node.text == 'true')
        end
        xml.at('hypervisor') do |node|
          data.hypervisor = (node.text || '')
        end
        xml.at('processorInfo') do |node|
          data.processor_info = Parsers::ProcessorInfo.parse(node)
        end
        xml.at('vCpuInfo') do |node|
          data.v_cpu_info = Parsers::VCpuInfo.parse(node)
        end
        xml.at('memoryInfo') do |node|
          data.memory_info = Parsers::MemoryInfo.parse(node)
        end
        xml.at('instanceStorageSupported') do |node|
          data.instance_storage_supported = (node.text == 'true')
        end
        xml.at('instanceStorageInfo') do |node|
          data.instance_storage_info = Parsers::InstanceStorageInfo.parse(node)
        end
        xml.at('ebsInfo') do |node|
          data.ebs_info = Parsers::EbsInfo.parse(node)
        end
        xml.at('networkInfo') do |node|
          data.network_info = Parsers::NetworkInfo.parse(node)
        end
        xml.at('gpuInfo') do |node|
          data.gpu_info = Parsers::GpuInfo.parse(node)
        end
        xml.at('fpgaInfo') do |node|
          data.fpga_info = Parsers::FpgaInfo.parse(node)
        end
        xml.at('placementGroupInfo') do |node|
          data.placement_group_info = Parsers::PlacementGroupInfo.parse(node)
        end
        xml.at('inferenceAcceleratorInfo') do |node|
          data.inference_accelerator_info = Parsers::InferenceAcceleratorInfo.parse(node)
        end
        xml.at('hibernationSupported') do |node|
          data.hibernation_supported = (node.text == 'true')
        end
        xml.at('burstablePerformanceSupported') do |node|
          data.burstable_performance_supported = (node.text == 'true')
        end
        xml.at('dedicatedHostsSupported') do |node|
          data.dedicated_hosts_supported = (node.text == 'true')
        end
        xml.at('autoRecoverySupported') do |node|
          data.auto_recovery_supported = (node.text == 'true')
        end
        xml.at('supportedBootModes') do |node|
          children = node.children('item')
          data.supported_boot_modes = Parsers::BootModeTypeList.parse(children)
        end
        return data
      end
    end

    class BootModeTypeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class InferenceAcceleratorInfo
      def self.parse(xml)
        data = Types::InferenceAcceleratorInfo.new
        xml.at('accelerators') do |node|
          children = node.children('member')
          data.accelerators = Parsers::InferenceDeviceInfoList.parse(children)
        end
        return data
      end
    end

    class InferenceDeviceInfoList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InferenceDeviceInfo.parse(node)
        end
        data
      end
    end

    class InferenceDeviceInfo
      def self.parse(xml)
        data = Types::InferenceDeviceInfo.new
        xml.at('count') do |node|
          data.count = node.text&.to_i
        end
        xml.at('name') do |node|
          data.member_name = (node.text || '')
        end
        xml.at('manufacturer') do |node|
          data.manufacturer = (node.text || '')
        end
        return data
      end
    end

    class PlacementGroupInfo
      def self.parse(xml)
        data = Types::PlacementGroupInfo.new
        xml.at('supportedStrategies') do |node|
          children = node.children('item')
          data.supported_strategies = Parsers::PlacementGroupStrategyList.parse(children)
        end
        return data
      end
    end

    class PlacementGroupStrategyList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class FpgaInfo
      def self.parse(xml)
        data = Types::FpgaInfo.new
        xml.at('fpgas') do |node|
          children = node.children('item')
          data.fpgas = Parsers::FpgaDeviceInfoList.parse(children)
        end
        xml.at('totalFpgaMemoryInMiB') do |node|
          data.total_fpga_memory_in_mi_b = node.text&.to_i
        end
        return data
      end
    end

    class FpgaDeviceInfoList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::FpgaDeviceInfo.parse(node)
        end
        data
      end
    end

    class FpgaDeviceInfo
      def self.parse(xml)
        data = Types::FpgaDeviceInfo.new
        xml.at('name') do |node|
          data.member_name = (node.text || '')
        end
        xml.at('manufacturer') do |node|
          data.manufacturer = (node.text || '')
        end
        xml.at('count') do |node|
          data.count = node.text&.to_i
        end
        xml.at('memoryInfo') do |node|
          data.memory_info = Parsers::FpgaDeviceMemoryInfo.parse(node)
        end
        return data
      end
    end

    class FpgaDeviceMemoryInfo
      def self.parse(xml)
        data = Types::FpgaDeviceMemoryInfo.new
        xml.at('sizeInMiB') do |node|
          data.size_in_mi_b = node.text&.to_i
        end
        return data
      end
    end

    class GpuInfo
      def self.parse(xml)
        data = Types::GpuInfo.new
        xml.at('gpus') do |node|
          children = node.children('item')
          data.gpus = Parsers::GpuDeviceInfoList.parse(children)
        end
        xml.at('totalGpuMemoryInMiB') do |node|
          data.total_gpu_memory_in_mi_b = node.text&.to_i
        end
        return data
      end
    end

    class GpuDeviceInfoList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::GpuDeviceInfo.parse(node)
        end
        data
      end
    end

    class GpuDeviceInfo
      def self.parse(xml)
        data = Types::GpuDeviceInfo.new
        xml.at('name') do |node|
          data.member_name = (node.text || '')
        end
        xml.at('manufacturer') do |node|
          data.manufacturer = (node.text || '')
        end
        xml.at('count') do |node|
          data.count = node.text&.to_i
        end
        xml.at('memoryInfo') do |node|
          data.memory_info = Parsers::GpuDeviceMemoryInfo.parse(node)
        end
        return data
      end
    end

    class GpuDeviceMemoryInfo
      def self.parse(xml)
        data = Types::GpuDeviceMemoryInfo.new
        xml.at('sizeInMiB') do |node|
          data.size_in_mi_b = node.text&.to_i
        end
        return data
      end
    end

    class NetworkInfo
      def self.parse(xml)
        data = Types::NetworkInfo.new
        xml.at('networkPerformance') do |node|
          data.network_performance = (node.text || '')
        end
        xml.at('maximumNetworkInterfaces') do |node|
          data.maximum_network_interfaces = node.text&.to_i
        end
        xml.at('maximumNetworkCards') do |node|
          data.maximum_network_cards = node.text&.to_i
        end
        xml.at('defaultNetworkCardIndex') do |node|
          data.default_network_card_index = node.text&.to_i
        end
        xml.at('networkCards') do |node|
          children = node.children('item')
          data.network_cards = Parsers::NetworkCardInfoList.parse(children)
        end
        xml.at('ipv4AddressesPerInterface') do |node|
          data.ipv4_addresses_per_interface = node.text&.to_i
        end
        xml.at('ipv6AddressesPerInterface') do |node|
          data.ipv6_addresses_per_interface = node.text&.to_i
        end
        xml.at('ipv6Supported') do |node|
          data.ipv6_supported = (node.text == 'true')
        end
        xml.at('enaSupport') do |node|
          data.ena_support = (node.text || '')
        end
        xml.at('efaSupported') do |node|
          data.efa_supported = (node.text == 'true')
        end
        xml.at('efaInfo') do |node|
          data.efa_info = Parsers::EfaInfo.parse(node)
        end
        xml.at('encryptionInTransitSupported') do |node|
          data.encryption_in_transit_supported = (node.text == 'true')
        end
        return data
      end
    end

    class EfaInfo
      def self.parse(xml)
        data = Types::EfaInfo.new
        xml.at('maximumEfaInterfaces') do |node|
          data.maximum_efa_interfaces = node.text&.to_i
        end
        return data
      end
    end

    class NetworkCardInfoList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::NetworkCardInfo.parse(node)
        end
        data
      end
    end

    class NetworkCardInfo
      def self.parse(xml)
        data = Types::NetworkCardInfo.new
        xml.at('networkCardIndex') do |node|
          data.network_card_index = node.text&.to_i
        end
        xml.at('networkPerformance') do |node|
          data.network_performance = (node.text || '')
        end
        xml.at('maximumNetworkInterfaces') do |node|
          data.maximum_network_interfaces = node.text&.to_i
        end
        return data
      end
    end

    class EbsInfo
      def self.parse(xml)
        data = Types::EbsInfo.new
        xml.at('ebsOptimizedSupport') do |node|
          data.ebs_optimized_support = (node.text || '')
        end
        xml.at('encryptionSupport') do |node|
          data.encryption_support = (node.text || '')
        end
        xml.at('ebsOptimizedInfo') do |node|
          data.ebs_optimized_info = Parsers::EbsOptimizedInfo.parse(node)
        end
        xml.at('nvmeSupport') do |node|
          data.nvme_support = (node.text || '')
        end
        return data
      end
    end

    class EbsOptimizedInfo
      def self.parse(xml)
        data = Types::EbsOptimizedInfo.new
        xml.at('baselineBandwidthInMbps') do |node|
          data.baseline_bandwidth_in_mbps = node.text&.to_i
        end
        xml.at('baselineThroughputInMBps') do |node|
          data.baseline_throughput_in_m_bps = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('baselineIops') do |node|
          data.baseline_iops = node.text&.to_i
        end
        xml.at('maximumBandwidthInMbps') do |node|
          data.maximum_bandwidth_in_mbps = node.text&.to_i
        end
        xml.at('maximumThroughputInMBps') do |node|
          data.maximum_throughput_in_m_bps = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('maximumIops') do |node|
          data.maximum_iops = node.text&.to_i
        end
        return data
      end
    end

    class InstanceStorageInfo
      def self.parse(xml)
        data = Types::InstanceStorageInfo.new
        xml.at('totalSizeInGB') do |node|
          data.total_size_in_gb = node.text&.to_i
        end
        xml.at('disks') do |node|
          children = node.children('item')
          data.disks = Parsers::DiskInfoList.parse(children)
        end
        xml.at('nvmeSupport') do |node|
          data.nvme_support = (node.text || '')
        end
        xml.at('encryptionSupport') do |node|
          data.encryption_support = (node.text || '')
        end
        return data
      end
    end

    class DiskInfoList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DiskInfo.parse(node)
        end
        data
      end
    end

    class DiskInfo
      def self.parse(xml)
        data = Types::DiskInfo.new
        xml.at('sizeInGB') do |node|
          data.size_in_gb = node.text&.to_i
        end
        xml.at('count') do |node|
          data.count = node.text&.to_i
        end
        xml.at('type') do |node|
          data.type = (node.text || '')
        end
        return data
      end
    end

    class MemoryInfo
      def self.parse(xml)
        data = Types::MemoryInfo.new
        xml.at('sizeInMiB') do |node|
          data.size_in_mi_b = node.text&.to_i
        end
        return data
      end
    end

    class VCpuInfo
      def self.parse(xml)
        data = Types::VCpuInfo.new
        xml.at('defaultVCpus') do |node|
          data.default_v_cpus = node.text&.to_i
        end
        xml.at('defaultCores') do |node|
          data.default_cores = node.text&.to_i
        end
        xml.at('defaultThreadsPerCore') do |node|
          data.default_threads_per_core = node.text&.to_i
        end
        xml.at('validCores') do |node|
          children = node.children('item')
          data.valid_cores = Parsers::CoreCountList.parse(children)
        end
        xml.at('validThreadsPerCore') do |node|
          children = node.children('item')
          data.valid_threads_per_core = Parsers::ThreadsPerCoreList.parse(children)
        end
        return data
      end
    end

    class ThreadsPerCoreList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << node.text&.to_i
        end
        data
      end
    end

    class CoreCountList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << node.text&.to_i
        end
        data
      end
    end

    class ProcessorInfo
      def self.parse(xml)
        data = Types::ProcessorInfo.new
        xml.at('supportedArchitectures') do |node|
          children = node.children('item')
          data.supported_architectures = Parsers::ArchitectureTypeList.parse(children)
        end
        xml.at('sustainedClockSpeedInGhz') do |node|
          data.sustained_clock_speed_in_ghz = Hearth::NumberHelper.deserialize(node.text)
        end
        return data
      end
    end

    class ArchitectureTypeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class VirtualizationTypeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class RootDeviceTypeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class UsageClassTypeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeInstances
    class DescribeInstances
      def self.parse(http_resp)
        data = Types::DescribeInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('reservationSet') do |node|
          children = node.children('item')
          data.reservations = Parsers::ReservationList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ReservationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Reservation.parse(node)
        end
        data
      end
    end

    class Reservation
      def self.parse(xml)
        data = Types::Reservation.new
        xml.at('groupSet') do |node|
          children = node.children('item')
          data.groups = Parsers::GroupIdentifierList.parse(children)
        end
        xml.at('instancesSet') do |node|
          children = node.children('item')
          data.instances = Parsers::InstanceList.parse(children)
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('requesterId') do |node|
          data.requester_id = (node.text || '')
        end
        xml.at('reservationId') do |node|
          data.reservation_id = (node.text || '')
        end
        return data
      end
    end

    class InstanceList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Instance.parse(node)
        end
        data
      end
    end

    class Instance
      def self.parse(xml)
        data = Types::Instance.new
        xml.at('amiLaunchIndex') do |node|
          data.ami_launch_index = node.text&.to_i
        end
        xml.at('imageId') do |node|
          data.image_id = (node.text || '')
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('kernelId') do |node|
          data.kernel_id = (node.text || '')
        end
        xml.at('keyName') do |node|
          data.key_name = (node.text || '')
        end
        xml.at('launchTime') do |node|
          data.launch_time = Time.parse(node.text) if node.text
        end
        xml.at('monitoring') do |node|
          data.monitoring = Parsers::Monitoring.parse(node)
        end
        xml.at('placement') do |node|
          data.placement = Parsers::Placement.parse(node)
        end
        xml.at('platform') do |node|
          data.platform = (node.text || '')
        end
        xml.at('privateDnsName') do |node|
          data.private_dns_name = (node.text || '')
        end
        xml.at('privateIpAddress') do |node|
          data.private_ip_address = (node.text || '')
        end
        xml.at('productCodes') do |node|
          children = node.children('item')
          data.product_codes = Parsers::ProductCodeList.parse(children)
        end
        xml.at('dnsName') do |node|
          data.public_dns_name = (node.text || '')
        end
        xml.at('ipAddress') do |node|
          data.public_ip_address = (node.text || '')
        end
        xml.at('ramdiskId') do |node|
          data.ramdisk_id = (node.text || '')
        end
        xml.at('instanceState') do |node|
          data.state = Parsers::InstanceState.parse(node)
        end
        xml.at('reason') do |node|
          data.state_transition_reason = (node.text || '')
        end
        xml.at('subnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('architecture') do |node|
          data.architecture = (node.text || '')
        end
        xml.at('blockDeviceMapping') do |node|
          children = node.children('item')
          data.block_device_mappings = Parsers::InstanceBlockDeviceMappingList.parse(children)
        end
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        xml.at('ebsOptimized') do |node|
          data.ebs_optimized = (node.text == 'true')
        end
        xml.at('enaSupport') do |node|
          data.ena_support = (node.text == 'true')
        end
        xml.at('hypervisor') do |node|
          data.hypervisor = (node.text || '')
        end
        xml.at('iamInstanceProfile') do |node|
          data.iam_instance_profile = Parsers::IamInstanceProfile.parse(node)
        end
        xml.at('instanceLifecycle') do |node|
          data.instance_lifecycle = (node.text || '')
        end
        xml.at('elasticGpuAssociationSet') do |node|
          children = node.children('item')
          data.elastic_gpu_associations = Parsers::ElasticGpuAssociationList.parse(children)
        end
        xml.at('elasticInferenceAcceleratorAssociationSet') do |node|
          children = node.children('item')
          data.elastic_inference_accelerator_associations = Parsers::ElasticInferenceAcceleratorAssociationList.parse(children)
        end
        xml.at('networkInterfaceSet') do |node|
          children = node.children('item')
          data.network_interfaces = Parsers::InstanceNetworkInterfaceList.parse(children)
        end
        xml.at('outpostArn') do |node|
          data.outpost_arn = (node.text || '')
        end
        xml.at('rootDeviceName') do |node|
          data.root_device_name = (node.text || '')
        end
        xml.at('rootDeviceType') do |node|
          data.root_device_type = (node.text || '')
        end
        xml.at('groupSet') do |node|
          children = node.children('item')
          data.security_groups = Parsers::GroupIdentifierList.parse(children)
        end
        xml.at('sourceDestCheck') do |node|
          data.source_dest_check = (node.text == 'true')
        end
        xml.at('spotInstanceRequestId') do |node|
          data.spot_instance_request_id = (node.text || '')
        end
        xml.at('sriovNetSupport') do |node|
          data.sriov_net_support = (node.text || '')
        end
        xml.at('stateReason') do |node|
          data.state_reason = Parsers::StateReason.parse(node)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('virtualizationType') do |node|
          data.virtualization_type = (node.text || '')
        end
        xml.at('cpuOptions') do |node|
          data.cpu_options = Parsers::CpuOptions.parse(node)
        end
        xml.at('capacityReservationId') do |node|
          data.capacity_reservation_id = (node.text || '')
        end
        xml.at('capacityReservationSpecification') do |node|
          data.capacity_reservation_specification = Parsers::CapacityReservationSpecificationResponse.parse(node)
        end
        xml.at('hibernationOptions') do |node|
          data.hibernation_options = Parsers::HibernationOptions.parse(node)
        end
        xml.at('licenseSet') do |node|
          children = node.children('item')
          data.licenses = Parsers::LicenseList.parse(children)
        end
        xml.at('metadataOptions') do |node|
          data.metadata_options = Parsers::InstanceMetadataOptionsResponse.parse(node)
        end
        xml.at('enclaveOptions') do |node|
          data.enclave_options = Parsers::EnclaveOptions.parse(node)
        end
        xml.at('bootMode') do |node|
          data.boot_mode = (node.text || '')
        end
        xml.at('platformDetails') do |node|
          data.platform_details = (node.text || '')
        end
        xml.at('usageOperation') do |node|
          data.usage_operation = (node.text || '')
        end
        xml.at('usageOperationUpdateTime') do |node|
          data.usage_operation_update_time = Time.parse(node.text) if node.text
        end
        xml.at('privateDnsNameOptions') do |node|
          data.private_dns_name_options = Parsers::PrivateDnsNameOptionsResponse.parse(node)
        end
        xml.at('ipv6Address') do |node|
          data.ipv6_address = (node.text || '')
        end
        return data
      end
    end

    class PrivateDnsNameOptionsResponse
      def self.parse(xml)
        data = Types::PrivateDnsNameOptionsResponse.new
        xml.at('hostnameType') do |node|
          data.hostname_type = (node.text || '')
        end
        xml.at('enableResourceNameDnsARecord') do |node|
          data.enable_resource_name_dns_a_record = (node.text == 'true')
        end
        xml.at('enableResourceNameDnsAAAARecord') do |node|
          data.enable_resource_name_dns_aaaa_record = (node.text == 'true')
        end
        return data
      end
    end

    class InstanceMetadataOptionsResponse
      def self.parse(xml)
        data = Types::InstanceMetadataOptionsResponse.new
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('httpTokens') do |node|
          data.http_tokens = (node.text || '')
        end
        xml.at('httpPutResponseHopLimit') do |node|
          data.http_put_response_hop_limit = node.text&.to_i
        end
        xml.at('httpEndpoint') do |node|
          data.http_endpoint = (node.text || '')
        end
        xml.at('httpProtocolIpv6') do |node|
          data.http_protocol_ipv6 = (node.text || '')
        end
        xml.at('instanceMetadataTags') do |node|
          data.instance_metadata_tags = (node.text || '')
        end
        return data
      end
    end

    class LicenseList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LicenseConfiguration.parse(node)
        end
        data
      end
    end

    class LicenseConfiguration
      def self.parse(xml)
        data = Types::LicenseConfiguration.new
        xml.at('licenseConfigurationArn') do |node|
          data.license_configuration_arn = (node.text || '')
        end
        return data
      end
    end

    class HibernationOptions
      def self.parse(xml)
        data = Types::HibernationOptions.new
        xml.at('configured') do |node|
          data.configured = (node.text == 'true')
        end
        return data
      end
    end

    class CapacityReservationSpecificationResponse
      def self.parse(xml)
        data = Types::CapacityReservationSpecificationResponse.new
        xml.at('capacityReservationPreference') do |node|
          data.capacity_reservation_preference = (node.text || '')
        end
        xml.at('capacityReservationTarget') do |node|
          data.capacity_reservation_target = Parsers::CapacityReservationTargetResponse.parse(node)
        end
        return data
      end
    end

    class CpuOptions
      def self.parse(xml)
        data = Types::CpuOptions.new
        xml.at('coreCount') do |node|
          data.core_count = node.text&.to_i
        end
        xml.at('threadsPerCore') do |node|
          data.threads_per_core = node.text&.to_i
        end
        return data
      end
    end

    class InstanceNetworkInterfaceList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceNetworkInterface.parse(node)
        end
        data
      end
    end

    class InstanceNetworkInterface
      def self.parse(xml)
        data = Types::InstanceNetworkInterface.new
        xml.at('association') do |node|
          data.association = Parsers::InstanceNetworkInterfaceAssociation.parse(node)
        end
        xml.at('attachment') do |node|
          data.attachment = Parsers::InstanceNetworkInterfaceAttachment.parse(node)
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('groupSet') do |node|
          children = node.children('item')
          data.groups = Parsers::GroupIdentifierList.parse(children)
        end
        xml.at('ipv6AddressesSet') do |node|
          children = node.children('item')
          data.ipv6_addresses = Parsers::InstanceIpv6AddressList.parse(children)
        end
        xml.at('macAddress') do |node|
          data.mac_address = (node.text || '')
        end
        xml.at('networkInterfaceId') do |node|
          data.network_interface_id = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('privateDnsName') do |node|
          data.private_dns_name = (node.text || '')
        end
        xml.at('privateIpAddress') do |node|
          data.private_ip_address = (node.text || '')
        end
        xml.at('privateIpAddressesSet') do |node|
          children = node.children('item')
          data.private_ip_addresses = Parsers::InstancePrivateIpAddressList.parse(children)
        end
        xml.at('sourceDestCheck') do |node|
          data.source_dest_check = (node.text == 'true')
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        xml.at('subnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('interfaceType') do |node|
          data.interface_type = (node.text || '')
        end
        xml.at('ipv4PrefixSet') do |node|
          children = node.children('item')
          data.ipv4_prefixes = Parsers::InstanceIpv4PrefixList.parse(children)
        end
        xml.at('ipv6PrefixSet') do |node|
          children = node.children('item')
          data.ipv6_prefixes = Parsers::InstanceIpv6PrefixList.parse(children)
        end
        return data
      end
    end

    class InstanceIpv6PrefixList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceIpv6Prefix.parse(node)
        end
        data
      end
    end

    class InstanceIpv6Prefix
      def self.parse(xml)
        data = Types::InstanceIpv6Prefix.new
        xml.at('ipv6Prefix') do |node|
          data.ipv6_prefix = (node.text || '')
        end
        return data
      end
    end

    class InstanceIpv4PrefixList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceIpv4Prefix.parse(node)
        end
        data
      end
    end

    class InstanceIpv4Prefix
      def self.parse(xml)
        data = Types::InstanceIpv4Prefix.new
        xml.at('ipv4Prefix') do |node|
          data.ipv4_prefix = (node.text || '')
        end
        return data
      end
    end

    class InstancePrivateIpAddressList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstancePrivateIpAddress.parse(node)
        end
        data
      end
    end

    class InstancePrivateIpAddress
      def self.parse(xml)
        data = Types::InstancePrivateIpAddress.new
        xml.at('association') do |node|
          data.association = Parsers::InstanceNetworkInterfaceAssociation.parse(node)
        end
        xml.at('primary') do |node|
          data.primary = (node.text == 'true')
        end
        xml.at('privateDnsName') do |node|
          data.private_dns_name = (node.text || '')
        end
        xml.at('privateIpAddress') do |node|
          data.private_ip_address = (node.text || '')
        end
        return data
      end
    end

    class InstanceNetworkInterfaceAssociation
      def self.parse(xml)
        data = Types::InstanceNetworkInterfaceAssociation.new
        xml.at('carrierIp') do |node|
          data.carrier_ip = (node.text || '')
        end
        xml.at('customerOwnedIp') do |node|
          data.customer_owned_ip = (node.text || '')
        end
        xml.at('ipOwnerId') do |node|
          data.ip_owner_id = (node.text || '')
        end
        xml.at('publicDnsName') do |node|
          data.public_dns_name = (node.text || '')
        end
        xml.at('publicIp') do |node|
          data.public_ip = (node.text || '')
        end
        return data
      end
    end

    class InstanceNetworkInterfaceAttachment
      def self.parse(xml)
        data = Types::InstanceNetworkInterfaceAttachment.new
        xml.at('attachTime') do |node|
          data.attach_time = Time.parse(node.text) if node.text
        end
        xml.at('attachmentId') do |node|
          data.attachment_id = (node.text || '')
        end
        xml.at('deleteOnTermination') do |node|
          data.delete_on_termination = (node.text == 'true')
        end
        xml.at('deviceIndex') do |node|
          data.device_index = node.text&.to_i
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        xml.at('networkCardIndex') do |node|
          data.network_card_index = node.text&.to_i
        end
        return data
      end
    end

    class ElasticInferenceAcceleratorAssociationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ElasticInferenceAcceleratorAssociation.parse(node)
        end
        data
      end
    end

    class ElasticInferenceAcceleratorAssociation
      def self.parse(xml)
        data = Types::ElasticInferenceAcceleratorAssociation.new
        xml.at('elasticInferenceAcceleratorArn') do |node|
          data.elastic_inference_accelerator_arn = (node.text || '')
        end
        xml.at('elasticInferenceAcceleratorAssociationId') do |node|
          data.elastic_inference_accelerator_association_id = (node.text || '')
        end
        xml.at('elasticInferenceAcceleratorAssociationState') do |node|
          data.elastic_inference_accelerator_association_state = (node.text || '')
        end
        xml.at('elasticInferenceAcceleratorAssociationTime') do |node|
          data.elastic_inference_accelerator_association_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class ElasticGpuAssociationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ElasticGpuAssociation.parse(node)
        end
        data
      end
    end

    class ElasticGpuAssociation
      def self.parse(xml)
        data = Types::ElasticGpuAssociation.new
        xml.at('elasticGpuId') do |node|
          data.elastic_gpu_id = (node.text || '')
        end
        xml.at('elasticGpuAssociationId') do |node|
          data.elastic_gpu_association_id = (node.text || '')
        end
        xml.at('elasticGpuAssociationState') do |node|
          data.elastic_gpu_association_state = (node.text || '')
        end
        xml.at('elasticGpuAssociationTime') do |node|
          data.elastic_gpu_association_time = (node.text || '')
        end
        return data
      end
    end

    class Placement
      def self.parse(xml)
        data = Types::Placement.new
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('affinity') do |node|
          data.affinity = (node.text || '')
        end
        xml.at('groupName') do |node|
          data.group_name = (node.text || '')
        end
        xml.at('partitionNumber') do |node|
          data.partition_number = node.text&.to_i
        end
        xml.at('hostId') do |node|
          data.host_id = (node.text || '')
        end
        xml.at('tenancy') do |node|
          data.tenancy = (node.text || '')
        end
        xml.at('spreadDomain') do |node|
          data.spread_domain = (node.text || '')
        end
        xml.at('hostResourceGroupArn') do |node|
          data.host_resource_group_arn = (node.text || '')
        end
        return data
      end
    end

    class Monitoring
      def self.parse(xml)
        data = Types::Monitoring.new
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeInternetGateways
    class DescribeInternetGateways
      def self.parse(http_resp)
        data = Types::DescribeInternetGatewaysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('internetGatewaySet') do |node|
          children = node.children('item')
          data.internet_gateways = Parsers::InternetGatewayList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class InternetGatewayList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InternetGateway.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeIpamPools
    class DescribeIpamPools
      def self.parse(http_resp)
        data = Types::DescribeIpamPoolsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('ipamPoolSet') do |node|
          children = node.children('item')
          data.ipam_pools = Parsers::IpamPoolSet.parse(children)
        end
        data
      end
    end

    class IpamPoolSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::IpamPool.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeIpamScopes
    class DescribeIpamScopes
      def self.parse(http_resp)
        data = Types::DescribeIpamScopesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('ipamScopeSet') do |node|
          children = node.children('item')
          data.ipam_scopes = Parsers::IpamScopeSet.parse(children)
        end
        data
      end
    end

    class IpamScopeSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::IpamScope.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeIpams
    class DescribeIpams
      def self.parse(http_resp)
        data = Types::DescribeIpamsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('ipamSet') do |node|
          children = node.children('item')
          data.ipams = Parsers::IpamSet.parse(children)
        end
        data
      end
    end

    class IpamSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Ipam.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeIpv6Pools
    class DescribeIpv6Pools
      def self.parse(http_resp)
        data = Types::DescribeIpv6PoolsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipv6PoolSet') do |node|
          children = node.children('item')
          data.ipv6_pools = Parsers::Ipv6PoolSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class Ipv6PoolSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Ipv6Pool.parse(node)
        end
        data
      end
    end

    class Ipv6Pool
      def self.parse(xml)
        data = Types::Ipv6Pool.new
        xml.at('poolId') do |node|
          data.pool_id = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('poolCidrBlockSet') do |node|
          children = node.children('item')
          data.pool_cidr_blocks = Parsers::PoolCidrBlocksSet.parse(children)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class PoolCidrBlocksSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PoolCidrBlock.parse(node)
        end
        data
      end
    end

    class PoolCidrBlock
      def self.parse(xml)
        data = Types::PoolCidrBlock.new
        xml.at('poolCidrBlock') do |node|
          data.cidr = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeKeyPairs
    class DescribeKeyPairs
      def self.parse(http_resp)
        data = Types::DescribeKeyPairsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('keySet') do |node|
          children = node.children('item')
          data.key_pairs = Parsers::KeyPairList.parse(children)
        end
        data
      end
    end

    class KeyPairList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::KeyPairInfo.parse(node)
        end
        data
      end
    end

    class KeyPairInfo
      def self.parse(xml)
        data = Types::KeyPairInfo.new
        xml.at('keyPairId') do |node|
          data.key_pair_id = (node.text || '')
        end
        xml.at('keyFingerprint') do |node|
          data.key_fingerprint = (node.text || '')
        end
        xml.at('keyName') do |node|
          data.key_name = (node.text || '')
        end
        xml.at('keyType') do |node|
          data.key_type = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for DescribeLaunchTemplateVersions
    class DescribeLaunchTemplateVersions
      def self.parse(http_resp)
        data = Types::DescribeLaunchTemplateVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('launchTemplateVersionSet') do |node|
          children = node.children('item')
          data.launch_template_versions = Parsers::LaunchTemplateVersionSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class LaunchTemplateVersionSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LaunchTemplateVersion.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeLaunchTemplates
    class DescribeLaunchTemplates
      def self.parse(http_resp)
        data = Types::DescribeLaunchTemplatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('launchTemplates') do |node|
          children = node.children('item')
          data.launch_templates = Parsers::LaunchTemplateSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class LaunchTemplateSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LaunchTemplate.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
    class DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
      def self.parse(http_resp)
        data = Types::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('localGatewayRouteTableVirtualInterfaceGroupAssociationSet') do |node|
          children = node.children('item')
          data.local_gateway_route_table_virtual_interface_group_associations = Parsers::LocalGatewayRouteTableVirtualInterfaceGroupAssociationSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class LocalGatewayRouteTableVirtualInterfaceGroupAssociationSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LocalGatewayRouteTableVirtualInterfaceGroupAssociation.parse(node)
        end
        data
      end
    end

    class LocalGatewayRouteTableVirtualInterfaceGroupAssociation
      def self.parse(xml)
        data = Types::LocalGatewayRouteTableVirtualInterfaceGroupAssociation.new
        xml.at('localGatewayRouteTableVirtualInterfaceGroupAssociationId') do |node|
          data.local_gateway_route_table_virtual_interface_group_association_id = (node.text || '')
        end
        xml.at('localGatewayVirtualInterfaceGroupId') do |node|
          data.local_gateway_virtual_interface_group_id = (node.text || '')
        end
        xml.at('localGatewayId') do |node|
          data.local_gateway_id = (node.text || '')
        end
        xml.at('localGatewayRouteTableId') do |node|
          data.local_gateway_route_table_id = (node.text || '')
        end
        xml.at('localGatewayRouteTableArn') do |node|
          data.local_gateway_route_table_arn = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for DescribeLocalGatewayRouteTableVpcAssociations
    class DescribeLocalGatewayRouteTableVpcAssociations
      def self.parse(http_resp)
        data = Types::DescribeLocalGatewayRouteTableVpcAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('localGatewayRouteTableVpcAssociationSet') do |node|
          children = node.children('item')
          data.local_gateway_route_table_vpc_associations = Parsers::LocalGatewayRouteTableVpcAssociationSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class LocalGatewayRouteTableVpcAssociationSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LocalGatewayRouteTableVpcAssociation.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeLocalGatewayRouteTables
    class DescribeLocalGatewayRouteTables
      def self.parse(http_resp)
        data = Types::DescribeLocalGatewayRouteTablesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('localGatewayRouteTableSet') do |node|
          children = node.children('item')
          data.local_gateway_route_tables = Parsers::LocalGatewayRouteTableSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class LocalGatewayRouteTableSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LocalGatewayRouteTable.parse(node)
        end
        data
      end
    end

    class LocalGatewayRouteTable
      def self.parse(xml)
        data = Types::LocalGatewayRouteTable.new
        xml.at('localGatewayRouteTableId') do |node|
          data.local_gateway_route_table_id = (node.text || '')
        end
        xml.at('localGatewayRouteTableArn') do |node|
          data.local_gateway_route_table_arn = (node.text || '')
        end
        xml.at('localGatewayId') do |node|
          data.local_gateway_id = (node.text || '')
        end
        xml.at('outpostArn') do |node|
          data.outpost_arn = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for DescribeLocalGatewayVirtualInterfaceGroups
    class DescribeLocalGatewayVirtualInterfaceGroups
      def self.parse(http_resp)
        data = Types::DescribeLocalGatewayVirtualInterfaceGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('localGatewayVirtualInterfaceGroupSet') do |node|
          children = node.children('item')
          data.local_gateway_virtual_interface_groups = Parsers::LocalGatewayVirtualInterfaceGroupSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class LocalGatewayVirtualInterfaceGroupSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LocalGatewayVirtualInterfaceGroup.parse(node)
        end
        data
      end
    end

    class LocalGatewayVirtualInterfaceGroup
      def self.parse(xml)
        data = Types::LocalGatewayVirtualInterfaceGroup.new
        xml.at('localGatewayVirtualInterfaceGroupId') do |node|
          data.local_gateway_virtual_interface_group_id = (node.text || '')
        end
        xml.at('localGatewayVirtualInterfaceIdSet') do |node|
          children = node.children('item')
          data.local_gateway_virtual_interface_ids = Parsers::LocalGatewayVirtualInterfaceIdSet.parse(children)
        end
        xml.at('localGatewayId') do |node|
          data.local_gateway_id = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class LocalGatewayVirtualInterfaceIdSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeLocalGatewayVirtualInterfaces
    class DescribeLocalGatewayVirtualInterfaces
      def self.parse(http_resp)
        data = Types::DescribeLocalGatewayVirtualInterfacesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('localGatewayVirtualInterfaceSet') do |node|
          children = node.children('item')
          data.local_gateway_virtual_interfaces = Parsers::LocalGatewayVirtualInterfaceSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class LocalGatewayVirtualInterfaceSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LocalGatewayVirtualInterface.parse(node)
        end
        data
      end
    end

    class LocalGatewayVirtualInterface
      def self.parse(xml)
        data = Types::LocalGatewayVirtualInterface.new
        xml.at('localGatewayVirtualInterfaceId') do |node|
          data.local_gateway_virtual_interface_id = (node.text || '')
        end
        xml.at('localGatewayId') do |node|
          data.local_gateway_id = (node.text || '')
        end
        xml.at('vlan') do |node|
          data.vlan = node.text&.to_i
        end
        xml.at('localAddress') do |node|
          data.local_address = (node.text || '')
        end
        xml.at('peerAddress') do |node|
          data.peer_address = (node.text || '')
        end
        xml.at('localBgpAsn') do |node|
          data.local_bgp_asn = node.text&.to_i
        end
        xml.at('peerBgpAsn') do |node|
          data.peer_bgp_asn = node.text&.to_i
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for DescribeLocalGateways
    class DescribeLocalGateways
      def self.parse(http_resp)
        data = Types::DescribeLocalGatewaysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('localGatewaySet') do |node|
          children = node.children('item')
          data.local_gateways = Parsers::LocalGatewaySet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class LocalGatewaySet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LocalGateway.parse(node)
        end
        data
      end
    end

    class LocalGateway
      def self.parse(xml)
        data = Types::LocalGateway.new
        xml.at('localGatewayId') do |node|
          data.local_gateway_id = (node.text || '')
        end
        xml.at('outpostArn') do |node|
          data.outpost_arn = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for DescribeManagedPrefixLists
    class DescribeManagedPrefixLists
      def self.parse(http_resp)
        data = Types::DescribeManagedPrefixListsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('prefixListSet') do |node|
          children = node.children('item')
          data.prefix_lists = Parsers::ManagedPrefixListSet.parse(children)
        end
        data
      end
    end

    class ManagedPrefixListSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ManagedPrefixList.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeMovingAddresses
    class DescribeMovingAddresses
      def self.parse(http_resp)
        data = Types::DescribeMovingAddressesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('movingAddressStatusSet') do |node|
          children = node.children('item')
          data.moving_address_statuses = Parsers::MovingAddressStatusSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class MovingAddressStatusSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::MovingAddressStatus.parse(node)
        end
        data
      end
    end

    class MovingAddressStatus
      def self.parse(xml)
        data = Types::MovingAddressStatus.new
        xml.at('moveStatus') do |node|
          data.move_status = (node.text || '')
        end
        xml.at('publicIp') do |node|
          data.public_ip = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeNatGateways
    class DescribeNatGateways
      def self.parse(http_resp)
        data = Types::DescribeNatGatewaysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('natGatewaySet') do |node|
          children = node.children('item')
          data.nat_gateways = Parsers::NatGatewayList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class NatGatewayList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::NatGateway.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeNetworkAcls
    class DescribeNetworkAcls
      def self.parse(http_resp)
        data = Types::DescribeNetworkAclsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkAclSet') do |node|
          children = node.children('item')
          data.network_acls = Parsers::NetworkAclList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class NetworkAclList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::NetworkAcl.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeNetworkInsightsAccessScopeAnalyses
    class DescribeNetworkInsightsAccessScopeAnalyses
      def self.parse(http_resp)
        data = Types::DescribeNetworkInsightsAccessScopeAnalysesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkInsightsAccessScopeAnalysisSet') do |node|
          children = node.children('item')
          data.network_insights_access_scope_analyses = Parsers::NetworkInsightsAccessScopeAnalysisList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class NetworkInsightsAccessScopeAnalysisList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::NetworkInsightsAccessScopeAnalysis.parse(node)
        end
        data
      end
    end

    class NetworkInsightsAccessScopeAnalysis
      def self.parse(xml)
        data = Types::NetworkInsightsAccessScopeAnalysis.new
        xml.at('networkInsightsAccessScopeAnalysisId') do |node|
          data.network_insights_access_scope_analysis_id = (node.text || '')
        end
        xml.at('networkInsightsAccessScopeAnalysisArn') do |node|
          data.network_insights_access_scope_analysis_arn = (node.text || '')
        end
        xml.at('networkInsightsAccessScopeId') do |node|
          data.network_insights_access_scope_id = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        xml.at('warningMessage') do |node|
          data.warning_message = (node.text || '')
        end
        xml.at('startDate') do |node|
          data.start_date = Time.parse(node.text) if node.text
        end
        xml.at('endDate') do |node|
          data.end_date = Time.parse(node.text) if node.text
        end
        xml.at('findingsFound') do |node|
          data.findings_found = (node.text || '')
        end
        xml.at('analyzedEniCount') do |node|
          data.analyzed_eni_count = node.text&.to_i
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for DescribeNetworkInsightsAccessScopes
    class DescribeNetworkInsightsAccessScopes
      def self.parse(http_resp)
        data = Types::DescribeNetworkInsightsAccessScopesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkInsightsAccessScopeSet') do |node|
          children = node.children('item')
          data.network_insights_access_scopes = Parsers::NetworkInsightsAccessScopeList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class NetworkInsightsAccessScopeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::NetworkInsightsAccessScope.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeNetworkInsightsAnalyses
    class DescribeNetworkInsightsAnalyses
      def self.parse(http_resp)
        data = Types::DescribeNetworkInsightsAnalysesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkInsightsAnalysisSet') do |node|
          children = node.children('item')
          data.network_insights_analyses = Parsers::NetworkInsightsAnalysisList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class NetworkInsightsAnalysisList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::NetworkInsightsAnalysis.parse(node)
        end
        data
      end
    end

    class NetworkInsightsAnalysis
      def self.parse(xml)
        data = Types::NetworkInsightsAnalysis.new
        xml.at('networkInsightsAnalysisId') do |node|
          data.network_insights_analysis_id = (node.text || '')
        end
        xml.at('networkInsightsAnalysisArn') do |node|
          data.network_insights_analysis_arn = (node.text || '')
        end
        xml.at('networkInsightsPathId') do |node|
          data.network_insights_path_id = (node.text || '')
        end
        xml.at('filterInArnSet') do |node|
          children = node.children('item')
          data.filter_in_arns = Parsers::ArnList.parse(children)
        end
        xml.at('startDate') do |node|
          data.start_date = Time.parse(node.text) if node.text
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        xml.at('warningMessage') do |node|
          data.warning_message = (node.text || '')
        end
        xml.at('networkPathFound') do |node|
          data.network_path_found = (node.text == 'true')
        end
        xml.at('forwardPathComponentSet') do |node|
          children = node.children('item')
          data.forward_path_components = Parsers::PathComponentList.parse(children)
        end
        xml.at('returnPathComponentSet') do |node|
          children = node.children('item')
          data.return_path_components = Parsers::PathComponentList.parse(children)
        end
        xml.at('explanationSet') do |node|
          children = node.children('item')
          data.explanations = Parsers::ExplanationList.parse(children)
        end
        xml.at('alternatePathHintSet') do |node|
          children = node.children('item')
          data.alternate_path_hints = Parsers::AlternatePathHintList.parse(children)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class AlternatePathHintList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AlternatePathHint.parse(node)
        end
        data
      end
    end

    class AlternatePathHint
      def self.parse(xml)
        data = Types::AlternatePathHint.new
        xml.at('componentId') do |node|
          data.component_id = (node.text || '')
        end
        xml.at('componentArn') do |node|
          data.component_arn = (node.text || '')
        end
        return data
      end
    end

    class ExplanationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Explanation.parse(node)
        end
        data
      end
    end

    class Explanation
      def self.parse(xml)
        data = Types::Explanation.new
        xml.at('acl') do |node|
          data.acl = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('aclRule') do |node|
          data.acl_rule = Parsers::AnalysisAclRule.parse(node)
        end
        xml.at('address') do |node|
          data.address = (node.text || '')
        end
        xml.at('addressSet') do |node|
          children = node.children('item')
          data.addresses = Parsers::IpAddressList.parse(children)
        end
        xml.at('attachedTo') do |node|
          data.attached_to = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('availabilityZoneSet') do |node|
          children = node.children('item')
          data.availability_zones = Parsers::ValueStringList.parse(children)
        end
        xml.at('cidrSet') do |node|
          children = node.children('item')
          data.cidrs = Parsers::ValueStringList.parse(children)
        end
        xml.at('component') do |node|
          data.component = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('customerGateway') do |node|
          data.customer_gateway = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('destination') do |node|
          data.destination = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('destinationVpc') do |node|
          data.destination_vpc = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('direction') do |node|
          data.direction = (node.text || '')
        end
        xml.at('explanationCode') do |node|
          data.explanation_code = (node.text || '')
        end
        xml.at('ingressRouteTable') do |node|
          data.ingress_route_table = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('internetGateway') do |node|
          data.internet_gateway = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('loadBalancerArn') do |node|
          data.load_balancer_arn = (node.text || '')
        end
        xml.at('classicLoadBalancerListener') do |node|
          data.classic_load_balancer_listener = Parsers::AnalysisLoadBalancerListener.parse(node)
        end
        xml.at('loadBalancerListenerPort') do |node|
          data.load_balancer_listener_port = node.text&.to_i
        end
        xml.at('loadBalancerTarget') do |node|
          data.load_balancer_target = Parsers::AnalysisLoadBalancerTarget.parse(node)
        end
        xml.at('loadBalancerTargetGroup') do |node|
          data.load_balancer_target_group = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('loadBalancerTargetGroupSet') do |node|
          children = node.children('item')
          data.load_balancer_target_groups = Parsers::AnalysisComponentList.parse(children)
        end
        xml.at('loadBalancerTargetPort') do |node|
          data.load_balancer_target_port = node.text&.to_i
        end
        xml.at('elasticLoadBalancerListener') do |node|
          data.elastic_load_balancer_listener = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('missingComponent') do |node|
          data.missing_component = (node.text || '')
        end
        xml.at('natGateway') do |node|
          data.nat_gateway = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('networkInterface') do |node|
          data.network_interface = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('packetField') do |node|
          data.packet_field = (node.text || '')
        end
        xml.at('vpcPeeringConnection') do |node|
          data.vpc_peering_connection = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('portRangeSet') do |node|
          children = node.children('item')
          data.port_ranges = Parsers::PortRangeList.parse(children)
        end
        xml.at('prefixList') do |node|
          data.prefix_list = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('protocolSet') do |node|
          children = node.children('item')
          data.protocols = Parsers::StringList.parse(children)
        end
        xml.at('routeTableRoute') do |node|
          data.route_table_route = Parsers::AnalysisRouteTableRoute.parse(node)
        end
        xml.at('routeTable') do |node|
          data.route_table = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('securityGroup') do |node|
          data.security_group = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('securityGroupRule') do |node|
          data.security_group_rule = Parsers::AnalysisSecurityGroupRule.parse(node)
        end
        xml.at('securityGroupSet') do |node|
          children = node.children('item')
          data.security_groups = Parsers::AnalysisComponentList.parse(children)
        end
        xml.at('sourceVpc') do |node|
          data.source_vpc = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('subnet') do |node|
          data.subnet = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('subnetRouteTable') do |node|
          data.subnet_route_table = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('vpc') do |node|
          data.vpc = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('vpcEndpoint') do |node|
          data.vpc_endpoint = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('vpnConnection') do |node|
          data.vpn_connection = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('vpnGateway') do |node|
          data.vpn_gateway = Parsers::AnalysisComponent.parse(node)
        end
        return data
      end
    end

    class AnalysisComponent
      def self.parse(xml)
        data = Types::AnalysisComponent.new
        xml.at('id') do |node|
          data.id = (node.text || '')
        end
        xml.at('arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('name') do |node|
          data.member_name = (node.text || '')
        end
        return data
      end
    end

    class AnalysisComponentList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AnalysisComponent.parse(node)
        end
        data
      end
    end

    class AnalysisSecurityGroupRule
      def self.parse(xml)
        data = Types::AnalysisSecurityGroupRule.new
        xml.at('cidr') do |node|
          data.cidr = (node.text || '')
        end
        xml.at('direction') do |node|
          data.direction = (node.text || '')
        end
        xml.at('securityGroupId') do |node|
          data.security_group_id = (node.text || '')
        end
        xml.at('portRange') do |node|
          data.port_range = Parsers::PortRange.parse(node)
        end
        xml.at('prefixListId') do |node|
          data.prefix_list_id = (node.text || '')
        end
        xml.at('protocol') do |node|
          data.protocol = (node.text || '')
        end
        return data
      end
    end

    class AnalysisRouteTableRoute
      def self.parse(xml)
        data = Types::AnalysisRouteTableRoute.new
        xml.at('destinationCidr') do |node|
          data.destination_cidr = (node.text || '')
        end
        xml.at('destinationPrefixListId') do |node|
          data.destination_prefix_list_id = (node.text || '')
        end
        xml.at('egressOnlyInternetGatewayId') do |node|
          data.egress_only_internet_gateway_id = (node.text || '')
        end
        xml.at('gatewayId') do |node|
          data.gateway_id = (node.text || '')
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('natGatewayId') do |node|
          data.nat_gateway_id = (node.text || '')
        end
        xml.at('networkInterfaceId') do |node|
          data.network_interface_id = (node.text || '')
        end
        xml.at('origin') do |node|
          data.origin = (node.text || '')
        end
        xml.at('transitGatewayId') do |node|
          data.transit_gateway_id = (node.text || '')
        end
        xml.at('vpcPeeringConnectionId') do |node|
          data.vpc_peering_connection_id = (node.text || '')
        end
        return data
      end
    end

    class StringList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class PortRangeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PortRange.parse(node)
        end
        data
      end
    end

    class AnalysisLoadBalancerTarget
      def self.parse(xml)
        data = Types::AnalysisLoadBalancerTarget.new
        xml.at('address') do |node|
          data.address = (node.text || '')
        end
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('instance') do |node|
          data.instance = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('port') do |node|
          data.port = node.text&.to_i
        end
        return data
      end
    end

    class AnalysisLoadBalancerListener
      def self.parse(xml)
        data = Types::AnalysisLoadBalancerListener.new
        xml.at('loadBalancerPort') do |node|
          data.load_balancer_port = node.text&.to_i
        end
        xml.at('instancePort') do |node|
          data.instance_port = node.text&.to_i
        end
        return data
      end
    end

    class IpAddressList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class AnalysisAclRule
      def self.parse(xml)
        data = Types::AnalysisAclRule.new
        xml.at('cidr') do |node|
          data.cidr = (node.text || '')
        end
        xml.at('egress') do |node|
          data.egress = (node.text == 'true')
        end
        xml.at('portRange') do |node|
          data.port_range = Parsers::PortRange.parse(node)
        end
        xml.at('protocol') do |node|
          data.protocol = (node.text || '')
        end
        xml.at('ruleAction') do |node|
          data.rule_action = (node.text || '')
        end
        xml.at('ruleNumber') do |node|
          data.rule_number = node.text&.to_i
        end
        return data
      end
    end

    class PathComponentList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PathComponent.parse(node)
        end
        data
      end
    end

    class PathComponent
      def self.parse(xml)
        data = Types::PathComponent.new
        xml.at('sequenceNumber') do |node|
          data.sequence_number = node.text&.to_i
        end
        xml.at('aclRule') do |node|
          data.acl_rule = Parsers::AnalysisAclRule.parse(node)
        end
        xml.at('attachedTo') do |node|
          data.attached_to = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('component') do |node|
          data.component = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('destinationVpc') do |node|
          data.destination_vpc = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('outboundHeader') do |node|
          data.outbound_header = Parsers::AnalysisPacketHeader.parse(node)
        end
        xml.at('inboundHeader') do |node|
          data.inbound_header = Parsers::AnalysisPacketHeader.parse(node)
        end
        xml.at('routeTableRoute') do |node|
          data.route_table_route = Parsers::AnalysisRouteTableRoute.parse(node)
        end
        xml.at('securityGroupRule') do |node|
          data.security_group_rule = Parsers::AnalysisSecurityGroupRule.parse(node)
        end
        xml.at('sourceVpc') do |node|
          data.source_vpc = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('subnet') do |node|
          data.subnet = Parsers::AnalysisComponent.parse(node)
        end
        xml.at('vpc') do |node|
          data.vpc = Parsers::AnalysisComponent.parse(node)
        end
        return data
      end
    end

    class AnalysisPacketHeader
      def self.parse(xml)
        data = Types::AnalysisPacketHeader.new
        xml.at('destinationAddressSet') do |node|
          children = node.children('item')
          data.destination_addresses = Parsers::IpAddressList.parse(children)
        end
        xml.at('destinationPortRangeSet') do |node|
          children = node.children('item')
          data.destination_port_ranges = Parsers::PortRangeList.parse(children)
        end
        xml.at('protocol') do |node|
          data.protocol = (node.text || '')
        end
        xml.at('sourceAddressSet') do |node|
          children = node.children('item')
          data.source_addresses = Parsers::IpAddressList.parse(children)
        end
        xml.at('sourcePortRangeSet') do |node|
          children = node.children('item')
          data.source_port_ranges = Parsers::PortRangeList.parse(children)
        end
        return data
      end
    end

    class ArnList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeNetworkInsightsPaths
    class DescribeNetworkInsightsPaths
      def self.parse(http_resp)
        data = Types::DescribeNetworkInsightsPathsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkInsightsPathSet') do |node|
          children = node.children('item')
          data.network_insights_paths = Parsers::NetworkInsightsPathList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class NetworkInsightsPathList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::NetworkInsightsPath.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeNetworkInterfaceAttribute
    class DescribeNetworkInterfaceAttribute
      def self.parse(http_resp)
        data = Types::DescribeNetworkInterfaceAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('attachment') do |node|
          data.attachment = Parsers::NetworkInterfaceAttachment.parse(node)
        end
        xml.at('description') do |node|
          data.description = Parsers::AttributeValue.parse(node)
        end
        xml.at('groupSet') do |node|
          children = node.children('item')
          data.groups = Parsers::GroupIdentifierList.parse(children)
        end
        xml.at('networkInterfaceId') do |node|
          data.network_interface_id = (node.text || '')
        end
        xml.at('sourceDestCheck') do |node|
          data.source_dest_check = Parsers::AttributeBooleanValue.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeNetworkInterfacePermissions
    class DescribeNetworkInterfacePermissions
      def self.parse(http_resp)
        data = Types::DescribeNetworkInterfacePermissionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkInterfacePermissions') do |node|
          children = node.children('item')
          data.network_interface_permissions = Parsers::NetworkInterfacePermissionList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class NetworkInterfacePermissionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::NetworkInterfacePermission.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeNetworkInterfaces
    class DescribeNetworkInterfaces
      def self.parse(http_resp)
        data = Types::DescribeNetworkInterfacesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkInterfaceSet') do |node|
          children = node.children('item')
          data.network_interfaces = Parsers::NetworkInterfaceList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class NetworkInterfaceList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::NetworkInterface.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribePlacementGroups
    class DescribePlacementGroups
      def self.parse(http_resp)
        data = Types::DescribePlacementGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('placementGroupSet') do |node|
          children = node.children('item')
          data.placement_groups = Parsers::PlacementGroupList.parse(children)
        end
        data
      end
    end

    class PlacementGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PlacementGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribePrefixLists
    class DescribePrefixLists
      def self.parse(http_resp)
        data = Types::DescribePrefixListsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('prefixListSet') do |node|
          children = node.children('item')
          data.prefix_lists = Parsers::PrefixListSet.parse(children)
        end
        data
      end
    end

    class PrefixListSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PrefixList.parse(node)
        end
        data
      end
    end

    class PrefixList
      def self.parse(xml)
        data = Types::PrefixList.new
        xml.at('cidrSet') do |node|
          children = node.children('item')
          data.cidrs = Parsers::ValueStringList.parse(children)
        end
        xml.at('prefixListId') do |node|
          data.prefix_list_id = (node.text || '')
        end
        xml.at('prefixListName') do |node|
          data.prefix_list_name = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribePrincipalIdFormat
    class DescribePrincipalIdFormat
      def self.parse(http_resp)
        data = Types::DescribePrincipalIdFormatOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('principalSet') do |node|
          children = node.children('item')
          data.principals = Parsers::PrincipalIdFormatList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class PrincipalIdFormatList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PrincipalIdFormat.parse(node)
        end
        data
      end
    end

    class PrincipalIdFormat
      def self.parse(xml)
        data = Types::PrincipalIdFormat.new
        xml.at('arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('statusSet') do |node|
          children = node.children('item')
          data.statuses = Parsers::IdFormatList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for DescribePublicIpv4Pools
    class DescribePublicIpv4Pools
      def self.parse(http_resp)
        data = Types::DescribePublicIpv4PoolsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('publicIpv4PoolSet') do |node|
          children = node.children('item')
          data.public_ipv4_pools = Parsers::PublicIpv4PoolSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class PublicIpv4PoolSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PublicIpv4Pool.parse(node)
        end
        data
      end
    end

    class PublicIpv4Pool
      def self.parse(xml)
        data = Types::PublicIpv4Pool.new
        xml.at('poolId') do |node|
          data.pool_id = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('poolAddressRangeSet') do |node|
          children = node.children('item')
          data.pool_address_ranges = Parsers::PublicIpv4PoolRangeSet.parse(children)
        end
        xml.at('totalAddressCount') do |node|
          data.total_address_count = node.text&.to_i
        end
        xml.at('totalAvailableAddressCount') do |node|
          data.total_available_address_count = node.text&.to_i
        end
        xml.at('networkBorderGroup') do |node|
          data.network_border_group = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class PublicIpv4PoolRangeSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PublicIpv4PoolRange.parse(node)
        end
        data
      end
    end

    class PublicIpv4PoolRange
      def self.parse(xml)
        data = Types::PublicIpv4PoolRange.new
        xml.at('firstAddress') do |node|
          data.first_address = (node.text || '')
        end
        xml.at('lastAddress') do |node|
          data.last_address = (node.text || '')
        end
        xml.at('addressCount') do |node|
          data.address_count = node.text&.to_i
        end
        xml.at('availableAddressCount') do |node|
          data.available_address_count = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for DescribeRegions
    class DescribeRegions
      def self.parse(http_resp)
        data = Types::DescribeRegionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('regionInfo') do |node|
          children = node.children('item')
          data.regions = Parsers::RegionList.parse(children)
        end
        data
      end
    end

    class RegionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Region.parse(node)
        end
        data
      end
    end

    class Region
      def self.parse(xml)
        data = Types::Region.new
        xml.at('regionEndpoint') do |node|
          data.endpoint = (node.text || '')
        end
        xml.at('regionName') do |node|
          data.region_name = (node.text || '')
        end
        xml.at('optInStatus') do |node|
          data.opt_in_status = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeReplaceRootVolumeTasks
    class DescribeReplaceRootVolumeTasks
      def self.parse(http_resp)
        data = Types::DescribeReplaceRootVolumeTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('replaceRootVolumeTaskSet') do |node|
          children = node.children('item')
          data.replace_root_volume_tasks = Parsers::ReplaceRootVolumeTasks.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ReplaceRootVolumeTasks
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ReplaceRootVolumeTask.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeReservedInstances
    class DescribeReservedInstances
      def self.parse(http_resp)
        data = Types::DescribeReservedInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('reservedInstancesSet') do |node|
          children = node.children('item')
          data.reserved_instances = Parsers::ReservedInstancesList.parse(children)
        end
        data
      end
    end

    class ReservedInstancesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ReservedInstances.parse(node)
        end
        data
      end
    end

    class ReservedInstances
      def self.parse(xml)
        data = Types::ReservedInstances.new
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('duration') do |node|
          data.duration = node.text&.to_i
        end
        xml.at('end') do |node|
          data.end = Time.parse(node.text) if node.text
        end
        xml.at('fixedPrice') do |node|
          data.fixed_price = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('instanceCount') do |node|
          data.instance_count = node.text&.to_i
        end
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('productDescription') do |node|
          data.product_description = (node.text || '')
        end
        xml.at('reservedInstancesId') do |node|
          data.reserved_instances_id = (node.text || '')
        end
        xml.at('start') do |node|
          data.start = Time.parse(node.text) if node.text
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('usagePrice') do |node|
          data.usage_price = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('currencyCode') do |node|
          data.currency_code = (node.text || '')
        end
        xml.at('instanceTenancy') do |node|
          data.instance_tenancy = (node.text || '')
        end
        xml.at('offeringClass') do |node|
          data.offering_class = (node.text || '')
        end
        xml.at('offeringType') do |node|
          data.offering_type = (node.text || '')
        end
        xml.at('recurringCharges') do |node|
          children = node.children('item')
          data.recurring_charges = Parsers::RecurringChargesList.parse(children)
        end
        xml.at('scope') do |node|
          data.scope = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class RecurringChargesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::RecurringCharge.parse(node)
        end
        data
      end
    end

    class RecurringCharge
      def self.parse(xml)
        data = Types::RecurringCharge.new
        xml.at('amount') do |node|
          data.amount = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('frequency') do |node|
          data.frequency = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeReservedInstancesListings
    class DescribeReservedInstancesListings
      def self.parse(http_resp)
        data = Types::DescribeReservedInstancesListingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('reservedInstancesListingsSet') do |node|
          children = node.children('item')
          data.reserved_instances_listings = Parsers::ReservedInstancesListingList.parse(children)
        end
        data
      end
    end

    # Operation Parser for DescribeReservedInstancesModifications
    class DescribeReservedInstancesModifications
      def self.parse(http_resp)
        data = Types::DescribeReservedInstancesModificationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('reservedInstancesModificationsSet') do |node|
          children = node.children('item')
          data.reserved_instances_modifications = Parsers::ReservedInstancesModificationList.parse(children)
        end
        data
      end
    end

    class ReservedInstancesModificationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ReservedInstancesModification.parse(node)
        end
        data
      end
    end

    class ReservedInstancesModification
      def self.parse(xml)
        data = Types::ReservedInstancesModification.new
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        xml.at('createDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        xml.at('effectiveDate') do |node|
          data.effective_date = Time.parse(node.text) if node.text
        end
        xml.at('modificationResultSet') do |node|
          children = node.children('item')
          data.modification_results = Parsers::ReservedInstancesModificationResultList.parse(children)
        end
        xml.at('reservedInstancesSet') do |node|
          children = node.children('item')
          data.reserved_instances_ids = Parsers::ReservedIntancesIds.parse(children)
        end
        xml.at('reservedInstancesModificationId') do |node|
          data.reserved_instances_modification_id = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        xml.at('updateDate') do |node|
          data.update_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class ReservedIntancesIds
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ReservedInstancesId.parse(node)
        end
        data
      end
    end

    class ReservedInstancesId
      def self.parse(xml)
        data = Types::ReservedInstancesId.new
        xml.at('reservedInstancesId') do |node|
          data.reserved_instances_id = (node.text || '')
        end
        return data
      end
    end

    class ReservedInstancesModificationResultList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ReservedInstancesModificationResult.parse(node)
        end
        data
      end
    end

    class ReservedInstancesModificationResult
      def self.parse(xml)
        data = Types::ReservedInstancesModificationResult.new
        xml.at('reservedInstancesId') do |node|
          data.reserved_instances_id = (node.text || '')
        end
        xml.at('targetConfiguration') do |node|
          data.target_configuration = Parsers::ReservedInstancesConfiguration.parse(node)
        end
        return data
      end
    end

    class ReservedInstancesConfiguration
      def self.parse(xml)
        data = Types::ReservedInstancesConfiguration.new
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('instanceCount') do |node|
          data.instance_count = node.text&.to_i
        end
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('platform') do |node|
          data.platform = (node.text || '')
        end
        xml.at('scope') do |node|
          data.scope = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeReservedInstancesOfferings
    class DescribeReservedInstancesOfferings
      def self.parse(http_resp)
        data = Types::DescribeReservedInstancesOfferingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('reservedInstancesOfferingsSet') do |node|
          children = node.children('item')
          data.reserved_instances_offerings = Parsers::ReservedInstancesOfferingList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ReservedInstancesOfferingList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ReservedInstancesOffering.parse(node)
        end
        data
      end
    end

    class ReservedInstancesOffering
      def self.parse(xml)
        data = Types::ReservedInstancesOffering.new
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('duration') do |node|
          data.duration = node.text&.to_i
        end
        xml.at('fixedPrice') do |node|
          data.fixed_price = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('productDescription') do |node|
          data.product_description = (node.text || '')
        end
        xml.at('reservedInstancesOfferingId') do |node|
          data.reserved_instances_offering_id = (node.text || '')
        end
        xml.at('usagePrice') do |node|
          data.usage_price = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('currencyCode') do |node|
          data.currency_code = (node.text || '')
        end
        xml.at('instanceTenancy') do |node|
          data.instance_tenancy = (node.text || '')
        end
        xml.at('marketplace') do |node|
          data.marketplace = (node.text == 'true')
        end
        xml.at('offeringClass') do |node|
          data.offering_class = (node.text || '')
        end
        xml.at('offeringType') do |node|
          data.offering_type = (node.text || '')
        end
        xml.at('pricingDetailsSet') do |node|
          children = node.children('item')
          data.pricing_details = Parsers::PricingDetailsList.parse(children)
        end
        xml.at('recurringCharges') do |node|
          children = node.children('item')
          data.recurring_charges = Parsers::RecurringChargesList.parse(children)
        end
        xml.at('scope') do |node|
          data.scope = (node.text || '')
        end
        return data
      end
    end

    class PricingDetailsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PricingDetail.parse(node)
        end
        data
      end
    end

    class PricingDetail
      def self.parse(xml)
        data = Types::PricingDetail.new
        xml.at('count') do |node|
          data.count = node.text&.to_i
        end
        xml.at('price') do |node|
          data.price = Hearth::NumberHelper.deserialize(node.text)
        end
        return data
      end
    end

    # Operation Parser for DescribeRouteTables
    class DescribeRouteTables
      def self.parse(http_resp)
        data = Types::DescribeRouteTablesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('routeTableSet') do |node|
          children = node.children('item')
          data.route_tables = Parsers::RouteTableList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class RouteTableList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::RouteTable.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeScheduledInstanceAvailability
    class DescribeScheduledInstanceAvailability
      def self.parse(http_resp)
        data = Types::DescribeScheduledInstanceAvailabilityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('scheduledInstanceAvailabilitySet') do |node|
          children = node.children('item')
          data.scheduled_instance_availability_set = Parsers::ScheduledInstanceAvailabilitySet.parse(children)
        end
        data
      end
    end

    class ScheduledInstanceAvailabilitySet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ScheduledInstanceAvailability.parse(node)
        end
        data
      end
    end

    class ScheduledInstanceAvailability
      def self.parse(xml)
        data = Types::ScheduledInstanceAvailability.new
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('availableInstanceCount') do |node|
          data.available_instance_count = node.text&.to_i
        end
        xml.at('firstSlotStartTime') do |node|
          data.first_slot_start_time = Time.parse(node.text) if node.text
        end
        xml.at('hourlyPrice') do |node|
          data.hourly_price = (node.text || '')
        end
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('maxTermDurationInDays') do |node|
          data.max_term_duration_in_days = node.text&.to_i
        end
        xml.at('minTermDurationInDays') do |node|
          data.min_term_duration_in_days = node.text&.to_i
        end
        xml.at('networkPlatform') do |node|
          data.network_platform = (node.text || '')
        end
        xml.at('platform') do |node|
          data.platform = (node.text || '')
        end
        xml.at('purchaseToken') do |node|
          data.purchase_token = (node.text || '')
        end
        xml.at('recurrence') do |node|
          data.recurrence = Parsers::ScheduledInstanceRecurrence.parse(node)
        end
        xml.at('slotDurationInHours') do |node|
          data.slot_duration_in_hours = node.text&.to_i
        end
        xml.at('totalScheduledInstanceHours') do |node|
          data.total_scheduled_instance_hours = node.text&.to_i
        end
        return data
      end
    end

    class ScheduledInstanceRecurrence
      def self.parse(xml)
        data = Types::ScheduledInstanceRecurrence.new
        xml.at('frequency') do |node|
          data.frequency = (node.text || '')
        end
        xml.at('interval') do |node|
          data.interval = node.text&.to_i
        end
        xml.at('occurrenceDaySet') do |node|
          children = node.children('item')
          data.occurrence_day_set = Parsers::OccurrenceDaySet.parse(children)
        end
        xml.at('occurrenceRelativeToEnd') do |node|
          data.occurrence_relative_to_end = (node.text == 'true')
        end
        xml.at('occurrenceUnit') do |node|
          data.occurrence_unit = (node.text || '')
        end
        return data
      end
    end

    class OccurrenceDaySet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << node.text&.to_i
        end
        data
      end
    end

    # Operation Parser for DescribeScheduledInstances
    class DescribeScheduledInstances
      def self.parse(http_resp)
        data = Types::DescribeScheduledInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('scheduledInstanceSet') do |node|
          children = node.children('item')
          data.scheduled_instance_set = Parsers::ScheduledInstanceSet.parse(children)
        end
        data
      end
    end

    class ScheduledInstanceSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ScheduledInstance.parse(node)
        end
        data
      end
    end

    class ScheduledInstance
      def self.parse(xml)
        data = Types::ScheduledInstance.new
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('createDate') do |node|
          data.create_date = Time.parse(node.text) if node.text
        end
        xml.at('hourlyPrice') do |node|
          data.hourly_price = (node.text || '')
        end
        xml.at('instanceCount') do |node|
          data.instance_count = node.text&.to_i
        end
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('networkPlatform') do |node|
          data.network_platform = (node.text || '')
        end
        xml.at('nextSlotStartTime') do |node|
          data.next_slot_start_time = Time.parse(node.text) if node.text
        end
        xml.at('platform') do |node|
          data.platform = (node.text || '')
        end
        xml.at('previousSlotEndTime') do |node|
          data.previous_slot_end_time = Time.parse(node.text) if node.text
        end
        xml.at('recurrence') do |node|
          data.recurrence = Parsers::ScheduledInstanceRecurrence.parse(node)
        end
        xml.at('scheduledInstanceId') do |node|
          data.scheduled_instance_id = (node.text || '')
        end
        xml.at('slotDurationInHours') do |node|
          data.slot_duration_in_hours = node.text&.to_i
        end
        xml.at('termEndDate') do |node|
          data.term_end_date = Time.parse(node.text) if node.text
        end
        xml.at('termStartDate') do |node|
          data.term_start_date = Time.parse(node.text) if node.text
        end
        xml.at('totalScheduledInstanceHours') do |node|
          data.total_scheduled_instance_hours = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for DescribeSecurityGroupReferences
    class DescribeSecurityGroupReferences
      def self.parse(http_resp)
        data = Types::DescribeSecurityGroupReferencesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('securityGroupReferenceSet') do |node|
          children = node.children('item')
          data.security_group_reference_set = Parsers::SecurityGroupReferences.parse(children)
        end
        data
      end
    end

    class SecurityGroupReferences
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SecurityGroupReference.parse(node)
        end
        data
      end
    end

    class SecurityGroupReference
      def self.parse(xml)
        data = Types::SecurityGroupReference.new
        xml.at('groupId') do |node|
          data.group_id = (node.text || '')
        end
        xml.at('referencingVpcId') do |node|
          data.referencing_vpc_id = (node.text || '')
        end
        xml.at('vpcPeeringConnectionId') do |node|
          data.vpc_peering_connection_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeSecurityGroupRules
    class DescribeSecurityGroupRules
      def self.parse(http_resp)
        data = Types::DescribeSecurityGroupRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('securityGroupRuleSet') do |node|
          children = node.children('item')
          data.security_group_rules = Parsers::SecurityGroupRuleList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeSecurityGroups
    class DescribeSecurityGroups
      def self.parse(http_resp)
        data = Types::DescribeSecurityGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('securityGroupInfo') do |node|
          children = node.children('item')
          data.security_groups = Parsers::SecurityGroupList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class SecurityGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SecurityGroup.parse(node)
        end
        data
      end
    end

    class SecurityGroup
      def self.parse(xml)
        data = Types::SecurityGroup.new
        xml.at('groupDescription') do |node|
          data.description = (node.text || '')
        end
        xml.at('groupName') do |node|
          data.group_name = (node.text || '')
        end
        xml.at('ipPermissions') do |node|
          children = node.children('item')
          data.ip_permissions = Parsers::IpPermissionList.parse(children)
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('groupId') do |node|
          data.group_id = (node.text || '')
        end
        xml.at('ipPermissionsEgress') do |node|
          children = node.children('item')
          data.ip_permissions_egress = Parsers::IpPermissionList.parse(children)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        return data
      end
    end

    class IpPermissionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::IpPermission.parse(node)
        end
        data
      end
    end

    class IpPermission
      def self.parse(xml)
        data = Types::IpPermission.new
        xml.at('fromPort') do |node|
          data.from_port = node.text&.to_i
        end
        xml.at('ipProtocol') do |node|
          data.ip_protocol = (node.text || '')
        end
        xml.at('ipRanges') do |node|
          children = node.children('item')
          data.ip_ranges = Parsers::IpRangeList.parse(children)
        end
        xml.at('ipv6Ranges') do |node|
          children = node.children('item')
          data.ipv6_ranges = Parsers::Ipv6RangeList.parse(children)
        end
        xml.at('prefixListIds') do |node|
          children = node.children('item')
          data.prefix_list_ids = Parsers::PrefixListIdList.parse(children)
        end
        xml.at('toPort') do |node|
          data.to_port = node.text&.to_i
        end
        xml.at('groups') do |node|
          children = node.children('item')
          data.user_id_group_pairs = Parsers::UserIdGroupPairList.parse(children)
        end
        return data
      end
    end

    class UserIdGroupPairList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::UserIdGroupPair.parse(node)
        end
        data
      end
    end

    class UserIdGroupPair
      def self.parse(xml)
        data = Types::UserIdGroupPair.new
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('groupId') do |node|
          data.group_id = (node.text || '')
        end
        xml.at('groupName') do |node|
          data.group_name = (node.text || '')
        end
        xml.at('peeringStatus') do |node|
          data.peering_status = (node.text || '')
        end
        xml.at('userId') do |node|
          data.user_id = (node.text || '')
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('vpcPeeringConnectionId') do |node|
          data.vpc_peering_connection_id = (node.text || '')
        end
        return data
      end
    end

    class PrefixListIdList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PrefixListId.parse(node)
        end
        data
      end
    end

    class PrefixListId
      def self.parse(xml)
        data = Types::PrefixListId.new
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('prefixListId') do |node|
          data.prefix_list_id = (node.text || '')
        end
        return data
      end
    end

    class Ipv6RangeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Ipv6Range.parse(node)
        end
        data
      end
    end

    class Ipv6Range
      def self.parse(xml)
        data = Types::Ipv6Range.new
        xml.at('cidrIpv6') do |node|
          data.cidr_ipv6 = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        return data
      end
    end

    class IpRangeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::IpRange.parse(node)
        end
        data
      end
    end

    class IpRange
      def self.parse(xml)
        data = Types::IpRange.new
        xml.at('cidrIp') do |node|
          data.cidr_ip = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeSnapshotAttribute
    class DescribeSnapshotAttribute
      def self.parse(http_resp)
        data = Types::DescribeSnapshotAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('createVolumePermission') do |node|
          children = node.children('item')
          data.create_volume_permissions = Parsers::CreateVolumePermissionList.parse(children)
        end
        xml.at('productCodes') do |node|
          children = node.children('item')
          data.product_codes = Parsers::ProductCodeList.parse(children)
        end
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        data
      end
    end

    class CreateVolumePermissionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CreateVolumePermission.parse(node)
        end
        data
      end
    end

    class CreateVolumePermission
      def self.parse(xml)
        data = Types::CreateVolumePermission.new
        xml.at('group') do |node|
          data.group = (node.text || '')
        end
        xml.at('userId') do |node|
          data.user_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeSnapshotTierStatus
    class DescribeSnapshotTierStatus
      def self.parse(http_resp)
        data = Types::DescribeSnapshotTierStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('snapshotTierStatusSet') do |node|
          children = node.children('item')
          data.snapshot_tier_statuses = Parsers::SnapshotTierStatusSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class SnapshotTierStatusSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SnapshotTierStatus.parse(node)
        end
        data
      end
    end

    class SnapshotTierStatus
      def self.parse(xml)
        data = Types::SnapshotTierStatus.new
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('volumeId') do |node|
          data.volume_id = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('storageTier') do |node|
          data.storage_tier = (node.text || '')
        end
        xml.at('lastTieringStartTime') do |node|
          data.last_tiering_start_time = Time.parse(node.text) if node.text
        end
        xml.at('lastTieringProgress') do |node|
          data.last_tiering_progress = node.text&.to_i
        end
        xml.at('lastTieringOperationStatus') do |node|
          data.last_tiering_operation_status = (node.text || '')
        end
        xml.at('lastTieringOperationStatusDetail') do |node|
          data.last_tiering_operation_status_detail = (node.text || '')
        end
        xml.at('archivalCompleteTime') do |node|
          data.archival_complete_time = Time.parse(node.text) if node.text
        end
        xml.at('restoreExpiryTime') do |node|
          data.restore_expiry_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for DescribeSnapshots
    class DescribeSnapshots
      def self.parse(http_resp)
        data = Types::DescribeSnapshotsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('snapshotSet') do |node|
          children = node.children('item')
          data.snapshots = Parsers::SnapshotList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class SnapshotList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Snapshot.parse(node)
        end
        data
      end
    end

    class Snapshot
      def self.parse(xml)
        data = Types::Snapshot.new
        xml.at('dataEncryptionKeyId') do |node|
          data.data_encryption_key_id = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('encrypted') do |node|
          data.encrypted = (node.text == 'true')
        end
        xml.at('kmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('progress') do |node|
          data.progress = (node.text || '')
        end
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('startTime') do |node|
          data.start_time = Time.parse(node.text) if node.text
        end
        xml.at('status') do |node|
          data.state = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.state_message = (node.text || '')
        end
        xml.at('volumeId') do |node|
          data.volume_id = (node.text || '')
        end
        xml.at('volumeSize') do |node|
          data.volume_size = node.text&.to_i
        end
        xml.at('ownerAlias') do |node|
          data.owner_alias = (node.text || '')
        end
        xml.at('outpostArn') do |node|
          data.outpost_arn = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('storageTier') do |node|
          data.storage_tier = (node.text || '')
        end
        xml.at('restoreExpiryTime') do |node|
          data.restore_expiry_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for DescribeSpotDatafeedSubscription
    class DescribeSpotDatafeedSubscription
      def self.parse(http_resp)
        data = Types::DescribeSpotDatafeedSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('spotDatafeedSubscription') do |node|
          data.spot_datafeed_subscription = Parsers::SpotDatafeedSubscription.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeSpotFleetInstances
    class DescribeSpotFleetInstances
      def self.parse(http_resp)
        data = Types::DescribeSpotFleetInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('activeInstanceSet') do |node|
          children = node.children('item')
          data.active_instances = Parsers::ActiveInstanceSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('spotFleetRequestId') do |node|
          data.spot_fleet_request_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeSpotFleetRequestHistory
    class DescribeSpotFleetRequestHistory
      def self.parse(http_resp)
        data = Types::DescribeSpotFleetRequestHistoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('historyRecordSet') do |node|
          children = node.children('item')
          data.history_records = Parsers::HistoryRecords.parse(children)
        end
        xml.at('lastEvaluatedTime') do |node|
          data.last_evaluated_time = Time.parse(node.text) if node.text
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('spotFleetRequestId') do |node|
          data.spot_fleet_request_id = (node.text || '')
        end
        xml.at('startTime') do |node|
          data.start_time = Time.parse(node.text) if node.text
        end
        data
      end
    end

    class HistoryRecords
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::HistoryRecord.parse(node)
        end
        data
      end
    end

    class HistoryRecord
      def self.parse(xml)
        data = Types::HistoryRecord.new
        xml.at('eventInformation') do |node|
          data.event_information = Parsers::EventInformation.parse(node)
        end
        xml.at('eventType') do |node|
          data.event_type = (node.text || '')
        end
        xml.at('timestamp') do |node|
          data.timestamp = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for DescribeSpotFleetRequests
    class DescribeSpotFleetRequests
      def self.parse(http_resp)
        data = Types::DescribeSpotFleetRequestsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('spotFleetRequestConfigSet') do |node|
          children = node.children('item')
          data.spot_fleet_request_configs = Parsers::SpotFleetRequestConfigSet.parse(children)
        end
        data
      end
    end

    class SpotFleetRequestConfigSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SpotFleetRequestConfig.parse(node)
        end
        data
      end
    end

    class SpotFleetRequestConfig
      def self.parse(xml)
        data = Types::SpotFleetRequestConfig.new
        xml.at('activityStatus') do |node|
          data.activity_status = (node.text || '')
        end
        xml.at('createTime') do |node|
          data.create_time = Time.parse(node.text) if node.text
        end
        xml.at('spotFleetRequestConfig') do |node|
          data.spot_fleet_request_config = Parsers::SpotFleetRequestConfigData.parse(node)
        end
        xml.at('spotFleetRequestId') do |node|
          data.spot_fleet_request_id = (node.text || '')
        end
        xml.at('spotFleetRequestState') do |node|
          data.spot_fleet_request_state = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class SpotFleetRequestConfigData
      def self.parse(xml)
        data = Types::SpotFleetRequestConfigData.new
        xml.at('allocationStrategy') do |node|
          data.allocation_strategy = (node.text || '')
        end
        xml.at('onDemandAllocationStrategy') do |node|
          data.on_demand_allocation_strategy = (node.text || '')
        end
        xml.at('spotMaintenanceStrategies') do |node|
          data.spot_maintenance_strategies = Parsers::SpotMaintenanceStrategies.parse(node)
        end
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        xml.at('excessCapacityTerminationPolicy') do |node|
          data.excess_capacity_termination_policy = (node.text || '')
        end
        xml.at('fulfilledCapacity') do |node|
          data.fulfilled_capacity = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('onDemandFulfilledCapacity') do |node|
          data.on_demand_fulfilled_capacity = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('iamFleetRole') do |node|
          data.iam_fleet_role = (node.text || '')
        end
        xml.at('launchSpecifications') do |node|
          children = node.children('item')
          data.launch_specifications = Parsers::LaunchSpecsList.parse(children)
        end
        xml.at('launchTemplateConfigs') do |node|
          children = node.children('item')
          data.launch_template_configs = Parsers::LaunchTemplateConfigList.parse(children)
        end
        xml.at('spotPrice') do |node|
          data.spot_price = (node.text || '')
        end
        xml.at('targetCapacity') do |node|
          data.target_capacity = node.text&.to_i
        end
        xml.at('onDemandTargetCapacity') do |node|
          data.on_demand_target_capacity = node.text&.to_i
        end
        xml.at('onDemandMaxTotalPrice') do |node|
          data.on_demand_max_total_price = (node.text || '')
        end
        xml.at('spotMaxTotalPrice') do |node|
          data.spot_max_total_price = (node.text || '')
        end
        xml.at('terminateInstancesWithExpiration') do |node|
          data.terminate_instances_with_expiration = (node.text == 'true')
        end
        xml.at('type') do |node|
          data.type = (node.text || '')
        end
        xml.at('validFrom') do |node|
          data.valid_from = Time.parse(node.text) if node.text
        end
        xml.at('validUntil') do |node|
          data.valid_until = Time.parse(node.text) if node.text
        end
        xml.at('replaceUnhealthyInstances') do |node|
          data.replace_unhealthy_instances = (node.text == 'true')
        end
        xml.at('instanceInterruptionBehavior') do |node|
          data.instance_interruption_behavior = (node.text || '')
        end
        xml.at('loadBalancersConfig') do |node|
          data.load_balancers_config = Parsers::LoadBalancersConfig.parse(node)
        end
        xml.at('instancePoolsToUseCount') do |node|
          data.instance_pools_to_use_count = node.text&.to_i
        end
        xml.at('context') do |node|
          data.context = (node.text || '')
        end
        xml.at('targetCapacityUnitType') do |node|
          data.target_capacity_unit_type = (node.text || '')
        end
        xml.at('TagSpecification') do |node|
          children = node.children('item')
          data.tag_specifications = Parsers::TagSpecificationList.parse(children)
        end
        return data
      end
    end

    class TagSpecificationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TagSpecification.parse(node)
        end
        data
      end
    end

    class TagSpecification
      def self.parse(xml)
        data = Types::TagSpecification.new
        xml.at('resourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('Tag') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class LoadBalancersConfig
      def self.parse(xml)
        data = Types::LoadBalancersConfig.new
        xml.at('classicLoadBalancersConfig') do |node|
          data.classic_load_balancers_config = Parsers::ClassicLoadBalancersConfig.parse(node)
        end
        xml.at('targetGroupsConfig') do |node|
          data.target_groups_config = Parsers::TargetGroupsConfig.parse(node)
        end
        return data
      end
    end

    class TargetGroupsConfig
      def self.parse(xml)
        data = Types::TargetGroupsConfig.new
        xml.at('targetGroups') do |node|
          children = node.children('item')
          data.target_groups = Parsers::TargetGroups.parse(children)
        end
        return data
      end
    end

    class TargetGroups
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TargetGroup.parse(node)
        end
        data
      end
    end

    class TargetGroup
      def self.parse(xml)
        data = Types::TargetGroup.new
        xml.at('arn') do |node|
          data.arn = (node.text || '')
        end
        return data
      end
    end

    class ClassicLoadBalancersConfig
      def self.parse(xml)
        data = Types::ClassicLoadBalancersConfig.new
        xml.at('classicLoadBalancers') do |node|
          children = node.children('item')
          data.classic_load_balancers = Parsers::ClassicLoadBalancers.parse(children)
        end
        return data
      end
    end

    class ClassicLoadBalancers
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ClassicLoadBalancer.parse(node)
        end
        data
      end
    end

    class ClassicLoadBalancer
      def self.parse(xml)
        data = Types::ClassicLoadBalancer.new
        xml.at('name') do |node|
          data.member_name = (node.text || '')
        end
        return data
      end
    end

    class LaunchTemplateConfigList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LaunchTemplateConfig.parse(node)
        end
        data
      end
    end

    class LaunchTemplateConfig
      def self.parse(xml)
        data = Types::LaunchTemplateConfig.new
        xml.at('launchTemplateSpecification') do |node|
          data.launch_template_specification = Parsers::FleetLaunchTemplateSpecification.parse(node)
        end
        xml.at('overrides') do |node|
          children = node.children('item')
          data.overrides = Parsers::LaunchTemplateOverridesList.parse(children)
        end
        return data
      end
    end

    class LaunchTemplateOverridesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LaunchTemplateOverrides.parse(node)
        end
        data
      end
    end

    class LaunchTemplateOverrides
      def self.parse(xml)
        data = Types::LaunchTemplateOverrides.new
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('spotPrice') do |node|
          data.spot_price = (node.text || '')
        end
        xml.at('subnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('weightedCapacity') do |node|
          data.weighted_capacity = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('priority') do |node|
          data.priority = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('instanceRequirements') do |node|
          data.instance_requirements = Parsers::InstanceRequirements.parse(node)
        end
        return data
      end
    end

    class LaunchSpecsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SpotFleetLaunchSpecification.parse(node)
        end
        data
      end
    end

    class SpotFleetLaunchSpecification
      def self.parse(xml)
        data = Types::SpotFleetLaunchSpecification.new
        xml.at('groupSet') do |node|
          children = node.children('item')
          data.security_groups = Parsers::GroupIdentifierList.parse(children)
        end
        xml.at('addressingType') do |node|
          data.addressing_type = (node.text || '')
        end
        xml.at('blockDeviceMapping') do |node|
          children = node.children('item')
          data.block_device_mappings = Parsers::BlockDeviceMappingList.parse(children)
        end
        xml.at('ebsOptimized') do |node|
          data.ebs_optimized = (node.text == 'true')
        end
        xml.at('iamInstanceProfile') do |node|
          data.iam_instance_profile = Parsers::IamInstanceProfileSpecification.parse(node)
        end
        xml.at('imageId') do |node|
          data.image_id = (node.text || '')
        end
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('kernelId') do |node|
          data.kernel_id = (node.text || '')
        end
        xml.at('keyName') do |node|
          data.key_name = (node.text || '')
        end
        xml.at('monitoring') do |node|
          data.monitoring = Parsers::SpotFleetMonitoring.parse(node)
        end
        xml.at('networkInterfaceSet') do |node|
          children = node.children('item')
          data.network_interfaces = Parsers::InstanceNetworkInterfaceSpecificationList.parse(children)
        end
        xml.at('placement') do |node|
          data.placement = Parsers::SpotPlacement.parse(node)
        end
        xml.at('ramdiskId') do |node|
          data.ramdisk_id = (node.text || '')
        end
        xml.at('spotPrice') do |node|
          data.spot_price = (node.text || '')
        end
        xml.at('subnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        xml.at('userData') do |node|
          data.user_data = (node.text || '')
        end
        xml.at('weightedCapacity') do |node|
          data.weighted_capacity = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('tagSpecificationSet') do |node|
          children = node.children('item')
          data.tag_specifications = Parsers::SpotFleetTagSpecificationList.parse(children)
        end
        xml.at('instanceRequirements') do |node|
          data.instance_requirements = Parsers::InstanceRequirements.parse(node)
        end
        return data
      end
    end

    class SpotFleetTagSpecificationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SpotFleetTagSpecification.parse(node)
        end
        data
      end
    end

    class SpotFleetTagSpecification
      def self.parse(xml)
        data = Types::SpotFleetTagSpecification.new
        xml.at('resourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('tag') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class SpotPlacement
      def self.parse(xml)
        data = Types::SpotPlacement.new
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('groupName') do |node|
          data.group_name = (node.text || '')
        end
        xml.at('tenancy') do |node|
          data.tenancy = (node.text || '')
        end
        return data
      end
    end

    class InstanceNetworkInterfaceSpecificationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceNetworkInterfaceSpecification.parse(node)
        end
        data
      end
    end

    class InstanceNetworkInterfaceSpecification
      def self.parse(xml)
        data = Types::InstanceNetworkInterfaceSpecification.new
        xml.at('associatePublicIpAddress') do |node|
          data.associate_public_ip_address = (node.text == 'true')
        end
        xml.at('deleteOnTermination') do |node|
          data.delete_on_termination = (node.text == 'true')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('deviceIndex') do |node|
          data.device_index = node.text&.to_i
        end
        xml.at('SecurityGroupId') do |node|
          children = node.children('SecurityGroupId')
          data.groups = Parsers::SecurityGroupIdStringList.parse(children)
        end
        xml.at('ipv6AddressCount') do |node|
          data.ipv6_address_count = node.text&.to_i
        end
        xml.at('ipv6AddressesSet') do |node|
          children = node.children('item')
          data.ipv6_addresses = Parsers::InstanceIpv6AddressList.parse(children)
        end
        xml.at('networkInterfaceId') do |node|
          data.network_interface_id = (node.text || '')
        end
        xml.at('privateIpAddress') do |node|
          data.private_ip_address = (node.text || '')
        end
        xml.at('privateIpAddressesSet') do |node|
          children = node.children('item')
          data.private_ip_addresses = Parsers::PrivateIpAddressSpecificationList.parse(children)
        end
        xml.at('secondaryPrivateIpAddressCount') do |node|
          data.secondary_private_ip_address_count = node.text&.to_i
        end
        xml.at('subnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        xml.at('AssociateCarrierIpAddress') do |node|
          data.associate_carrier_ip_address = (node.text == 'true')
        end
        xml.at('InterfaceType') do |node|
          data.interface_type = (node.text || '')
        end
        xml.at('NetworkCardIndex') do |node|
          data.network_card_index = node.text&.to_i
        end
        xml.at('Ipv4Prefix') do |node|
          children = node.children('item')
          data.ipv4_prefixes = Parsers::Ipv4PrefixList.parse(children)
        end
        xml.at('Ipv4PrefixCount') do |node|
          data.ipv4_prefix_count = node.text&.to_i
        end
        xml.at('Ipv6Prefix') do |node|
          children = node.children('item')
          data.ipv6_prefixes = Parsers::Ipv6PrefixList.parse(children)
        end
        xml.at('Ipv6PrefixCount') do |node|
          data.ipv6_prefix_count = node.text&.to_i
        end
        return data
      end
    end

    class Ipv6PrefixList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Ipv6PrefixSpecificationRequest.parse(node)
        end
        data
      end
    end

    class Ipv6PrefixSpecificationRequest
      def self.parse(xml)
        data = Types::Ipv6PrefixSpecificationRequest.new
        xml.at('Ipv6Prefix') do |node|
          data.ipv6_prefix = (node.text || '')
        end
        return data
      end
    end

    class Ipv4PrefixList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Ipv4PrefixSpecificationRequest.parse(node)
        end
        data
      end
    end

    class Ipv4PrefixSpecificationRequest
      def self.parse(xml)
        data = Types::Ipv4PrefixSpecificationRequest.new
        xml.at('Ipv4Prefix') do |node|
          data.ipv4_prefix = (node.text || '')
        end
        return data
      end
    end

    class SecurityGroupIdStringList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class SpotFleetMonitoring
      def self.parse(xml)
        data = Types::SpotFleetMonitoring.new
        xml.at('enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        return data
      end
    end

    class IamInstanceProfileSpecification
      def self.parse(xml)
        data = Types::IamInstanceProfileSpecification.new
        xml.at('arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('name') do |node|
          data.member_name = (node.text || '')
        end
        return data
      end
    end

    class SpotMaintenanceStrategies
      def self.parse(xml)
        data = Types::SpotMaintenanceStrategies.new
        xml.at('capacityRebalance') do |node|
          data.capacity_rebalance = Parsers::SpotCapacityRebalance.parse(node)
        end
        return data
      end
    end

    class SpotCapacityRebalance
      def self.parse(xml)
        data = Types::SpotCapacityRebalance.new
        xml.at('replacementStrategy') do |node|
          data.replacement_strategy = (node.text || '')
        end
        xml.at('terminationDelay') do |node|
          data.termination_delay = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for DescribeSpotInstanceRequests
    class DescribeSpotInstanceRequests
      def self.parse(http_resp)
        data = Types::DescribeSpotInstanceRequestsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('spotInstanceRequestSet') do |node|
          children = node.children('item')
          data.spot_instance_requests = Parsers::SpotInstanceRequestList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class SpotInstanceRequestList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SpotInstanceRequest.parse(node)
        end
        data
      end
    end

    class SpotInstanceRequest
      def self.parse(xml)
        data = Types::SpotInstanceRequest.new
        xml.at('actualBlockHourlyPrice') do |node|
          data.actual_block_hourly_price = (node.text || '')
        end
        xml.at('availabilityZoneGroup') do |node|
          data.availability_zone_group = (node.text || '')
        end
        xml.at('blockDurationMinutes') do |node|
          data.block_duration_minutes = node.text&.to_i
        end
        xml.at('createTime') do |node|
          data.create_time = Time.parse(node.text) if node.text
        end
        xml.at('fault') do |node|
          data.fault = Parsers::SpotInstanceStateFault.parse(node)
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('launchGroup') do |node|
          data.launch_group = (node.text || '')
        end
        xml.at('launchSpecification') do |node|
          data.launch_specification = Parsers::LaunchSpecification.parse(node)
        end
        xml.at('launchedAvailabilityZone') do |node|
          data.launched_availability_zone = (node.text || '')
        end
        xml.at('productDescription') do |node|
          data.product_description = (node.text || '')
        end
        xml.at('spotInstanceRequestId') do |node|
          data.spot_instance_request_id = (node.text || '')
        end
        xml.at('spotPrice') do |node|
          data.spot_price = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = Parsers::SpotInstanceStatus.parse(node)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('type') do |node|
          data.type = (node.text || '')
        end
        xml.at('validFrom') do |node|
          data.valid_from = Time.parse(node.text) if node.text
        end
        xml.at('validUntil') do |node|
          data.valid_until = Time.parse(node.text) if node.text
        end
        xml.at('instanceInterruptionBehavior') do |node|
          data.instance_interruption_behavior = (node.text || '')
        end
        return data
      end
    end

    class SpotInstanceStatus
      def self.parse(xml)
        data = Types::SpotInstanceStatus.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        xml.at('updateTime') do |node|
          data.update_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class LaunchSpecification
      def self.parse(xml)
        data = Types::LaunchSpecification.new
        xml.at('userData') do |node|
          data.user_data = (node.text || '')
        end
        xml.at('groupSet') do |node|
          children = node.children('item')
          data.security_groups = Parsers::GroupIdentifierList.parse(children)
        end
        xml.at('addressingType') do |node|
          data.addressing_type = (node.text || '')
        end
        xml.at('blockDeviceMapping') do |node|
          children = node.children('item')
          data.block_device_mappings = Parsers::BlockDeviceMappingList.parse(children)
        end
        xml.at('ebsOptimized') do |node|
          data.ebs_optimized = (node.text == 'true')
        end
        xml.at('iamInstanceProfile') do |node|
          data.iam_instance_profile = Parsers::IamInstanceProfileSpecification.parse(node)
        end
        xml.at('imageId') do |node|
          data.image_id = (node.text || '')
        end
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('kernelId') do |node|
          data.kernel_id = (node.text || '')
        end
        xml.at('keyName') do |node|
          data.key_name = (node.text || '')
        end
        xml.at('networkInterfaceSet') do |node|
          children = node.children('item')
          data.network_interfaces = Parsers::InstanceNetworkInterfaceSpecificationList.parse(children)
        end
        xml.at('placement') do |node|
          data.placement = Parsers::SpotPlacement.parse(node)
        end
        xml.at('ramdiskId') do |node|
          data.ramdisk_id = (node.text || '')
        end
        xml.at('subnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        xml.at('monitoring') do |node|
          data.monitoring = Parsers::RunInstancesMonitoringEnabled.parse(node)
        end
        return data
      end
    end

    class RunInstancesMonitoringEnabled
      def self.parse(xml)
        data = Types::RunInstancesMonitoringEnabled.new
        xml.at('enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for DescribeSpotPriceHistory
    class DescribeSpotPriceHistory
      def self.parse(http_resp)
        data = Types::DescribeSpotPriceHistoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('spotPriceHistorySet') do |node|
          children = node.children('item')
          data.spot_price_history = Parsers::SpotPriceHistoryList.parse(children)
        end
        data
      end
    end

    class SpotPriceHistoryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SpotPrice.parse(node)
        end
        data
      end
    end

    class SpotPrice
      def self.parse(xml)
        data = Types::SpotPrice.new
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('productDescription') do |node|
          data.product_description = (node.text || '')
        end
        xml.at('spotPrice') do |node|
          data.spot_price = (node.text || '')
        end
        xml.at('timestamp') do |node|
          data.timestamp = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for DescribeStaleSecurityGroups
    class DescribeStaleSecurityGroups
      def self.parse(http_resp)
        data = Types::DescribeStaleSecurityGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('staleSecurityGroupSet') do |node|
          children = node.children('item')
          data.stale_security_group_set = Parsers::StaleSecurityGroupSet.parse(children)
        end
        data
      end
    end

    class StaleSecurityGroupSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::StaleSecurityGroup.parse(node)
        end
        data
      end
    end

    class StaleSecurityGroup
      def self.parse(xml)
        data = Types::StaleSecurityGroup.new
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('groupId') do |node|
          data.group_id = (node.text || '')
        end
        xml.at('groupName') do |node|
          data.group_name = (node.text || '')
        end
        xml.at('staleIpPermissions') do |node|
          children = node.children('item')
          data.stale_ip_permissions = Parsers::StaleIpPermissionSet.parse(children)
        end
        xml.at('staleIpPermissionsEgress') do |node|
          children = node.children('item')
          data.stale_ip_permissions_egress = Parsers::StaleIpPermissionSet.parse(children)
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        return data
      end
    end

    class StaleIpPermissionSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::StaleIpPermission.parse(node)
        end
        data
      end
    end

    class StaleIpPermission
      def self.parse(xml)
        data = Types::StaleIpPermission.new
        xml.at('fromPort') do |node|
          data.from_port = node.text&.to_i
        end
        xml.at('ipProtocol') do |node|
          data.ip_protocol = (node.text || '')
        end
        xml.at('ipRanges') do |node|
          children = node.children('item')
          data.ip_ranges = Parsers::IpRanges.parse(children)
        end
        xml.at('prefixListIds') do |node|
          children = node.children('item')
          data.prefix_list_ids = Parsers::PrefixListIdSet.parse(children)
        end
        xml.at('toPort') do |node|
          data.to_port = node.text&.to_i
        end
        xml.at('groups') do |node|
          children = node.children('item')
          data.user_id_group_pairs = Parsers::UserIdGroupPairSet.parse(children)
        end
        return data
      end
    end

    class UserIdGroupPairSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::UserIdGroupPair.parse(node)
        end
        data
      end
    end

    class PrefixListIdSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class IpRanges
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeStoreImageTasks
    class DescribeStoreImageTasks
      def self.parse(http_resp)
        data = Types::DescribeStoreImageTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('storeImageTaskResultSet') do |node|
          children = node.children('item')
          data.store_image_task_results = Parsers::StoreImageTaskResultSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class StoreImageTaskResultSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::StoreImageTaskResult.parse(node)
        end
        data
      end
    end

    class StoreImageTaskResult
      def self.parse(xml)
        data = Types::StoreImageTaskResult.new
        xml.at('amiId') do |node|
          data.ami_id = (node.text || '')
        end
        xml.at('taskStartTime') do |node|
          data.task_start_time = Time.parse(node.text) if node.text
        end
        xml.at('bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('s3objectKey') do |node|
          data.s3object_key = (node.text || '')
        end
        xml.at('progressPercentage') do |node|
          data.progress_percentage = node.text&.to_i
        end
        xml.at('storeTaskState') do |node|
          data.store_task_state = (node.text || '')
        end
        xml.at('storeTaskFailureReason') do |node|
          data.store_task_failure_reason = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeSubnets
    class DescribeSubnets
      def self.parse(http_resp)
        data = Types::DescribeSubnetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('subnetSet') do |node|
          children = node.children('item')
          data.subnets = Parsers::SubnetList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class SubnetList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Subnet.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeTags
    class DescribeTags
      def self.parse(http_resp)
        data = Types::DescribeTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagDescriptionList.parse(children)
        end
        data
      end
    end

    class TagDescriptionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TagDescription.parse(node)
        end
        data
      end
    end

    class TagDescription
      def self.parse(xml)
        data = Types::TagDescription.new
        xml.at('key') do |node|
          data.key = (node.text || '')
        end
        xml.at('resourceId') do |node|
          data.resource_id = (node.text || '')
        end
        xml.at('resourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeTrafficMirrorFilters
    class DescribeTrafficMirrorFilters
      def self.parse(http_resp)
        data = Types::DescribeTrafficMirrorFiltersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('trafficMirrorFilterSet') do |node|
          children = node.children('item')
          data.traffic_mirror_filters = Parsers::TrafficMirrorFilterSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TrafficMirrorFilterSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TrafficMirrorFilter.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeTrafficMirrorSessions
    class DescribeTrafficMirrorSessions
      def self.parse(http_resp)
        data = Types::DescribeTrafficMirrorSessionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('trafficMirrorSessionSet') do |node|
          children = node.children('item')
          data.traffic_mirror_sessions = Parsers::TrafficMirrorSessionSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TrafficMirrorSessionSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TrafficMirrorSession.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeTrafficMirrorTargets
    class DescribeTrafficMirrorTargets
      def self.parse(http_resp)
        data = Types::DescribeTrafficMirrorTargetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('trafficMirrorTargetSet') do |node|
          children = node.children('item')
          data.traffic_mirror_targets = Parsers::TrafficMirrorTargetSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TrafficMirrorTargetSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TrafficMirrorTarget.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeTransitGatewayAttachments
    class DescribeTransitGatewayAttachments
      def self.parse(http_resp)
        data = Types::DescribeTransitGatewayAttachmentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayAttachments') do |node|
          children = node.children('item')
          data.transit_gateway_attachments = Parsers::TransitGatewayAttachmentList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TransitGatewayAttachmentList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TransitGatewayAttachment.parse(node)
        end
        data
      end
    end

    class TransitGatewayAttachment
      def self.parse(xml)
        data = Types::TransitGatewayAttachment.new
        xml.at('transitGatewayAttachmentId') do |node|
          data.transit_gateway_attachment_id = (node.text || '')
        end
        xml.at('transitGatewayId') do |node|
          data.transit_gateway_id = (node.text || '')
        end
        xml.at('transitGatewayOwnerId') do |node|
          data.transit_gateway_owner_id = (node.text || '')
        end
        xml.at('resourceOwnerId') do |node|
          data.resource_owner_id = (node.text || '')
        end
        xml.at('resourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('resourceId') do |node|
          data.resource_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('association') do |node|
          data.association = Parsers::TransitGatewayAttachmentAssociation.parse(node)
        end
        xml.at('creationTime') do |node|
          data.creation_time = Time.parse(node.text) if node.text
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class TransitGatewayAttachmentAssociation
      def self.parse(xml)
        data = Types::TransitGatewayAttachmentAssociation.new
        xml.at('transitGatewayRouteTableId') do |node|
          data.transit_gateway_route_table_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeTransitGatewayConnectPeers
    class DescribeTransitGatewayConnectPeers
      def self.parse(http_resp)
        data = Types::DescribeTransitGatewayConnectPeersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayConnectPeerSet') do |node|
          children = node.children('item')
          data.transit_gateway_connect_peers = Parsers::TransitGatewayConnectPeerList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TransitGatewayConnectPeerList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TransitGatewayConnectPeer.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeTransitGatewayConnects
    class DescribeTransitGatewayConnects
      def self.parse(http_resp)
        data = Types::DescribeTransitGatewayConnectsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayConnectSet') do |node|
          children = node.children('item')
          data.transit_gateway_connects = Parsers::TransitGatewayConnectList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TransitGatewayConnectList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TransitGatewayConnect.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeTransitGatewayMulticastDomains
    class DescribeTransitGatewayMulticastDomains
      def self.parse(http_resp)
        data = Types::DescribeTransitGatewayMulticastDomainsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayMulticastDomains') do |node|
          children = node.children('item')
          data.transit_gateway_multicast_domains = Parsers::TransitGatewayMulticastDomainList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TransitGatewayMulticastDomainList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TransitGatewayMulticastDomain.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeTransitGatewayPeeringAttachments
    class DescribeTransitGatewayPeeringAttachments
      def self.parse(http_resp)
        data = Types::DescribeTransitGatewayPeeringAttachmentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayPeeringAttachments') do |node|
          children = node.children('item')
          data.transit_gateway_peering_attachments = Parsers::TransitGatewayPeeringAttachmentList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TransitGatewayPeeringAttachmentList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TransitGatewayPeeringAttachment.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeTransitGatewayRouteTables
    class DescribeTransitGatewayRouteTables
      def self.parse(http_resp)
        data = Types::DescribeTransitGatewayRouteTablesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayRouteTables') do |node|
          children = node.children('item')
          data.transit_gateway_route_tables = Parsers::TransitGatewayRouteTableList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TransitGatewayRouteTableList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TransitGatewayRouteTable.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeTransitGatewayVpcAttachments
    class DescribeTransitGatewayVpcAttachments
      def self.parse(http_resp)
        data = Types::DescribeTransitGatewayVpcAttachmentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayVpcAttachments') do |node|
          children = node.children('item')
          data.transit_gateway_vpc_attachments = Parsers::TransitGatewayVpcAttachmentList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TransitGatewayVpcAttachmentList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TransitGatewayVpcAttachment.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeTransitGateways
    class DescribeTransitGateways
      def self.parse(http_resp)
        data = Types::DescribeTransitGatewaysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewaySet') do |node|
          children = node.children('item')
          data.transit_gateways = Parsers::TransitGatewayList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TransitGatewayList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TransitGateway.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeTrunkInterfaceAssociations
    class DescribeTrunkInterfaceAssociations
      def self.parse(http_resp)
        data = Types::DescribeTrunkInterfaceAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('interfaceAssociationSet') do |node|
          children = node.children('item')
          data.interface_associations = Parsers::TrunkInterfaceAssociationList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TrunkInterfaceAssociationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TrunkInterfaceAssociation.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeVolumeAttribute
    class DescribeVolumeAttribute
      def self.parse(http_resp)
        data = Types::DescribeVolumeAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('autoEnableIO') do |node|
          data.auto_enable_io = Parsers::AttributeBooleanValue.parse(node)
        end
        xml.at('productCodes') do |node|
          children = node.children('item')
          data.product_codes = Parsers::ProductCodeList.parse(children)
        end
        xml.at('volumeId') do |node|
          data.volume_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeVolumeStatus
    class DescribeVolumeStatus
      def self.parse(http_resp)
        data = Types::DescribeVolumeStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('volumeStatusSet') do |node|
          children = node.children('item')
          data.volume_statuses = Parsers::VolumeStatusList.parse(children)
        end
        data
      end
    end

    class VolumeStatusList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VolumeStatusItem.parse(node)
        end
        data
      end
    end

    class VolumeStatusItem
      def self.parse(xml)
        data = Types::VolumeStatusItem.new
        xml.at('actionsSet') do |node|
          children = node.children('item')
          data.actions = Parsers::VolumeStatusActionsList.parse(children)
        end
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('outpostArn') do |node|
          data.outpost_arn = (node.text || '')
        end
        xml.at('eventsSet') do |node|
          children = node.children('item')
          data.events = Parsers::VolumeStatusEventsList.parse(children)
        end
        xml.at('volumeId') do |node|
          data.volume_id = (node.text || '')
        end
        xml.at('volumeStatus') do |node|
          data.volume_status = Parsers::VolumeStatusInfo.parse(node)
        end
        xml.at('attachmentStatuses') do |node|
          children = node.children('item')
          data.attachment_statuses = Parsers::VolumeStatusAttachmentStatusList.parse(children)
        end
        return data
      end
    end

    class VolumeStatusAttachmentStatusList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VolumeStatusAttachmentStatus.parse(node)
        end
        data
      end
    end

    class VolumeStatusAttachmentStatus
      def self.parse(xml)
        data = Types::VolumeStatusAttachmentStatus.new
        xml.at('ioPerformance') do |node|
          data.io_performance = (node.text || '')
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        return data
      end
    end

    class VolumeStatusInfo
      def self.parse(xml)
        data = Types::VolumeStatusInfo.new
        xml.at('details') do |node|
          children = node.children('item')
          data.details = Parsers::VolumeStatusDetailsList.parse(children)
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class VolumeStatusDetailsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VolumeStatusDetails.parse(node)
        end
        data
      end
    end

    class VolumeStatusDetails
      def self.parse(xml)
        data = Types::VolumeStatusDetails.new
        xml.at('name') do |node|
          data.member_name = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class VolumeStatusEventsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VolumeStatusEvent.parse(node)
        end
        data
      end
    end

    class VolumeStatusEvent
      def self.parse(xml)
        data = Types::VolumeStatusEvent.new
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('eventId') do |node|
          data.event_id = (node.text || '')
        end
        xml.at('eventType') do |node|
          data.event_type = (node.text || '')
        end
        xml.at('notAfter') do |node|
          data.not_after = Time.parse(node.text) if node.text
        end
        xml.at('notBefore') do |node|
          data.not_before = Time.parse(node.text) if node.text
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        return data
      end
    end

    class VolumeStatusActionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VolumeStatusAction.parse(node)
        end
        data
      end
    end

    class VolumeStatusAction
      def self.parse(xml)
        data = Types::VolumeStatusAction.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('eventId') do |node|
          data.event_id = (node.text || '')
        end
        xml.at('eventType') do |node|
          data.event_type = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeVolumes
    class DescribeVolumes
      def self.parse(http_resp)
        data = Types::DescribeVolumesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('volumeSet') do |node|
          children = node.children('item')
          data.volumes = Parsers::VolumeList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class VolumeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Volume.parse(node)
        end
        data
      end
    end

    class Volume
      def self.parse(xml)
        data = Types::Volume.new
        xml.at('attachmentSet') do |node|
          children = node.children('item')
          data.attachments = Parsers::VolumeAttachmentList.parse(children)
        end
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('createTime') do |node|
          data.create_time = Time.parse(node.text) if node.text
        end
        xml.at('encrypted') do |node|
          data.encrypted = (node.text == 'true')
        end
        xml.at('kmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('outpostArn') do |node|
          data.outpost_arn = (node.text || '')
        end
        xml.at('size') do |node|
          data.size = node.text&.to_i
        end
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('status') do |node|
          data.state = (node.text || '')
        end
        xml.at('volumeId') do |node|
          data.volume_id = (node.text || '')
        end
        xml.at('iops') do |node|
          data.iops = node.text&.to_i
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('volumeType') do |node|
          data.volume_type = (node.text || '')
        end
        xml.at('fastRestored') do |node|
          data.fast_restored = (node.text == 'true')
        end
        xml.at('multiAttachEnabled') do |node|
          data.multi_attach_enabled = (node.text == 'true')
        end
        xml.at('throughput') do |node|
          data.throughput = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for DescribeVolumesModifications
    class DescribeVolumesModifications
      def self.parse(http_resp)
        data = Types::DescribeVolumesModificationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('volumeModificationSet') do |node|
          children = node.children('item')
          data.volumes_modifications = Parsers::VolumeModificationList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class VolumeModificationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VolumeModification.parse(node)
        end
        data
      end
    end

    class VolumeModification
      def self.parse(xml)
        data = Types::VolumeModification.new
        xml.at('volumeId') do |node|
          data.volume_id = (node.text || '')
        end
        xml.at('modificationState') do |node|
          data.modification_state = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        xml.at('targetSize') do |node|
          data.target_size = node.text&.to_i
        end
        xml.at('targetIops') do |node|
          data.target_iops = node.text&.to_i
        end
        xml.at('targetVolumeType') do |node|
          data.target_volume_type = (node.text || '')
        end
        xml.at('targetThroughput') do |node|
          data.target_throughput = node.text&.to_i
        end
        xml.at('targetMultiAttachEnabled') do |node|
          data.target_multi_attach_enabled = (node.text == 'true')
        end
        xml.at('originalSize') do |node|
          data.original_size = node.text&.to_i
        end
        xml.at('originalIops') do |node|
          data.original_iops = node.text&.to_i
        end
        xml.at('originalVolumeType') do |node|
          data.original_volume_type = (node.text || '')
        end
        xml.at('originalThroughput') do |node|
          data.original_throughput = node.text&.to_i
        end
        xml.at('originalMultiAttachEnabled') do |node|
          data.original_multi_attach_enabled = (node.text == 'true')
        end
        xml.at('progress') do |node|
          data.progress = node.text&.to_i
        end
        xml.at('startTime') do |node|
          data.start_time = Time.parse(node.text) if node.text
        end
        xml.at('endTime') do |node|
          data.end_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for DescribeVpcAttribute
    class DescribeVpcAttribute
      def self.parse(http_resp)
        data = Types::DescribeVpcAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('enableDnsHostnames') do |node|
          data.enable_dns_hostnames = Parsers::AttributeBooleanValue.parse(node)
        end
        xml.at('enableDnsSupport') do |node|
          data.enable_dns_support = Parsers::AttributeBooleanValue.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeVpcClassicLink
    class DescribeVpcClassicLink
      def self.parse(http_resp)
        data = Types::DescribeVpcClassicLinkOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpcSet') do |node|
          children = node.children('item')
          data.vpcs = Parsers::VpcClassicLinkList.parse(children)
        end
        data
      end
    end

    class VpcClassicLinkList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VpcClassicLink.parse(node)
        end
        data
      end
    end

    class VpcClassicLink
      def self.parse(xml)
        data = Types::VpcClassicLink.new
        xml.at('classicLinkEnabled') do |node|
          data.classic_link_enabled = (node.text == 'true')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeVpcClassicLinkDnsSupport
    class DescribeVpcClassicLinkDnsSupport
      def self.parse(http_resp)
        data = Types::DescribeVpcClassicLinkDnsSupportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('vpcs') do |node|
          children = node.children('item')
          data.vpcs = Parsers::ClassicLinkDnsSupportList.parse(children)
        end
        data
      end
    end

    class ClassicLinkDnsSupportList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ClassicLinkDnsSupport.parse(node)
        end
        data
      end
    end

    class ClassicLinkDnsSupport
      def self.parse(xml)
        data = Types::ClassicLinkDnsSupport.new
        xml.at('classicLinkDnsSupported') do |node|
          data.classic_link_dns_supported = (node.text == 'true')
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeVpcEndpointConnectionNotifications
    class DescribeVpcEndpointConnectionNotifications
      def self.parse(http_resp)
        data = Types::DescribeVpcEndpointConnectionNotificationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('connectionNotificationSet') do |node|
          children = node.children('item')
          data.connection_notification_set = Parsers::ConnectionNotificationSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ConnectionNotificationSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ConnectionNotification.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeVpcEndpointConnections
    class DescribeVpcEndpointConnections
      def self.parse(http_resp)
        data = Types::DescribeVpcEndpointConnectionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpcEndpointConnectionSet') do |node|
          children = node.children('item')
          data.vpc_endpoint_connections = Parsers::VpcEndpointConnectionSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class VpcEndpointConnectionSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VpcEndpointConnection.parse(node)
        end
        data
      end
    end

    class VpcEndpointConnection
      def self.parse(xml)
        data = Types::VpcEndpointConnection.new
        xml.at('serviceId') do |node|
          data.service_id = (node.text || '')
        end
        xml.at('vpcEndpointId') do |node|
          data.vpc_endpoint_id = (node.text || '')
        end
        xml.at('vpcEndpointOwner') do |node|
          data.vpc_endpoint_owner = (node.text || '')
        end
        xml.at('vpcEndpointState') do |node|
          data.vpc_endpoint_state = (node.text || '')
        end
        xml.at('creationTimestamp') do |node|
          data.creation_timestamp = Time.parse(node.text) if node.text
        end
        xml.at('dnsEntrySet') do |node|
          children = node.children('item')
          data.dns_entries = Parsers::DnsEntrySet.parse(children)
        end
        xml.at('networkLoadBalancerArnSet') do |node|
          children = node.children('item')
          data.network_load_balancer_arns = Parsers::ValueStringList.parse(children)
        end
        xml.at('gatewayLoadBalancerArnSet') do |node|
          children = node.children('item')
          data.gateway_load_balancer_arns = Parsers::ValueStringList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for DescribeVpcEndpointServiceConfigurations
    class DescribeVpcEndpointServiceConfigurations
      def self.parse(http_resp)
        data = Types::DescribeVpcEndpointServiceConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('serviceConfigurationSet') do |node|
          children = node.children('item')
          data.service_configurations = Parsers::ServiceConfigurationSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ServiceConfigurationSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ServiceConfiguration.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeVpcEndpointServicePermissions
    class DescribeVpcEndpointServicePermissions
      def self.parse(http_resp)
        data = Types::DescribeVpcEndpointServicePermissionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('allowedPrincipals') do |node|
          children = node.children('item')
          data.allowed_principals = Parsers::AllowedPrincipalSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class AllowedPrincipalSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AllowedPrincipal.parse(node)
        end
        data
      end
    end

    class AllowedPrincipal
      def self.parse(xml)
        data = Types::AllowedPrincipal.new
        xml.at('principalType') do |node|
          data.principal_type = (node.text || '')
        end
        xml.at('principal') do |node|
          data.principal = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeVpcEndpointServices
    class DescribeVpcEndpointServices
      def self.parse(http_resp)
        data = Types::DescribeVpcEndpointServicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('serviceNameSet') do |node|
          children = node.children('item')
          data.service_names = Parsers::ValueStringList.parse(children)
        end
        xml.at('serviceDetailSet') do |node|
          children = node.children('item')
          data.service_details = Parsers::ServiceDetailSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ServiceDetailSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ServiceDetail.parse(node)
        end
        data
      end
    end

    class ServiceDetail
      def self.parse(xml)
        data = Types::ServiceDetail.new
        xml.at('serviceName') do |node|
          data.service_name = (node.text || '')
        end
        xml.at('serviceId') do |node|
          data.service_id = (node.text || '')
        end
        xml.at('serviceType') do |node|
          children = node.children('item')
          data.service_type = Parsers::ServiceTypeDetailSet.parse(children)
        end
        xml.at('availabilityZoneSet') do |node|
          children = node.children('item')
          data.availability_zones = Parsers::ValueStringList.parse(children)
        end
        xml.at('owner') do |node|
          data.owner = (node.text || '')
        end
        xml.at('baseEndpointDnsNameSet') do |node|
          children = node.children('item')
          data.base_endpoint_dns_names = Parsers::ValueStringList.parse(children)
        end
        xml.at('privateDnsName') do |node|
          data.private_dns_name = (node.text || '')
        end
        xml.at('privateDnsNameSet') do |node|
          children = node.children('item')
          data.private_dns_names = Parsers::PrivateDnsDetailsSet.parse(children)
        end
        xml.at('vpcEndpointPolicySupported') do |node|
          data.vpc_endpoint_policy_supported = (node.text == 'true')
        end
        xml.at('acceptanceRequired') do |node|
          data.acceptance_required = (node.text == 'true')
        end
        xml.at('managesVpcEndpoints') do |node|
          data.manages_vpc_endpoints = (node.text == 'true')
        end
        xml.at('payerResponsibility') do |node|
          data.payer_responsibility = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('privateDnsNameVerificationState') do |node|
          data.private_dns_name_verification_state = (node.text || '')
        end
        return data
      end
    end

    class PrivateDnsDetailsSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PrivateDnsDetails.parse(node)
        end
        data
      end
    end

    class PrivateDnsDetails
      def self.parse(xml)
        data = Types::PrivateDnsDetails.new
        xml.at('privateDnsName') do |node|
          data.private_dns_name = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeVpcEndpoints
    class DescribeVpcEndpoints
      def self.parse(http_resp)
        data = Types::DescribeVpcEndpointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpcEndpointSet') do |node|
          children = node.children('item')
          data.vpc_endpoints = Parsers::VpcEndpointSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class VpcEndpointSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VpcEndpoint.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeVpcPeeringConnections
    class DescribeVpcPeeringConnections
      def self.parse(http_resp)
        data = Types::DescribeVpcPeeringConnectionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpcPeeringConnectionSet') do |node|
          children = node.children('item')
          data.vpc_peering_connections = Parsers::VpcPeeringConnectionList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class VpcPeeringConnectionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VpcPeeringConnection.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeVpcs
    class DescribeVpcs
      def self.parse(http_resp)
        data = Types::DescribeVpcsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpcSet') do |node|
          children = node.children('item')
          data.vpcs = Parsers::VpcList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class VpcList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Vpc.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeVpnConnections
    class DescribeVpnConnections
      def self.parse(http_resp)
        data = Types::DescribeVpnConnectionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpnConnectionSet') do |node|
          children = node.children('item')
          data.vpn_connections = Parsers::VpnConnectionList.parse(children)
        end
        data
      end
    end

    class VpnConnectionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VpnConnection.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeVpnGateways
    class DescribeVpnGateways
      def self.parse(http_resp)
        data = Types::DescribeVpnGatewaysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpnGatewaySet') do |node|
          children = node.children('item')
          data.vpn_gateways = Parsers::VpnGatewayList.parse(children)
        end
        data
      end
    end

    class VpnGatewayList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VpnGateway.parse(node)
        end
        data
      end
    end

    # Operation Parser for DetachClassicLinkVpc
    class DetachClassicLinkVpc
      def self.parse(http_resp)
        data = Types::DetachClassicLinkVpcOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for DetachInternetGateway
    class DetachInternetGateway
      def self.parse(http_resp)
        data = Types::DetachInternetGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DetachNetworkInterface
    class DetachNetworkInterface
      def self.parse(http_resp)
        data = Types::DetachNetworkInterfaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DetachVolume
    class DetachVolume
      def self.parse(http_resp)
        data = Types::DetachVolumeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('attachTime') do |node|
          data.attach_time = Time.parse(node.text) if node.text
        end
        xml.at('device') do |node|
          data.device = (node.text || '')
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('status') do |node|
          data.state = (node.text || '')
        end
        xml.at('volumeId') do |node|
          data.volume_id = (node.text || '')
        end
        xml.at('deleteOnTermination') do |node|
          data.delete_on_termination = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for DetachVpnGateway
    class DetachVpnGateway
      def self.parse(http_resp)
        data = Types::DetachVpnGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DisableEbsEncryptionByDefault
    class DisableEbsEncryptionByDefault
      def self.parse(http_resp)
        data = Types::DisableEbsEncryptionByDefaultOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ebsEncryptionByDefault') do |node|
          data.ebs_encryption_by_default = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for DisableFastSnapshotRestores
    class DisableFastSnapshotRestores
      def self.parse(http_resp)
        data = Types::DisableFastSnapshotRestoresOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('successful') do |node|
          children = node.children('item')
          data.successful = Parsers::DisableFastSnapshotRestoreSuccessSet.parse(children)
        end
        xml.at('unsuccessful') do |node|
          children = node.children('item')
          data.unsuccessful = Parsers::DisableFastSnapshotRestoreErrorSet.parse(children)
        end
        data
      end
    end

    class DisableFastSnapshotRestoreErrorSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DisableFastSnapshotRestoreErrorItem.parse(node)
        end
        data
      end
    end

    class DisableFastSnapshotRestoreErrorItem
      def self.parse(xml)
        data = Types::DisableFastSnapshotRestoreErrorItem.new
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('fastSnapshotRestoreStateErrorSet') do |node|
          children = node.children('item')
          data.fast_snapshot_restore_state_errors = Parsers::DisableFastSnapshotRestoreStateErrorSet.parse(children)
        end
        return data
      end
    end

    class DisableFastSnapshotRestoreStateErrorSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DisableFastSnapshotRestoreStateErrorItem.parse(node)
        end
        data
      end
    end

    class DisableFastSnapshotRestoreStateErrorItem
      def self.parse(xml)
        data = Types::DisableFastSnapshotRestoreStateErrorItem.new
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('error') do |node|
          data.error = Parsers::DisableFastSnapshotRestoreStateError.parse(node)
        end
        return data
      end
    end

    class DisableFastSnapshotRestoreStateError
      def self.parse(xml)
        data = Types::DisableFastSnapshotRestoreStateError.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    class DisableFastSnapshotRestoreSuccessSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DisableFastSnapshotRestoreSuccessItem.parse(node)
        end
        data
      end
    end

    class DisableFastSnapshotRestoreSuccessItem
      def self.parse(xml)
        data = Types::DisableFastSnapshotRestoreSuccessItem.new
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('stateTransitionReason') do |node|
          data.state_transition_reason = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('ownerAlias') do |node|
          data.owner_alias = (node.text || '')
        end
        xml.at('enablingTime') do |node|
          data.enabling_time = Time.parse(node.text) if node.text
        end
        xml.at('optimizingTime') do |node|
          data.optimizing_time = Time.parse(node.text) if node.text
        end
        xml.at('enabledTime') do |node|
          data.enabled_time = Time.parse(node.text) if node.text
        end
        xml.at('disablingTime') do |node|
          data.disabling_time = Time.parse(node.text) if node.text
        end
        xml.at('disabledTime') do |node|
          data.disabled_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for DisableImageDeprecation
    class DisableImageDeprecation
      def self.parse(http_resp)
        data = Types::DisableImageDeprecationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for DisableIpamOrganizationAdminAccount
    class DisableIpamOrganizationAdminAccount
      def self.parse(http_resp)
        data = Types::DisableIpamOrganizationAdminAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('success') do |node|
          data.success = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for DisableSerialConsoleAccess
    class DisableSerialConsoleAccess
      def self.parse(http_resp)
        data = Types::DisableSerialConsoleAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('serialConsoleAccessEnabled') do |node|
          data.serial_console_access_enabled = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for DisableTransitGatewayRouteTablePropagation
    class DisableTransitGatewayRouteTablePropagation
      def self.parse(http_resp)
        data = Types::DisableTransitGatewayRouteTablePropagationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('propagation') do |node|
          data.propagation = Parsers::TransitGatewayPropagation.parse(node)
        end
        data
      end
    end

    class TransitGatewayPropagation
      def self.parse(xml)
        data = Types::TransitGatewayPropagation.new
        xml.at('transitGatewayAttachmentId') do |node|
          data.transit_gateway_attachment_id = (node.text || '')
        end
        xml.at('resourceId') do |node|
          data.resource_id = (node.text || '')
        end
        xml.at('resourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('transitGatewayRouteTableId') do |node|
          data.transit_gateway_route_table_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DisableVgwRoutePropagation
    class DisableVgwRoutePropagation
      def self.parse(http_resp)
        data = Types::DisableVgwRoutePropagationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DisableVpcClassicLink
    class DisableVpcClassicLink
      def self.parse(http_resp)
        data = Types::DisableVpcClassicLinkOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for DisableVpcClassicLinkDnsSupport
    class DisableVpcClassicLinkDnsSupport
      def self.parse(http_resp)
        data = Types::DisableVpcClassicLinkDnsSupportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for DisassociateAddress
    class DisassociateAddress
      def self.parse(http_resp)
        data = Types::DisassociateAddressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DisassociateClientVpnTargetNetwork
    class DisassociateClientVpnTargetNetwork
      def self.parse(http_resp)
        data = Types::DisassociateClientVpnTargetNetworkOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('associationId') do |node|
          data.association_id = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = Parsers::AssociationStatus.parse(node)
        end
        data
      end
    end

    # Operation Parser for DisassociateEnclaveCertificateIamRole
    class DisassociateEnclaveCertificateIamRole
      def self.parse(http_resp)
        data = Types::DisassociateEnclaveCertificateIamRoleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for DisassociateIamInstanceProfile
    class DisassociateIamInstanceProfile
      def self.parse(http_resp)
        data = Types::DisassociateIamInstanceProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('iamInstanceProfileAssociation') do |node|
          data.iam_instance_profile_association = Parsers::IamInstanceProfileAssociation.parse(node)
        end
        data
      end
    end

    # Operation Parser for DisassociateInstanceEventWindow
    class DisassociateInstanceEventWindow
      def self.parse(http_resp)
        data = Types::DisassociateInstanceEventWindowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceEventWindow') do |node|
          data.instance_event_window = Parsers::InstanceEventWindow.parse(node)
        end
        data
      end
    end

    # Operation Parser for DisassociateRouteTable
    class DisassociateRouteTable
      def self.parse(http_resp)
        data = Types::DisassociateRouteTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DisassociateSubnetCidrBlock
    class DisassociateSubnetCidrBlock
      def self.parse(http_resp)
        data = Types::DisassociateSubnetCidrBlockOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipv6CidrBlockAssociation') do |node|
          data.ipv6_cidr_block_association = Parsers::SubnetIpv6CidrBlockAssociation.parse(node)
        end
        xml.at('subnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DisassociateTransitGatewayMulticastDomain
    class DisassociateTransitGatewayMulticastDomain
      def self.parse(http_resp)
        data = Types::DisassociateTransitGatewayMulticastDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('associations') do |node|
          data.associations = Parsers::TransitGatewayMulticastDomainAssociations.parse(node)
        end
        data
      end
    end

    # Operation Parser for DisassociateTransitGatewayRouteTable
    class DisassociateTransitGatewayRouteTable
      def self.parse(http_resp)
        data = Types::DisassociateTransitGatewayRouteTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('association') do |node|
          data.association = Parsers::TransitGatewayAssociation.parse(node)
        end
        data
      end
    end

    # Operation Parser for DisassociateTrunkInterface
    class DisassociateTrunkInterface
      def self.parse(http_resp)
        data = Types::DisassociateTrunkInterfaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DisassociateVpcCidrBlock
    class DisassociateVpcCidrBlock
      def self.parse(http_resp)
        data = Types::DisassociateVpcCidrBlockOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipv6CidrBlockAssociation') do |node|
          data.ipv6_cidr_block_association = Parsers::VpcIpv6CidrBlockAssociation.parse(node)
        end
        xml.at('cidrBlockAssociation') do |node|
          data.cidr_block_association = Parsers::VpcCidrBlockAssociation.parse(node)
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for EnableEbsEncryptionByDefault
    class EnableEbsEncryptionByDefault
      def self.parse(http_resp)
        data = Types::EnableEbsEncryptionByDefaultOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ebsEncryptionByDefault') do |node|
          data.ebs_encryption_by_default = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for EnableFastSnapshotRestores
    class EnableFastSnapshotRestores
      def self.parse(http_resp)
        data = Types::EnableFastSnapshotRestoresOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('successful') do |node|
          children = node.children('item')
          data.successful = Parsers::EnableFastSnapshotRestoreSuccessSet.parse(children)
        end
        xml.at('unsuccessful') do |node|
          children = node.children('item')
          data.unsuccessful = Parsers::EnableFastSnapshotRestoreErrorSet.parse(children)
        end
        data
      end
    end

    class EnableFastSnapshotRestoreErrorSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EnableFastSnapshotRestoreErrorItem.parse(node)
        end
        data
      end
    end

    class EnableFastSnapshotRestoreErrorItem
      def self.parse(xml)
        data = Types::EnableFastSnapshotRestoreErrorItem.new
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('fastSnapshotRestoreStateErrorSet') do |node|
          children = node.children('item')
          data.fast_snapshot_restore_state_errors = Parsers::EnableFastSnapshotRestoreStateErrorSet.parse(children)
        end
        return data
      end
    end

    class EnableFastSnapshotRestoreStateErrorSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EnableFastSnapshotRestoreStateErrorItem.parse(node)
        end
        data
      end
    end

    class EnableFastSnapshotRestoreStateErrorItem
      def self.parse(xml)
        data = Types::EnableFastSnapshotRestoreStateErrorItem.new
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('error') do |node|
          data.error = Parsers::EnableFastSnapshotRestoreStateError.parse(node)
        end
        return data
      end
    end

    class EnableFastSnapshotRestoreStateError
      def self.parse(xml)
        data = Types::EnableFastSnapshotRestoreStateError.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    class EnableFastSnapshotRestoreSuccessSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EnableFastSnapshotRestoreSuccessItem.parse(node)
        end
        data
      end
    end

    class EnableFastSnapshotRestoreSuccessItem
      def self.parse(xml)
        data = Types::EnableFastSnapshotRestoreSuccessItem.new
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('availabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('stateTransitionReason') do |node|
          data.state_transition_reason = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('ownerAlias') do |node|
          data.owner_alias = (node.text || '')
        end
        xml.at('enablingTime') do |node|
          data.enabling_time = Time.parse(node.text) if node.text
        end
        xml.at('optimizingTime') do |node|
          data.optimizing_time = Time.parse(node.text) if node.text
        end
        xml.at('enabledTime') do |node|
          data.enabled_time = Time.parse(node.text) if node.text
        end
        xml.at('disablingTime') do |node|
          data.disabling_time = Time.parse(node.text) if node.text
        end
        xml.at('disabledTime') do |node|
          data.disabled_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for EnableImageDeprecation
    class EnableImageDeprecation
      def self.parse(http_resp)
        data = Types::EnableImageDeprecationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for EnableIpamOrganizationAdminAccount
    class EnableIpamOrganizationAdminAccount
      def self.parse(http_resp)
        data = Types::EnableIpamOrganizationAdminAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('success') do |node|
          data.success = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for EnableSerialConsoleAccess
    class EnableSerialConsoleAccess
      def self.parse(http_resp)
        data = Types::EnableSerialConsoleAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('serialConsoleAccessEnabled') do |node|
          data.serial_console_access_enabled = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for EnableTransitGatewayRouteTablePropagation
    class EnableTransitGatewayRouteTablePropagation
      def self.parse(http_resp)
        data = Types::EnableTransitGatewayRouteTablePropagationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('propagation') do |node|
          data.propagation = Parsers::TransitGatewayPropagation.parse(node)
        end
        data
      end
    end

    # Operation Parser for EnableVgwRoutePropagation
    class EnableVgwRoutePropagation
      def self.parse(http_resp)
        data = Types::EnableVgwRoutePropagationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for EnableVolumeIO
    class EnableVolumeIO
      def self.parse(http_resp)
        data = Types::EnableVolumeIOOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for EnableVpcClassicLink
    class EnableVpcClassicLink
      def self.parse(http_resp)
        data = Types::EnableVpcClassicLinkOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for EnableVpcClassicLinkDnsSupport
    class EnableVpcClassicLinkDnsSupport
      def self.parse(http_resp)
        data = Types::EnableVpcClassicLinkDnsSupportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ExportClientVpnClientCertificateRevocationList
    class ExportClientVpnClientCertificateRevocationList
      def self.parse(http_resp)
        data = Types::ExportClientVpnClientCertificateRevocationListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('certificateRevocationList') do |node|
          data.certificate_revocation_list = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = Parsers::ClientCertificateRevocationListStatus.parse(node)
        end
        data
      end
    end

    class ClientCertificateRevocationListStatus
      def self.parse(xml)
        data = Types::ClientCertificateRevocationListStatus.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ExportClientVpnClientConfiguration
    class ExportClientVpnClientConfiguration
      def self.parse(http_resp)
        data = Types::ExportClientVpnClientConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('clientConfiguration') do |node|
          data.client_configuration = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ExportImage
    class ExportImage
      def self.parse(http_resp)
        data = Types::ExportImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('diskImageFormat') do |node|
          data.disk_image_format = (node.text || '')
        end
        xml.at('exportImageTaskId') do |node|
          data.export_image_task_id = (node.text || '')
        end
        xml.at('imageId') do |node|
          data.image_id = (node.text || '')
        end
        xml.at('roleName') do |node|
          data.role_name = (node.text || '')
        end
        xml.at('progress') do |node|
          data.progress = (node.text || '')
        end
        xml.at('s3ExportLocation') do |node|
          data.s3_export_location = Parsers::ExportTaskS3Location.parse(node)
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        data
      end
    end

    # Operation Parser for ExportTransitGatewayRoutes
    class ExportTransitGatewayRoutes
      def self.parse(http_resp)
        data = Types::ExportTransitGatewayRoutesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('s3Location') do |node|
          data.s3_location = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetAssociatedEnclaveCertificateIamRoles
    class GetAssociatedEnclaveCertificateIamRoles
      def self.parse(http_resp)
        data = Types::GetAssociatedEnclaveCertificateIamRolesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('associatedRoleSet') do |node|
          children = node.children('item')
          data.associated_roles = Parsers::AssociatedRolesList.parse(children)
        end
        data
      end
    end

    class AssociatedRolesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AssociatedRole.parse(node)
        end
        data
      end
    end

    class AssociatedRole
      def self.parse(xml)
        data = Types::AssociatedRole.new
        xml.at('associatedRoleArn') do |node|
          data.associated_role_arn = (node.text || '')
        end
        xml.at('certificateS3BucketName') do |node|
          data.certificate_s3_bucket_name = (node.text || '')
        end
        xml.at('certificateS3ObjectKey') do |node|
          data.certificate_s3_object_key = (node.text || '')
        end
        xml.at('encryptionKmsKeyId') do |node|
          data.encryption_kms_key_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetAssociatedIpv6PoolCidrs
    class GetAssociatedIpv6PoolCidrs
      def self.parse(http_resp)
        data = Types::GetAssociatedIpv6PoolCidrsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipv6CidrAssociationSet') do |node|
          children = node.children('item')
          data.ipv6_cidr_associations = Parsers::Ipv6CidrAssociationSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class Ipv6CidrAssociationSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Ipv6CidrAssociation.parse(node)
        end
        data
      end
    end

    class Ipv6CidrAssociation
      def self.parse(xml)
        data = Types::Ipv6CidrAssociation.new
        xml.at('ipv6Cidr') do |node|
          data.ipv6_cidr = (node.text || '')
        end
        xml.at('associatedResource') do |node|
          data.associated_resource = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetCapacityReservationUsage
    class GetCapacityReservationUsage
      def self.parse(http_resp)
        data = Types::GetCapacityReservationUsageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('capacityReservationId') do |node|
          data.capacity_reservation_id = (node.text || '')
        end
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('totalInstanceCount') do |node|
          data.total_instance_count = node.text&.to_i
        end
        xml.at('availableInstanceCount') do |node|
          data.available_instance_count = node.text&.to_i
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        xml.at('instanceUsageSet') do |node|
          children = node.children('item')
          data.instance_usages = Parsers::InstanceUsageSet.parse(children)
        end
        data
      end
    end

    class InstanceUsageSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceUsage.parse(node)
        end
        data
      end
    end

    class InstanceUsage
      def self.parse(xml)
        data = Types::InstanceUsage.new
        xml.at('accountId') do |node|
          data.account_id = (node.text || '')
        end
        xml.at('usedInstanceCount') do |node|
          data.used_instance_count = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for GetCoipPoolUsage
    class GetCoipPoolUsage
      def self.parse(http_resp)
        data = Types::GetCoipPoolUsageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('coipPoolId') do |node|
          data.coip_pool_id = (node.text || '')
        end
        xml.at('coipAddressUsageSet') do |node|
          children = node.children('item')
          data.coip_address_usages = Parsers::CoipAddressUsageSet.parse(children)
        end
        xml.at('localGatewayRouteTableId') do |node|
          data.local_gateway_route_table_id = (node.text || '')
        end
        data
      end
    end

    class CoipAddressUsageSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CoipAddressUsage.parse(node)
        end
        data
      end
    end

    class CoipAddressUsage
      def self.parse(xml)
        data = Types::CoipAddressUsage.new
        xml.at('allocationId') do |node|
          data.allocation_id = (node.text || '')
        end
        xml.at('awsAccountId') do |node|
          data.aws_account_id = (node.text || '')
        end
        xml.at('awsService') do |node|
          data.aws_service = (node.text || '')
        end
        xml.at('coIp') do |node|
          data.co_ip = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetConsoleOutput
    class GetConsoleOutput
      def self.parse(http_resp)
        data = Types::GetConsoleOutputOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('output') do |node|
          data.output = (node.text || '')
        end
        xml.at('timestamp') do |node|
          data.timestamp = Time.parse(node.text) if node.text
        end
        data
      end
    end

    # Operation Parser for GetConsoleScreenshot
    class GetConsoleScreenshot
      def self.parse(http_resp)
        data = Types::GetConsoleScreenshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('imageData') do |node|
          data.image_data = (node.text || '')
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetDefaultCreditSpecification
    class GetDefaultCreditSpecification
      def self.parse(http_resp)
        data = Types::GetDefaultCreditSpecificationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceFamilyCreditSpecification') do |node|
          data.instance_family_credit_specification = Parsers::InstanceFamilyCreditSpecification.parse(node)
        end
        data
      end
    end

    class InstanceFamilyCreditSpecification
      def self.parse(xml)
        data = Types::InstanceFamilyCreditSpecification.new
        xml.at('instanceFamily') do |node|
          data.instance_family = (node.text || '')
        end
        xml.at('cpuCredits') do |node|
          data.cpu_credits = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetEbsDefaultKmsKeyId
    class GetEbsDefaultKmsKeyId
      def self.parse(http_resp)
        data = Types::GetEbsDefaultKmsKeyIdOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('kmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetEbsEncryptionByDefault
    class GetEbsEncryptionByDefault
      def self.parse(http_resp)
        data = Types::GetEbsEncryptionByDefaultOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ebsEncryptionByDefault') do |node|
          data.ebs_encryption_by_default = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for GetFlowLogsIntegrationTemplate
    class GetFlowLogsIntegrationTemplate
      def self.parse(http_resp)
        data = Types::GetFlowLogsIntegrationTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('result') do |node|
          data.result = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetGroupsForCapacityReservation
    class GetGroupsForCapacityReservation
      def self.parse(http_resp)
        data = Types::GetGroupsForCapacityReservationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('capacityReservationGroupSet') do |node|
          children = node.children('item')
          data.capacity_reservation_groups = Parsers::CapacityReservationGroupSet.parse(children)
        end
        data
      end
    end

    class CapacityReservationGroupSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CapacityReservationGroup.parse(node)
        end
        data
      end
    end

    class CapacityReservationGroup
      def self.parse(xml)
        data = Types::CapacityReservationGroup.new
        xml.at('groupArn') do |node|
          data.group_arn = (node.text || '')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetHostReservationPurchasePreview
    class GetHostReservationPurchasePreview
      def self.parse(http_resp)
        data = Types::GetHostReservationPurchasePreviewOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('currencyCode') do |node|
          data.currency_code = (node.text || '')
        end
        xml.at('purchase') do |node|
          children = node.children('item')
          data.purchase = Parsers::PurchaseSet.parse(children)
        end
        xml.at('totalHourlyPrice') do |node|
          data.total_hourly_price = (node.text || '')
        end
        xml.at('totalUpfrontPrice') do |node|
          data.total_upfront_price = (node.text || '')
        end
        data
      end
    end

    class PurchaseSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Purchase.parse(node)
        end
        data
      end
    end

    class Purchase
      def self.parse(xml)
        data = Types::Purchase.new
        xml.at('currencyCode') do |node|
          data.currency_code = (node.text || '')
        end
        xml.at('duration') do |node|
          data.duration = node.text&.to_i
        end
        xml.at('hostIdSet') do |node|
          children = node.children('item')
          data.host_id_set = Parsers::ResponseHostIdSet.parse(children)
        end
        xml.at('hostReservationId') do |node|
          data.host_reservation_id = (node.text || '')
        end
        xml.at('hourlyPrice') do |node|
          data.hourly_price = (node.text || '')
        end
        xml.at('instanceFamily') do |node|
          data.instance_family = (node.text || '')
        end
        xml.at('paymentOption') do |node|
          data.payment_option = (node.text || '')
        end
        xml.at('upfrontPrice') do |node|
          data.upfront_price = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetInstanceTypesFromInstanceRequirements
    class GetInstanceTypesFromInstanceRequirements
      def self.parse(http_resp)
        data = Types::GetInstanceTypesFromInstanceRequirementsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceTypeSet') do |node|
          children = node.children('item')
          data.instance_types = Parsers::InstanceTypeInfoFromInstanceRequirementsSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class InstanceTypeInfoFromInstanceRequirementsSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceTypeInfoFromInstanceRequirements.parse(node)
        end
        data
      end
    end

    class InstanceTypeInfoFromInstanceRequirements
      def self.parse(xml)
        data = Types::InstanceTypeInfoFromInstanceRequirements.new
        xml.at('instanceType') do |node|
          data.instance_type = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetIpamAddressHistory
    class GetIpamAddressHistory
      def self.parse(http_resp)
        data = Types::GetIpamAddressHistoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('historyRecordSet') do |node|
          children = node.children('item')
          data.history_records = Parsers::IpamAddressHistoryRecordSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class IpamAddressHistoryRecordSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::IpamAddressHistoryRecord.parse(node)
        end
        data
      end
    end

    class IpamAddressHistoryRecord
      def self.parse(xml)
        data = Types::IpamAddressHistoryRecord.new
        xml.at('resourceOwnerId') do |node|
          data.resource_owner_id = (node.text || '')
        end
        xml.at('resourceRegion') do |node|
          data.resource_region = (node.text || '')
        end
        xml.at('resourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('resourceId') do |node|
          data.resource_id = (node.text || '')
        end
        xml.at('resourceCidr') do |node|
          data.resource_cidr = (node.text || '')
        end
        xml.at('resourceName') do |node|
          data.resource_name = (node.text || '')
        end
        xml.at('resourceComplianceStatus') do |node|
          data.resource_compliance_status = (node.text || '')
        end
        xml.at('resourceOverlapStatus') do |node|
          data.resource_overlap_status = (node.text || '')
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('sampledStartTime') do |node|
          data.sampled_start_time = Time.parse(node.text) if node.text
        end
        xml.at('sampledEndTime') do |node|
          data.sampled_end_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for GetIpamPoolAllocations
    class GetIpamPoolAllocations
      def self.parse(http_resp)
        data = Types::GetIpamPoolAllocationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipamPoolAllocationSet') do |node|
          children = node.children('item')
          data.ipam_pool_allocations = Parsers::IpamPoolAllocationSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class IpamPoolAllocationSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::IpamPoolAllocation.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetIpamPoolCidrs
    class GetIpamPoolCidrs
      def self.parse(http_resp)
        data = Types::GetIpamPoolCidrsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipamPoolCidrSet') do |node|
          children = node.children('item')
          data.ipam_pool_cidrs = Parsers::IpamPoolCidrSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class IpamPoolCidrSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::IpamPoolCidr.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetIpamResourceCidrs
    class GetIpamResourceCidrs
      def self.parse(http_resp)
        data = Types::GetIpamResourceCidrsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('ipamResourceCidrSet') do |node|
          children = node.children('item')
          data.ipam_resource_cidrs = Parsers::IpamResourceCidrSet.parse(children)
        end
        data
      end
    end

    class IpamResourceCidrSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::IpamResourceCidr.parse(node)
        end
        data
      end
    end

    class IpamResourceCidr
      def self.parse(xml)
        data = Types::IpamResourceCidr.new
        xml.at('ipamId') do |node|
          data.ipam_id = (node.text || '')
        end
        xml.at('ipamScopeId') do |node|
          data.ipam_scope_id = (node.text || '')
        end
        xml.at('ipamPoolId') do |node|
          data.ipam_pool_id = (node.text || '')
        end
        xml.at('resourceRegion') do |node|
          data.resource_region = (node.text || '')
        end
        xml.at('resourceOwnerId') do |node|
          data.resource_owner_id = (node.text || '')
        end
        xml.at('resourceId') do |node|
          data.resource_id = (node.text || '')
        end
        xml.at('resourceName') do |node|
          data.resource_name = (node.text || '')
        end
        xml.at('resourceCidr') do |node|
          data.resource_cidr = (node.text || '')
        end
        xml.at('resourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('resourceTagSet') do |node|
          children = node.children('item')
          data.resource_tags = Parsers::IpamResourceTagList.parse(children)
        end
        xml.at('ipUsage') do |node|
          data.ip_usage = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('complianceStatus') do |node|
          data.compliance_status = (node.text || '')
        end
        xml.at('managementState') do |node|
          data.management_state = (node.text || '')
        end
        xml.at('overlapStatus') do |node|
          data.overlap_status = (node.text || '')
        end
        xml.at('vpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetLaunchTemplateData
    class GetLaunchTemplateData
      def self.parse(http_resp)
        data = Types::GetLaunchTemplateDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('launchTemplateData') do |node|
          data.launch_template_data = Parsers::ResponseLaunchTemplateData.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetManagedPrefixListAssociations
    class GetManagedPrefixListAssociations
      def self.parse(http_resp)
        data = Types::GetManagedPrefixListAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('prefixListAssociationSet') do |node|
          children = node.children('item')
          data.prefix_list_associations = Parsers::PrefixListAssociationSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class PrefixListAssociationSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PrefixListAssociation.parse(node)
        end
        data
      end
    end

    class PrefixListAssociation
      def self.parse(xml)
        data = Types::PrefixListAssociation.new
        xml.at('resourceId') do |node|
          data.resource_id = (node.text || '')
        end
        xml.at('resourceOwner') do |node|
          data.resource_owner = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetManagedPrefixListEntries
    class GetManagedPrefixListEntries
      def self.parse(http_resp)
        data = Types::GetManagedPrefixListEntriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('entrySet') do |node|
          children = node.children('item')
          data.entries = Parsers::PrefixListEntrySet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class PrefixListEntrySet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PrefixListEntry.parse(node)
        end
        data
      end
    end

    class PrefixListEntry
      def self.parse(xml)
        data = Types::PrefixListEntry.new
        xml.at('cidr') do |node|
          data.cidr = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetNetworkInsightsAccessScopeAnalysisFindings
    class GetNetworkInsightsAccessScopeAnalysisFindings
      def self.parse(http_resp)
        data = Types::GetNetworkInsightsAccessScopeAnalysisFindingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkInsightsAccessScopeAnalysisId') do |node|
          data.network_insights_access_scope_analysis_id = (node.text || '')
        end
        xml.at('analysisStatus') do |node|
          data.analysis_status = (node.text || '')
        end
        xml.at('analysisFindingSet') do |node|
          children = node.children('item')
          data.analysis_findings = Parsers::AccessScopeAnalysisFindingList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class AccessScopeAnalysisFindingList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AccessScopeAnalysisFinding.parse(node)
        end
        data
      end
    end

    class AccessScopeAnalysisFinding
      def self.parse(xml)
        data = Types::AccessScopeAnalysisFinding.new
        xml.at('networkInsightsAccessScopeAnalysisId') do |node|
          data.network_insights_access_scope_analysis_id = (node.text || '')
        end
        xml.at('networkInsightsAccessScopeId') do |node|
          data.network_insights_access_scope_id = (node.text || '')
        end
        xml.at('findingId') do |node|
          data.finding_id = (node.text || '')
        end
        xml.at('findingComponentSet') do |node|
          children = node.children('item')
          data.finding_components = Parsers::PathComponentList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for GetNetworkInsightsAccessScopeContent
    class GetNetworkInsightsAccessScopeContent
      def self.parse(http_resp)
        data = Types::GetNetworkInsightsAccessScopeContentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkInsightsAccessScopeContent') do |node|
          data.network_insights_access_scope_content = Parsers::NetworkInsightsAccessScopeContent.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetPasswordData
    class GetPasswordData
      def self.parse(http_resp)
        data = Types::GetPasswordDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('passwordData') do |node|
          data.password_data = (node.text || '')
        end
        xml.at('timestamp') do |node|
          data.timestamp = Time.parse(node.text) if node.text
        end
        data
      end
    end

    # Operation Parser for GetReservedInstancesExchangeQuote
    class GetReservedInstancesExchangeQuote
      def self.parse(http_resp)
        data = Types::GetReservedInstancesExchangeQuoteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('currencyCode') do |node|
          data.currency_code = (node.text || '')
        end
        xml.at('isValidExchange') do |node|
          data.is_valid_exchange = (node.text == 'true')
        end
        xml.at('outputReservedInstancesWillExpireAt') do |node|
          data.output_reserved_instances_will_expire_at = Time.parse(node.text) if node.text
        end
        xml.at('paymentDue') do |node|
          data.payment_due = (node.text || '')
        end
        xml.at('reservedInstanceValueRollup') do |node|
          data.reserved_instance_value_rollup = Parsers::ReservationValue.parse(node)
        end
        xml.at('reservedInstanceValueSet') do |node|
          children = node.children('item')
          data.reserved_instance_value_set = Parsers::ReservedInstanceReservationValueSet.parse(children)
        end
        xml.at('targetConfigurationValueRollup') do |node|
          data.target_configuration_value_rollup = Parsers::ReservationValue.parse(node)
        end
        xml.at('targetConfigurationValueSet') do |node|
          children = node.children('item')
          data.target_configuration_value_set = Parsers::TargetReservationValueSet.parse(children)
        end
        xml.at('validationFailureReason') do |node|
          data.validation_failure_reason = (node.text || '')
        end
        data
      end
    end

    class TargetReservationValueSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TargetReservationValue.parse(node)
        end
        data
      end
    end

    class TargetReservationValue
      def self.parse(xml)
        data = Types::TargetReservationValue.new
        xml.at('reservationValue') do |node|
          data.reservation_value = Parsers::ReservationValue.parse(node)
        end
        xml.at('targetConfiguration') do |node|
          data.target_configuration = Parsers::TargetConfiguration.parse(node)
        end
        return data
      end
    end

    class TargetConfiguration
      def self.parse(xml)
        data = Types::TargetConfiguration.new
        xml.at('instanceCount') do |node|
          data.instance_count = node.text&.to_i
        end
        xml.at('offeringId') do |node|
          data.offering_id = (node.text || '')
        end
        return data
      end
    end

    class ReservationValue
      def self.parse(xml)
        data = Types::ReservationValue.new
        xml.at('hourlyPrice') do |node|
          data.hourly_price = (node.text || '')
        end
        xml.at('remainingTotalValue') do |node|
          data.remaining_total_value = (node.text || '')
        end
        xml.at('remainingUpfrontValue') do |node|
          data.remaining_upfront_value = (node.text || '')
        end
        return data
      end
    end

    class ReservedInstanceReservationValueSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ReservedInstanceReservationValue.parse(node)
        end
        data
      end
    end

    class ReservedInstanceReservationValue
      def self.parse(xml)
        data = Types::ReservedInstanceReservationValue.new
        xml.at('reservationValue') do |node|
          data.reservation_value = Parsers::ReservationValue.parse(node)
        end
        xml.at('reservedInstanceId') do |node|
          data.reserved_instance_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetSerialConsoleAccessStatus
    class GetSerialConsoleAccessStatus
      def self.parse(http_resp)
        data = Types::GetSerialConsoleAccessStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('serialConsoleAccessEnabled') do |node|
          data.serial_console_access_enabled = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for GetSpotPlacementScores
    class GetSpotPlacementScores
      def self.parse(http_resp)
        data = Types::GetSpotPlacementScoresOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('spotPlacementScoreSet') do |node|
          children = node.children('item')
          data.spot_placement_scores = Parsers::SpotPlacementScores.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class SpotPlacementScores
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SpotPlacementScore.parse(node)
        end
        data
      end
    end

    class SpotPlacementScore
      def self.parse(xml)
        data = Types::SpotPlacementScore.new
        xml.at('region') do |node|
          data.region = (node.text || '')
        end
        xml.at('availabilityZoneId') do |node|
          data.availability_zone_id = (node.text || '')
        end
        xml.at('score') do |node|
          data.score = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for GetSubnetCidrReservations
    class GetSubnetCidrReservations
      def self.parse(http_resp)
        data = Types::GetSubnetCidrReservationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('subnetIpv4CidrReservationSet') do |node|
          children = node.children('item')
          data.subnet_ipv4_cidr_reservations = Parsers::SubnetCidrReservationList.parse(children)
        end
        xml.at('subnetIpv6CidrReservationSet') do |node|
          children = node.children('item')
          data.subnet_ipv6_cidr_reservations = Parsers::SubnetCidrReservationList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class SubnetCidrReservationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SubnetCidrReservation.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetTransitGatewayAttachmentPropagations
    class GetTransitGatewayAttachmentPropagations
      def self.parse(http_resp)
        data = Types::GetTransitGatewayAttachmentPropagationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayAttachmentPropagations') do |node|
          children = node.children('item')
          data.transit_gateway_attachment_propagations = Parsers::TransitGatewayAttachmentPropagationList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TransitGatewayAttachmentPropagationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TransitGatewayAttachmentPropagation.parse(node)
        end
        data
      end
    end

    class TransitGatewayAttachmentPropagation
      def self.parse(xml)
        data = Types::TransitGatewayAttachmentPropagation.new
        xml.at('transitGatewayRouteTableId') do |node|
          data.transit_gateway_route_table_id = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetTransitGatewayMulticastDomainAssociations
    class GetTransitGatewayMulticastDomainAssociations
      def self.parse(http_resp)
        data = Types::GetTransitGatewayMulticastDomainAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('multicastDomainAssociations') do |node|
          children = node.children('item')
          data.multicast_domain_associations = Parsers::TransitGatewayMulticastDomainAssociationList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TransitGatewayMulticastDomainAssociationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TransitGatewayMulticastDomainAssociation.parse(node)
        end
        data
      end
    end

    class TransitGatewayMulticastDomainAssociation
      def self.parse(xml)
        data = Types::TransitGatewayMulticastDomainAssociation.new
        xml.at('transitGatewayAttachmentId') do |node|
          data.transit_gateway_attachment_id = (node.text || '')
        end
        xml.at('resourceId') do |node|
          data.resource_id = (node.text || '')
        end
        xml.at('resourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('resourceOwnerId') do |node|
          data.resource_owner_id = (node.text || '')
        end
        xml.at('subnet') do |node|
          data.subnet = Parsers::SubnetAssociation.parse(node)
        end
        return data
      end
    end

    # Operation Parser for GetTransitGatewayPrefixListReferences
    class GetTransitGatewayPrefixListReferences
      def self.parse(http_resp)
        data = Types::GetTransitGatewayPrefixListReferencesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayPrefixListReferenceSet') do |node|
          children = node.children('item')
          data.transit_gateway_prefix_list_references = Parsers::TransitGatewayPrefixListReferenceSet.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TransitGatewayPrefixListReferenceSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TransitGatewayPrefixListReference.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetTransitGatewayRouteTableAssociations
    class GetTransitGatewayRouteTableAssociations
      def self.parse(http_resp)
        data = Types::GetTransitGatewayRouteTableAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('associations') do |node|
          children = node.children('item')
          data.associations = Parsers::TransitGatewayRouteTableAssociationList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TransitGatewayRouteTableAssociationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TransitGatewayRouteTableAssociation.parse(node)
        end
        data
      end
    end

    class TransitGatewayRouteTableAssociation
      def self.parse(xml)
        data = Types::TransitGatewayRouteTableAssociation.new
        xml.at('transitGatewayAttachmentId') do |node|
          data.transit_gateway_attachment_id = (node.text || '')
        end
        xml.at('resourceId') do |node|
          data.resource_id = (node.text || '')
        end
        xml.at('resourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetTransitGatewayRouteTablePropagations
    class GetTransitGatewayRouteTablePropagations
      def self.parse(http_resp)
        data = Types::GetTransitGatewayRouteTablePropagationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayRouteTablePropagations') do |node|
          children = node.children('item')
          data.transit_gateway_route_table_propagations = Parsers::TransitGatewayRouteTablePropagationList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TransitGatewayRouteTablePropagationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TransitGatewayRouteTablePropagation.parse(node)
        end
        data
      end
    end

    class TransitGatewayRouteTablePropagation
      def self.parse(xml)
        data = Types::TransitGatewayRouteTablePropagation.new
        xml.at('transitGatewayAttachmentId') do |node|
          data.transit_gateway_attachment_id = (node.text || '')
        end
        xml.at('resourceId') do |node|
          data.resource_id = (node.text || '')
        end
        xml.at('resourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('state') do |node|
          data.state = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetVpnConnectionDeviceSampleConfiguration
    class GetVpnConnectionDeviceSampleConfiguration
      def self.parse(http_resp)
        data = Types::GetVpnConnectionDeviceSampleConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpnConnectionDeviceSampleConfiguration') do |node|
          data.vpn_connection_device_sample_configuration = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetVpnConnectionDeviceTypes
    class GetVpnConnectionDeviceTypes
      def self.parse(http_resp)
        data = Types::GetVpnConnectionDeviceTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpnConnectionDeviceTypeSet') do |node|
          children = node.children('item')
          data.vpn_connection_device_types = Parsers::VpnConnectionDeviceTypeList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class VpnConnectionDeviceTypeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VpnConnectionDeviceType.parse(node)
        end
        data
      end
    end

    class VpnConnectionDeviceType
      def self.parse(xml)
        data = Types::VpnConnectionDeviceType.new
        xml.at('vpnConnectionDeviceTypeId') do |node|
          data.vpn_connection_device_type_id = (node.text || '')
        end
        xml.at('vendor') do |node|
          data.vendor = (node.text || '')
        end
        xml.at('platform') do |node|
          data.platform = (node.text || '')
        end
        xml.at('software') do |node|
          data.software = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ImportClientVpnClientCertificateRevocationList
    class ImportClientVpnClientCertificateRevocationList
      def self.parse(http_resp)
        data = Types::ImportClientVpnClientCertificateRevocationListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ImportImage
    class ImportImage
      def self.parse(http_resp)
        data = Types::ImportImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('architecture') do |node|
          data.architecture = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('encrypted') do |node|
          data.encrypted = (node.text == 'true')
        end
        xml.at('hypervisor') do |node|
          data.hypervisor = (node.text || '')
        end
        xml.at('imageId') do |node|
          data.image_id = (node.text || '')
        end
        xml.at('importTaskId') do |node|
          data.import_task_id = (node.text || '')
        end
        xml.at('kmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('licenseType') do |node|
          data.license_type = (node.text || '')
        end
        xml.at('platform') do |node|
          data.platform = (node.text || '')
        end
        xml.at('progress') do |node|
          data.progress = (node.text || '')
        end
        xml.at('snapshotDetailSet') do |node|
          children = node.children('item')
          data.snapshot_details = Parsers::SnapshotDetailList.parse(children)
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        xml.at('statusMessage') do |node|
          data.status_message = (node.text || '')
        end
        xml.at('licenseSpecifications') do |node|
          children = node.children('item')
          data.license_specifications = Parsers::ImportImageLicenseSpecificationListResponse.parse(children)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('usageOperation') do |node|
          data.usage_operation = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ImportInstance
    class ImportInstance
      def self.parse(http_resp)
        data = Types::ImportInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('conversionTask') do |node|
          data.conversion_task = Parsers::ConversionTask.parse(node)
        end
        data
      end
    end

    # Operation Parser for ImportKeyPair
    class ImportKeyPair
      def self.parse(http_resp)
        data = Types::ImportKeyPairOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('keyFingerprint') do |node|
          data.key_fingerprint = (node.text || '')
        end
        xml.at('keyName') do |node|
          data.key_name = (node.text || '')
        end
        xml.at('keyPairId') do |node|
          data.key_pair_id = (node.text || '')
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        data
      end
    end

    # Operation Parser for ImportSnapshot
    class ImportSnapshot
      def self.parse(http_resp)
        data = Types::ImportSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('importTaskId') do |node|
          data.import_task_id = (node.text || '')
        end
        xml.at('snapshotTaskDetail') do |node|
          data.snapshot_task_detail = Parsers::SnapshotTaskDetail.parse(node)
        end
        xml.at('tagSet') do |node|
          children = node.children('item')
          data.tags = Parsers::TagList.parse(children)
        end
        data
      end
    end

    # Operation Parser for ImportVolume
    class ImportVolume
      def self.parse(http_resp)
        data = Types::ImportVolumeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('conversionTask') do |node|
          data.conversion_task = Parsers::ConversionTask.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListSnapshotsInRecycleBin
    class ListSnapshotsInRecycleBin
      def self.parse(http_resp)
        data = Types::ListSnapshotsInRecycleBinOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('snapshotSet') do |node|
          children = node.children('item')
          data.snapshots = Parsers::SnapshotRecycleBinInfoList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class SnapshotRecycleBinInfoList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SnapshotRecycleBinInfo.parse(node)
        end
        data
      end
    end

    class SnapshotRecycleBinInfo
      def self.parse(xml)
        data = Types::SnapshotRecycleBinInfo.new
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('recycleBinEnterTime') do |node|
          data.recycle_bin_enter_time = Time.parse(node.text) if node.text
        end
        xml.at('recycleBinExitTime') do |node|
          data.recycle_bin_exit_time = Time.parse(node.text) if node.text
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('volumeId') do |node|
          data.volume_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ModifyAddressAttribute
    class ModifyAddressAttribute
      def self.parse(http_resp)
        data = Types::ModifyAddressAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('address') do |node|
          data.address = Parsers::AddressAttribute.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyAvailabilityZoneGroup
    class ModifyAvailabilityZoneGroup
      def self.parse(http_resp)
        data = Types::ModifyAvailabilityZoneGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ModifyCapacityReservation
    class ModifyCapacityReservation
      def self.parse(http_resp)
        data = Types::ModifyCapacityReservationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ModifyCapacityReservationFleet
    class ModifyCapacityReservationFleet
      def self.parse(http_resp)
        data = Types::ModifyCapacityReservationFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ModifyClientVpnEndpoint
    class ModifyClientVpnEndpoint
      def self.parse(http_resp)
        data = Types::ModifyClientVpnEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ModifyDefaultCreditSpecification
    class ModifyDefaultCreditSpecification
      def self.parse(http_resp)
        data = Types::ModifyDefaultCreditSpecificationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceFamilyCreditSpecification') do |node|
          data.instance_family_credit_specification = Parsers::InstanceFamilyCreditSpecification.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyEbsDefaultKmsKeyId
    class ModifyEbsDefaultKmsKeyId
      def self.parse(http_resp)
        data = Types::ModifyEbsDefaultKmsKeyIdOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('kmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifyFleet
    class ModifyFleet
      def self.parse(http_resp)
        data = Types::ModifyFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ModifyFpgaImageAttribute
    class ModifyFpgaImageAttribute
      def self.parse(http_resp)
        data = Types::ModifyFpgaImageAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('fpgaImageAttribute') do |node|
          data.fpga_image_attribute = Parsers::FpgaImageAttribute.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyHosts
    class ModifyHosts
      def self.parse(http_resp)
        data = Types::ModifyHostsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('successful') do |node|
          children = node.children('item')
          data.successful = Parsers::ResponseHostIdList.parse(children)
        end
        xml.at('unsuccessful') do |node|
          children = node.children('item')
          data.unsuccessful = Parsers::UnsuccessfulItemList.parse(children)
        end
        data
      end
    end

    class UnsuccessfulItemList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::UnsuccessfulItem.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyIdFormat
    class ModifyIdFormat
      def self.parse(http_resp)
        data = Types::ModifyIdFormatOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for ModifyIdentityIdFormat
    class ModifyIdentityIdFormat
      def self.parse(http_resp)
        data = Types::ModifyIdentityIdFormatOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for ModifyImageAttribute
    class ModifyImageAttribute
      def self.parse(http_resp)
        data = Types::ModifyImageAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for ModifyInstanceAttribute
    class ModifyInstanceAttribute
      def self.parse(http_resp)
        data = Types::ModifyInstanceAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for ModifyInstanceCapacityReservationAttributes
    class ModifyInstanceCapacityReservationAttributes
      def self.parse(http_resp)
        data = Types::ModifyInstanceCapacityReservationAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ModifyInstanceCreditSpecification
    class ModifyInstanceCreditSpecification
      def self.parse(http_resp)
        data = Types::ModifyInstanceCreditSpecificationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('successfulInstanceCreditSpecificationSet') do |node|
          children = node.children('item')
          data.successful_instance_credit_specifications = Parsers::SuccessfulInstanceCreditSpecificationSet.parse(children)
        end
        xml.at('unsuccessfulInstanceCreditSpecificationSet') do |node|
          children = node.children('item')
          data.unsuccessful_instance_credit_specifications = Parsers::UnsuccessfulInstanceCreditSpecificationSet.parse(children)
        end
        data
      end
    end

    class UnsuccessfulInstanceCreditSpecificationSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::UnsuccessfulInstanceCreditSpecificationItem.parse(node)
        end
        data
      end
    end

    class UnsuccessfulInstanceCreditSpecificationItem
      def self.parse(xml)
        data = Types::UnsuccessfulInstanceCreditSpecificationItem.new
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('error') do |node|
          data.error = Parsers::UnsuccessfulInstanceCreditSpecificationItemError.parse(node)
        end
        return data
      end
    end

    class UnsuccessfulInstanceCreditSpecificationItemError
      def self.parse(xml)
        data = Types::UnsuccessfulInstanceCreditSpecificationItemError.new
        xml.at('code') do |node|
          data.code = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    class SuccessfulInstanceCreditSpecificationSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SuccessfulInstanceCreditSpecificationItem.parse(node)
        end
        data
      end
    end

    class SuccessfulInstanceCreditSpecificationItem
      def self.parse(xml)
        data = Types::SuccessfulInstanceCreditSpecificationItem.new
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ModifyInstanceEventStartTime
    class ModifyInstanceEventStartTime
      def self.parse(http_resp)
        data = Types::ModifyInstanceEventStartTimeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('event') do |node|
          data.event = Parsers::InstanceStatusEvent.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyInstanceEventWindow
    class ModifyInstanceEventWindow
      def self.parse(http_resp)
        data = Types::ModifyInstanceEventWindowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceEventWindow') do |node|
          data.instance_event_window = Parsers::InstanceEventWindow.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyInstanceMetadataOptions
    class ModifyInstanceMetadataOptions
      def self.parse(http_resp)
        data = Types::ModifyInstanceMetadataOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('instanceMetadataOptions') do |node|
          data.instance_metadata_options = Parsers::InstanceMetadataOptionsResponse.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyInstancePlacement
    class ModifyInstancePlacement
      def self.parse(http_resp)
        data = Types::ModifyInstancePlacementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ModifyIpam
    class ModifyIpam
      def self.parse(http_resp)
        data = Types::ModifyIpamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipam') do |node|
          data.ipam = Parsers::Ipam.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyIpamPool
    class ModifyIpamPool
      def self.parse(http_resp)
        data = Types::ModifyIpamPoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipamPool') do |node|
          data.ipam_pool = Parsers::IpamPool.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyIpamResourceCidr
    class ModifyIpamResourceCidr
      def self.parse(http_resp)
        data = Types::ModifyIpamResourceCidrOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipamResourceCidr') do |node|
          data.ipam_resource_cidr = Parsers::IpamResourceCidr.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyIpamScope
    class ModifyIpamScope
      def self.parse(http_resp)
        data = Types::ModifyIpamScopeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipamScope') do |node|
          data.ipam_scope = Parsers::IpamScope.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyLaunchTemplate
    class ModifyLaunchTemplate
      def self.parse(http_resp)
        data = Types::ModifyLaunchTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('launchTemplate') do |node|
          data.launch_template = Parsers::LaunchTemplate.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyManagedPrefixList
    class ModifyManagedPrefixList
      def self.parse(http_resp)
        data = Types::ModifyManagedPrefixListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('prefixList') do |node|
          data.prefix_list = Parsers::ManagedPrefixList.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyNetworkInterfaceAttribute
    class ModifyNetworkInterfaceAttribute
      def self.parse(http_resp)
        data = Types::ModifyNetworkInterfaceAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for ModifyPrivateDnsNameOptions
    class ModifyPrivateDnsNameOptions
      def self.parse(http_resp)
        data = Types::ModifyPrivateDnsNameOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ModifyReservedInstances
    class ModifyReservedInstances
      def self.parse(http_resp)
        data = Types::ModifyReservedInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('reservedInstancesModificationId') do |node|
          data.reserved_instances_modification_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifySecurityGroupRules
    class ModifySecurityGroupRules
      def self.parse(http_resp)
        data = Types::ModifySecurityGroupRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ModifySnapshotAttribute
    class ModifySnapshotAttribute
      def self.parse(http_resp)
        data = Types::ModifySnapshotAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for ModifySnapshotTier
    class ModifySnapshotTier
      def self.parse(http_resp)
        data = Types::ModifySnapshotTierOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('tieringStartTime') do |node|
          data.tiering_start_time = Time.parse(node.text) if node.text
        end
        data
      end
    end

    # Operation Parser for ModifySpotFleetRequest
    class ModifySpotFleetRequest
      def self.parse(http_resp)
        data = Types::ModifySpotFleetRequestOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ModifySubnetAttribute
    class ModifySubnetAttribute
      def self.parse(http_resp)
        data = Types::ModifySubnetAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for ModifyTrafficMirrorFilterNetworkServices
    class ModifyTrafficMirrorFilterNetworkServices
      def self.parse(http_resp)
        data = Types::ModifyTrafficMirrorFilterNetworkServicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('trafficMirrorFilter') do |node|
          data.traffic_mirror_filter = Parsers::TrafficMirrorFilter.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyTrafficMirrorFilterRule
    class ModifyTrafficMirrorFilterRule
      def self.parse(http_resp)
        data = Types::ModifyTrafficMirrorFilterRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('trafficMirrorFilterRule') do |node|
          data.traffic_mirror_filter_rule = Parsers::TrafficMirrorFilterRule.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyTrafficMirrorSession
    class ModifyTrafficMirrorSession
      def self.parse(http_resp)
        data = Types::ModifyTrafficMirrorSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('trafficMirrorSession') do |node|
          data.traffic_mirror_session = Parsers::TrafficMirrorSession.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyTransitGateway
    class ModifyTransitGateway
      def self.parse(http_resp)
        data = Types::ModifyTransitGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGateway') do |node|
          data.transit_gateway = Parsers::TransitGateway.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyTransitGatewayPrefixListReference
    class ModifyTransitGatewayPrefixListReference
      def self.parse(http_resp)
        data = Types::ModifyTransitGatewayPrefixListReferenceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayPrefixListReference') do |node|
          data.transit_gateway_prefix_list_reference = Parsers::TransitGatewayPrefixListReference.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyTransitGatewayVpcAttachment
    class ModifyTransitGatewayVpcAttachment
      def self.parse(http_resp)
        data = Types::ModifyTransitGatewayVpcAttachmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayVpcAttachment') do |node|
          data.transit_gateway_vpc_attachment = Parsers::TransitGatewayVpcAttachment.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyVolume
    class ModifyVolume
      def self.parse(http_resp)
        data = Types::ModifyVolumeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('volumeModification') do |node|
          data.volume_modification = Parsers::VolumeModification.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyVolumeAttribute
    class ModifyVolumeAttribute
      def self.parse(http_resp)
        data = Types::ModifyVolumeAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for ModifyVpcAttribute
    class ModifyVpcAttribute
      def self.parse(http_resp)
        data = Types::ModifyVpcAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for ModifyVpcEndpoint
    class ModifyVpcEndpoint
      def self.parse(http_resp)
        data = Types::ModifyVpcEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ModifyVpcEndpointConnectionNotification
    class ModifyVpcEndpointConnectionNotification
      def self.parse(http_resp)
        data = Types::ModifyVpcEndpointConnectionNotificationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return_value = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ModifyVpcEndpointServiceConfiguration
    class ModifyVpcEndpointServiceConfiguration
      def self.parse(http_resp)
        data = Types::ModifyVpcEndpointServiceConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ModifyVpcEndpointServicePayerResponsibility
    class ModifyVpcEndpointServicePayerResponsibility
      def self.parse(http_resp)
        data = Types::ModifyVpcEndpointServicePayerResponsibilityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return_value = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ModifyVpcEndpointServicePermissions
    class ModifyVpcEndpointServicePermissions
      def self.parse(http_resp)
        data = Types::ModifyVpcEndpointServicePermissionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return_value = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ModifyVpcPeeringConnectionOptions
    class ModifyVpcPeeringConnectionOptions
      def self.parse(http_resp)
        data = Types::ModifyVpcPeeringConnectionOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('accepterPeeringConnectionOptions') do |node|
          data.accepter_peering_connection_options = Parsers::PeeringConnectionOptions.parse(node)
        end
        xml.at('requesterPeeringConnectionOptions') do |node|
          data.requester_peering_connection_options = Parsers::PeeringConnectionOptions.parse(node)
        end
        data
      end
    end

    class PeeringConnectionOptions
      def self.parse(xml)
        data = Types::PeeringConnectionOptions.new
        xml.at('allowDnsResolutionFromRemoteVpc') do |node|
          data.allow_dns_resolution_from_remote_vpc = (node.text == 'true')
        end
        xml.at('allowEgressFromLocalClassicLinkToRemoteVpc') do |node|
          data.allow_egress_from_local_classic_link_to_remote_vpc = (node.text == 'true')
        end
        xml.at('allowEgressFromLocalVpcToRemoteClassicLink') do |node|
          data.allow_egress_from_local_vpc_to_remote_classic_link = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for ModifyVpcTenancy
    class ModifyVpcTenancy
      def self.parse(http_resp)
        data = Types::ModifyVpcTenancyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return_value = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ModifyVpnConnection
    class ModifyVpnConnection
      def self.parse(http_resp)
        data = Types::ModifyVpnConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpnConnection') do |node|
          data.vpn_connection = Parsers::VpnConnection.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyVpnConnectionOptions
    class ModifyVpnConnectionOptions
      def self.parse(http_resp)
        data = Types::ModifyVpnConnectionOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpnConnection') do |node|
          data.vpn_connection = Parsers::VpnConnection.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyVpnTunnelCertificate
    class ModifyVpnTunnelCertificate
      def self.parse(http_resp)
        data = Types::ModifyVpnTunnelCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpnConnection') do |node|
          data.vpn_connection = Parsers::VpnConnection.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyVpnTunnelOptions
    class ModifyVpnTunnelOptions
      def self.parse(http_resp)
        data = Types::ModifyVpnTunnelOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('vpnConnection') do |node|
          data.vpn_connection = Parsers::VpnConnection.parse(node)
        end
        data
      end
    end

    # Operation Parser for MonitorInstances
    class MonitorInstances
      def self.parse(http_resp)
        data = Types::MonitorInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instancesSet') do |node|
          children = node.children('item')
          data.instance_monitorings = Parsers::InstanceMonitoringList.parse(children)
        end
        data
      end
    end

    class InstanceMonitoringList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceMonitoring.parse(node)
        end
        data
      end
    end

    class InstanceMonitoring
      def self.parse(xml)
        data = Types::InstanceMonitoring.new
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('monitoring') do |node|
          data.monitoring = Parsers::Monitoring.parse(node)
        end
        return data
      end
    end

    # Operation Parser for MoveAddressToVpc
    class MoveAddressToVpc
      def self.parse(http_resp)
        data = Types::MoveAddressToVpcOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('allocationId') do |node|
          data.allocation_id = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for MoveByoipCidrToIpam
    class MoveByoipCidrToIpam
      def self.parse(http_resp)
        data = Types::MoveByoipCidrToIpamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('byoipCidr') do |node|
          data.byoip_cidr = Parsers::ByoipCidr.parse(node)
        end
        data
      end
    end

    # Operation Parser for ProvisionByoipCidr
    class ProvisionByoipCidr
      def self.parse(http_resp)
        data = Types::ProvisionByoipCidrOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('byoipCidr') do |node|
          data.byoip_cidr = Parsers::ByoipCidr.parse(node)
        end
        data
      end
    end

    # Operation Parser for ProvisionIpamPoolCidr
    class ProvisionIpamPoolCidr
      def self.parse(http_resp)
        data = Types::ProvisionIpamPoolCidrOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ipamPoolCidr') do |node|
          data.ipam_pool_cidr = Parsers::IpamPoolCidr.parse(node)
        end
        data
      end
    end

    # Operation Parser for ProvisionPublicIpv4PoolCidr
    class ProvisionPublicIpv4PoolCidr
      def self.parse(http_resp)
        data = Types::ProvisionPublicIpv4PoolCidrOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('poolId') do |node|
          data.pool_id = (node.text || '')
        end
        xml.at('poolAddressRange') do |node|
          data.pool_address_range = Parsers::PublicIpv4PoolRange.parse(node)
        end
        data
      end
    end

    # Operation Parser for PurchaseHostReservation
    class PurchaseHostReservation
      def self.parse(http_resp)
        data = Types::PurchaseHostReservationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('clientToken') do |node|
          data.client_token = (node.text || '')
        end
        xml.at('currencyCode') do |node|
          data.currency_code = (node.text || '')
        end
        xml.at('purchase') do |node|
          children = node.children('item')
          data.purchase = Parsers::PurchaseSet.parse(children)
        end
        xml.at('totalHourlyPrice') do |node|
          data.total_hourly_price = (node.text || '')
        end
        xml.at('totalUpfrontPrice') do |node|
          data.total_upfront_price = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for PurchaseReservedInstancesOffering
    class PurchaseReservedInstancesOffering
      def self.parse(http_resp)
        data = Types::PurchaseReservedInstancesOfferingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('reservedInstancesId') do |node|
          data.reserved_instances_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for PurchaseScheduledInstances
    class PurchaseScheduledInstances
      def self.parse(http_resp)
        data = Types::PurchaseScheduledInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('scheduledInstanceSet') do |node|
          children = node.children('item')
          data.scheduled_instance_set = Parsers::PurchasedScheduledInstanceSet.parse(children)
        end
        data
      end
    end

    class PurchasedScheduledInstanceSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ScheduledInstance.parse(node)
        end
        data
      end
    end

    # Operation Parser for RebootInstances
    class RebootInstances
      def self.parse(http_resp)
        data = Types::RebootInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for RegisterImage
    class RegisterImage
      def self.parse(http_resp)
        data = Types::RegisterImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('imageId') do |node|
          data.image_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RegisterInstanceEventNotificationAttributes
    class RegisterInstanceEventNotificationAttributes
      def self.parse(http_resp)
        data = Types::RegisterInstanceEventNotificationAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceTagAttribute') do |node|
          data.instance_tag_attribute = Parsers::InstanceTagNotificationAttribute.parse(node)
        end
        data
      end
    end

    # Operation Parser for RegisterTransitGatewayMulticastGroupMembers
    class RegisterTransitGatewayMulticastGroupMembers
      def self.parse(http_resp)
        data = Types::RegisterTransitGatewayMulticastGroupMembersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('registeredMulticastGroupMembers') do |node|
          data.registered_multicast_group_members = Parsers::TransitGatewayMulticastRegisteredGroupMembers.parse(node)
        end
        data
      end
    end

    class TransitGatewayMulticastRegisteredGroupMembers
      def self.parse(xml)
        data = Types::TransitGatewayMulticastRegisteredGroupMembers.new
        xml.at('transitGatewayMulticastDomainId') do |node|
          data.transit_gateway_multicast_domain_id = (node.text || '')
        end
        xml.at('registeredNetworkInterfaceIds') do |node|
          children = node.children('item')
          data.registered_network_interface_ids = Parsers::ValueStringList.parse(children)
        end
        xml.at('groupIpAddress') do |node|
          data.group_ip_address = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for RegisterTransitGatewayMulticastGroupSources
    class RegisterTransitGatewayMulticastGroupSources
      def self.parse(http_resp)
        data = Types::RegisterTransitGatewayMulticastGroupSourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('registeredMulticastGroupSources') do |node|
          data.registered_multicast_group_sources = Parsers::TransitGatewayMulticastRegisteredGroupSources.parse(node)
        end
        data
      end
    end

    class TransitGatewayMulticastRegisteredGroupSources
      def self.parse(xml)
        data = Types::TransitGatewayMulticastRegisteredGroupSources.new
        xml.at('transitGatewayMulticastDomainId') do |node|
          data.transit_gateway_multicast_domain_id = (node.text || '')
        end
        xml.at('registeredNetworkInterfaceIds') do |node|
          children = node.children('item')
          data.registered_network_interface_ids = Parsers::ValueStringList.parse(children)
        end
        xml.at('groupIpAddress') do |node|
          data.group_ip_address = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for RejectTransitGatewayMulticastDomainAssociations
    class RejectTransitGatewayMulticastDomainAssociations
      def self.parse(http_resp)
        data = Types::RejectTransitGatewayMulticastDomainAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('associations') do |node|
          data.associations = Parsers::TransitGatewayMulticastDomainAssociations.parse(node)
        end
        data
      end
    end

    # Operation Parser for RejectTransitGatewayPeeringAttachment
    class RejectTransitGatewayPeeringAttachment
      def self.parse(http_resp)
        data = Types::RejectTransitGatewayPeeringAttachmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayPeeringAttachment') do |node|
          data.transit_gateway_peering_attachment = Parsers::TransitGatewayPeeringAttachment.parse(node)
        end
        data
      end
    end

    # Operation Parser for RejectTransitGatewayVpcAttachment
    class RejectTransitGatewayVpcAttachment
      def self.parse(http_resp)
        data = Types::RejectTransitGatewayVpcAttachmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('transitGatewayVpcAttachment') do |node|
          data.transit_gateway_vpc_attachment = Parsers::TransitGatewayVpcAttachment.parse(node)
        end
        data
      end
    end

    # Operation Parser for RejectVpcEndpointConnections
    class RejectVpcEndpointConnections
      def self.parse(http_resp)
        data = Types::RejectVpcEndpointConnectionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('unsuccessful') do |node|
          children = node.children('item')
          data.unsuccessful = Parsers::UnsuccessfulItemSet.parse(children)
        end
        data
      end
    end

    # Operation Parser for RejectVpcPeeringConnection
    class RejectVpcPeeringConnection
      def self.parse(http_resp)
        data = Types::RejectVpcPeeringConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ReleaseAddress
    class ReleaseAddress
      def self.parse(http_resp)
        data = Types::ReleaseAddressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for ReleaseHosts
    class ReleaseHosts
      def self.parse(http_resp)
        data = Types::ReleaseHostsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('successful') do |node|
          children = node.children('item')
          data.successful = Parsers::ResponseHostIdList.parse(children)
        end
        xml.at('unsuccessful') do |node|
          children = node.children('item')
          data.unsuccessful = Parsers::UnsuccessfulItemList.parse(children)
        end
        data
      end
    end

    # Operation Parser for ReleaseIpamPoolAllocation
    class ReleaseIpamPoolAllocation
      def self.parse(http_resp)
        data = Types::ReleaseIpamPoolAllocationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('success') do |node|
          data.success = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ReplaceIamInstanceProfileAssociation
    class ReplaceIamInstanceProfileAssociation
      def self.parse(http_resp)
        data = Types::ReplaceIamInstanceProfileAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('iamInstanceProfileAssociation') do |node|
          data.iam_instance_profile_association = Parsers::IamInstanceProfileAssociation.parse(node)
        end
        data
      end
    end

    # Operation Parser for ReplaceNetworkAclAssociation
    class ReplaceNetworkAclAssociation
      def self.parse(http_resp)
        data = Types::ReplaceNetworkAclAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('newAssociationId') do |node|
          data.new_association_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ReplaceNetworkAclEntry
    class ReplaceNetworkAclEntry
      def self.parse(http_resp)
        data = Types::ReplaceNetworkAclEntryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for ReplaceRoute
    class ReplaceRoute
      def self.parse(http_resp)
        data = Types::ReplaceRouteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for ReplaceRouteTableAssociation
    class ReplaceRouteTableAssociation
      def self.parse(http_resp)
        data = Types::ReplaceRouteTableAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('newAssociationId') do |node|
          data.new_association_id = (node.text || '')
        end
        xml.at('associationState') do |node|
          data.association_state = Parsers::RouteTableAssociationState.parse(node)
        end
        data
      end
    end

    # Operation Parser for ReplaceTransitGatewayRoute
    class ReplaceTransitGatewayRoute
      def self.parse(http_resp)
        data = Types::ReplaceTransitGatewayRouteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('route') do |node|
          data.route = Parsers::TransitGatewayRoute.parse(node)
        end
        data
      end
    end

    # Operation Parser for ReportInstanceStatus
    class ReportInstanceStatus
      def self.parse(http_resp)
        data = Types::ReportInstanceStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for RequestSpotFleet
    class RequestSpotFleet
      def self.parse(http_resp)
        data = Types::RequestSpotFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('spotFleetRequestId') do |node|
          data.spot_fleet_request_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RequestSpotInstances
    class RequestSpotInstances
      def self.parse(http_resp)
        data = Types::RequestSpotInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('spotInstanceRequestSet') do |node|
          children = node.children('item')
          data.spot_instance_requests = Parsers::SpotInstanceRequestList.parse(children)
        end
        data
      end
    end

    # Operation Parser for ResetAddressAttribute
    class ResetAddressAttribute
      def self.parse(http_resp)
        data = Types::ResetAddressAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('address') do |node|
          data.address = Parsers::AddressAttribute.parse(node)
        end
        data
      end
    end

    # Operation Parser for ResetEbsDefaultKmsKeyId
    class ResetEbsDefaultKmsKeyId
      def self.parse(http_resp)
        data = Types::ResetEbsDefaultKmsKeyIdOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('kmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ResetFpgaImageAttribute
    class ResetFpgaImageAttribute
      def self.parse(http_resp)
        data = Types::ResetFpgaImageAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for ResetImageAttribute
    class ResetImageAttribute
      def self.parse(http_resp)
        data = Types::ResetImageAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for ResetInstanceAttribute
    class ResetInstanceAttribute
      def self.parse(http_resp)
        data = Types::ResetInstanceAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for ResetNetworkInterfaceAttribute
    class ResetNetworkInterfaceAttribute
      def self.parse(http_resp)
        data = Types::ResetNetworkInterfaceAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for ResetSnapshotAttribute
    class ResetSnapshotAttribute
      def self.parse(http_resp)
        data = Types::ResetSnapshotAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for RestoreAddressToClassic
    class RestoreAddressToClassic
      def self.parse(http_resp)
        data = Types::RestoreAddressToClassicOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('publicIp') do |node|
          data.public_ip = (node.text || '')
        end
        xml.at('status') do |node|
          data.status = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RestoreManagedPrefixListVersion
    class RestoreManagedPrefixListVersion
      def self.parse(http_resp)
        data = Types::RestoreManagedPrefixListVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('prefixList') do |node|
          data.prefix_list = Parsers::ManagedPrefixList.parse(node)
        end
        data
      end
    end

    # Operation Parser for RestoreSnapshotFromRecycleBin
    class RestoreSnapshotFromRecycleBin
      def self.parse(http_resp)
        data = Types::RestoreSnapshotFromRecycleBinOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('outpostArn') do |node|
          data.outpost_arn = (node.text || '')
        end
        xml.at('description') do |node|
          data.description = (node.text || '')
        end
        xml.at('encrypted') do |node|
          data.encrypted = (node.text == 'true')
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('progress') do |node|
          data.progress = (node.text || '')
        end
        xml.at('startTime') do |node|
          data.start_time = Time.parse(node.text) if node.text
        end
        xml.at('status') do |node|
          data.state = (node.text || '')
        end
        xml.at('volumeId') do |node|
          data.volume_id = (node.text || '')
        end
        xml.at('volumeSize') do |node|
          data.volume_size = node.text&.to_i
        end
        data
      end
    end

    # Operation Parser for RestoreSnapshotTier
    class RestoreSnapshotTier
      def self.parse(http_resp)
        data = Types::RestoreSnapshotTierOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('snapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('restoreStartTime') do |node|
          data.restore_start_time = Time.parse(node.text) if node.text
        end
        xml.at('restoreDuration') do |node|
          data.restore_duration = node.text&.to_i
        end
        xml.at('isPermanentRestore') do |node|
          data.is_permanent_restore = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for RevokeClientVpnIngress
    class RevokeClientVpnIngress
      def self.parse(http_resp)
        data = Types::RevokeClientVpnIngressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('status') do |node|
          data.status = Parsers::ClientVpnAuthorizationRuleStatus.parse(node)
        end
        data
      end
    end

    # Operation Parser for RevokeSecurityGroupEgress
    class RevokeSecurityGroupEgress
      def self.parse(http_resp)
        data = Types::RevokeSecurityGroupEgressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        xml.at('unknownIpPermissionSet') do |node|
          children = node.children('item')
          data.unknown_ip_permissions = Parsers::IpPermissionList.parse(children)
        end
        data
      end
    end

    # Operation Parser for RevokeSecurityGroupIngress
    class RevokeSecurityGroupIngress
      def self.parse(http_resp)
        data = Types::RevokeSecurityGroupIngressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        xml.at('unknownIpPermissionSet') do |node|
          children = node.children('item')
          data.unknown_ip_permissions = Parsers::IpPermissionList.parse(children)
        end
        data
      end
    end

    # Operation Parser for RunInstances
    class RunInstances
      def self.parse(http_resp)
        data = Types::RunInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('groupSet') do |node|
          children = node.children('item')
          data.groups = Parsers::GroupIdentifierList.parse(children)
        end
        xml.at('instancesSet') do |node|
          children = node.children('item')
          data.instances = Parsers::InstanceList.parse(children)
        end
        xml.at('ownerId') do |node|
          data.owner_id = (node.text || '')
        end
        xml.at('requesterId') do |node|
          data.requester_id = (node.text || '')
        end
        xml.at('reservationId') do |node|
          data.reservation_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RunScheduledInstances
    class RunScheduledInstances
      def self.parse(http_resp)
        data = Types::RunScheduledInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instanceIdSet') do |node|
          children = node.children('item')
          data.instance_id_set = Parsers::InstanceIdSet.parse(children)
        end
        data
      end
    end

    class InstanceIdSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for SearchLocalGatewayRoutes
    class SearchLocalGatewayRoutes
      def self.parse(http_resp)
        data = Types::SearchLocalGatewayRoutesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('routeSet') do |node|
          children = node.children('item')
          data.routes = Parsers::LocalGatewayRouteList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class LocalGatewayRouteList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LocalGatewayRoute.parse(node)
        end
        data
      end
    end

    # Operation Parser for SearchTransitGatewayMulticastGroups
    class SearchTransitGatewayMulticastGroups
      def self.parse(http_resp)
        data = Types::SearchTransitGatewayMulticastGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('multicastGroups') do |node|
          children = node.children('item')
          data.multicast_groups = Parsers::TransitGatewayMulticastGroupList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TransitGatewayMulticastGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TransitGatewayMulticastGroup.parse(node)
        end
        data
      end
    end

    class TransitGatewayMulticastGroup
      def self.parse(xml)
        data = Types::TransitGatewayMulticastGroup.new
        xml.at('groupIpAddress') do |node|
          data.group_ip_address = (node.text || '')
        end
        xml.at('transitGatewayAttachmentId') do |node|
          data.transit_gateway_attachment_id = (node.text || '')
        end
        xml.at('subnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        xml.at('resourceId') do |node|
          data.resource_id = (node.text || '')
        end
        xml.at('resourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('resourceOwnerId') do |node|
          data.resource_owner_id = (node.text || '')
        end
        xml.at('networkInterfaceId') do |node|
          data.network_interface_id = (node.text || '')
        end
        xml.at('groupMember') do |node|
          data.group_member = (node.text == 'true')
        end
        xml.at('groupSource') do |node|
          data.group_source = (node.text == 'true')
        end
        xml.at('memberType') do |node|
          data.member_type = (node.text || '')
        end
        xml.at('sourceType') do |node|
          data.source_type = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for SearchTransitGatewayRoutes
    class SearchTransitGatewayRoutes
      def self.parse(http_resp)
        data = Types::SearchTransitGatewayRoutesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('routeSet') do |node|
          children = node.children('item')
          data.routes = Parsers::TransitGatewayRouteList.parse(children)
        end
        xml.at('additionalRoutesAvailable') do |node|
          data.additional_routes_available = (node.text == 'true')
        end
        data
      end
    end

    class TransitGatewayRouteList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TransitGatewayRoute.parse(node)
        end
        data
      end
    end

    # Operation Parser for SendDiagnosticInterrupt
    class SendDiagnosticInterrupt
      def self.parse(http_resp)
        data = Types::SendDiagnosticInterruptOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for StartInstances
    class StartInstances
      def self.parse(http_resp)
        data = Types::StartInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instancesSet') do |node|
          children = node.children('item')
          data.starting_instances = Parsers::InstanceStateChangeList.parse(children)
        end
        data
      end
    end

    class InstanceStateChangeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceStateChange.parse(node)
        end
        data
      end
    end

    class InstanceStateChange
      def self.parse(xml)
        data = Types::InstanceStateChange.new
        xml.at('currentState') do |node|
          data.current_state = Parsers::InstanceState.parse(node)
        end
        xml.at('instanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('previousState') do |node|
          data.previous_state = Parsers::InstanceState.parse(node)
        end
        return data
      end
    end

    # Operation Parser for StartNetworkInsightsAccessScopeAnalysis
    class StartNetworkInsightsAccessScopeAnalysis
      def self.parse(http_resp)
        data = Types::StartNetworkInsightsAccessScopeAnalysisOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkInsightsAccessScopeAnalysis') do |node|
          data.network_insights_access_scope_analysis = Parsers::NetworkInsightsAccessScopeAnalysis.parse(node)
        end
        data
      end
    end

    # Operation Parser for StartNetworkInsightsAnalysis
    class StartNetworkInsightsAnalysis
      def self.parse(http_resp)
        data = Types::StartNetworkInsightsAnalysisOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkInsightsAnalysis') do |node|
          data.network_insights_analysis = Parsers::NetworkInsightsAnalysis.parse(node)
        end
        data
      end
    end

    # Operation Parser for StartVpcEndpointServicePrivateDnsVerification
    class StartVpcEndpointServicePrivateDnsVerification
      def self.parse(http_resp)
        data = Types::StartVpcEndpointServicePrivateDnsVerificationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return_value = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for StopInstances
    class StopInstances
      def self.parse(http_resp)
        data = Types::StopInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instancesSet') do |node|
          children = node.children('item')
          data.stopping_instances = Parsers::InstanceStateChangeList.parse(children)
        end
        data
      end
    end

    # Operation Parser for TerminateClientVpnConnections
    class TerminateClientVpnConnections
      def self.parse(http_resp)
        data = Types::TerminateClientVpnConnectionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('clientVpnEndpointId') do |node|
          data.client_vpn_endpoint_id = (node.text || '')
        end
        xml.at('username') do |node|
          data.username = (node.text || '')
        end
        xml.at('connectionStatuses') do |node|
          children = node.children('item')
          data.connection_statuses = Parsers::TerminateConnectionStatusSet.parse(children)
        end
        data
      end
    end

    class TerminateConnectionStatusSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TerminateConnectionStatus.parse(node)
        end
        data
      end
    end

    class TerminateConnectionStatus
      def self.parse(xml)
        data = Types::TerminateConnectionStatus.new
        xml.at('connectionId') do |node|
          data.connection_id = (node.text || '')
        end
        xml.at('previousStatus') do |node|
          data.previous_status = Parsers::ClientVpnConnectionStatus.parse(node)
        end
        xml.at('currentStatus') do |node|
          data.current_status = Parsers::ClientVpnConnectionStatus.parse(node)
        end
        return data
      end
    end

    # Operation Parser for TerminateInstances
    class TerminateInstances
      def self.parse(http_resp)
        data = Types::TerminateInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instancesSet') do |node|
          children = node.children('item')
          data.terminating_instances = Parsers::InstanceStateChangeList.parse(children)
        end
        data
      end
    end

    # Operation Parser for UnassignIpv6Addresses
    class UnassignIpv6Addresses
      def self.parse(http_resp)
        data = Types::UnassignIpv6AddressesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('networkInterfaceId') do |node|
          data.network_interface_id = (node.text || '')
        end
        xml.at('unassignedIpv6Addresses') do |node|
          children = node.children('item')
          data.unassigned_ipv6_addresses = Parsers::Ipv6AddressList.parse(children)
        end
        xml.at('unassignedIpv6PrefixSet') do |node|
          children = node.children('item')
          data.unassigned_ipv6_prefixes = Parsers::IpPrefixList.parse(children)
        end
        data
      end
    end

    # Operation Parser for UnassignPrivateIpAddresses
    class UnassignPrivateIpAddresses
      def self.parse(http_resp)
        data = Types::UnassignPrivateIpAddressesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for UnmonitorInstances
    class UnmonitorInstances
      def self.parse(http_resp)
        data = Types::UnmonitorInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('instancesSet') do |node|
          children = node.children('item')
          data.instance_monitorings = Parsers::InstanceMonitoringList.parse(children)
        end
        data
      end
    end

    # Operation Parser for UpdateSecurityGroupRuleDescriptionsEgress
    class UpdateSecurityGroupRuleDescriptionsEgress
      def self.parse(http_resp)
        data = Types::UpdateSecurityGroupRuleDescriptionsEgressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for UpdateSecurityGroupRuleDescriptionsIngress
    class UpdateSecurityGroupRuleDescriptionsIngress
      def self.parse(http_resp)
        data = Types::UpdateSecurityGroupRuleDescriptionsIngressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('return') do |node|
          data.return = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for WithdrawByoipCidr
    class WithdrawByoipCidr
      def self.parse(http_resp)
        data = Types::WithdrawByoipCidrOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('byoipCidr') do |node|
          data.byoip_cidr = Parsers::ByoipCidr.parse(node)
        end
        data
      end
    end
  end
end
