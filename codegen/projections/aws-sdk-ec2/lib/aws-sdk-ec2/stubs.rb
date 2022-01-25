# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Ec2
  module Stubs

    # Operation Stubber for AcceptReservedInstancesExchangeQuote
    class AcceptReservedInstancesExchangeQuote

      def self.default(visited=[])
        {
          exchange_id: 'exchange_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for AcceptTransitGatewayMulticastDomainAssociations
    class AcceptTransitGatewayMulticastDomainAssociations

      def self.default(visited=[])
        {
          associations: Stubs::TransitGatewayMulticastDomainAssociations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TransitGatewayMulticastDomainAssociations
    class TransitGatewayMulticastDomainAssociations

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayMulticastDomainAssociations')
        visited = visited + ['TransitGatewayMulticastDomainAssociations']
        {
          transit_gateway_multicast_domain_id: 'transit_gateway_multicast_domain_id',
          transit_gateway_attachment_id: 'transit_gateway_attachment_id',
          resource_id: 'resource_id',
          resource_type: 'resource_type',
          resource_owner_id: 'resource_owner_id',
          subnets: Stubs::SubnetAssociationList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for SubnetAssociationList
    class SubnetAssociationList
      def self.default(visited=[])
        return nil if visited.include?('SubnetAssociationList')
        visited = visited + ['SubnetAssociationList']
        [
          Stubs::SubnetAssociation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for SubnetAssociation
    class SubnetAssociation

      def self.default(visited=[])
        return nil if visited.include?('SubnetAssociation')
        visited = visited + ['SubnetAssociation']
        {
          subnet_id: 'subnet_id',
          state: 'state',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for AcceptTransitGatewayPeeringAttachment
    class AcceptTransitGatewayPeeringAttachment

      def self.default(visited=[])
        {
          transit_gateway_peering_attachment: Stubs::TransitGatewayPeeringAttachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TransitGatewayPeeringAttachment
    class TransitGatewayPeeringAttachment

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayPeeringAttachment')
        visited = visited + ['TransitGatewayPeeringAttachment']
        {
          transit_gateway_attachment_id: 'transit_gateway_attachment_id',
          requester_tgw_info: Stubs::PeeringTgwInfo.default(visited),
          accepter_tgw_info: Stubs::PeeringTgwInfo.default(visited),
          status: Stubs::PeeringAttachmentStatus.default(visited),
          state: 'state',
          creation_time: Time.now,
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
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

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for PeeringAttachmentStatus
    class PeeringAttachmentStatus

      def self.default(visited=[])
        return nil if visited.include?('PeeringAttachmentStatus')
        visited = visited + ['PeeringAttachmentStatus']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for PeeringTgwInfo
    class PeeringTgwInfo

      def self.default(visited=[])
        return nil if visited.include?('PeeringTgwInfo')
        visited = visited + ['PeeringTgwInfo']
        {
          transit_gateway_id: 'transit_gateway_id',
          owner_id: 'owner_id',
          region: 'region',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for AcceptTransitGatewayVpcAttachment
    class AcceptTransitGatewayVpcAttachment

      def self.default(visited=[])
        {
          transit_gateway_vpc_attachment: Stubs::TransitGatewayVpcAttachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TransitGatewayVpcAttachment
    class TransitGatewayVpcAttachment

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayVpcAttachment')
        visited = visited + ['TransitGatewayVpcAttachment']
        {
          transit_gateway_attachment_id: 'transit_gateway_attachment_id',
          transit_gateway_id: 'transit_gateway_id',
          vpc_id: 'vpc_id',
          vpc_owner_id: 'vpc_owner_id',
          state: 'state',
          subnet_ids: Stubs::ValueStringList.default(visited),
          creation_time: Time.now,
          options: Stubs::TransitGatewayVpcAttachmentOptions.default(visited),
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for TransitGatewayVpcAttachmentOptions
    class TransitGatewayVpcAttachmentOptions

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayVpcAttachmentOptions')
        visited = visited + ['TransitGatewayVpcAttachmentOptions']
        {
          dns_support: 'dns_support',
          ipv6_support: 'ipv6_support',
          appliance_mode_support: 'appliance_mode_support',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ValueStringList
    class ValueStringList
      def self.default(visited=[])
        return nil if visited.include?('ValueStringList')
        visited = visited + ['ValueStringList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for AcceptVpcEndpointConnections
    class AcceptVpcEndpointConnections

      def self.default(visited=[])
        {
          unsuccessful: Stubs::UnsuccessfulItemSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for UnsuccessfulItemSet
    class UnsuccessfulItemSet
      def self.default(visited=[])
        return nil if visited.include?('UnsuccessfulItemSet')
        visited = visited + ['UnsuccessfulItemSet']
        [
          Stubs::UnsuccessfulItem.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for UnsuccessfulItem
    class UnsuccessfulItem

      def self.default(visited=[])
        return nil if visited.include?('UnsuccessfulItem')
        visited = visited + ['UnsuccessfulItem']
        {
          error: Stubs::UnsuccessfulItemError.default(visited),
          resource_id: 'resource_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for UnsuccessfulItemError
    class UnsuccessfulItemError

      def self.default(visited=[])
        return nil if visited.include?('UnsuccessfulItemError')
        visited = visited + ['UnsuccessfulItemError']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for AcceptVpcPeeringConnection
    class AcceptVpcPeeringConnection

      def self.default(visited=[])
        {
          vpc_peering_connection: Stubs::VpcPeeringConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for VpcPeeringConnection
    class VpcPeeringConnection

      def self.default(visited=[])
        return nil if visited.include?('VpcPeeringConnection')
        visited = visited + ['VpcPeeringConnection']
        {
          accepter_vpc_info: Stubs::VpcPeeringConnectionVpcInfo.default(visited),
          expiration_time: Time.now,
          requester_vpc_info: Stubs::VpcPeeringConnectionVpcInfo.default(visited),
          status: Stubs::VpcPeeringConnectionStateReason.default(visited),
          tags: Stubs::TagList.default(visited),
          vpc_peering_connection_id: 'vpc_peering_connection_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for VpcPeeringConnectionStateReason
    class VpcPeeringConnectionStateReason

      def self.default(visited=[])
        return nil if visited.include?('VpcPeeringConnectionStateReason')
        visited = visited + ['VpcPeeringConnectionStateReason']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for VpcPeeringConnectionVpcInfo
    class VpcPeeringConnectionVpcInfo

      def self.default(visited=[])
        return nil if visited.include?('VpcPeeringConnectionVpcInfo')
        visited = visited + ['VpcPeeringConnectionVpcInfo']
        {
          cidr_block: 'cidr_block',
          ipv6_cidr_block_set: Stubs::Ipv6CidrBlockSet.default(visited),
          cidr_block_set: Stubs::CidrBlockSet.default(visited),
          owner_id: 'owner_id',
          peering_options: Stubs::VpcPeeringConnectionOptionsDescription.default(visited),
          vpc_id: 'vpc_id',
          region: 'region',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for VpcPeeringConnectionOptionsDescription
    class VpcPeeringConnectionOptionsDescription

      def self.default(visited=[])
        return nil if visited.include?('VpcPeeringConnectionOptionsDescription')
        visited = visited + ['VpcPeeringConnectionOptionsDescription']
        {
          allow_dns_resolution_from_remote_vpc: false,
          allow_egress_from_local_classic_link_to_remote_vpc: false,
          allow_egress_from_local_vpc_to_remote_classic_link: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for CidrBlockSet
    class CidrBlockSet
      def self.default(visited=[])
        return nil if visited.include?('CidrBlockSet')
        visited = visited + ['CidrBlockSet']
        [
          Stubs::CidrBlock.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for CidrBlock
    class CidrBlock

      def self.default(visited=[])
        return nil if visited.include?('CidrBlock')
        visited = visited + ['CidrBlock']
        {
          cidr_block: 'cidr_block',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for Ipv6CidrBlockSet
    class Ipv6CidrBlockSet
      def self.default(visited=[])
        return nil if visited.include?('Ipv6CidrBlockSet')
        visited = visited + ['Ipv6CidrBlockSet']
        [
          Stubs::Ipv6CidrBlock.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Ipv6CidrBlock
    class Ipv6CidrBlock

      def self.default(visited=[])
        return nil if visited.include?('Ipv6CidrBlock')
        visited = visited + ['Ipv6CidrBlock']
        {
          ipv6_cidr_block: 'ipv6_cidr_block',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for AdvertiseByoipCidr
    class AdvertiseByoipCidr

      def self.default(visited=[])
        {
          byoip_cidr: Stubs::ByoipCidr.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for ByoipCidr
    class ByoipCidr

      def self.default(visited=[])
        return nil if visited.include?('ByoipCidr')
        visited = visited + ['ByoipCidr']
        {
          cidr: 'cidr',
          description: 'description',
          status_message: 'status_message',
          state: 'state',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for AllocateAddress
    class AllocateAddress

      def self.default(visited=[])
        {
          public_ip: 'public_ip',
          allocation_id: 'allocation_id',
          public_ipv4_pool: 'public_ipv4_pool',
          network_border_group: 'network_border_group',
          domain: 'domain',
          customer_owned_ip: 'customer_owned_ip',
          customer_owned_ipv4_pool: 'customer_owned_ipv4_pool',
          carrier_ip: 'carrier_ip',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for AllocateHosts
    class AllocateHosts

      def self.default(visited=[])
        {
          host_ids: Stubs::ResponseHostIdList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ResponseHostIdList
    class ResponseHostIdList
      def self.default(visited=[])
        return nil if visited.include?('ResponseHostIdList')
        visited = visited + ['ResponseHostIdList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for AllocateIpamPoolCidr
    class AllocateIpamPoolCidr

      def self.default(visited=[])
        {
          ipam_pool_allocation: Stubs::IpamPoolAllocation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for IpamPoolAllocation
    class IpamPoolAllocation

      def self.default(visited=[])
        return nil if visited.include?('IpamPoolAllocation')
        visited = visited + ['IpamPoolAllocation']
        {
          cidr: 'cidr',
          ipam_pool_allocation_id: 'ipam_pool_allocation_id',
          description: 'description',
          resource_id: 'resource_id',
          resource_type: 'resource_type',
          resource_region: 'resource_region',
          resource_owner: 'resource_owner',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for ApplySecurityGroupsToClientVpnTargetNetwork
    class ApplySecurityGroupsToClientVpnTargetNetwork

      def self.default(visited=[])
        {
          security_group_ids: Stubs::ClientVpnSecurityGroupIdSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ClientVpnSecurityGroupIdSet
    class ClientVpnSecurityGroupIdSet
      def self.default(visited=[])
        return nil if visited.include?('ClientVpnSecurityGroupIdSet')
        visited = visited + ['ClientVpnSecurityGroupIdSet']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for AssignIpv6Addresses
    class AssignIpv6Addresses

      def self.default(visited=[])
        {
          assigned_ipv6_addresses: Stubs::Ipv6AddressList.default(visited),
          assigned_ipv6_prefixes: Stubs::IpPrefixList.default(visited),
          network_interface_id: 'network_interface_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for IpPrefixList
    class IpPrefixList
      def self.default(visited=[])
        return nil if visited.include?('IpPrefixList')
        visited = visited + ['IpPrefixList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # List Stubber for Ipv6AddressList
    class Ipv6AddressList
      def self.default(visited=[])
        return nil if visited.include?('Ipv6AddressList')
        visited = visited + ['Ipv6AddressList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for AssignPrivateIpAddresses
    class AssignPrivateIpAddresses

      def self.default(visited=[])
        {
          network_interface_id: 'network_interface_id',
          assigned_private_ip_addresses: Stubs::AssignedPrivateIpAddressList.default(visited),
          assigned_ipv4_prefixes: Stubs::Ipv4PrefixesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for Ipv4PrefixesList
    class Ipv4PrefixesList
      def self.default(visited=[])
        return nil if visited.include?('Ipv4PrefixesList')
        visited = visited + ['Ipv4PrefixesList']
        [
          Stubs::Ipv4PrefixSpecification.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Ipv4PrefixSpecification
    class Ipv4PrefixSpecification

      def self.default(visited=[])
        return nil if visited.include?('Ipv4PrefixSpecification')
        visited = visited + ['Ipv4PrefixSpecification']
        {
          ipv4_prefix: 'ipv4_prefix',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for AssignedPrivateIpAddressList
    class AssignedPrivateIpAddressList
      def self.default(visited=[])
        return nil if visited.include?('AssignedPrivateIpAddressList')
        visited = visited + ['AssignedPrivateIpAddressList']
        [
          Stubs::AssignedPrivateIpAddress.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AssignedPrivateIpAddress
    class AssignedPrivateIpAddress

      def self.default(visited=[])
        return nil if visited.include?('AssignedPrivateIpAddress')
        visited = visited + ['AssignedPrivateIpAddress']
        {
          private_ip_address: 'private_ip_address',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for AssociateAddress
    class AssociateAddress

      def self.default(visited=[])
        {
          association_id: 'association_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for AssociateClientVpnTargetNetwork
    class AssociateClientVpnTargetNetwork

      def self.default(visited=[])
        {
          association_id: 'association_id',
          status: Stubs::AssociationStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for AssociationStatus
    class AssociationStatus

      def self.default(visited=[])
        return nil if visited.include?('AssociationStatus')
        visited = visited + ['AssociationStatus']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for AssociateDhcpOptions
    class AssociateDhcpOptions

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for AssociateEnclaveCertificateIamRole
    class AssociateEnclaveCertificateIamRole

      def self.default(visited=[])
        {
          certificate_s3_bucket_name: 'certificate_s3_bucket_name',
          certificate_s3_object_key: 'certificate_s3_object_key',
          encryption_kms_key_id: 'encryption_kms_key_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for AssociateIamInstanceProfile
    class AssociateIamInstanceProfile

      def self.default(visited=[])
        {
          iam_instance_profile_association: Stubs::IamInstanceProfileAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for IamInstanceProfileAssociation
    class IamInstanceProfileAssociation

      def self.default(visited=[])
        return nil if visited.include?('IamInstanceProfileAssociation')
        visited = visited + ['IamInstanceProfileAssociation']
        {
          association_id: 'association_id',
          instance_id: 'instance_id',
          iam_instance_profile: Stubs::IamInstanceProfile.default(visited),
          state: 'state',
          timestamp: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for IamInstanceProfile
    class IamInstanceProfile

      def self.default(visited=[])
        return nil if visited.include?('IamInstanceProfile')
        visited = visited + ['IamInstanceProfile']
        {
          arn: 'arn',
          id: 'id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for AssociateInstanceEventWindow
    class AssociateInstanceEventWindow

      def self.default(visited=[])
        {
          instance_event_window: Stubs::InstanceEventWindow.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for InstanceEventWindow
    class InstanceEventWindow

      def self.default(visited=[])
        return nil if visited.include?('InstanceEventWindow')
        visited = visited + ['InstanceEventWindow']
        {
          instance_event_window_id: 'instance_event_window_id',
          time_ranges: Stubs::InstanceEventWindowTimeRangeList.default(visited),
          member_name: 'member_name',
          cron_expression: 'cron_expression',
          association_target: Stubs::InstanceEventWindowAssociationTarget.default(visited),
          state: 'state',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for InstanceEventWindowAssociationTarget
    class InstanceEventWindowAssociationTarget

      def self.default(visited=[])
        return nil if visited.include?('InstanceEventWindowAssociationTarget')
        visited = visited + ['InstanceEventWindowAssociationTarget']
        {
          instance_ids: Stubs::InstanceIdList.default(visited),
          tags: Stubs::TagList.default(visited),
          dedicated_host_ids: Stubs::DedicatedHostIdList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for DedicatedHostIdList
    class DedicatedHostIdList
      def self.default(visited=[])
        return nil if visited.include?('DedicatedHostIdList')
        visited = visited + ['DedicatedHostIdList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # List Stubber for InstanceIdList
    class InstanceIdList
      def self.default(visited=[])
        return nil if visited.include?('InstanceIdList')
        visited = visited + ['InstanceIdList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # List Stubber for InstanceEventWindowTimeRangeList
    class InstanceEventWindowTimeRangeList
      def self.default(visited=[])
        return nil if visited.include?('InstanceEventWindowTimeRangeList')
        visited = visited + ['InstanceEventWindowTimeRangeList']
        [
          Stubs::InstanceEventWindowTimeRange.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstanceEventWindowTimeRange
    class InstanceEventWindowTimeRange

      def self.default(visited=[])
        return nil if visited.include?('InstanceEventWindowTimeRange')
        visited = visited + ['InstanceEventWindowTimeRange']
        {
          start_week_day: 'start_week_day',
          start_hour: 1,
          end_week_day: 'end_week_day',
          end_hour: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for AssociateRouteTable
    class AssociateRouteTable

      def self.default(visited=[])
        {
          association_id: 'association_id',
          association_state: Stubs::RouteTableAssociationState.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for RouteTableAssociationState
    class RouteTableAssociationState

      def self.default(visited=[])
        return nil if visited.include?('RouteTableAssociationState')
        visited = visited + ['RouteTableAssociationState']
        {
          state: 'state',
          status_message: 'status_message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for AssociateSubnetCidrBlock
    class AssociateSubnetCidrBlock

      def self.default(visited=[])
        {
          ipv6_cidr_block_association: Stubs::SubnetIpv6CidrBlockAssociation.default(visited),
          subnet_id: 'subnet_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for SubnetIpv6CidrBlockAssociation
    class SubnetIpv6CidrBlockAssociation

      def self.default(visited=[])
        return nil if visited.include?('SubnetIpv6CidrBlockAssociation')
        visited = visited + ['SubnetIpv6CidrBlockAssociation']
        {
          association_id: 'association_id',
          ipv6_cidr_block: 'ipv6_cidr_block',
          ipv6_cidr_block_state: Stubs::SubnetCidrBlockState.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for SubnetCidrBlockState
    class SubnetCidrBlockState

      def self.default(visited=[])
        return nil if visited.include?('SubnetCidrBlockState')
        visited = visited + ['SubnetCidrBlockState']
        {
          state: 'state',
          status_message: 'status_message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for AssociateTransitGatewayMulticastDomain
    class AssociateTransitGatewayMulticastDomain

      def self.default(visited=[])
        {
          associations: Stubs::TransitGatewayMulticastDomainAssociations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for AssociateTransitGatewayRouteTable
    class AssociateTransitGatewayRouteTable

      def self.default(visited=[])
        {
          association: Stubs::TransitGatewayAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TransitGatewayAssociation
    class TransitGatewayAssociation

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayAssociation')
        visited = visited + ['TransitGatewayAssociation']
        {
          transit_gateway_route_table_id: 'transit_gateway_route_table_id',
          transit_gateway_attachment_id: 'transit_gateway_attachment_id',
          resource_id: 'resource_id',
          resource_type: 'resource_type',
          state: 'state',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for AssociateTrunkInterface
    class AssociateTrunkInterface

      def self.default(visited=[])
        {
          interface_association: Stubs::TrunkInterfaceAssociation.default(visited),
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TrunkInterfaceAssociation
    class TrunkInterfaceAssociation

      def self.default(visited=[])
        return nil if visited.include?('TrunkInterfaceAssociation')
        visited = visited + ['TrunkInterfaceAssociation']
        {
          association_id: 'association_id',
          branch_interface_id: 'branch_interface_id',
          trunk_interface_id: 'trunk_interface_id',
          interface_protocol: 'interface_protocol',
          vlan_id: 1,
          gre_key: 1,
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for AssociateVpcCidrBlock
    class AssociateVpcCidrBlock

      def self.default(visited=[])
        {
          ipv6_cidr_block_association: Stubs::VpcIpv6CidrBlockAssociation.default(visited),
          cidr_block_association: Stubs::VpcCidrBlockAssociation.default(visited),
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for VpcCidrBlockAssociation
    class VpcCidrBlockAssociation

      def self.default(visited=[])
        return nil if visited.include?('VpcCidrBlockAssociation')
        visited = visited + ['VpcCidrBlockAssociation']
        {
          association_id: 'association_id',
          cidr_block: 'cidr_block',
          cidr_block_state: Stubs::VpcCidrBlockState.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for VpcCidrBlockState
    class VpcCidrBlockState

      def self.default(visited=[])
        return nil if visited.include?('VpcCidrBlockState')
        visited = visited + ['VpcCidrBlockState']
        {
          state: 'state',
          status_message: 'status_message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for VpcIpv6CidrBlockAssociation
    class VpcIpv6CidrBlockAssociation

      def self.default(visited=[])
        return nil if visited.include?('VpcIpv6CidrBlockAssociation')
        visited = visited + ['VpcIpv6CidrBlockAssociation']
        {
          association_id: 'association_id',
          ipv6_cidr_block: 'ipv6_cidr_block',
          ipv6_cidr_block_state: Stubs::VpcCidrBlockState.default(visited),
          network_border_group: 'network_border_group',
          ipv6_pool: 'ipv6_pool',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for AttachClassicLinkVpc
    class AttachClassicLinkVpc

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for AttachInternetGateway
    class AttachInternetGateway

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for AttachNetworkInterface
    class AttachNetworkInterface

      def self.default(visited=[])
        {
          attachment_id: 'attachment_id',
          network_card_index: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for AttachVolume
    class AttachVolume

      def self.default(visited=[])
        {
          attach_time: Time.now,
          device: 'device',
          instance_id: 'instance_id',
          state: 'state',
          volume_id: 'volume_id',
          delete_on_termination: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for AttachVpnGateway
    class AttachVpnGateway

      def self.default(visited=[])
        {
          vpc_attachment: Stubs::VpcAttachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for VpcAttachment
    class VpcAttachment

      def self.default(visited=[])
        return nil if visited.include?('VpcAttachment')
        visited = visited + ['VpcAttachment']
        {
          state: 'state',
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for AuthorizeClientVpnIngress
    class AuthorizeClientVpnIngress

      def self.default(visited=[])
        {
          status: Stubs::ClientVpnAuthorizationRuleStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for ClientVpnAuthorizationRuleStatus
    class ClientVpnAuthorizationRuleStatus

      def self.default(visited=[])
        return nil if visited.include?('ClientVpnAuthorizationRuleStatus')
        visited = visited + ['ClientVpnAuthorizationRuleStatus']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for AuthorizeSecurityGroupEgress
    class AuthorizeSecurityGroupEgress

      def self.default(visited=[])
        {
          return: false,
          security_group_rules: Stubs::SecurityGroupRuleList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for SecurityGroupRuleList
    class SecurityGroupRuleList
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupRuleList')
        visited = visited + ['SecurityGroupRuleList']
        [
          Stubs::SecurityGroupRule.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for SecurityGroupRule
    class SecurityGroupRule

      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupRule')
        visited = visited + ['SecurityGroupRule']
        {
          security_group_rule_id: 'security_group_rule_id',
          group_id: 'group_id',
          group_owner_id: 'group_owner_id',
          is_egress: false,
          ip_protocol: 'ip_protocol',
          from_port: 1,
          to_port: 1,
          cidr_ipv4: 'cidr_ipv4',
          cidr_ipv6: 'cidr_ipv6',
          prefix_list_id: 'prefix_list_id',
          referenced_group_info: Stubs::ReferencedSecurityGroup.default(visited),
          description: 'description',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ReferencedSecurityGroup
    class ReferencedSecurityGroup

      def self.default(visited=[])
        return nil if visited.include?('ReferencedSecurityGroup')
        visited = visited + ['ReferencedSecurityGroup']
        {
          group_id: 'group_id',
          peering_status: 'peering_status',
          user_id: 'user_id',
          vpc_id: 'vpc_id',
          vpc_peering_connection_id: 'vpc_peering_connection_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for AuthorizeSecurityGroupIngress
    class AuthorizeSecurityGroupIngress

      def self.default(visited=[])
        {
          return: false,
          security_group_rules: Stubs::SecurityGroupRuleList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for BundleInstance
    class BundleInstance

      def self.default(visited=[])
        {
          bundle_task: Stubs::BundleTask.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for BundleTask
    class BundleTask

      def self.default(visited=[])
        return nil if visited.include?('BundleTask')
        visited = visited + ['BundleTask']
        {
          bundle_id: 'bundle_id',
          bundle_task_error: Stubs::BundleTaskError.default(visited),
          instance_id: 'instance_id',
          progress: 'progress',
          start_time: Time.now,
          state: 'state',
          storage: Stubs::Storage.default(visited),
          update_time: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for Storage
    class Storage

      def self.default(visited=[])
        return nil if visited.include?('Storage')
        visited = visited + ['Storage']
        {
          s3: Stubs::S3Storage.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for S3Storage
    class S3Storage

      def self.default(visited=[])
        return nil if visited.include?('S3Storage')
        visited = visited + ['S3Storage']
        {
          aws_access_key_id: 'aws_access_key_id',
          bucket: 'bucket',
          prefix: 'prefix',
          upload_policy: 'upload_policy',
          upload_policy_signature: 'upload_policy_signature',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for BundleTaskError
    class BundleTaskError

      def self.default(visited=[])
        return nil if visited.include?('BundleTaskError')
        visited = visited + ['BundleTaskError']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CancelBundleTask
    class CancelBundleTask

      def self.default(visited=[])
        {
          bundle_task: Stubs::BundleTask.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CancelCapacityReservation
    class CancelCapacityReservation

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CancelCapacityReservationFleets
    class CancelCapacityReservationFleets

      def self.default(visited=[])
        {
          successful_fleet_cancellations: Stubs::CapacityReservationFleetCancellationStateSet.default(visited),
          failed_fleet_cancellations: Stubs::FailedCapacityReservationFleetCancellationResultSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for FailedCapacityReservationFleetCancellationResultSet
    class FailedCapacityReservationFleetCancellationResultSet
      def self.default(visited=[])
        return nil if visited.include?('FailedCapacityReservationFleetCancellationResultSet')
        visited = visited + ['FailedCapacityReservationFleetCancellationResultSet']
        [
          Stubs::FailedCapacityReservationFleetCancellationResult.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for FailedCapacityReservationFleetCancellationResult
    class FailedCapacityReservationFleetCancellationResult

      def self.default(visited=[])
        return nil if visited.include?('FailedCapacityReservationFleetCancellationResult')
        visited = visited + ['FailedCapacityReservationFleetCancellationResult']
        {
          capacity_reservation_fleet_id: 'capacity_reservation_fleet_id',
          cancel_capacity_reservation_fleet_error: Stubs::CancelCapacityReservationFleetError.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for CancelCapacityReservationFleetError
    class CancelCapacityReservationFleetError

      def self.default(visited=[])
        return nil if visited.include?('CancelCapacityReservationFleetError')
        visited = visited + ['CancelCapacityReservationFleetError']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for CapacityReservationFleetCancellationStateSet
    class CapacityReservationFleetCancellationStateSet
      def self.default(visited=[])
        return nil if visited.include?('CapacityReservationFleetCancellationStateSet')
        visited = visited + ['CapacityReservationFleetCancellationStateSet']
        [
          Stubs::CapacityReservationFleetCancellationState.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for CapacityReservationFleetCancellationState
    class CapacityReservationFleetCancellationState

      def self.default(visited=[])
        return nil if visited.include?('CapacityReservationFleetCancellationState')
        visited = visited + ['CapacityReservationFleetCancellationState']
        {
          current_fleet_state: 'current_fleet_state',
          previous_fleet_state: 'previous_fleet_state',
          capacity_reservation_fleet_id: 'capacity_reservation_fleet_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CancelConversionTask
    class CancelConversionTask

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CancelExportTask
    class CancelExportTask

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CancelImportTask
    class CancelImportTask

      def self.default(visited=[])
        {
          import_task_id: 'import_task_id',
          previous_state: 'previous_state',
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CancelReservedInstancesListing
    class CancelReservedInstancesListing

      def self.default(visited=[])
        {
          reserved_instances_listings: Stubs::ReservedInstancesListingList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ReservedInstancesListingList
    class ReservedInstancesListingList
      def self.default(visited=[])
        return nil if visited.include?('ReservedInstancesListingList')
        visited = visited + ['ReservedInstancesListingList']
        [
          Stubs::ReservedInstancesListing.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ReservedInstancesListing
    class ReservedInstancesListing

      def self.default(visited=[])
        return nil if visited.include?('ReservedInstancesListing')
        visited = visited + ['ReservedInstancesListing']
        {
          client_token: 'client_token',
          create_date: Time.now,
          instance_counts: Stubs::InstanceCountList.default(visited),
          price_schedules: Stubs::PriceScheduleList.default(visited),
          reserved_instances_id: 'reserved_instances_id',
          reserved_instances_listing_id: 'reserved_instances_listing_id',
          status: 'status',
          status_message: 'status_message',
          tags: Stubs::TagList.default(visited),
          update_date: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for PriceScheduleList
    class PriceScheduleList
      def self.default(visited=[])
        return nil if visited.include?('PriceScheduleList')
        visited = visited + ['PriceScheduleList']
        [
          Stubs::PriceSchedule.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for PriceSchedule
    class PriceSchedule

      def self.default(visited=[])
        return nil if visited.include?('PriceSchedule')
        visited = visited + ['PriceSchedule']
        {
          active: false,
          currency_code: 'currency_code',
          price: 1.0,
          term: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for InstanceCountList
    class InstanceCountList
      def self.default(visited=[])
        return nil if visited.include?('InstanceCountList')
        visited = visited + ['InstanceCountList']
        [
          Stubs::InstanceCount.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstanceCount
    class InstanceCount

      def self.default(visited=[])
        return nil if visited.include?('InstanceCount')
        visited = visited + ['InstanceCount']
        {
          instance_count: 1,
          state: 'state',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CancelSpotFleetRequests
    class CancelSpotFleetRequests

      def self.default(visited=[])
        {
          successful_fleet_requests: Stubs::CancelSpotFleetRequestsSuccessSet.default(visited),
          unsuccessful_fleet_requests: Stubs::CancelSpotFleetRequestsErrorSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for CancelSpotFleetRequestsErrorSet
    class CancelSpotFleetRequestsErrorSet
      def self.default(visited=[])
        return nil if visited.include?('CancelSpotFleetRequestsErrorSet')
        visited = visited + ['CancelSpotFleetRequestsErrorSet']
        [
          Stubs::CancelSpotFleetRequestsErrorItem.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for CancelSpotFleetRequestsErrorItem
    class CancelSpotFleetRequestsErrorItem

      def self.default(visited=[])
        return nil if visited.include?('CancelSpotFleetRequestsErrorItem')
        visited = visited + ['CancelSpotFleetRequestsErrorItem']
        {
          error: Stubs::CancelSpotFleetRequestsError.default(visited),
          spot_fleet_request_id: 'spot_fleet_request_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for CancelSpotFleetRequestsError
    class CancelSpotFleetRequestsError

      def self.default(visited=[])
        return nil if visited.include?('CancelSpotFleetRequestsError')
        visited = visited + ['CancelSpotFleetRequestsError']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for CancelSpotFleetRequestsSuccessSet
    class CancelSpotFleetRequestsSuccessSet
      def self.default(visited=[])
        return nil if visited.include?('CancelSpotFleetRequestsSuccessSet')
        visited = visited + ['CancelSpotFleetRequestsSuccessSet']
        [
          Stubs::CancelSpotFleetRequestsSuccessItem.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for CancelSpotFleetRequestsSuccessItem
    class CancelSpotFleetRequestsSuccessItem

      def self.default(visited=[])
        return nil if visited.include?('CancelSpotFleetRequestsSuccessItem')
        visited = visited + ['CancelSpotFleetRequestsSuccessItem']
        {
          current_spot_fleet_request_state: 'current_spot_fleet_request_state',
          previous_spot_fleet_request_state: 'previous_spot_fleet_request_state',
          spot_fleet_request_id: 'spot_fleet_request_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CancelSpotInstanceRequests
    class CancelSpotInstanceRequests

      def self.default(visited=[])
        {
          cancelled_spot_instance_requests: Stubs::CancelledSpotInstanceRequestList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for CancelledSpotInstanceRequestList
    class CancelledSpotInstanceRequestList
      def self.default(visited=[])
        return nil if visited.include?('CancelledSpotInstanceRequestList')
        visited = visited + ['CancelledSpotInstanceRequestList']
        [
          Stubs::CancelledSpotInstanceRequest.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for CancelledSpotInstanceRequest
    class CancelledSpotInstanceRequest

      def self.default(visited=[])
        return nil if visited.include?('CancelledSpotInstanceRequest')
        visited = visited + ['CancelledSpotInstanceRequest']
        {
          spot_instance_request_id: 'spot_instance_request_id',
          state: 'state',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for ConfirmProductInstance
    class ConfirmProductInstance

      def self.default(visited=[])
        {
          owner_id: 'owner_id',
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CopyFpgaImage
    class CopyFpgaImage

      def self.default(visited=[])
        {
          fpga_image_id: 'fpga_image_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CopyImage
    class CopyImage

      def self.default(visited=[])
        {
          image_id: 'image_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CopySnapshot
    class CopySnapshot

      def self.default(visited=[])
        {
          snapshot_id: 'snapshot_id',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateCapacityReservation
    class CreateCapacityReservation

      def self.default(visited=[])
        {
          capacity_reservation: Stubs::CapacityReservation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for CapacityReservation
    class CapacityReservation

      def self.default(visited=[])
        return nil if visited.include?('CapacityReservation')
        visited = visited + ['CapacityReservation']
        {
          capacity_reservation_id: 'capacity_reservation_id',
          owner_id: 'owner_id',
          capacity_reservation_arn: 'capacity_reservation_arn',
          availability_zone_id: 'availability_zone_id',
          instance_type: 'instance_type',
          instance_platform: 'instance_platform',
          availability_zone: 'availability_zone',
          tenancy: 'tenancy',
          total_instance_count: 1,
          available_instance_count: 1,
          ebs_optimized: false,
          ephemeral_storage: false,
          state: 'state',
          start_date: Time.now,
          end_date: Time.now,
          end_date_type: 'end_date_type',
          instance_match_criteria: 'instance_match_criteria',
          create_date: Time.now,
          tags: Stubs::TagList.default(visited),
          outpost_arn: 'outpost_arn',
          capacity_reservation_fleet_id: 'capacity_reservation_fleet_id',
          placement_group_arn: 'placement_group_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateCapacityReservationFleet
    class CreateCapacityReservationFleet

      def self.default(visited=[])
        {
          capacity_reservation_fleet_id: 'capacity_reservation_fleet_id',
          state: 'state',
          total_target_capacity: 1,
          total_fulfilled_capacity: 1.0,
          instance_match_criteria: 'instance_match_criteria',
          allocation_strategy: 'allocation_strategy',
          create_time: Time.now,
          end_date: Time.now,
          tenancy: 'tenancy',
          fleet_capacity_reservations: Stubs::FleetCapacityReservationSet.default(visited),
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for FleetCapacityReservationSet
    class FleetCapacityReservationSet
      def self.default(visited=[])
        return nil if visited.include?('FleetCapacityReservationSet')
        visited = visited + ['FleetCapacityReservationSet']
        [
          Stubs::FleetCapacityReservation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for FleetCapacityReservation
    class FleetCapacityReservation

      def self.default(visited=[])
        return nil if visited.include?('FleetCapacityReservation')
        visited = visited + ['FleetCapacityReservation']
        {
          capacity_reservation_id: 'capacity_reservation_id',
          availability_zone_id: 'availability_zone_id',
          instance_type: 'instance_type',
          instance_platform: 'instance_platform',
          availability_zone: 'availability_zone',
          total_instance_count: 1,
          fulfilled_capacity: 1.0,
          ebs_optimized: false,
          create_date: Time.now,
          weight: 1.0,
          priority: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateCarrierGateway
    class CreateCarrierGateway

      def self.default(visited=[])
        {
          carrier_gateway: Stubs::CarrierGateway.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for CarrierGateway
    class CarrierGateway

      def self.default(visited=[])
        return nil if visited.include?('CarrierGateway')
        visited = visited + ['CarrierGateway']
        {
          carrier_gateway_id: 'carrier_gateway_id',
          vpc_id: 'vpc_id',
          state: 'state',
          owner_id: 'owner_id',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateClientVpnEndpoint
    class CreateClientVpnEndpoint

      def self.default(visited=[])
        {
          client_vpn_endpoint_id: 'client_vpn_endpoint_id',
          status: Stubs::ClientVpnEndpointStatus.default(visited),
          dns_name: 'dns_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for ClientVpnEndpointStatus
    class ClientVpnEndpointStatus

      def self.default(visited=[])
        return nil if visited.include?('ClientVpnEndpointStatus')
        visited = visited + ['ClientVpnEndpointStatus']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateClientVpnRoute
    class CreateClientVpnRoute

      def self.default(visited=[])
        {
          status: Stubs::ClientVpnRouteStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for ClientVpnRouteStatus
    class ClientVpnRouteStatus

      def self.default(visited=[])
        return nil if visited.include?('ClientVpnRouteStatus')
        visited = visited + ['ClientVpnRouteStatus']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateCustomerGateway
    class CreateCustomerGateway

      def self.default(visited=[])
        {
          customer_gateway: Stubs::CustomerGateway.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for CustomerGateway
    class CustomerGateway

      def self.default(visited=[])
        return nil if visited.include?('CustomerGateway')
        visited = visited + ['CustomerGateway']
        {
          bgp_asn: 'bgp_asn',
          customer_gateway_id: 'customer_gateway_id',
          ip_address: 'ip_address',
          certificate_arn: 'certificate_arn',
          state: 'state',
          type: 'type',
          device_name: 'device_name',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateDefaultSubnet
    class CreateDefaultSubnet

      def self.default(visited=[])
        {
          subnet: Stubs::Subnet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for Subnet
    class Subnet

      def self.default(visited=[])
        return nil if visited.include?('Subnet')
        visited = visited + ['Subnet']
        {
          availability_zone: 'availability_zone',
          availability_zone_id: 'availability_zone_id',
          available_ip_address_count: 1,
          cidr_block: 'cidr_block',
          default_for_az: false,
          enable_lni_at_device_index: 1,
          map_public_ip_on_launch: false,
          map_customer_owned_ip_on_launch: false,
          customer_owned_ipv4_pool: 'customer_owned_ipv4_pool',
          state: 'state',
          subnet_id: 'subnet_id',
          vpc_id: 'vpc_id',
          owner_id: 'owner_id',
          assign_ipv6_address_on_creation: false,
          ipv6_cidr_block_association_set: Stubs::SubnetIpv6CidrBlockAssociationSet.default(visited),
          tags: Stubs::TagList.default(visited),
          subnet_arn: 'subnet_arn',
          outpost_arn: 'outpost_arn',
          enable_dns64: false,
          ipv6_native: false,
          private_dns_name_options_on_launch: Stubs::PrivateDnsNameOptionsOnLaunch.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for PrivateDnsNameOptionsOnLaunch
    class PrivateDnsNameOptionsOnLaunch

      def self.default(visited=[])
        return nil if visited.include?('PrivateDnsNameOptionsOnLaunch')
        visited = visited + ['PrivateDnsNameOptionsOnLaunch']
        {
          hostname_type: 'hostname_type',
          enable_resource_name_dns_a_record: false,
          enable_resource_name_dns_aaaa_record: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for SubnetIpv6CidrBlockAssociationSet
    class SubnetIpv6CidrBlockAssociationSet
      def self.default(visited=[])
        return nil if visited.include?('SubnetIpv6CidrBlockAssociationSet')
        visited = visited + ['SubnetIpv6CidrBlockAssociationSet']
        [
          Stubs::SubnetIpv6CidrBlockAssociation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for CreateDefaultVpc
    class CreateDefaultVpc

      def self.default(visited=[])
        {
          vpc: Stubs::Vpc.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for Vpc
    class Vpc

      def self.default(visited=[])
        return nil if visited.include?('Vpc')
        visited = visited + ['Vpc']
        {
          cidr_block: 'cidr_block',
          dhcp_options_id: 'dhcp_options_id',
          state: 'state',
          vpc_id: 'vpc_id',
          owner_id: 'owner_id',
          instance_tenancy: 'instance_tenancy',
          ipv6_cidr_block_association_set: Stubs::VpcIpv6CidrBlockAssociationSet.default(visited),
          cidr_block_association_set: Stubs::VpcCidrBlockAssociationSet.default(visited),
          is_default: false,
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for VpcCidrBlockAssociationSet
    class VpcCidrBlockAssociationSet
      def self.default(visited=[])
        return nil if visited.include?('VpcCidrBlockAssociationSet')
        visited = visited + ['VpcCidrBlockAssociationSet']
        [
          Stubs::VpcCidrBlockAssociation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # List Stubber for VpcIpv6CidrBlockAssociationSet
    class VpcIpv6CidrBlockAssociationSet
      def self.default(visited=[])
        return nil if visited.include?('VpcIpv6CidrBlockAssociationSet')
        visited = visited + ['VpcIpv6CidrBlockAssociationSet']
        [
          Stubs::VpcIpv6CidrBlockAssociation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for CreateDhcpOptions
    class CreateDhcpOptions

      def self.default(visited=[])
        {
          dhcp_options: Stubs::DhcpOptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for DhcpOptions
    class DhcpOptions

      def self.default(visited=[])
        return nil if visited.include?('DhcpOptions')
        visited = visited + ['DhcpOptions']
        {
          dhcp_configurations: Stubs::DhcpConfigurationList.default(visited),
          dhcp_options_id: 'dhcp_options_id',
          owner_id: 'owner_id',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for DhcpConfigurationList
    class DhcpConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('DhcpConfigurationList')
        visited = visited + ['DhcpConfigurationList']
        [
          Stubs::DhcpConfiguration.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for DhcpConfiguration
    class DhcpConfiguration

      def self.default(visited=[])
        return nil if visited.include?('DhcpConfiguration')
        visited = visited + ['DhcpConfiguration']
        {
          key: 'key',
          values: Stubs::DhcpConfigurationValueList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for DhcpConfigurationValueList
    class DhcpConfigurationValueList
      def self.default(visited=[])
        return nil if visited.include?('DhcpConfigurationValueList')
        visited = visited + ['DhcpConfigurationValueList']
        [
          Stubs::AttributeValue.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AttributeValue
    class AttributeValue

      def self.default(visited=[])
        return nil if visited.include?('AttributeValue')
        visited = visited + ['AttributeValue']
        {
          value: 'value',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateEgressOnlyInternetGateway
    class CreateEgressOnlyInternetGateway

      def self.default(visited=[])
        {
          client_token: 'client_token',
          egress_only_internet_gateway: Stubs::EgressOnlyInternetGateway.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for EgressOnlyInternetGateway
    class EgressOnlyInternetGateway

      def self.default(visited=[])
        return nil if visited.include?('EgressOnlyInternetGateway')
        visited = visited + ['EgressOnlyInternetGateway']
        {
          attachments: Stubs::InternetGatewayAttachmentList.default(visited),
          egress_only_internet_gateway_id: 'egress_only_internet_gateway_id',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for InternetGatewayAttachmentList
    class InternetGatewayAttachmentList
      def self.default(visited=[])
        return nil if visited.include?('InternetGatewayAttachmentList')
        visited = visited + ['InternetGatewayAttachmentList']
        [
          Stubs::InternetGatewayAttachment.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InternetGatewayAttachment
    class InternetGatewayAttachment

      def self.default(visited=[])
        return nil if visited.include?('InternetGatewayAttachment')
        visited = visited + ['InternetGatewayAttachment']
        {
          state: 'state',
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateFleet
    class CreateFleet

      def self.default(visited=[])
        {
          fleet_id: 'fleet_id',
          errors: Stubs::CreateFleetErrorsSet.default(visited),
          instances: Stubs::CreateFleetInstancesSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for CreateFleetInstancesSet
    class CreateFleetInstancesSet
      def self.default(visited=[])
        return nil if visited.include?('CreateFleetInstancesSet')
        visited = visited + ['CreateFleetInstancesSet']
        [
          Stubs::CreateFleetInstance.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for CreateFleetInstance
    class CreateFleetInstance

      def self.default(visited=[])
        return nil if visited.include?('CreateFleetInstance')
        visited = visited + ['CreateFleetInstance']
        {
          launch_template_and_overrides: Stubs::LaunchTemplateAndOverridesResponse.default(visited),
          lifecycle: 'lifecycle',
          instance_ids: Stubs::InstanceIdsSet.default(visited),
          instance_type: 'instance_type',
          platform: 'platform',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for InstanceIdsSet
    class InstanceIdsSet
      def self.default(visited=[])
        return nil if visited.include?('InstanceIdsSet')
        visited = visited + ['InstanceIdsSet']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for LaunchTemplateAndOverridesResponse
    class LaunchTemplateAndOverridesResponse

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateAndOverridesResponse')
        visited = visited + ['LaunchTemplateAndOverridesResponse']
        {
          launch_template_specification: Stubs::FleetLaunchTemplateSpecification.default(visited),
          overrides: Stubs::FleetLaunchTemplateOverrides.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for FleetLaunchTemplateOverrides
    class FleetLaunchTemplateOverrides

      def self.default(visited=[])
        return nil if visited.include?('FleetLaunchTemplateOverrides')
        visited = visited + ['FleetLaunchTemplateOverrides']
        {
          instance_type: 'instance_type',
          max_price: 'max_price',
          subnet_id: 'subnet_id',
          availability_zone: 'availability_zone',
          weighted_capacity: 1.0,
          priority: 1.0,
          placement: Stubs::PlacementResponse.default(visited),
          instance_requirements: Stubs::InstanceRequirements.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for InstanceRequirements
    class InstanceRequirements

      def self.default(visited=[])
        return nil if visited.include?('InstanceRequirements')
        visited = visited + ['InstanceRequirements']
        {
          v_cpu_count: Stubs::VCpuCountRange.default(visited),
          memory_mi_b: Stubs::MemoryMiB.default(visited),
          cpu_manufacturers: Stubs::CpuManufacturerSet.default(visited),
          memory_gi_b_per_v_cpu: Stubs::MemoryGiBPerVCpu.default(visited),
          excluded_instance_types: Stubs::ExcludedInstanceTypeSet.default(visited),
          instance_generations: Stubs::InstanceGenerationSet.default(visited),
          spot_max_price_percentage_over_lowest_price: 1,
          on_demand_max_price_percentage_over_lowest_price: 1,
          bare_metal: 'bare_metal',
          burstable_performance: 'burstable_performance',
          require_hibernate_support: false,
          network_interface_count: Stubs::NetworkInterfaceCount.default(visited),
          local_storage: 'local_storage',
          local_storage_types: Stubs::LocalStorageTypeSet.default(visited),
          total_local_storage_gb: Stubs::TotalLocalStorageGB.default(visited),
          baseline_ebs_bandwidth_mbps: Stubs::BaselineEbsBandwidthMbps.default(visited),
          accelerator_types: Stubs::AcceleratorTypeSet.default(visited),
          accelerator_count: Stubs::AcceleratorCount.default(visited),
          accelerator_manufacturers: Stubs::AcceleratorManufacturerSet.default(visited),
          accelerator_names: Stubs::AcceleratorNameSet.default(visited),
          accelerator_total_memory_mi_b: Stubs::AcceleratorTotalMemoryMiB.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for AcceleratorTotalMemoryMiB
    class AcceleratorTotalMemoryMiB

      def self.default(visited=[])
        return nil if visited.include?('AcceleratorTotalMemoryMiB')
        visited = visited + ['AcceleratorTotalMemoryMiB']
        {
          min: 1,
          max: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for AcceleratorNameSet
    class AcceleratorNameSet
      def self.default(visited=[])
        return nil if visited.include?('AcceleratorNameSet')
        visited = visited + ['AcceleratorNameSet']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # List Stubber for AcceleratorManufacturerSet
    class AcceleratorManufacturerSet
      def self.default(visited=[])
        return nil if visited.include?('AcceleratorManufacturerSet')
        visited = visited + ['AcceleratorManufacturerSet']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AcceleratorCount
    class AcceleratorCount

      def self.default(visited=[])
        return nil if visited.include?('AcceleratorCount')
        visited = visited + ['AcceleratorCount']
        {
          min: 1,
          max: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for AcceleratorTypeSet
    class AcceleratorTypeSet
      def self.default(visited=[])
        return nil if visited.include?('AcceleratorTypeSet')
        visited = visited + ['AcceleratorTypeSet']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for BaselineEbsBandwidthMbps
    class BaselineEbsBandwidthMbps

      def self.default(visited=[])
        return nil if visited.include?('BaselineEbsBandwidthMbps')
        visited = visited + ['BaselineEbsBandwidthMbps']
        {
          min: 1,
          max: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for TotalLocalStorageGB
    class TotalLocalStorageGB

      def self.default(visited=[])
        return nil if visited.include?('TotalLocalStorageGB')
        visited = visited + ['TotalLocalStorageGB']
        {
          min: 1.0,
          max: 1.0,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for LocalStorageTypeSet
    class LocalStorageTypeSet
      def self.default(visited=[])
        return nil if visited.include?('LocalStorageTypeSet')
        visited = visited + ['LocalStorageTypeSet']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for NetworkInterfaceCount
    class NetworkInterfaceCount

      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfaceCount')
        visited = visited + ['NetworkInterfaceCount']
        {
          min: 1,
          max: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for InstanceGenerationSet
    class InstanceGenerationSet
      def self.default(visited=[])
        return nil if visited.include?('InstanceGenerationSet')
        visited = visited + ['InstanceGenerationSet']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # List Stubber for ExcludedInstanceTypeSet
    class ExcludedInstanceTypeSet
      def self.default(visited=[])
        return nil if visited.include?('ExcludedInstanceTypeSet')
        visited = visited + ['ExcludedInstanceTypeSet']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for MemoryGiBPerVCpu
    class MemoryGiBPerVCpu

      def self.default(visited=[])
        return nil if visited.include?('MemoryGiBPerVCpu')
        visited = visited + ['MemoryGiBPerVCpu']
        {
          min: 1.0,
          max: 1.0,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for CpuManufacturerSet
    class CpuManufacturerSet
      def self.default(visited=[])
        return nil if visited.include?('CpuManufacturerSet')
        visited = visited + ['CpuManufacturerSet']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for MemoryMiB
    class MemoryMiB

      def self.default(visited=[])
        return nil if visited.include?('MemoryMiB')
        visited = visited + ['MemoryMiB']
        {
          min: 1,
          max: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for VCpuCountRange
    class VCpuCountRange

      def self.default(visited=[])
        return nil if visited.include?('VCpuCountRange')
        visited = visited + ['VCpuCountRange']
        {
          min: 1,
          max: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for PlacementResponse
    class PlacementResponse

      def self.default(visited=[])
        return nil if visited.include?('PlacementResponse')
        visited = visited + ['PlacementResponse']
        {
          group_name: 'group_name',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for FleetLaunchTemplateSpecification
    class FleetLaunchTemplateSpecification

      def self.default(visited=[])
        return nil if visited.include?('FleetLaunchTemplateSpecification')
        visited = visited + ['FleetLaunchTemplateSpecification']
        {
          launch_template_id: 'launch_template_id',
          launch_template_name: 'launch_template_name',
          version: 'version',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for CreateFleetErrorsSet
    class CreateFleetErrorsSet
      def self.default(visited=[])
        return nil if visited.include?('CreateFleetErrorsSet')
        visited = visited + ['CreateFleetErrorsSet']
        [
          Stubs::CreateFleetError.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for CreateFleetError
    class CreateFleetError

      def self.default(visited=[])
        return nil if visited.include?('CreateFleetError')
        visited = visited + ['CreateFleetError']
        {
          launch_template_and_overrides: Stubs::LaunchTemplateAndOverridesResponse.default(visited),
          lifecycle: 'lifecycle',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateFlowLogs
    class CreateFlowLogs

      def self.default(visited=[])
        {
          client_token: 'client_token',
          flow_log_ids: Stubs::ValueStringList.default(visited),
          unsuccessful: Stubs::UnsuccessfulItemSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateFpgaImage
    class CreateFpgaImage

      def self.default(visited=[])
        {
          fpga_image_id: 'fpga_image_id',
          fpga_image_global_id: 'fpga_image_global_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateImage
    class CreateImage

      def self.default(visited=[])
        {
          image_id: 'image_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateInstanceEventWindow
    class CreateInstanceEventWindow

      def self.default(visited=[])
        {
          instance_event_window: Stubs::InstanceEventWindow.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateInstanceExportTask
    class CreateInstanceExportTask

      def self.default(visited=[])
        {
          export_task: Stubs::ExportTask.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for ExportTask
    class ExportTask

      def self.default(visited=[])
        return nil if visited.include?('ExportTask')
        visited = visited + ['ExportTask']
        {
          description: 'description',
          export_task_id: 'export_task_id',
          export_to_s3_task: Stubs::ExportToS3Task.default(visited),
          instance_export_details: Stubs::InstanceExportDetails.default(visited),
          state: 'state',
          status_message: 'status_message',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for InstanceExportDetails
    class InstanceExportDetails

      def self.default(visited=[])
        return nil if visited.include?('InstanceExportDetails')
        visited = visited + ['InstanceExportDetails']
        {
          instance_id: 'instance_id',
          target_environment: 'target_environment',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ExportToS3Task
    class ExportToS3Task

      def self.default(visited=[])
        return nil if visited.include?('ExportToS3Task')
        visited = visited + ['ExportToS3Task']
        {
          container_format: 'container_format',
          disk_image_format: 'disk_image_format',
          s3_bucket: 's3_bucket',
          s3_key: 's3_key',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateInternetGateway
    class CreateInternetGateway

      def self.default(visited=[])
        {
          internet_gateway: Stubs::InternetGateway.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for InternetGateway
    class InternetGateway

      def self.default(visited=[])
        return nil if visited.include?('InternetGateway')
        visited = visited + ['InternetGateway']
        {
          attachments: Stubs::InternetGatewayAttachmentList.default(visited),
          internet_gateway_id: 'internet_gateway_id',
          owner_id: 'owner_id',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateIpam
    class CreateIpam

      def self.default(visited=[])
        {
          ipam: Stubs::Ipam.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for Ipam
    class Ipam

      def self.default(visited=[])
        return nil if visited.include?('Ipam')
        visited = visited + ['Ipam']
        {
          owner_id: 'owner_id',
          ipam_id: 'ipam_id',
          ipam_arn: 'ipam_arn',
          ipam_region: 'ipam_region',
          public_default_scope_id: 'public_default_scope_id',
          private_default_scope_id: 'private_default_scope_id',
          scope_count: 1,
          description: 'description',
          operating_regions: Stubs::IpamOperatingRegionSet.default(visited),
          state: 'state',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for IpamOperatingRegionSet
    class IpamOperatingRegionSet
      def self.default(visited=[])
        return nil if visited.include?('IpamOperatingRegionSet')
        visited = visited + ['IpamOperatingRegionSet']
        [
          Stubs::IpamOperatingRegion.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for IpamOperatingRegion
    class IpamOperatingRegion

      def self.default(visited=[])
        return nil if visited.include?('IpamOperatingRegion')
        visited = visited + ['IpamOperatingRegion']
        {
          region_name: 'region_name',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateIpamPool
    class CreateIpamPool

      def self.default(visited=[])
        {
          ipam_pool: Stubs::IpamPool.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for IpamPool
    class IpamPool

      def self.default(visited=[])
        return nil if visited.include?('IpamPool')
        visited = visited + ['IpamPool']
        {
          owner_id: 'owner_id',
          ipam_pool_id: 'ipam_pool_id',
          source_ipam_pool_id: 'source_ipam_pool_id',
          ipam_pool_arn: 'ipam_pool_arn',
          ipam_scope_arn: 'ipam_scope_arn',
          ipam_scope_type: 'ipam_scope_type',
          ipam_arn: 'ipam_arn',
          ipam_region: 'ipam_region',
          locale: 'locale',
          pool_depth: 1,
          state: 'state',
          state_message: 'state_message',
          description: 'description',
          auto_import: false,
          publicly_advertisable: false,
          address_family: 'address_family',
          allocation_min_netmask_length: 1,
          allocation_max_netmask_length: 1,
          allocation_default_netmask_length: 1,
          allocation_resource_tags: Stubs::IpamResourceTagList.default(visited),
          tags: Stubs::TagList.default(visited),
          aws_service: 'aws_service',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for IpamResourceTagList
    class IpamResourceTagList
      def self.default(visited=[])
        return nil if visited.include?('IpamResourceTagList')
        visited = visited + ['IpamResourceTagList']
        [
          Stubs::IpamResourceTag.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for IpamResourceTag
    class IpamResourceTag

      def self.default(visited=[])
        return nil if visited.include?('IpamResourceTag')
        visited = visited + ['IpamResourceTag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateIpamScope
    class CreateIpamScope

      def self.default(visited=[])
        {
          ipam_scope: Stubs::IpamScope.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for IpamScope
    class IpamScope

      def self.default(visited=[])
        return nil if visited.include?('IpamScope')
        visited = visited + ['IpamScope']
        {
          owner_id: 'owner_id',
          ipam_scope_id: 'ipam_scope_id',
          ipam_scope_arn: 'ipam_scope_arn',
          ipam_arn: 'ipam_arn',
          ipam_region: 'ipam_region',
          ipam_scope_type: 'ipam_scope_type',
          is_default: false,
          description: 'description',
          pool_count: 1,
          state: 'state',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateKeyPair
    class CreateKeyPair

      def self.default(visited=[])
        {
          key_fingerprint: 'key_fingerprint',
          key_material: 'key_material',
          key_name: 'key_name',
          key_pair_id: 'key_pair_id',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateLaunchTemplate
    class CreateLaunchTemplate

      def self.default(visited=[])
        {
          launch_template: Stubs::LaunchTemplate.default(visited),
          warning: Stubs::ValidationWarning.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for ValidationWarning
    class ValidationWarning

      def self.default(visited=[])
        return nil if visited.include?('ValidationWarning')
        visited = visited + ['ValidationWarning']
        {
          errors: Stubs::ErrorSet.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ErrorSet
    class ErrorSet
      def self.default(visited=[])
        return nil if visited.include?('ErrorSet')
        visited = visited + ['ErrorSet']
        [
          Stubs::ValidationError.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ValidationError
    class ValidationError

      def self.default(visited=[])
        return nil if visited.include?('ValidationError')
        visited = visited + ['ValidationError']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for LaunchTemplate
    class LaunchTemplate

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplate')
        visited = visited + ['LaunchTemplate']
        {
          launch_template_id: 'launch_template_id',
          launch_template_name: 'launch_template_name',
          create_time: Time.now,
          created_by: 'created_by',
          default_version_number: 1,
          latest_version_number: 1,
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateLaunchTemplateVersion
    class CreateLaunchTemplateVersion

      def self.default(visited=[])
        {
          launch_template_version: Stubs::LaunchTemplateVersion.default(visited),
          warning: Stubs::ValidationWarning.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for LaunchTemplateVersion
    class LaunchTemplateVersion

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateVersion')
        visited = visited + ['LaunchTemplateVersion']
        {
          launch_template_id: 'launch_template_id',
          launch_template_name: 'launch_template_name',
          version_number: 1,
          version_description: 'version_description',
          create_time: Time.now,
          created_by: 'created_by',
          default_version: false,
          launch_template_data: Stubs::ResponseLaunchTemplateData.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ResponseLaunchTemplateData
    class ResponseLaunchTemplateData

      def self.default(visited=[])
        return nil if visited.include?('ResponseLaunchTemplateData')
        visited = visited + ['ResponseLaunchTemplateData']
        {
          kernel_id: 'kernel_id',
          ebs_optimized: false,
          iam_instance_profile: Stubs::LaunchTemplateIamInstanceProfileSpecification.default(visited),
          block_device_mappings: Stubs::LaunchTemplateBlockDeviceMappingList.default(visited),
          network_interfaces: Stubs::LaunchTemplateInstanceNetworkInterfaceSpecificationList.default(visited),
          image_id: 'image_id',
          instance_type: 'instance_type',
          key_name: 'key_name',
          monitoring: Stubs::LaunchTemplatesMonitoring.default(visited),
          placement: Stubs::LaunchTemplatePlacement.default(visited),
          ram_disk_id: 'ram_disk_id',
          disable_api_termination: false,
          instance_initiated_shutdown_behavior: 'instance_initiated_shutdown_behavior',
          user_data: 'user_data',
          tag_specifications: Stubs::LaunchTemplateTagSpecificationList.default(visited),
          elastic_gpu_specifications: Stubs::ElasticGpuSpecificationResponseList.default(visited),
          elastic_inference_accelerators: Stubs::LaunchTemplateElasticInferenceAcceleratorResponseList.default(visited),
          security_group_ids: Stubs::ValueStringList.default(visited),
          security_groups: Stubs::ValueStringList.default(visited),
          instance_market_options: Stubs::LaunchTemplateInstanceMarketOptions.default(visited),
          credit_specification: Stubs::CreditSpecification.default(visited),
          cpu_options: Stubs::LaunchTemplateCpuOptions.default(visited),
          capacity_reservation_specification: Stubs::LaunchTemplateCapacityReservationSpecificationResponse.default(visited),
          license_specifications: Stubs::LaunchTemplateLicenseList.default(visited),
          hibernation_options: Stubs::LaunchTemplateHibernationOptions.default(visited),
          metadata_options: Stubs::LaunchTemplateInstanceMetadataOptions.default(visited),
          enclave_options: Stubs::LaunchTemplateEnclaveOptions.default(visited),
          instance_requirements: Stubs::InstanceRequirements.default(visited),
          private_dns_name_options: Stubs::LaunchTemplatePrivateDnsNameOptions.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for LaunchTemplatePrivateDnsNameOptions
    class LaunchTemplatePrivateDnsNameOptions

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplatePrivateDnsNameOptions')
        visited = visited + ['LaunchTemplatePrivateDnsNameOptions']
        {
          hostname_type: 'hostname_type',
          enable_resource_name_dns_a_record: false,
          enable_resource_name_dns_aaaa_record: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for LaunchTemplateEnclaveOptions
    class LaunchTemplateEnclaveOptions

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateEnclaveOptions')
        visited = visited + ['LaunchTemplateEnclaveOptions']
        {
          enabled: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for LaunchTemplateInstanceMetadataOptions
    class LaunchTemplateInstanceMetadataOptions

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateInstanceMetadataOptions')
        visited = visited + ['LaunchTemplateInstanceMetadataOptions']
        {
          state: 'state',
          http_tokens: 'http_tokens',
          http_put_response_hop_limit: 1,
          http_endpoint: 'http_endpoint',
          http_protocol_ipv6: 'http_protocol_ipv6',
          instance_metadata_tags: 'instance_metadata_tags',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for LaunchTemplateHibernationOptions
    class LaunchTemplateHibernationOptions

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateHibernationOptions')
        visited = visited + ['LaunchTemplateHibernationOptions']
        {
          configured: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for LaunchTemplateLicenseList
    class LaunchTemplateLicenseList
      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateLicenseList')
        visited = visited + ['LaunchTemplateLicenseList']
        [
          Stubs::LaunchTemplateLicenseConfiguration.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for LaunchTemplateLicenseConfiguration
    class LaunchTemplateLicenseConfiguration

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateLicenseConfiguration')
        visited = visited + ['LaunchTemplateLicenseConfiguration']
        {
          license_configuration_arn: 'license_configuration_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for LaunchTemplateCapacityReservationSpecificationResponse
    class LaunchTemplateCapacityReservationSpecificationResponse

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateCapacityReservationSpecificationResponse')
        visited = visited + ['LaunchTemplateCapacityReservationSpecificationResponse']
        {
          capacity_reservation_preference: 'capacity_reservation_preference',
          capacity_reservation_target: Stubs::CapacityReservationTargetResponse.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for CapacityReservationTargetResponse
    class CapacityReservationTargetResponse

      def self.default(visited=[])
        return nil if visited.include?('CapacityReservationTargetResponse')
        visited = visited + ['CapacityReservationTargetResponse']
        {
          capacity_reservation_id: 'capacity_reservation_id',
          capacity_reservation_resource_group_arn: 'capacity_reservation_resource_group_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for LaunchTemplateCpuOptions
    class LaunchTemplateCpuOptions

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateCpuOptions')
        visited = visited + ['LaunchTemplateCpuOptions']
        {
          core_count: 1,
          threads_per_core: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for CreditSpecification
    class CreditSpecification

      def self.default(visited=[])
        return nil if visited.include?('CreditSpecification')
        visited = visited + ['CreditSpecification']
        {
          cpu_credits: 'cpu_credits',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for LaunchTemplateInstanceMarketOptions
    class LaunchTemplateInstanceMarketOptions

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateInstanceMarketOptions')
        visited = visited + ['LaunchTemplateInstanceMarketOptions']
        {
          market_type: 'market_type',
          spot_options: Stubs::LaunchTemplateSpotMarketOptions.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for LaunchTemplateSpotMarketOptions
    class LaunchTemplateSpotMarketOptions

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateSpotMarketOptions')
        visited = visited + ['LaunchTemplateSpotMarketOptions']
        {
          max_price: 'max_price',
          spot_instance_type: 'spot_instance_type',
          block_duration_minutes: 1,
          valid_until: Time.now,
          instance_interruption_behavior: 'instance_interruption_behavior',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for LaunchTemplateElasticInferenceAcceleratorResponseList
    class LaunchTemplateElasticInferenceAcceleratorResponseList
      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateElasticInferenceAcceleratorResponseList')
        visited = visited + ['LaunchTemplateElasticInferenceAcceleratorResponseList']
        [
          Stubs::LaunchTemplateElasticInferenceAcceleratorResponse.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for LaunchTemplateElasticInferenceAcceleratorResponse
    class LaunchTemplateElasticInferenceAcceleratorResponse

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateElasticInferenceAcceleratorResponse')
        visited = visited + ['LaunchTemplateElasticInferenceAcceleratorResponse']
        {
          type: 'type',
          count: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ElasticGpuSpecificationResponseList
    class ElasticGpuSpecificationResponseList
      def self.default(visited=[])
        return nil if visited.include?('ElasticGpuSpecificationResponseList')
        visited = visited + ['ElasticGpuSpecificationResponseList']
        [
          Stubs::ElasticGpuSpecificationResponse.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ElasticGpuSpecificationResponse
    class ElasticGpuSpecificationResponse

      def self.default(visited=[])
        return nil if visited.include?('ElasticGpuSpecificationResponse')
        visited = visited + ['ElasticGpuSpecificationResponse']
        {
          type: 'type',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for LaunchTemplateTagSpecificationList
    class LaunchTemplateTagSpecificationList
      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateTagSpecificationList')
        visited = visited + ['LaunchTemplateTagSpecificationList']
        [
          Stubs::LaunchTemplateTagSpecification.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for LaunchTemplateTagSpecification
    class LaunchTemplateTagSpecification

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateTagSpecification')
        visited = visited + ['LaunchTemplateTagSpecification']
        {
          resource_type: 'resource_type',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for LaunchTemplatePlacement
    class LaunchTemplatePlacement

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplatePlacement')
        visited = visited + ['LaunchTemplatePlacement']
        {
          availability_zone: 'availability_zone',
          affinity: 'affinity',
          group_name: 'group_name',
          host_id: 'host_id',
          tenancy: 'tenancy',
          spread_domain: 'spread_domain',
          host_resource_group_arn: 'host_resource_group_arn',
          partition_number: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for LaunchTemplatesMonitoring
    class LaunchTemplatesMonitoring

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplatesMonitoring')
        visited = visited + ['LaunchTemplatesMonitoring']
        {
          enabled: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for LaunchTemplateInstanceNetworkInterfaceSpecificationList
    class LaunchTemplateInstanceNetworkInterfaceSpecificationList
      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateInstanceNetworkInterfaceSpecificationList')
        visited = visited + ['LaunchTemplateInstanceNetworkInterfaceSpecificationList']
        [
          Stubs::LaunchTemplateInstanceNetworkInterfaceSpecification.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for LaunchTemplateInstanceNetworkInterfaceSpecification
    class LaunchTemplateInstanceNetworkInterfaceSpecification

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateInstanceNetworkInterfaceSpecification')
        visited = visited + ['LaunchTemplateInstanceNetworkInterfaceSpecification']
        {
          associate_carrier_ip_address: false,
          associate_public_ip_address: false,
          delete_on_termination: false,
          description: 'description',
          device_index: 1,
          groups: Stubs::GroupIdStringList.default(visited),
          interface_type: 'interface_type',
          ipv6_address_count: 1,
          ipv6_addresses: Stubs::InstanceIpv6AddressList.default(visited),
          network_interface_id: 'network_interface_id',
          private_ip_address: 'private_ip_address',
          private_ip_addresses: Stubs::PrivateIpAddressSpecificationList.default(visited),
          secondary_private_ip_address_count: 1,
          subnet_id: 'subnet_id',
          network_card_index: 1,
          ipv4_prefixes: Stubs::Ipv4PrefixListResponse.default(visited),
          ipv4_prefix_count: 1,
          ipv6_prefixes: Stubs::Ipv6PrefixListResponse.default(visited),
          ipv6_prefix_count: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for Ipv6PrefixListResponse
    class Ipv6PrefixListResponse
      def self.default(visited=[])
        return nil if visited.include?('Ipv6PrefixListResponse')
        visited = visited + ['Ipv6PrefixListResponse']
        [
          Stubs::Ipv6PrefixSpecificationResponse.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Ipv6PrefixSpecificationResponse
    class Ipv6PrefixSpecificationResponse

      def self.default(visited=[])
        return nil if visited.include?('Ipv6PrefixSpecificationResponse')
        visited = visited + ['Ipv6PrefixSpecificationResponse']
        {
          ipv6_prefix: 'ipv6_prefix',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for Ipv4PrefixListResponse
    class Ipv4PrefixListResponse
      def self.default(visited=[])
        return nil if visited.include?('Ipv4PrefixListResponse')
        visited = visited + ['Ipv4PrefixListResponse']
        [
          Stubs::Ipv4PrefixSpecificationResponse.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Ipv4PrefixSpecificationResponse
    class Ipv4PrefixSpecificationResponse

      def self.default(visited=[])
        return nil if visited.include?('Ipv4PrefixSpecificationResponse')
        visited = visited + ['Ipv4PrefixSpecificationResponse']
        {
          ipv4_prefix: 'ipv4_prefix',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for PrivateIpAddressSpecificationList
    class PrivateIpAddressSpecificationList
      def self.default(visited=[])
        return nil if visited.include?('PrivateIpAddressSpecificationList')
        visited = visited + ['PrivateIpAddressSpecificationList']
        [
          Stubs::PrivateIpAddressSpecification.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for PrivateIpAddressSpecification
    class PrivateIpAddressSpecification

      def self.default(visited=[])
        return nil if visited.include?('PrivateIpAddressSpecification')
        visited = visited + ['PrivateIpAddressSpecification']
        {
          primary: false,
          private_ip_address: 'private_ip_address',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for InstanceIpv6AddressList
    class InstanceIpv6AddressList
      def self.default(visited=[])
        return nil if visited.include?('InstanceIpv6AddressList')
        visited = visited + ['InstanceIpv6AddressList']
        [
          Stubs::InstanceIpv6Address.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstanceIpv6Address
    class InstanceIpv6Address

      def self.default(visited=[])
        return nil if visited.include?('InstanceIpv6Address')
        visited = visited + ['InstanceIpv6Address']
        {
          ipv6_address: 'ipv6_address',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for GroupIdStringList
    class GroupIdStringList
      def self.default(visited=[])
        return nil if visited.include?('GroupIdStringList')
        visited = visited + ['GroupIdStringList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # List Stubber for LaunchTemplateBlockDeviceMappingList
    class LaunchTemplateBlockDeviceMappingList
      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateBlockDeviceMappingList')
        visited = visited + ['LaunchTemplateBlockDeviceMappingList']
        [
          Stubs::LaunchTemplateBlockDeviceMapping.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for LaunchTemplateBlockDeviceMapping
    class LaunchTemplateBlockDeviceMapping

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateBlockDeviceMapping')
        visited = visited + ['LaunchTemplateBlockDeviceMapping']
        {
          device_name: 'device_name',
          virtual_name: 'virtual_name',
          ebs: Stubs::LaunchTemplateEbsBlockDevice.default(visited),
          no_device: 'no_device',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for LaunchTemplateEbsBlockDevice
    class LaunchTemplateEbsBlockDevice

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateEbsBlockDevice')
        visited = visited + ['LaunchTemplateEbsBlockDevice']
        {
          encrypted: false,
          delete_on_termination: false,
          iops: 1,
          kms_key_id: 'kms_key_id',
          snapshot_id: 'snapshot_id',
          volume_size: 1,
          volume_type: 'volume_type',
          throughput: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for LaunchTemplateIamInstanceProfileSpecification
    class LaunchTemplateIamInstanceProfileSpecification

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateIamInstanceProfileSpecification')
        visited = visited + ['LaunchTemplateIamInstanceProfileSpecification']
        {
          arn: 'arn',
          member_name: 'member_name',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateLocalGatewayRoute
    class CreateLocalGatewayRoute

      def self.default(visited=[])
        {
          route: Stubs::LocalGatewayRoute.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for LocalGatewayRoute
    class LocalGatewayRoute

      def self.default(visited=[])
        return nil if visited.include?('LocalGatewayRoute')
        visited = visited + ['LocalGatewayRoute']
        {
          destination_cidr_block: 'destination_cidr_block',
          local_gateway_virtual_interface_group_id: 'local_gateway_virtual_interface_group_id',
          type: 'type',
          state: 'state',
          local_gateway_route_table_id: 'local_gateway_route_table_id',
          local_gateway_route_table_arn: 'local_gateway_route_table_arn',
          owner_id: 'owner_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateLocalGatewayRouteTableVpcAssociation
    class CreateLocalGatewayRouteTableVpcAssociation

      def self.default(visited=[])
        {
          local_gateway_route_table_vpc_association: Stubs::LocalGatewayRouteTableVpcAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for LocalGatewayRouteTableVpcAssociation
    class LocalGatewayRouteTableVpcAssociation

      def self.default(visited=[])
        return nil if visited.include?('LocalGatewayRouteTableVpcAssociation')
        visited = visited + ['LocalGatewayRouteTableVpcAssociation']
        {
          local_gateway_route_table_vpc_association_id: 'local_gateway_route_table_vpc_association_id',
          local_gateway_route_table_id: 'local_gateway_route_table_id',
          local_gateway_route_table_arn: 'local_gateway_route_table_arn',
          local_gateway_id: 'local_gateway_id',
          vpc_id: 'vpc_id',
          owner_id: 'owner_id',
          state: 'state',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateManagedPrefixList
    class CreateManagedPrefixList

      def self.default(visited=[])
        {
          prefix_list: Stubs::ManagedPrefixList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for ManagedPrefixList
    class ManagedPrefixList

      def self.default(visited=[])
        return nil if visited.include?('ManagedPrefixList')
        visited = visited + ['ManagedPrefixList']
        {
          prefix_list_id: 'prefix_list_id',
          address_family: 'address_family',
          state: 'state',
          state_message: 'state_message',
          prefix_list_arn: 'prefix_list_arn',
          prefix_list_name: 'prefix_list_name',
          max_entries: 1,
          version: 1,
          tags: Stubs::TagList.default(visited),
          owner_id: 'owner_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateNatGateway
    class CreateNatGateway

      def self.default(visited=[])
        {
          client_token: 'client_token',
          nat_gateway: Stubs::NatGateway.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for NatGateway
    class NatGateway

      def self.default(visited=[])
        return nil if visited.include?('NatGateway')
        visited = visited + ['NatGateway']
        {
          create_time: Time.now,
          delete_time: Time.now,
          failure_code: 'failure_code',
          failure_message: 'failure_message',
          nat_gateway_addresses: Stubs::NatGatewayAddressList.default(visited),
          nat_gateway_id: 'nat_gateway_id',
          provisioned_bandwidth: Stubs::ProvisionedBandwidth.default(visited),
          state: 'state',
          subnet_id: 'subnet_id',
          vpc_id: 'vpc_id',
          tags: Stubs::TagList.default(visited),
          connectivity_type: 'connectivity_type',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ProvisionedBandwidth
    class ProvisionedBandwidth

      def self.default(visited=[])
        return nil if visited.include?('ProvisionedBandwidth')
        visited = visited + ['ProvisionedBandwidth']
        {
          provision_time: Time.now,
          provisioned: 'provisioned',
          request_time: Time.now,
          requested: 'requested',
          status: 'status',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for NatGatewayAddressList
    class NatGatewayAddressList
      def self.default(visited=[])
        return nil if visited.include?('NatGatewayAddressList')
        visited = visited + ['NatGatewayAddressList']
        [
          Stubs::NatGatewayAddress.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for NatGatewayAddress
    class NatGatewayAddress

      def self.default(visited=[])
        return nil if visited.include?('NatGatewayAddress')
        visited = visited + ['NatGatewayAddress']
        {
          allocation_id: 'allocation_id',
          network_interface_id: 'network_interface_id',
          private_ip: 'private_ip',
          public_ip: 'public_ip',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateNetworkAcl
    class CreateNetworkAcl

      def self.default(visited=[])
        {
          network_acl: Stubs::NetworkAcl.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for NetworkAcl
    class NetworkAcl

      def self.default(visited=[])
        return nil if visited.include?('NetworkAcl')
        visited = visited + ['NetworkAcl']
        {
          associations: Stubs::NetworkAclAssociationList.default(visited),
          entries: Stubs::NetworkAclEntryList.default(visited),
          is_default: false,
          network_acl_id: 'network_acl_id',
          tags: Stubs::TagList.default(visited),
          vpc_id: 'vpc_id',
          owner_id: 'owner_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for NetworkAclEntryList
    class NetworkAclEntryList
      def self.default(visited=[])
        return nil if visited.include?('NetworkAclEntryList')
        visited = visited + ['NetworkAclEntryList']
        [
          Stubs::NetworkAclEntry.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for NetworkAclEntry
    class NetworkAclEntry

      def self.default(visited=[])
        return nil if visited.include?('NetworkAclEntry')
        visited = visited + ['NetworkAclEntry']
        {
          cidr_block: 'cidr_block',
          egress: false,
          icmp_type_code: Stubs::IcmpTypeCode.default(visited),
          ipv6_cidr_block: 'ipv6_cidr_block',
          port_range: Stubs::PortRange.default(visited),
          protocol: 'protocol',
          rule_action: 'rule_action',
          rule_number: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for PortRange
    class PortRange

      def self.default(visited=[])
        return nil if visited.include?('PortRange')
        visited = visited + ['PortRange']
        {
          from: 1,
          to: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for IcmpTypeCode
    class IcmpTypeCode

      def self.default(visited=[])
        return nil if visited.include?('IcmpTypeCode')
        visited = visited + ['IcmpTypeCode']
        {
          code: 1,
          type: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for NetworkAclAssociationList
    class NetworkAclAssociationList
      def self.default(visited=[])
        return nil if visited.include?('NetworkAclAssociationList')
        visited = visited + ['NetworkAclAssociationList']
        [
          Stubs::NetworkAclAssociation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for NetworkAclAssociation
    class NetworkAclAssociation

      def self.default(visited=[])
        return nil if visited.include?('NetworkAclAssociation')
        visited = visited + ['NetworkAclAssociation']
        {
          network_acl_association_id: 'network_acl_association_id',
          network_acl_id: 'network_acl_id',
          subnet_id: 'subnet_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateNetworkAclEntry
    class CreateNetworkAclEntry

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateNetworkInsightsAccessScope
    class CreateNetworkInsightsAccessScope

      def self.default(visited=[])
        {
          network_insights_access_scope: Stubs::NetworkInsightsAccessScope.default(visited),
          network_insights_access_scope_content: Stubs::NetworkInsightsAccessScopeContent.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for NetworkInsightsAccessScopeContent
    class NetworkInsightsAccessScopeContent

      def self.default(visited=[])
        return nil if visited.include?('NetworkInsightsAccessScopeContent')
        visited = visited + ['NetworkInsightsAccessScopeContent']
        {
          network_insights_access_scope_id: 'network_insights_access_scope_id',
          match_paths: Stubs::AccessScopePathList.default(visited),
          exclude_paths: Stubs::AccessScopePathList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for AccessScopePathList
    class AccessScopePathList
      def self.default(visited=[])
        return nil if visited.include?('AccessScopePathList')
        visited = visited + ['AccessScopePathList']
        [
          Stubs::AccessScopePath.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AccessScopePath
    class AccessScopePath

      def self.default(visited=[])
        return nil if visited.include?('AccessScopePath')
        visited = visited + ['AccessScopePath']
        {
          source: Stubs::PathStatement.default(visited),
          destination: Stubs::PathStatement.default(visited),
          through_resources: Stubs::ThroughResourcesStatementList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ThroughResourcesStatementList
    class ThroughResourcesStatementList
      def self.default(visited=[])
        return nil if visited.include?('ThroughResourcesStatementList')
        visited = visited + ['ThroughResourcesStatementList']
        [
          Stubs::ThroughResourcesStatement.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ThroughResourcesStatement
    class ThroughResourcesStatement

      def self.default(visited=[])
        return nil if visited.include?('ThroughResourcesStatement')
        visited = visited + ['ThroughResourcesStatement']
        {
          resource_statement: Stubs::ResourceStatement.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ResourceStatement
    class ResourceStatement

      def self.default(visited=[])
        return nil if visited.include?('ResourceStatement')
        visited = visited + ['ResourceStatement']
        {
          resources: Stubs::ValueStringList.default(visited),
          resource_types: Stubs::ValueStringList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for PathStatement
    class PathStatement

      def self.default(visited=[])
        return nil if visited.include?('PathStatement')
        visited = visited + ['PathStatement']
        {
          packet_header_statement: Stubs::PacketHeaderStatement.default(visited),
          resource_statement: Stubs::ResourceStatement.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for PacketHeaderStatement
    class PacketHeaderStatement

      def self.default(visited=[])
        return nil if visited.include?('PacketHeaderStatement')
        visited = visited + ['PacketHeaderStatement']
        {
          source_addresses: Stubs::ValueStringList.default(visited),
          destination_addresses: Stubs::ValueStringList.default(visited),
          source_ports: Stubs::ValueStringList.default(visited),
          destination_ports: Stubs::ValueStringList.default(visited),
          source_prefix_lists: Stubs::ValueStringList.default(visited),
          destination_prefix_lists: Stubs::ValueStringList.default(visited),
          protocols: Stubs::ProtocolList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ProtocolList
    class ProtocolList
      def self.default(visited=[])
        return nil if visited.include?('ProtocolList')
        visited = visited + ['ProtocolList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for NetworkInsightsAccessScope
    class NetworkInsightsAccessScope

      def self.default(visited=[])
        return nil if visited.include?('NetworkInsightsAccessScope')
        visited = visited + ['NetworkInsightsAccessScope']
        {
          network_insights_access_scope_id: 'network_insights_access_scope_id',
          network_insights_access_scope_arn: 'network_insights_access_scope_arn',
          created_date: Time.now,
          updated_date: Time.now,
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateNetworkInsightsPath
    class CreateNetworkInsightsPath

      def self.default(visited=[])
        {
          network_insights_path: Stubs::NetworkInsightsPath.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for NetworkInsightsPath
    class NetworkInsightsPath

      def self.default(visited=[])
        return nil if visited.include?('NetworkInsightsPath')
        visited = visited + ['NetworkInsightsPath']
        {
          network_insights_path_id: 'network_insights_path_id',
          network_insights_path_arn: 'network_insights_path_arn',
          created_date: Time.now,
          source: 'source',
          destination: 'destination',
          source_ip: 'source_ip',
          destination_ip: 'destination_ip',
          protocol: 'protocol',
          destination_port: 1,
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateNetworkInterface
    class CreateNetworkInterface

      def self.default(visited=[])
        {
          network_interface: Stubs::NetworkInterface.default(visited),
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for NetworkInterface
    class NetworkInterface

      def self.default(visited=[])
        return nil if visited.include?('NetworkInterface')
        visited = visited + ['NetworkInterface']
        {
          association: Stubs::NetworkInterfaceAssociation.default(visited),
          attachment: Stubs::NetworkInterfaceAttachment.default(visited),
          availability_zone: 'availability_zone',
          description: 'description',
          groups: Stubs::GroupIdentifierList.default(visited),
          interface_type: 'interface_type',
          ipv6_addresses: Stubs::NetworkInterfaceIpv6AddressesList.default(visited),
          mac_address: 'mac_address',
          network_interface_id: 'network_interface_id',
          outpost_arn: 'outpost_arn',
          owner_id: 'owner_id',
          private_dns_name: 'private_dns_name',
          private_ip_address: 'private_ip_address',
          private_ip_addresses: Stubs::NetworkInterfacePrivateIpAddressList.default(visited),
          ipv4_prefixes: Stubs::Ipv4PrefixesList.default(visited),
          ipv6_prefixes: Stubs::Ipv6PrefixesList.default(visited),
          requester_id: 'requester_id',
          requester_managed: false,
          source_dest_check: false,
          status: 'status',
          subnet_id: 'subnet_id',
          tag_set: Stubs::TagList.default(visited),
          vpc_id: 'vpc_id',
          deny_all_igw_traffic: false,
          ipv6_native: false,
          ipv6_address: 'ipv6_address',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for Ipv6PrefixesList
    class Ipv6PrefixesList
      def self.default(visited=[])
        return nil if visited.include?('Ipv6PrefixesList')
        visited = visited + ['Ipv6PrefixesList']
        [
          Stubs::Ipv6PrefixSpecification.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Ipv6PrefixSpecification
    class Ipv6PrefixSpecification

      def self.default(visited=[])
        return nil if visited.include?('Ipv6PrefixSpecification')
        visited = visited + ['Ipv6PrefixSpecification']
        {
          ipv6_prefix: 'ipv6_prefix',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for NetworkInterfacePrivateIpAddressList
    class NetworkInterfacePrivateIpAddressList
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfacePrivateIpAddressList')
        visited = visited + ['NetworkInterfacePrivateIpAddressList']
        [
          Stubs::NetworkInterfacePrivateIpAddress.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for NetworkInterfacePrivateIpAddress
    class NetworkInterfacePrivateIpAddress

      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfacePrivateIpAddress')
        visited = visited + ['NetworkInterfacePrivateIpAddress']
        {
          association: Stubs::NetworkInterfaceAssociation.default(visited),
          primary: false,
          private_dns_name: 'private_dns_name',
          private_ip_address: 'private_ip_address',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for NetworkInterfaceAssociation
    class NetworkInterfaceAssociation

      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfaceAssociation')
        visited = visited + ['NetworkInterfaceAssociation']
        {
          allocation_id: 'allocation_id',
          association_id: 'association_id',
          ip_owner_id: 'ip_owner_id',
          public_dns_name: 'public_dns_name',
          public_ip: 'public_ip',
          customer_owned_ip: 'customer_owned_ip',
          carrier_ip: 'carrier_ip',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for NetworkInterfaceIpv6AddressesList
    class NetworkInterfaceIpv6AddressesList
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfaceIpv6AddressesList')
        visited = visited + ['NetworkInterfaceIpv6AddressesList']
        [
          Stubs::NetworkInterfaceIpv6Address.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for NetworkInterfaceIpv6Address
    class NetworkInterfaceIpv6Address

      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfaceIpv6Address')
        visited = visited + ['NetworkInterfaceIpv6Address']
        {
          ipv6_address: 'ipv6_address',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for GroupIdentifierList
    class GroupIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('GroupIdentifierList')
        visited = visited + ['GroupIdentifierList']
        [
          Stubs::GroupIdentifier.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for GroupIdentifier
    class GroupIdentifier

      def self.default(visited=[])
        return nil if visited.include?('GroupIdentifier')
        visited = visited + ['GroupIdentifier']
        {
          group_name: 'group_name',
          group_id: 'group_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for NetworkInterfaceAttachment
    class NetworkInterfaceAttachment

      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfaceAttachment')
        visited = visited + ['NetworkInterfaceAttachment']
        {
          attach_time: Time.now,
          attachment_id: 'attachment_id',
          delete_on_termination: false,
          device_index: 1,
          network_card_index: 1,
          instance_id: 'instance_id',
          instance_owner_id: 'instance_owner_id',
          status: 'status',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateNetworkInterfacePermission
    class CreateNetworkInterfacePermission

      def self.default(visited=[])
        {
          interface_permission: Stubs::NetworkInterfacePermission.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for NetworkInterfacePermission
    class NetworkInterfacePermission

      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfacePermission')
        visited = visited + ['NetworkInterfacePermission']
        {
          network_interface_permission_id: 'network_interface_permission_id',
          network_interface_id: 'network_interface_id',
          aws_account_id: 'aws_account_id',
          aws_service: 'aws_service',
          permission: 'permission',
          permission_state: Stubs::NetworkInterfacePermissionState.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for NetworkInterfacePermissionState
    class NetworkInterfacePermissionState

      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfacePermissionState')
        visited = visited + ['NetworkInterfacePermissionState']
        {
          state: 'state',
          status_message: 'status_message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreatePlacementGroup
    class CreatePlacementGroup

      def self.default(visited=[])
        {
          placement_group: Stubs::PlacementGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for PlacementGroup
    class PlacementGroup

      def self.default(visited=[])
        return nil if visited.include?('PlacementGroup')
        visited = visited + ['PlacementGroup']
        {
          group_name: 'group_name',
          state: 'state',
          strategy: 'strategy',
          partition_count: 1,
          group_id: 'group_id',
          tags: Stubs::TagList.default(visited),
          group_arn: 'group_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreatePublicIpv4Pool
    class CreatePublicIpv4Pool

      def self.default(visited=[])
        {
          pool_id: 'pool_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateReplaceRootVolumeTask
    class CreateReplaceRootVolumeTask

      def self.default(visited=[])
        {
          replace_root_volume_task: Stubs::ReplaceRootVolumeTask.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for ReplaceRootVolumeTask
    class ReplaceRootVolumeTask

      def self.default(visited=[])
        return nil if visited.include?('ReplaceRootVolumeTask')
        visited = visited + ['ReplaceRootVolumeTask']
        {
          replace_root_volume_task_id: 'replace_root_volume_task_id',
          instance_id: 'instance_id',
          task_state: 'task_state',
          start_time: 'start_time',
          complete_time: 'complete_time',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateReservedInstancesListing
    class CreateReservedInstancesListing

      def self.default(visited=[])
        {
          reserved_instances_listings: Stubs::ReservedInstancesListingList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateRestoreImageTask
    class CreateRestoreImageTask

      def self.default(visited=[])
        {
          image_id: 'image_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateRoute
    class CreateRoute

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateRouteTable
    class CreateRouteTable

      def self.default(visited=[])
        {
          route_table: Stubs::RouteTable.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for RouteTable
    class RouteTable

      def self.default(visited=[])
        return nil if visited.include?('RouteTable')
        visited = visited + ['RouteTable']
        {
          associations: Stubs::RouteTableAssociationList.default(visited),
          propagating_vgws: Stubs::PropagatingVgwList.default(visited),
          route_table_id: 'route_table_id',
          routes: Stubs::RouteList.default(visited),
          tags: Stubs::TagList.default(visited),
          vpc_id: 'vpc_id',
          owner_id: 'owner_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for RouteList
    class RouteList
      def self.default(visited=[])
        return nil if visited.include?('RouteList')
        visited = visited + ['RouteList']
        [
          Stubs::Route.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Route
    class Route

      def self.default(visited=[])
        return nil if visited.include?('Route')
        visited = visited + ['Route']
        {
          destination_cidr_block: 'destination_cidr_block',
          destination_ipv6_cidr_block: 'destination_ipv6_cidr_block',
          destination_prefix_list_id: 'destination_prefix_list_id',
          egress_only_internet_gateway_id: 'egress_only_internet_gateway_id',
          gateway_id: 'gateway_id',
          instance_id: 'instance_id',
          instance_owner_id: 'instance_owner_id',
          nat_gateway_id: 'nat_gateway_id',
          transit_gateway_id: 'transit_gateway_id',
          local_gateway_id: 'local_gateway_id',
          carrier_gateway_id: 'carrier_gateway_id',
          network_interface_id: 'network_interface_id',
          origin: 'origin',
          state: 'state',
          vpc_peering_connection_id: 'vpc_peering_connection_id',
          core_network_arn: 'core_network_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for PropagatingVgwList
    class PropagatingVgwList
      def self.default(visited=[])
        return nil if visited.include?('PropagatingVgwList')
        visited = visited + ['PropagatingVgwList']
        [
          Stubs::PropagatingVgw.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for PropagatingVgw
    class PropagatingVgw

      def self.default(visited=[])
        return nil if visited.include?('PropagatingVgw')
        visited = visited + ['PropagatingVgw']
        {
          gateway_id: 'gateway_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for RouteTableAssociationList
    class RouteTableAssociationList
      def self.default(visited=[])
        return nil if visited.include?('RouteTableAssociationList')
        visited = visited + ['RouteTableAssociationList']
        [
          Stubs::RouteTableAssociation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for RouteTableAssociation
    class RouteTableAssociation

      def self.default(visited=[])
        return nil if visited.include?('RouteTableAssociation')
        visited = visited + ['RouteTableAssociation']
        {
          main: false,
          route_table_association_id: 'route_table_association_id',
          route_table_id: 'route_table_id',
          subnet_id: 'subnet_id',
          gateway_id: 'gateway_id',
          association_state: Stubs::RouteTableAssociationState.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateSecurityGroup
    class CreateSecurityGroup

      def self.default(visited=[])
        {
          group_id: 'group_id',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateSnapshot
    class CreateSnapshot

      def self.default(visited=[])
        {
          data_encryption_key_id: 'data_encryption_key_id',
          description: 'description',
          encrypted: false,
          kms_key_id: 'kms_key_id',
          owner_id: 'owner_id',
          progress: 'progress',
          snapshot_id: 'snapshot_id',
          start_time: Time.now,
          state: 'state',
          state_message: 'state_message',
          volume_id: 'volume_id',
          volume_size: 1,
          owner_alias: 'owner_alias',
          outpost_arn: 'outpost_arn',
          tags: Stubs::TagList.default(visited),
          storage_tier: 'storage_tier',
          restore_expiry_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateSnapshots
    class CreateSnapshots

      def self.default(visited=[])
        {
          snapshots: Stubs::SnapshotSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for SnapshotSet
    class SnapshotSet
      def self.default(visited=[])
        return nil if visited.include?('SnapshotSet')
        visited = visited + ['SnapshotSet']
        [
          Stubs::SnapshotInfo.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for SnapshotInfo
    class SnapshotInfo

      def self.default(visited=[])
        return nil if visited.include?('SnapshotInfo')
        visited = visited + ['SnapshotInfo']
        {
          description: 'description',
          tags: Stubs::TagList.default(visited),
          encrypted: false,
          volume_id: 'volume_id',
          state: 'state',
          volume_size: 1,
          start_time: Time.now,
          progress: 'progress',
          owner_id: 'owner_id',
          snapshot_id: 'snapshot_id',
          outpost_arn: 'outpost_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateSpotDatafeedSubscription
    class CreateSpotDatafeedSubscription

      def self.default(visited=[])
        {
          spot_datafeed_subscription: Stubs::SpotDatafeedSubscription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for SpotDatafeedSubscription
    class SpotDatafeedSubscription

      def self.default(visited=[])
        return nil if visited.include?('SpotDatafeedSubscription')
        visited = visited + ['SpotDatafeedSubscription']
        {
          bucket: 'bucket',
          fault: Stubs::SpotInstanceStateFault.default(visited),
          owner_id: 'owner_id',
          prefix: 'prefix',
          state: 'state',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for SpotInstanceStateFault
    class SpotInstanceStateFault

      def self.default(visited=[])
        return nil if visited.include?('SpotInstanceStateFault')
        visited = visited + ['SpotInstanceStateFault']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateStoreImageTask
    class CreateStoreImageTask

      def self.default(visited=[])
        {
          object_key: 'object_key',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateSubnet
    class CreateSubnet

      def self.default(visited=[])
        {
          subnet: Stubs::Subnet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateSubnetCidrReservation
    class CreateSubnetCidrReservation

      def self.default(visited=[])
        {
          subnet_cidr_reservation: Stubs::SubnetCidrReservation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for SubnetCidrReservation
    class SubnetCidrReservation

      def self.default(visited=[])
        return nil if visited.include?('SubnetCidrReservation')
        visited = visited + ['SubnetCidrReservation']
        {
          subnet_cidr_reservation_id: 'subnet_cidr_reservation_id',
          subnet_id: 'subnet_id',
          cidr: 'cidr',
          reservation_type: 'reservation_type',
          owner_id: 'owner_id',
          description: 'description',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateTags
    class CreateTags

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateTrafficMirrorFilter
    class CreateTrafficMirrorFilter

      def self.default(visited=[])
        {
          traffic_mirror_filter: Stubs::TrafficMirrorFilter.default(visited),
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TrafficMirrorFilter
    class TrafficMirrorFilter

      def self.default(visited=[])
        return nil if visited.include?('TrafficMirrorFilter')
        visited = visited + ['TrafficMirrorFilter']
        {
          traffic_mirror_filter_id: 'traffic_mirror_filter_id',
          ingress_filter_rules: Stubs::TrafficMirrorFilterRuleList.default(visited),
          egress_filter_rules: Stubs::TrafficMirrorFilterRuleList.default(visited),
          network_services: Stubs::TrafficMirrorNetworkServiceList.default(visited),
          description: 'description',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for TrafficMirrorNetworkServiceList
    class TrafficMirrorNetworkServiceList
      def self.default(visited=[])
        return nil if visited.include?('TrafficMirrorNetworkServiceList')
        visited = visited + ['TrafficMirrorNetworkServiceList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # List Stubber for TrafficMirrorFilterRuleList
    class TrafficMirrorFilterRuleList
      def self.default(visited=[])
        return nil if visited.include?('TrafficMirrorFilterRuleList')
        visited = visited + ['TrafficMirrorFilterRuleList']
        [
          Stubs::TrafficMirrorFilterRule.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for TrafficMirrorFilterRule
    class TrafficMirrorFilterRule

      def self.default(visited=[])
        return nil if visited.include?('TrafficMirrorFilterRule')
        visited = visited + ['TrafficMirrorFilterRule']
        {
          traffic_mirror_filter_rule_id: 'traffic_mirror_filter_rule_id',
          traffic_mirror_filter_id: 'traffic_mirror_filter_id',
          traffic_direction: 'traffic_direction',
          rule_number: 1,
          rule_action: 'rule_action',
          protocol: 1,
          destination_port_range: Stubs::TrafficMirrorPortRange.default(visited),
          source_port_range: Stubs::TrafficMirrorPortRange.default(visited),
          destination_cidr_block: 'destination_cidr_block',
          source_cidr_block: 'source_cidr_block',
          description: 'description',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for TrafficMirrorPortRange
    class TrafficMirrorPortRange

      def self.default(visited=[])
        return nil if visited.include?('TrafficMirrorPortRange')
        visited = visited + ['TrafficMirrorPortRange']
        {
          from_port: 1,
          to_port: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateTrafficMirrorFilterRule
    class CreateTrafficMirrorFilterRule

      def self.default(visited=[])
        {
          traffic_mirror_filter_rule: Stubs::TrafficMirrorFilterRule.default(visited),
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateTrafficMirrorSession
    class CreateTrafficMirrorSession

      def self.default(visited=[])
        {
          traffic_mirror_session: Stubs::TrafficMirrorSession.default(visited),
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TrafficMirrorSession
    class TrafficMirrorSession

      def self.default(visited=[])
        return nil if visited.include?('TrafficMirrorSession')
        visited = visited + ['TrafficMirrorSession']
        {
          traffic_mirror_session_id: 'traffic_mirror_session_id',
          traffic_mirror_target_id: 'traffic_mirror_target_id',
          traffic_mirror_filter_id: 'traffic_mirror_filter_id',
          network_interface_id: 'network_interface_id',
          owner_id: 'owner_id',
          packet_length: 1,
          session_number: 1,
          virtual_network_id: 1,
          description: 'description',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateTrafficMirrorTarget
    class CreateTrafficMirrorTarget

      def self.default(visited=[])
        {
          traffic_mirror_target: Stubs::TrafficMirrorTarget.default(visited),
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TrafficMirrorTarget
    class TrafficMirrorTarget

      def self.default(visited=[])
        return nil if visited.include?('TrafficMirrorTarget')
        visited = visited + ['TrafficMirrorTarget']
        {
          traffic_mirror_target_id: 'traffic_mirror_target_id',
          network_interface_id: 'network_interface_id',
          network_load_balancer_arn: 'network_load_balancer_arn',
          type: 'type',
          description: 'description',
          owner_id: 'owner_id',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateTransitGateway
    class CreateTransitGateway

      def self.default(visited=[])
        {
          transit_gateway: Stubs::TransitGateway.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TransitGateway
    class TransitGateway

      def self.default(visited=[])
        return nil if visited.include?('TransitGateway')
        visited = visited + ['TransitGateway']
        {
          transit_gateway_id: 'transit_gateway_id',
          transit_gateway_arn: 'transit_gateway_arn',
          state: 'state',
          owner_id: 'owner_id',
          description: 'description',
          creation_time: Time.now,
          options: Stubs::TransitGatewayOptions.default(visited),
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for TransitGatewayOptions
    class TransitGatewayOptions

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayOptions')
        visited = visited + ['TransitGatewayOptions']
        {
          amazon_side_asn: 1,
          transit_gateway_cidr_blocks: Stubs::ValueStringList.default(visited),
          auto_accept_shared_attachments: 'auto_accept_shared_attachments',
          default_route_table_association: 'default_route_table_association',
          association_default_route_table_id: 'association_default_route_table_id',
          default_route_table_propagation: 'default_route_table_propagation',
          propagation_default_route_table_id: 'propagation_default_route_table_id',
          vpn_ecmp_support: 'vpn_ecmp_support',
          dns_support: 'dns_support',
          multicast_support: 'multicast_support',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateTransitGatewayConnect
    class CreateTransitGatewayConnect

      def self.default(visited=[])
        {
          transit_gateway_connect: Stubs::TransitGatewayConnect.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TransitGatewayConnect
    class TransitGatewayConnect

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayConnect')
        visited = visited + ['TransitGatewayConnect']
        {
          transit_gateway_attachment_id: 'transit_gateway_attachment_id',
          transport_transit_gateway_attachment_id: 'transport_transit_gateway_attachment_id',
          transit_gateway_id: 'transit_gateway_id',
          state: 'state',
          creation_time: Time.now,
          options: Stubs::TransitGatewayConnectOptions.default(visited),
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for TransitGatewayConnectOptions
    class TransitGatewayConnectOptions

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayConnectOptions')
        visited = visited + ['TransitGatewayConnectOptions']
        {
          protocol: 'protocol',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateTransitGatewayConnectPeer
    class CreateTransitGatewayConnectPeer

      def self.default(visited=[])
        {
          transit_gateway_connect_peer: Stubs::TransitGatewayConnectPeer.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TransitGatewayConnectPeer
    class TransitGatewayConnectPeer

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayConnectPeer')
        visited = visited + ['TransitGatewayConnectPeer']
        {
          transit_gateway_attachment_id: 'transit_gateway_attachment_id',
          transit_gateway_connect_peer_id: 'transit_gateway_connect_peer_id',
          state: 'state',
          creation_time: Time.now,
          connect_peer_configuration: Stubs::TransitGatewayConnectPeerConfiguration.default(visited),
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for TransitGatewayConnectPeerConfiguration
    class TransitGatewayConnectPeerConfiguration

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayConnectPeerConfiguration')
        visited = visited + ['TransitGatewayConnectPeerConfiguration']
        {
          transit_gateway_address: 'transit_gateway_address',
          peer_address: 'peer_address',
          inside_cidr_blocks: Stubs::InsideCidrBlocksStringList.default(visited),
          protocol: 'protocol',
          bgp_configurations: Stubs::TransitGatewayAttachmentBgpConfigurationList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for TransitGatewayAttachmentBgpConfigurationList
    class TransitGatewayAttachmentBgpConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayAttachmentBgpConfigurationList')
        visited = visited + ['TransitGatewayAttachmentBgpConfigurationList']
        [
          Stubs::TransitGatewayAttachmentBgpConfiguration.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for TransitGatewayAttachmentBgpConfiguration
    class TransitGatewayAttachmentBgpConfiguration

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayAttachmentBgpConfiguration')
        visited = visited + ['TransitGatewayAttachmentBgpConfiguration']
        {
          transit_gateway_asn: 1,
          peer_asn: 1,
          transit_gateway_address: 'transit_gateway_address',
          peer_address: 'peer_address',
          bgp_status: 'bgp_status',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for InsideCidrBlocksStringList
    class InsideCidrBlocksStringList
      def self.default(visited=[])
        return nil if visited.include?('InsideCidrBlocksStringList')
        visited = visited + ['InsideCidrBlocksStringList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for CreateTransitGatewayMulticastDomain
    class CreateTransitGatewayMulticastDomain

      def self.default(visited=[])
        {
          transit_gateway_multicast_domain: Stubs::TransitGatewayMulticastDomain.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TransitGatewayMulticastDomain
    class TransitGatewayMulticastDomain

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayMulticastDomain')
        visited = visited + ['TransitGatewayMulticastDomain']
        {
          transit_gateway_multicast_domain_id: 'transit_gateway_multicast_domain_id',
          transit_gateway_id: 'transit_gateway_id',
          transit_gateway_multicast_domain_arn: 'transit_gateway_multicast_domain_arn',
          owner_id: 'owner_id',
          options: Stubs::TransitGatewayMulticastDomainOptions.default(visited),
          state: 'state',
          creation_time: Time.now,
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for TransitGatewayMulticastDomainOptions
    class TransitGatewayMulticastDomainOptions

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayMulticastDomainOptions')
        visited = visited + ['TransitGatewayMulticastDomainOptions']
        {
          igmpv2_support: 'igmpv2_support',
          static_sources_support: 'static_sources_support',
          auto_accept_shared_associations: 'auto_accept_shared_associations',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateTransitGatewayPeeringAttachment
    class CreateTransitGatewayPeeringAttachment

      def self.default(visited=[])
        {
          transit_gateway_peering_attachment: Stubs::TransitGatewayPeeringAttachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateTransitGatewayPrefixListReference
    class CreateTransitGatewayPrefixListReference

      def self.default(visited=[])
        {
          transit_gateway_prefix_list_reference: Stubs::TransitGatewayPrefixListReference.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TransitGatewayPrefixListReference
    class TransitGatewayPrefixListReference

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayPrefixListReference')
        visited = visited + ['TransitGatewayPrefixListReference']
        {
          transit_gateway_route_table_id: 'transit_gateway_route_table_id',
          prefix_list_id: 'prefix_list_id',
          prefix_list_owner_id: 'prefix_list_owner_id',
          state: 'state',
          blackhole: false,
          transit_gateway_attachment: Stubs::TransitGatewayPrefixListAttachment.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for TransitGatewayPrefixListAttachment
    class TransitGatewayPrefixListAttachment

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayPrefixListAttachment')
        visited = visited + ['TransitGatewayPrefixListAttachment']
        {
          transit_gateway_attachment_id: 'transit_gateway_attachment_id',
          resource_type: 'resource_type',
          resource_id: 'resource_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateTransitGatewayRoute
    class CreateTransitGatewayRoute

      def self.default(visited=[])
        {
          route: Stubs::TransitGatewayRoute.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TransitGatewayRoute
    class TransitGatewayRoute

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayRoute')
        visited = visited + ['TransitGatewayRoute']
        {
          destination_cidr_block: 'destination_cidr_block',
          prefix_list_id: 'prefix_list_id',
          transit_gateway_attachments: Stubs::TransitGatewayRouteAttachmentList.default(visited),
          type: 'type',
          state: 'state',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for TransitGatewayRouteAttachmentList
    class TransitGatewayRouteAttachmentList
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayRouteAttachmentList')
        visited = visited + ['TransitGatewayRouteAttachmentList']
        [
          Stubs::TransitGatewayRouteAttachment.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for TransitGatewayRouteAttachment
    class TransitGatewayRouteAttachment

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayRouteAttachment')
        visited = visited + ['TransitGatewayRouteAttachment']
        {
          resource_id: 'resource_id',
          transit_gateway_attachment_id: 'transit_gateway_attachment_id',
          resource_type: 'resource_type',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateTransitGatewayRouteTable
    class CreateTransitGatewayRouteTable

      def self.default(visited=[])
        {
          transit_gateway_route_table: Stubs::TransitGatewayRouteTable.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TransitGatewayRouteTable
    class TransitGatewayRouteTable

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayRouteTable')
        visited = visited + ['TransitGatewayRouteTable']
        {
          transit_gateway_route_table_id: 'transit_gateway_route_table_id',
          transit_gateway_id: 'transit_gateway_id',
          state: 'state',
          default_association_route_table: false,
          default_propagation_route_table: false,
          creation_time: Time.now,
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateTransitGatewayVpcAttachment
    class CreateTransitGatewayVpcAttachment

      def self.default(visited=[])
        {
          transit_gateway_vpc_attachment: Stubs::TransitGatewayVpcAttachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateVolume
    class CreateVolume

      def self.default(visited=[])
        {
          attachments: Stubs::VolumeAttachmentList.default(visited),
          availability_zone: 'availability_zone',
          create_time: Time.now,
          encrypted: false,
          kms_key_id: 'kms_key_id',
          outpost_arn: 'outpost_arn',
          size: 1,
          snapshot_id: 'snapshot_id',
          state: 'state',
          volume_id: 'volume_id',
          iops: 1,
          tags: Stubs::TagList.default(visited),
          volume_type: 'volume_type',
          fast_restored: false,
          multi_attach_enabled: false,
          throughput: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for VolumeAttachmentList
    class VolumeAttachmentList
      def self.default(visited=[])
        return nil if visited.include?('VolumeAttachmentList')
        visited = visited + ['VolumeAttachmentList']
        [
          Stubs::VolumeAttachment.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for VolumeAttachment
    class VolumeAttachment

      def self.default(visited=[])
        return nil if visited.include?('VolumeAttachment')
        visited = visited + ['VolumeAttachment']
        {
          attach_time: Time.now,
          device: 'device',
          instance_id: 'instance_id',
          state: 'state',
          volume_id: 'volume_id',
          delete_on_termination: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateVpc
    class CreateVpc

      def self.default(visited=[])
        {
          vpc: Stubs::Vpc.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateVpcEndpoint
    class CreateVpcEndpoint

      def self.default(visited=[])
        {
          vpc_endpoint: Stubs::VpcEndpoint.default(visited),
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for VpcEndpoint
    class VpcEndpoint

      def self.default(visited=[])
        return nil if visited.include?('VpcEndpoint')
        visited = visited + ['VpcEndpoint']
        {
          vpc_endpoint_id: 'vpc_endpoint_id',
          vpc_endpoint_type: 'vpc_endpoint_type',
          vpc_id: 'vpc_id',
          service_name: 'service_name',
          state: 'state',
          policy_document: 'policy_document',
          route_table_ids: Stubs::ValueStringList.default(visited),
          subnet_ids: Stubs::ValueStringList.default(visited),
          groups: Stubs::GroupIdentifierSet.default(visited),
          private_dns_enabled: false,
          requester_managed: false,
          network_interface_ids: Stubs::ValueStringList.default(visited),
          dns_entries: Stubs::DnsEntrySet.default(visited),
          creation_timestamp: Time.now,
          tags: Stubs::TagList.default(visited),
          owner_id: 'owner_id',
          last_error: Stubs::LastError.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for LastError
    class LastError

      def self.default(visited=[])
        return nil if visited.include?('LastError')
        visited = visited + ['LastError']
        {
          message: 'message',
          code: 'code',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for DnsEntrySet
    class DnsEntrySet
      def self.default(visited=[])
        return nil if visited.include?('DnsEntrySet')
        visited = visited + ['DnsEntrySet']
        [
          Stubs::DnsEntry.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for DnsEntry
    class DnsEntry

      def self.default(visited=[])
        return nil if visited.include?('DnsEntry')
        visited = visited + ['DnsEntry']
        {
          dns_name: 'dns_name',
          hosted_zone_id: 'hosted_zone_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for GroupIdentifierSet
    class GroupIdentifierSet
      def self.default(visited=[])
        return nil if visited.include?('GroupIdentifierSet')
        visited = visited + ['GroupIdentifierSet']
        [
          Stubs::SecurityGroupIdentifier.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for SecurityGroupIdentifier
    class SecurityGroupIdentifier

      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIdentifier')
        visited = visited + ['SecurityGroupIdentifier']
        {
          group_id: 'group_id',
          group_name: 'group_name',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateVpcEndpointConnectionNotification
    class CreateVpcEndpointConnectionNotification

      def self.default(visited=[])
        {
          connection_notification: Stubs::ConnectionNotification.default(visited),
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for ConnectionNotification
    class ConnectionNotification

      def self.default(visited=[])
        return nil if visited.include?('ConnectionNotification')
        visited = visited + ['ConnectionNotification']
        {
          connection_notification_id: 'connection_notification_id',
          service_id: 'service_id',
          vpc_endpoint_id: 'vpc_endpoint_id',
          connection_notification_type: 'connection_notification_type',
          connection_notification_arn: 'connection_notification_arn',
          connection_events: Stubs::ValueStringList.default(visited),
          connection_notification_state: 'connection_notification_state',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateVpcEndpointServiceConfiguration
    class CreateVpcEndpointServiceConfiguration

      def self.default(visited=[])
        {
          service_configuration: Stubs::ServiceConfiguration.default(visited),
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for ServiceConfiguration
    class ServiceConfiguration

      def self.default(visited=[])
        return nil if visited.include?('ServiceConfiguration')
        visited = visited + ['ServiceConfiguration']
        {
          service_type: Stubs::ServiceTypeDetailSet.default(visited),
          service_id: 'service_id',
          service_name: 'service_name',
          service_state: 'service_state',
          availability_zones: Stubs::ValueStringList.default(visited),
          acceptance_required: false,
          manages_vpc_endpoints: false,
          network_load_balancer_arns: Stubs::ValueStringList.default(visited),
          gateway_load_balancer_arns: Stubs::ValueStringList.default(visited),
          base_endpoint_dns_names: Stubs::ValueStringList.default(visited),
          private_dns_name: 'private_dns_name',
          private_dns_name_configuration: Stubs::PrivateDnsNameConfiguration.default(visited),
          payer_responsibility: 'payer_responsibility',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for PrivateDnsNameConfiguration
    class PrivateDnsNameConfiguration

      def self.default(visited=[])
        return nil if visited.include?('PrivateDnsNameConfiguration')
        visited = visited + ['PrivateDnsNameConfiguration']
        {
          state: 'state',
          type: 'type',
          value: 'value',
          member_name: 'member_name',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ServiceTypeDetailSet
    class ServiceTypeDetailSet
      def self.default(visited=[])
        return nil if visited.include?('ServiceTypeDetailSet')
        visited = visited + ['ServiceTypeDetailSet']
        [
          Stubs::ServiceTypeDetail.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ServiceTypeDetail
    class ServiceTypeDetail

      def self.default(visited=[])
        return nil if visited.include?('ServiceTypeDetail')
        visited = visited + ['ServiceTypeDetail']
        {
          service_type: 'service_type',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateVpcPeeringConnection
    class CreateVpcPeeringConnection

      def self.default(visited=[])
        {
          vpc_peering_connection: Stubs::VpcPeeringConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateVpnConnection
    class CreateVpnConnection

      def self.default(visited=[])
        {
          vpn_connection: Stubs::VpnConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for VpnConnection
    class VpnConnection

      def self.default(visited=[])
        return nil if visited.include?('VpnConnection')
        visited = visited + ['VpnConnection']
        {
          customer_gateway_configuration: 'customer_gateway_configuration',
          customer_gateway_id: 'customer_gateway_id',
          category: 'category',
          state: 'state',
          type: 'type',
          vpn_connection_id: 'vpn_connection_id',
          vpn_gateway_id: 'vpn_gateway_id',
          transit_gateway_id: 'transit_gateway_id',
          core_network_arn: 'core_network_arn',
          core_network_attachment_arn: 'core_network_attachment_arn',
          gateway_association_state: 'gateway_association_state',
          options: Stubs::VpnConnectionOptions.default(visited),
          routes: Stubs::VpnStaticRouteList.default(visited),
          tags: Stubs::TagList.default(visited),
          vgw_telemetry: Stubs::VgwTelemetryList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for VgwTelemetryList
    class VgwTelemetryList
      def self.default(visited=[])
        return nil if visited.include?('VgwTelemetryList')
        visited = visited + ['VgwTelemetryList']
        [
          Stubs::VgwTelemetry.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for VgwTelemetry
    class VgwTelemetry

      def self.default(visited=[])
        return nil if visited.include?('VgwTelemetry')
        visited = visited + ['VgwTelemetry']
        {
          accepted_route_count: 1,
          last_status_change: Time.now,
          outside_ip_address: 'outside_ip_address',
          status: 'status',
          status_message: 'status_message',
          certificate_arn: 'certificate_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for VpnStaticRouteList
    class VpnStaticRouteList
      def self.default(visited=[])
        return nil if visited.include?('VpnStaticRouteList')
        visited = visited + ['VpnStaticRouteList']
        [
          Stubs::VpnStaticRoute.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for VpnStaticRoute
    class VpnStaticRoute

      def self.default(visited=[])
        return nil if visited.include?('VpnStaticRoute')
        visited = visited + ['VpnStaticRoute']
        {
          destination_cidr_block: 'destination_cidr_block',
          source: 'source',
          state: 'state',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for VpnConnectionOptions
    class VpnConnectionOptions

      def self.default(visited=[])
        return nil if visited.include?('VpnConnectionOptions')
        visited = visited + ['VpnConnectionOptions']
        {
          enable_acceleration: false,
          static_routes_only: false,
          local_ipv4_network_cidr: 'local_ipv4_network_cidr',
          remote_ipv4_network_cidr: 'remote_ipv4_network_cidr',
          local_ipv6_network_cidr: 'local_ipv6_network_cidr',
          remote_ipv6_network_cidr: 'remote_ipv6_network_cidr',
          tunnel_inside_ip_version: 'tunnel_inside_ip_version',
          tunnel_options: Stubs::TunnelOptionsList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for TunnelOptionsList
    class TunnelOptionsList
      def self.default(visited=[])
        return nil if visited.include?('TunnelOptionsList')
        visited = visited + ['TunnelOptionsList']
        [
          Stubs::TunnelOption.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for TunnelOption
    class TunnelOption

      def self.default(visited=[])
        return nil if visited.include?('TunnelOption')
        visited = visited + ['TunnelOption']
        {
          outside_ip_address: 'outside_ip_address',
          tunnel_inside_cidr: 'tunnel_inside_cidr',
          tunnel_inside_ipv6_cidr: 'tunnel_inside_ipv6_cidr',
          pre_shared_key: 'pre_shared_key',
          phase1_lifetime_seconds: 1,
          phase2_lifetime_seconds: 1,
          rekey_margin_time_seconds: 1,
          rekey_fuzz_percentage: 1,
          replay_window_size: 1,
          dpd_timeout_seconds: 1,
          dpd_timeout_action: 'dpd_timeout_action',
          phase1_encryption_algorithms: Stubs::Phase1EncryptionAlgorithmsList.default(visited),
          phase2_encryption_algorithms: Stubs::Phase2EncryptionAlgorithmsList.default(visited),
          phase1_integrity_algorithms: Stubs::Phase1IntegrityAlgorithmsList.default(visited),
          phase2_integrity_algorithms: Stubs::Phase2IntegrityAlgorithmsList.default(visited),
          phase1_dh_group_numbers: Stubs::Phase1DHGroupNumbersList.default(visited),
          phase2_dh_group_numbers: Stubs::Phase2DHGroupNumbersList.default(visited),
          ike_versions: Stubs::IKEVersionsList.default(visited),
          startup_action: 'startup_action',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for IKEVersionsList
    class IKEVersionsList
      def self.default(visited=[])
        return nil if visited.include?('IKEVersionsList')
        visited = visited + ['IKEVersionsList']
        [
          Stubs::IKEVersionsListValue.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for IKEVersionsListValue
    class IKEVersionsListValue

      def self.default(visited=[])
        return nil if visited.include?('IKEVersionsListValue')
        visited = visited + ['IKEVersionsListValue']
        {
          value: 'value',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for Phase2DHGroupNumbersList
    class Phase2DHGroupNumbersList
      def self.default(visited=[])
        return nil if visited.include?('Phase2DHGroupNumbersList')
        visited = visited + ['Phase2DHGroupNumbersList']
        [
          Stubs::Phase2DHGroupNumbersListValue.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Phase2DHGroupNumbersListValue
    class Phase2DHGroupNumbersListValue

      def self.default(visited=[])
        return nil if visited.include?('Phase2DHGroupNumbersListValue')
        visited = visited + ['Phase2DHGroupNumbersListValue']
        {
          value: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for Phase1DHGroupNumbersList
    class Phase1DHGroupNumbersList
      def self.default(visited=[])
        return nil if visited.include?('Phase1DHGroupNumbersList')
        visited = visited + ['Phase1DHGroupNumbersList']
        [
          Stubs::Phase1DHGroupNumbersListValue.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Phase1DHGroupNumbersListValue
    class Phase1DHGroupNumbersListValue

      def self.default(visited=[])
        return nil if visited.include?('Phase1DHGroupNumbersListValue')
        visited = visited + ['Phase1DHGroupNumbersListValue']
        {
          value: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for Phase2IntegrityAlgorithmsList
    class Phase2IntegrityAlgorithmsList
      def self.default(visited=[])
        return nil if visited.include?('Phase2IntegrityAlgorithmsList')
        visited = visited + ['Phase2IntegrityAlgorithmsList']
        [
          Stubs::Phase2IntegrityAlgorithmsListValue.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Phase2IntegrityAlgorithmsListValue
    class Phase2IntegrityAlgorithmsListValue

      def self.default(visited=[])
        return nil if visited.include?('Phase2IntegrityAlgorithmsListValue')
        visited = visited + ['Phase2IntegrityAlgorithmsListValue']
        {
          value: 'value',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for Phase1IntegrityAlgorithmsList
    class Phase1IntegrityAlgorithmsList
      def self.default(visited=[])
        return nil if visited.include?('Phase1IntegrityAlgorithmsList')
        visited = visited + ['Phase1IntegrityAlgorithmsList']
        [
          Stubs::Phase1IntegrityAlgorithmsListValue.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Phase1IntegrityAlgorithmsListValue
    class Phase1IntegrityAlgorithmsListValue

      def self.default(visited=[])
        return nil if visited.include?('Phase1IntegrityAlgorithmsListValue')
        visited = visited + ['Phase1IntegrityAlgorithmsListValue']
        {
          value: 'value',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for Phase2EncryptionAlgorithmsList
    class Phase2EncryptionAlgorithmsList
      def self.default(visited=[])
        return nil if visited.include?('Phase2EncryptionAlgorithmsList')
        visited = visited + ['Phase2EncryptionAlgorithmsList']
        [
          Stubs::Phase2EncryptionAlgorithmsListValue.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Phase2EncryptionAlgorithmsListValue
    class Phase2EncryptionAlgorithmsListValue

      def self.default(visited=[])
        return nil if visited.include?('Phase2EncryptionAlgorithmsListValue')
        visited = visited + ['Phase2EncryptionAlgorithmsListValue']
        {
          value: 'value',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for Phase1EncryptionAlgorithmsList
    class Phase1EncryptionAlgorithmsList
      def self.default(visited=[])
        return nil if visited.include?('Phase1EncryptionAlgorithmsList')
        visited = visited + ['Phase1EncryptionAlgorithmsList']
        [
          Stubs::Phase1EncryptionAlgorithmsListValue.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Phase1EncryptionAlgorithmsListValue
    class Phase1EncryptionAlgorithmsListValue

      def self.default(visited=[])
        return nil if visited.include?('Phase1EncryptionAlgorithmsListValue')
        visited = visited + ['Phase1EncryptionAlgorithmsListValue']
        {
          value: 'value',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateVpnConnectionRoute
    class CreateVpnConnectionRoute

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for CreateVpnGateway
    class CreateVpnGateway

      def self.default(visited=[])
        {
          vpn_gateway: Stubs::VpnGateway.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for VpnGateway
    class VpnGateway

      def self.default(visited=[])
        return nil if visited.include?('VpnGateway')
        visited = visited + ['VpnGateway']
        {
          availability_zone: 'availability_zone',
          state: 'state',
          type: 'type',
          vpc_attachments: Stubs::VpcAttachmentList.default(visited),
          vpn_gateway_id: 'vpn_gateway_id',
          amazon_side_asn: 1,
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for VpcAttachmentList
    class VpcAttachmentList
      def self.default(visited=[])
        return nil if visited.include?('VpcAttachmentList')
        visited = visited + ['VpcAttachmentList']
        [
          Stubs::VpcAttachment.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DeleteCarrierGateway
    class DeleteCarrierGateway

      def self.default(visited=[])
        {
          carrier_gateway: Stubs::CarrierGateway.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteClientVpnEndpoint
    class DeleteClientVpnEndpoint

      def self.default(visited=[])
        {
          status: Stubs::ClientVpnEndpointStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteClientVpnRoute
    class DeleteClientVpnRoute

      def self.default(visited=[])
        {
          status: Stubs::ClientVpnRouteStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteCustomerGateway
    class DeleteCustomerGateway

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteDhcpOptions
    class DeleteDhcpOptions

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteEgressOnlyInternetGateway
    class DeleteEgressOnlyInternetGateway

      def self.default(visited=[])
        {
          return_code: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteFleets
    class DeleteFleets

      def self.default(visited=[])
        {
          successful_fleet_deletions: Stubs::DeleteFleetSuccessSet.default(visited),
          unsuccessful_fleet_deletions: Stubs::DeleteFleetErrorSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for DeleteFleetErrorSet
    class DeleteFleetErrorSet
      def self.default(visited=[])
        return nil if visited.include?('DeleteFleetErrorSet')
        visited = visited + ['DeleteFleetErrorSet']
        [
          Stubs::DeleteFleetErrorItem.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for DeleteFleetErrorItem
    class DeleteFleetErrorItem

      def self.default(visited=[])
        return nil if visited.include?('DeleteFleetErrorItem')
        visited = visited + ['DeleteFleetErrorItem']
        {
          error: Stubs::DeleteFleetError.default(visited),
          fleet_id: 'fleet_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for DeleteFleetError
    class DeleteFleetError

      def self.default(visited=[])
        return nil if visited.include?('DeleteFleetError')
        visited = visited + ['DeleteFleetError']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for DeleteFleetSuccessSet
    class DeleteFleetSuccessSet
      def self.default(visited=[])
        return nil if visited.include?('DeleteFleetSuccessSet')
        visited = visited + ['DeleteFleetSuccessSet']
        [
          Stubs::DeleteFleetSuccessItem.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for DeleteFleetSuccessItem
    class DeleteFleetSuccessItem

      def self.default(visited=[])
        return nil if visited.include?('DeleteFleetSuccessItem')
        visited = visited + ['DeleteFleetSuccessItem']
        {
          current_fleet_state: 'current_fleet_state',
          previous_fleet_state: 'previous_fleet_state',
          fleet_id: 'fleet_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DeleteFlowLogs
    class DeleteFlowLogs

      def self.default(visited=[])
        {
          unsuccessful: Stubs::UnsuccessfulItemSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteFpgaImage
    class DeleteFpgaImage

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteInstanceEventWindow
    class DeleteInstanceEventWindow

      def self.default(visited=[])
        {
          instance_event_window_state: Stubs::InstanceEventWindowStateChange.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for InstanceEventWindowStateChange
    class InstanceEventWindowStateChange

      def self.default(visited=[])
        return nil if visited.include?('InstanceEventWindowStateChange')
        visited = visited + ['InstanceEventWindowStateChange']
        {
          instance_event_window_id: 'instance_event_window_id',
          state: 'state',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DeleteInternetGateway
    class DeleteInternetGateway

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteIpam
    class DeleteIpam

      def self.default(visited=[])
        {
          ipam: Stubs::Ipam.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteIpamPool
    class DeleteIpamPool

      def self.default(visited=[])
        {
          ipam_pool: Stubs::IpamPool.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteIpamScope
    class DeleteIpamScope

      def self.default(visited=[])
        {
          ipam_scope: Stubs::IpamScope.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteKeyPair
    class DeleteKeyPair

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteLaunchTemplate
    class DeleteLaunchTemplate

      def self.default(visited=[])
        {
          launch_template: Stubs::LaunchTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteLaunchTemplateVersions
    class DeleteLaunchTemplateVersions

      def self.default(visited=[])
        {
          successfully_deleted_launch_template_versions: Stubs::DeleteLaunchTemplateVersionsResponseSuccessSet.default(visited),
          unsuccessfully_deleted_launch_template_versions: Stubs::DeleteLaunchTemplateVersionsResponseErrorSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for DeleteLaunchTemplateVersionsResponseErrorSet
    class DeleteLaunchTemplateVersionsResponseErrorSet
      def self.default(visited=[])
        return nil if visited.include?('DeleteLaunchTemplateVersionsResponseErrorSet')
        visited = visited + ['DeleteLaunchTemplateVersionsResponseErrorSet']
        [
          Stubs::DeleteLaunchTemplateVersionsResponseErrorItem.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for DeleteLaunchTemplateVersionsResponseErrorItem
    class DeleteLaunchTemplateVersionsResponseErrorItem

      def self.default(visited=[])
        return nil if visited.include?('DeleteLaunchTemplateVersionsResponseErrorItem')
        visited = visited + ['DeleteLaunchTemplateVersionsResponseErrorItem']
        {
          launch_template_id: 'launch_template_id',
          launch_template_name: 'launch_template_name',
          version_number: 1,
          response_error: Stubs::ResponseError.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ResponseError
    class ResponseError

      def self.default(visited=[])
        return nil if visited.include?('ResponseError')
        visited = visited + ['ResponseError']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for DeleteLaunchTemplateVersionsResponseSuccessSet
    class DeleteLaunchTemplateVersionsResponseSuccessSet
      def self.default(visited=[])
        return nil if visited.include?('DeleteLaunchTemplateVersionsResponseSuccessSet')
        visited = visited + ['DeleteLaunchTemplateVersionsResponseSuccessSet']
        [
          Stubs::DeleteLaunchTemplateVersionsResponseSuccessItem.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for DeleteLaunchTemplateVersionsResponseSuccessItem
    class DeleteLaunchTemplateVersionsResponseSuccessItem

      def self.default(visited=[])
        return nil if visited.include?('DeleteLaunchTemplateVersionsResponseSuccessItem')
        visited = visited + ['DeleteLaunchTemplateVersionsResponseSuccessItem']
        {
          launch_template_id: 'launch_template_id',
          launch_template_name: 'launch_template_name',
          version_number: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DeleteLocalGatewayRoute
    class DeleteLocalGatewayRoute

      def self.default(visited=[])
        {
          route: Stubs::LocalGatewayRoute.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteLocalGatewayRouteTableVpcAssociation
    class DeleteLocalGatewayRouteTableVpcAssociation

      def self.default(visited=[])
        {
          local_gateway_route_table_vpc_association: Stubs::LocalGatewayRouteTableVpcAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteManagedPrefixList
    class DeleteManagedPrefixList

      def self.default(visited=[])
        {
          prefix_list: Stubs::ManagedPrefixList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteNatGateway
    class DeleteNatGateway

      def self.default(visited=[])
        {
          nat_gateway_id: 'nat_gateway_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteNetworkAcl
    class DeleteNetworkAcl

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteNetworkAclEntry
    class DeleteNetworkAclEntry

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteNetworkInsightsAccessScope
    class DeleteNetworkInsightsAccessScope

      def self.default(visited=[])
        {
          network_insights_access_scope_id: 'network_insights_access_scope_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteNetworkInsightsAccessScopeAnalysis
    class DeleteNetworkInsightsAccessScopeAnalysis

      def self.default(visited=[])
        {
          network_insights_access_scope_analysis_id: 'network_insights_access_scope_analysis_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteNetworkInsightsAnalysis
    class DeleteNetworkInsightsAnalysis

      def self.default(visited=[])
        {
          network_insights_analysis_id: 'network_insights_analysis_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteNetworkInsightsPath
    class DeleteNetworkInsightsPath

      def self.default(visited=[])
        {
          network_insights_path_id: 'network_insights_path_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteNetworkInterface
    class DeleteNetworkInterface

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteNetworkInterfacePermission
    class DeleteNetworkInterfacePermission

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeletePlacementGroup
    class DeletePlacementGroup

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeletePublicIpv4Pool
    class DeletePublicIpv4Pool

      def self.default(visited=[])
        {
          return_value: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteQueuedReservedInstances
    class DeleteQueuedReservedInstances

      def self.default(visited=[])
        {
          successful_queued_purchase_deletions: Stubs::SuccessfulQueuedPurchaseDeletionSet.default(visited),
          failed_queued_purchase_deletions: Stubs::FailedQueuedPurchaseDeletionSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for FailedQueuedPurchaseDeletionSet
    class FailedQueuedPurchaseDeletionSet
      def self.default(visited=[])
        return nil if visited.include?('FailedQueuedPurchaseDeletionSet')
        visited = visited + ['FailedQueuedPurchaseDeletionSet']
        [
          Stubs::FailedQueuedPurchaseDeletion.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for FailedQueuedPurchaseDeletion
    class FailedQueuedPurchaseDeletion

      def self.default(visited=[])
        return nil if visited.include?('FailedQueuedPurchaseDeletion')
        visited = visited + ['FailedQueuedPurchaseDeletion']
        {
          error: Stubs::DeleteQueuedReservedInstancesError.default(visited),
          reserved_instances_id: 'reserved_instances_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for DeleteQueuedReservedInstancesError
    class DeleteQueuedReservedInstancesError

      def self.default(visited=[])
        return nil if visited.include?('DeleteQueuedReservedInstancesError')
        visited = visited + ['DeleteQueuedReservedInstancesError']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for SuccessfulQueuedPurchaseDeletionSet
    class SuccessfulQueuedPurchaseDeletionSet
      def self.default(visited=[])
        return nil if visited.include?('SuccessfulQueuedPurchaseDeletionSet')
        visited = visited + ['SuccessfulQueuedPurchaseDeletionSet']
        [
          Stubs::SuccessfulQueuedPurchaseDeletion.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for SuccessfulQueuedPurchaseDeletion
    class SuccessfulQueuedPurchaseDeletion

      def self.default(visited=[])
        return nil if visited.include?('SuccessfulQueuedPurchaseDeletion')
        visited = visited + ['SuccessfulQueuedPurchaseDeletion']
        {
          reserved_instances_id: 'reserved_instances_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DeleteRoute
    class DeleteRoute

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteRouteTable
    class DeleteRouteTable

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteSecurityGroup
    class DeleteSecurityGroup

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteSnapshot
    class DeleteSnapshot

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteSpotDatafeedSubscription
    class DeleteSpotDatafeedSubscription

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteSubnet
    class DeleteSubnet

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteSubnetCidrReservation
    class DeleteSubnetCidrReservation

      def self.default(visited=[])
        {
          deleted_subnet_cidr_reservation: Stubs::SubnetCidrReservation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteTags
    class DeleteTags

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteTrafficMirrorFilter
    class DeleteTrafficMirrorFilter

      def self.default(visited=[])
        {
          traffic_mirror_filter_id: 'traffic_mirror_filter_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteTrafficMirrorFilterRule
    class DeleteTrafficMirrorFilterRule

      def self.default(visited=[])
        {
          traffic_mirror_filter_rule_id: 'traffic_mirror_filter_rule_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteTrafficMirrorSession
    class DeleteTrafficMirrorSession

      def self.default(visited=[])
        {
          traffic_mirror_session_id: 'traffic_mirror_session_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteTrafficMirrorTarget
    class DeleteTrafficMirrorTarget

      def self.default(visited=[])
        {
          traffic_mirror_target_id: 'traffic_mirror_target_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteTransitGateway
    class DeleteTransitGateway

      def self.default(visited=[])
        {
          transit_gateway: Stubs::TransitGateway.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteTransitGatewayConnect
    class DeleteTransitGatewayConnect

      def self.default(visited=[])
        {
          transit_gateway_connect: Stubs::TransitGatewayConnect.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteTransitGatewayConnectPeer
    class DeleteTransitGatewayConnectPeer

      def self.default(visited=[])
        {
          transit_gateway_connect_peer: Stubs::TransitGatewayConnectPeer.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteTransitGatewayMulticastDomain
    class DeleteTransitGatewayMulticastDomain

      def self.default(visited=[])
        {
          transit_gateway_multicast_domain: Stubs::TransitGatewayMulticastDomain.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteTransitGatewayPeeringAttachment
    class DeleteTransitGatewayPeeringAttachment

      def self.default(visited=[])
        {
          transit_gateway_peering_attachment: Stubs::TransitGatewayPeeringAttachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteTransitGatewayPrefixListReference
    class DeleteTransitGatewayPrefixListReference

      def self.default(visited=[])
        {
          transit_gateway_prefix_list_reference: Stubs::TransitGatewayPrefixListReference.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteTransitGatewayRoute
    class DeleteTransitGatewayRoute

      def self.default(visited=[])
        {
          route: Stubs::TransitGatewayRoute.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteTransitGatewayRouteTable
    class DeleteTransitGatewayRouteTable

      def self.default(visited=[])
        {
          transit_gateway_route_table: Stubs::TransitGatewayRouteTable.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteTransitGatewayVpcAttachment
    class DeleteTransitGatewayVpcAttachment

      def self.default(visited=[])
        {
          transit_gateway_vpc_attachment: Stubs::TransitGatewayVpcAttachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteVolume
    class DeleteVolume

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteVpc
    class DeleteVpc

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteVpcEndpointConnectionNotifications
    class DeleteVpcEndpointConnectionNotifications

      def self.default(visited=[])
        {
          unsuccessful: Stubs::UnsuccessfulItemSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteVpcEndpointServiceConfigurations
    class DeleteVpcEndpointServiceConfigurations

      def self.default(visited=[])
        {
          unsuccessful: Stubs::UnsuccessfulItemSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteVpcEndpoints
    class DeleteVpcEndpoints

      def self.default(visited=[])
        {
          unsuccessful: Stubs::UnsuccessfulItemSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteVpcPeeringConnection
    class DeleteVpcPeeringConnection

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteVpnConnection
    class DeleteVpnConnection

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteVpnConnectionRoute
    class DeleteVpnConnectionRoute

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteVpnGateway
    class DeleteVpnGateway

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeprovisionByoipCidr
    class DeprovisionByoipCidr

      def self.default(visited=[])
        {
          byoip_cidr: Stubs::ByoipCidr.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeprovisionIpamPoolCidr
    class DeprovisionIpamPoolCidr

      def self.default(visited=[])
        {
          ipam_pool_cidr: Stubs::IpamPoolCidr.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for IpamPoolCidr
    class IpamPoolCidr

      def self.default(visited=[])
        return nil if visited.include?('IpamPoolCidr')
        visited = visited + ['IpamPoolCidr']
        {
          cidr: 'cidr',
          state: 'state',
          failure_reason: Stubs::IpamPoolCidrFailureReason.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for IpamPoolCidrFailureReason
    class IpamPoolCidrFailureReason

      def self.default(visited=[])
        return nil if visited.include?('IpamPoolCidrFailureReason')
        visited = visited + ['IpamPoolCidrFailureReason']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DeprovisionPublicIpv4PoolCidr
    class DeprovisionPublicIpv4PoolCidr

      def self.default(visited=[])
        {
          pool_id: 'pool_id',
          deprovisioned_addresses: Stubs::DeprovisionedAddressSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for DeprovisionedAddressSet
    class DeprovisionedAddressSet
      def self.default(visited=[])
        return nil if visited.include?('DeprovisionedAddressSet')
        visited = visited + ['DeprovisionedAddressSet']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DeregisterImage
    class DeregisterImage

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeregisterInstanceEventNotificationAttributes
    class DeregisterInstanceEventNotificationAttributes

      def self.default(visited=[])
        {
          instance_tag_attribute: Stubs::InstanceTagNotificationAttribute.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for InstanceTagNotificationAttribute
    class InstanceTagNotificationAttribute

      def self.default(visited=[])
        return nil if visited.include?('InstanceTagNotificationAttribute')
        visited = visited + ['InstanceTagNotificationAttribute']
        {
          instance_tag_keys: Stubs::InstanceTagKeySet.default(visited),
          include_all_tags_of_instance: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for InstanceTagKeySet
    class InstanceTagKeySet
      def self.default(visited=[])
        return nil if visited.include?('InstanceTagKeySet')
        visited = visited + ['InstanceTagKeySet']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DeregisterTransitGatewayMulticastGroupMembers
    class DeregisterTransitGatewayMulticastGroupMembers

      def self.default(visited=[])
        {
          deregistered_multicast_group_members: Stubs::TransitGatewayMulticastDeregisteredGroupMembers.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TransitGatewayMulticastDeregisteredGroupMembers
    class TransitGatewayMulticastDeregisteredGroupMembers

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayMulticastDeregisteredGroupMembers')
        visited = visited + ['TransitGatewayMulticastDeregisteredGroupMembers']
        {
          transit_gateway_multicast_domain_id: 'transit_gateway_multicast_domain_id',
          deregistered_network_interface_ids: Stubs::ValueStringList.default(visited),
          group_ip_address: 'group_ip_address',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DeregisterTransitGatewayMulticastGroupSources
    class DeregisterTransitGatewayMulticastGroupSources

      def self.default(visited=[])
        {
          deregistered_multicast_group_sources: Stubs::TransitGatewayMulticastDeregisteredGroupSources.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TransitGatewayMulticastDeregisteredGroupSources
    class TransitGatewayMulticastDeregisteredGroupSources

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayMulticastDeregisteredGroupSources')
        visited = visited + ['TransitGatewayMulticastDeregisteredGroupSources']
        {
          transit_gateway_multicast_domain_id: 'transit_gateway_multicast_domain_id',
          deregistered_network_interface_ids: Stubs::ValueStringList.default(visited),
          group_ip_address: 'group_ip_address',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeAccountAttributes
    class DescribeAccountAttributes

      def self.default(visited=[])
        {
          account_attributes: Stubs::AccountAttributeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for AccountAttributeList
    class AccountAttributeList
      def self.default(visited=[])
        return nil if visited.include?('AccountAttributeList')
        visited = visited + ['AccountAttributeList']
        [
          Stubs::AccountAttribute.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AccountAttribute
    class AccountAttribute

      def self.default(visited=[])
        return nil if visited.include?('AccountAttribute')
        visited = visited + ['AccountAttribute']
        {
          attribute_name: 'attribute_name',
          attribute_values: Stubs::AccountAttributeValueList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for AccountAttributeValueList
    class AccountAttributeValueList
      def self.default(visited=[])
        return nil if visited.include?('AccountAttributeValueList')
        visited = visited + ['AccountAttributeValueList']
        [
          Stubs::AccountAttributeValue.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AccountAttributeValue
    class AccountAttributeValue

      def self.default(visited=[])
        return nil if visited.include?('AccountAttributeValue')
        visited = visited + ['AccountAttributeValue']
        {
          attribute_value: 'attribute_value',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeAddresses
    class DescribeAddresses

      def self.default(visited=[])
        {
          addresses: Stubs::AddressList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for AddressList
    class AddressList
      def self.default(visited=[])
        return nil if visited.include?('AddressList')
        visited = visited + ['AddressList']
        [
          Stubs::Address.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Address
    class Address

      def self.default(visited=[])
        return nil if visited.include?('Address')
        visited = visited + ['Address']
        {
          instance_id: 'instance_id',
          public_ip: 'public_ip',
          allocation_id: 'allocation_id',
          association_id: 'association_id',
          domain: 'domain',
          network_interface_id: 'network_interface_id',
          network_interface_owner_id: 'network_interface_owner_id',
          private_ip_address: 'private_ip_address',
          tags: Stubs::TagList.default(visited),
          public_ipv4_pool: 'public_ipv4_pool',
          network_border_group: 'network_border_group',
          customer_owned_ip: 'customer_owned_ip',
          customer_owned_ipv4_pool: 'customer_owned_ipv4_pool',
          carrier_ip: 'carrier_ip',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeAddressesAttribute
    class DescribeAddressesAttribute

      def self.default(visited=[])
        {
          addresses: Stubs::AddressSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for AddressSet
    class AddressSet
      def self.default(visited=[])
        return nil if visited.include?('AddressSet')
        visited = visited + ['AddressSet']
        [
          Stubs::AddressAttribute.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AddressAttribute
    class AddressAttribute

      def self.default(visited=[])
        return nil if visited.include?('AddressAttribute')
        visited = visited + ['AddressAttribute']
        {
          public_ip: 'public_ip',
          allocation_id: 'allocation_id',
          ptr_record: 'ptr_record',
          ptr_record_update: Stubs::PtrUpdateStatus.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for PtrUpdateStatus
    class PtrUpdateStatus

      def self.default(visited=[])
        return nil if visited.include?('PtrUpdateStatus')
        visited = visited + ['PtrUpdateStatus']
        {
          value: 'value',
          status: 'status',
          reason: 'reason',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeAggregateIdFormat
    class DescribeAggregateIdFormat

      def self.default(visited=[])
        {
          use_long_ids_aggregated: false,
          statuses: Stubs::IdFormatList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for IdFormatList
    class IdFormatList
      def self.default(visited=[])
        return nil if visited.include?('IdFormatList')
        visited = visited + ['IdFormatList']
        [
          Stubs::IdFormat.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for IdFormat
    class IdFormat

      def self.default(visited=[])
        return nil if visited.include?('IdFormat')
        visited = visited + ['IdFormat']
        {
          deadline: Time.now,
          resource: 'resource',
          use_long_ids: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeAvailabilityZones
    class DescribeAvailabilityZones

      def self.default(visited=[])
        {
          availability_zones: Stubs::AvailabilityZoneList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for AvailabilityZoneList
    class AvailabilityZoneList
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZoneList')
        visited = visited + ['AvailabilityZoneList']
        [
          Stubs::AvailabilityZone.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AvailabilityZone
    class AvailabilityZone

      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZone')
        visited = visited + ['AvailabilityZone']
        {
          state: 'state',
          opt_in_status: 'opt_in_status',
          messages: Stubs::AvailabilityZoneMessageList.default(visited),
          region_name: 'region_name',
          zone_name: 'zone_name',
          zone_id: 'zone_id',
          group_name: 'group_name',
          network_border_group: 'network_border_group',
          zone_type: 'zone_type',
          parent_zone_name: 'parent_zone_name',
          parent_zone_id: 'parent_zone_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for AvailabilityZoneMessageList
    class AvailabilityZoneMessageList
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZoneMessageList')
        visited = visited + ['AvailabilityZoneMessageList']
        [
          Stubs::AvailabilityZoneMessage.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AvailabilityZoneMessage
    class AvailabilityZoneMessage

      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZoneMessage')
        visited = visited + ['AvailabilityZoneMessage']
        {
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeBundleTasks
    class DescribeBundleTasks

      def self.default(visited=[])
        {
          bundle_tasks: Stubs::BundleTaskList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for BundleTaskList
    class BundleTaskList
      def self.default(visited=[])
        return nil if visited.include?('BundleTaskList')
        visited = visited + ['BundleTaskList']
        [
          Stubs::BundleTask.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeByoipCidrs
    class DescribeByoipCidrs

      def self.default(visited=[])
        {
          byoip_cidrs: Stubs::ByoipCidrSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ByoipCidrSet
    class ByoipCidrSet
      def self.default(visited=[])
        return nil if visited.include?('ByoipCidrSet')
        visited = visited + ['ByoipCidrSet']
        [
          Stubs::ByoipCidr.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeCapacityReservationFleets
    class DescribeCapacityReservationFleets

      def self.default(visited=[])
        {
          capacity_reservation_fleets: Stubs::CapacityReservationFleetSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for CapacityReservationFleetSet
    class CapacityReservationFleetSet
      def self.default(visited=[])
        return nil if visited.include?('CapacityReservationFleetSet')
        visited = visited + ['CapacityReservationFleetSet']
        [
          Stubs::CapacityReservationFleet.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for CapacityReservationFleet
    class CapacityReservationFleet

      def self.default(visited=[])
        return nil if visited.include?('CapacityReservationFleet')
        visited = visited + ['CapacityReservationFleet']
        {
          capacity_reservation_fleet_id: 'capacity_reservation_fleet_id',
          capacity_reservation_fleet_arn: 'capacity_reservation_fleet_arn',
          state: 'state',
          total_target_capacity: 1,
          total_fulfilled_capacity: 1.0,
          tenancy: 'tenancy',
          end_date: Time.now,
          create_time: Time.now,
          instance_match_criteria: 'instance_match_criteria',
          allocation_strategy: 'allocation_strategy',
          instance_type_specifications: Stubs::FleetCapacityReservationSet.default(visited),
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeCapacityReservations
    class DescribeCapacityReservations

      def self.default(visited=[])
        {
          next_token: 'next_token',
          capacity_reservations: Stubs::CapacityReservationSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for CapacityReservationSet
    class CapacityReservationSet
      def self.default(visited=[])
        return nil if visited.include?('CapacityReservationSet')
        visited = visited + ['CapacityReservationSet']
        [
          Stubs::CapacityReservation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeCarrierGateways
    class DescribeCarrierGateways

      def self.default(visited=[])
        {
          carrier_gateways: Stubs::CarrierGatewaySet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for CarrierGatewaySet
    class CarrierGatewaySet
      def self.default(visited=[])
        return nil if visited.include?('CarrierGatewaySet')
        visited = visited + ['CarrierGatewaySet']
        [
          Stubs::CarrierGateway.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeClassicLinkInstances
    class DescribeClassicLinkInstances

      def self.default(visited=[])
        {
          instances: Stubs::ClassicLinkInstanceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ClassicLinkInstanceList
    class ClassicLinkInstanceList
      def self.default(visited=[])
        return nil if visited.include?('ClassicLinkInstanceList')
        visited = visited + ['ClassicLinkInstanceList']
        [
          Stubs::ClassicLinkInstance.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ClassicLinkInstance
    class ClassicLinkInstance

      def self.default(visited=[])
        return nil if visited.include?('ClassicLinkInstance')
        visited = visited + ['ClassicLinkInstance']
        {
          groups: Stubs::GroupIdentifierList.default(visited),
          instance_id: 'instance_id',
          tags: Stubs::TagList.default(visited),
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeClientVpnAuthorizationRules
    class DescribeClientVpnAuthorizationRules

      def self.default(visited=[])
        {
          authorization_rules: Stubs::AuthorizationRuleSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for AuthorizationRuleSet
    class AuthorizationRuleSet
      def self.default(visited=[])
        return nil if visited.include?('AuthorizationRuleSet')
        visited = visited + ['AuthorizationRuleSet']
        [
          Stubs::AuthorizationRule.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AuthorizationRule
    class AuthorizationRule

      def self.default(visited=[])
        return nil if visited.include?('AuthorizationRule')
        visited = visited + ['AuthorizationRule']
        {
          client_vpn_endpoint_id: 'client_vpn_endpoint_id',
          description: 'description',
          group_id: 'group_id',
          access_all: false,
          destination_cidr: 'destination_cidr',
          status: Stubs::ClientVpnAuthorizationRuleStatus.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeClientVpnConnections
    class DescribeClientVpnConnections

      def self.default(visited=[])
        {
          connections: Stubs::ClientVpnConnectionSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ClientVpnConnectionSet
    class ClientVpnConnectionSet
      def self.default(visited=[])
        return nil if visited.include?('ClientVpnConnectionSet')
        visited = visited + ['ClientVpnConnectionSet']
        [
          Stubs::ClientVpnConnection.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ClientVpnConnection
    class ClientVpnConnection

      def self.default(visited=[])
        return nil if visited.include?('ClientVpnConnection')
        visited = visited + ['ClientVpnConnection']
        {
          client_vpn_endpoint_id: 'client_vpn_endpoint_id',
          timestamp: 'timestamp',
          connection_id: 'connection_id',
          username: 'username',
          connection_established_time: 'connection_established_time',
          ingress_bytes: 'ingress_bytes',
          egress_bytes: 'egress_bytes',
          ingress_packets: 'ingress_packets',
          egress_packets: 'egress_packets',
          client_ip: 'client_ip',
          common_name: 'common_name',
          status: Stubs::ClientVpnConnectionStatus.default(visited),
          connection_end_time: 'connection_end_time',
          posture_compliance_statuses: Stubs::ValueStringList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ClientVpnConnectionStatus
    class ClientVpnConnectionStatus

      def self.default(visited=[])
        return nil if visited.include?('ClientVpnConnectionStatus')
        visited = visited + ['ClientVpnConnectionStatus']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeClientVpnEndpoints
    class DescribeClientVpnEndpoints

      def self.default(visited=[])
        {
          client_vpn_endpoints: Stubs::EndpointSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for EndpointSet
    class EndpointSet
      def self.default(visited=[])
        return nil if visited.include?('EndpointSet')
        visited = visited + ['EndpointSet']
        [
          Stubs::ClientVpnEndpoint.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ClientVpnEndpoint
    class ClientVpnEndpoint

      def self.default(visited=[])
        return nil if visited.include?('ClientVpnEndpoint')
        visited = visited + ['ClientVpnEndpoint']
        {
          client_vpn_endpoint_id: 'client_vpn_endpoint_id',
          description: 'description',
          status: Stubs::ClientVpnEndpointStatus.default(visited),
          creation_time: 'creation_time',
          deletion_time: 'deletion_time',
          dns_name: 'dns_name',
          client_cidr_block: 'client_cidr_block',
          dns_servers: Stubs::ValueStringList.default(visited),
          split_tunnel: false,
          vpn_protocol: 'vpn_protocol',
          transport_protocol: 'transport_protocol',
          vpn_port: 1,
          associated_target_networks: Stubs::AssociatedTargetNetworkSet.default(visited),
          server_certificate_arn: 'server_certificate_arn',
          authentication_options: Stubs::ClientVpnAuthenticationList.default(visited),
          connection_log_options: Stubs::ConnectionLogResponseOptions.default(visited),
          tags: Stubs::TagList.default(visited),
          security_group_ids: Stubs::ClientVpnSecurityGroupIdSet.default(visited),
          vpc_id: 'vpc_id',
          self_service_portal_url: 'self_service_portal_url',
          client_connect_options: Stubs::ClientConnectResponseOptions.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ClientConnectResponseOptions
    class ClientConnectResponseOptions

      def self.default(visited=[])
        return nil if visited.include?('ClientConnectResponseOptions')
        visited = visited + ['ClientConnectResponseOptions']
        {
          enabled: false,
          lambda_function_arn: 'lambda_function_arn',
          status: Stubs::ClientVpnEndpointAttributeStatus.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ClientVpnEndpointAttributeStatus
    class ClientVpnEndpointAttributeStatus

      def self.default(visited=[])
        return nil if visited.include?('ClientVpnEndpointAttributeStatus')
        visited = visited + ['ClientVpnEndpointAttributeStatus']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ConnectionLogResponseOptions
    class ConnectionLogResponseOptions

      def self.default(visited=[])
        return nil if visited.include?('ConnectionLogResponseOptions')
        visited = visited + ['ConnectionLogResponseOptions']
        {
          enabled: false,
          cloudwatch_log_group: 'cloudwatch_log_group',
          cloudwatch_log_stream: 'cloudwatch_log_stream',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ClientVpnAuthenticationList
    class ClientVpnAuthenticationList
      def self.default(visited=[])
        return nil if visited.include?('ClientVpnAuthenticationList')
        visited = visited + ['ClientVpnAuthenticationList']
        [
          Stubs::ClientVpnAuthentication.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ClientVpnAuthentication
    class ClientVpnAuthentication

      def self.default(visited=[])
        return nil if visited.include?('ClientVpnAuthentication')
        visited = visited + ['ClientVpnAuthentication']
        {
          type: 'type',
          active_directory: Stubs::DirectoryServiceAuthentication.default(visited),
          mutual_authentication: Stubs::CertificateAuthentication.default(visited),
          federated_authentication: Stubs::FederatedAuthentication.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for FederatedAuthentication
    class FederatedAuthentication

      def self.default(visited=[])
        return nil if visited.include?('FederatedAuthentication')
        visited = visited + ['FederatedAuthentication']
        {
          saml_provider_arn: 'saml_provider_arn',
          self_service_saml_provider_arn: 'self_service_saml_provider_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for CertificateAuthentication
    class CertificateAuthentication

      def self.default(visited=[])
        return nil if visited.include?('CertificateAuthentication')
        visited = visited + ['CertificateAuthentication']
        {
          client_root_certificate_chain: 'client_root_certificate_chain',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for DirectoryServiceAuthentication
    class DirectoryServiceAuthentication

      def self.default(visited=[])
        return nil if visited.include?('DirectoryServiceAuthentication')
        visited = visited + ['DirectoryServiceAuthentication']
        {
          directory_id: 'directory_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for AssociatedTargetNetworkSet
    class AssociatedTargetNetworkSet
      def self.default(visited=[])
        return nil if visited.include?('AssociatedTargetNetworkSet')
        visited = visited + ['AssociatedTargetNetworkSet']
        [
          Stubs::AssociatedTargetNetwork.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AssociatedTargetNetwork
    class AssociatedTargetNetwork

      def self.default(visited=[])
        return nil if visited.include?('AssociatedTargetNetwork')
        visited = visited + ['AssociatedTargetNetwork']
        {
          network_id: 'network_id',
          network_type: 'network_type',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeClientVpnRoutes
    class DescribeClientVpnRoutes

      def self.default(visited=[])
        {
          routes: Stubs::ClientVpnRouteSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ClientVpnRouteSet
    class ClientVpnRouteSet
      def self.default(visited=[])
        return nil if visited.include?('ClientVpnRouteSet')
        visited = visited + ['ClientVpnRouteSet']
        [
          Stubs::ClientVpnRoute.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ClientVpnRoute
    class ClientVpnRoute

      def self.default(visited=[])
        return nil if visited.include?('ClientVpnRoute')
        visited = visited + ['ClientVpnRoute']
        {
          client_vpn_endpoint_id: 'client_vpn_endpoint_id',
          destination_cidr: 'destination_cidr',
          target_subnet: 'target_subnet',
          type: 'type',
          origin: 'origin',
          status: Stubs::ClientVpnRouteStatus.default(visited),
          description: 'description',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeClientVpnTargetNetworks
    class DescribeClientVpnTargetNetworks

      def self.default(visited=[])
        {
          client_vpn_target_networks: Stubs::TargetNetworkSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TargetNetworkSet
    class TargetNetworkSet
      def self.default(visited=[])
        return nil if visited.include?('TargetNetworkSet')
        visited = visited + ['TargetNetworkSet']
        [
          Stubs::TargetNetwork.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for TargetNetwork
    class TargetNetwork

      def self.default(visited=[])
        return nil if visited.include?('TargetNetwork')
        visited = visited + ['TargetNetwork']
        {
          association_id: 'association_id',
          vpc_id: 'vpc_id',
          target_network_id: 'target_network_id',
          client_vpn_endpoint_id: 'client_vpn_endpoint_id',
          status: Stubs::AssociationStatus.default(visited),
          security_groups: Stubs::ValueStringList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeCoipPools
    class DescribeCoipPools

      def self.default(visited=[])
        {
          coip_pools: Stubs::CoipPoolSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for CoipPoolSet
    class CoipPoolSet
      def self.default(visited=[])
        return nil if visited.include?('CoipPoolSet')
        visited = visited + ['CoipPoolSet']
        [
          Stubs::CoipPool.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for CoipPool
    class CoipPool

      def self.default(visited=[])
        return nil if visited.include?('CoipPool')
        visited = visited + ['CoipPool']
        {
          pool_id: 'pool_id',
          pool_cidrs: Stubs::ValueStringList.default(visited),
          local_gateway_route_table_id: 'local_gateway_route_table_id',
          tags: Stubs::TagList.default(visited),
          pool_arn: 'pool_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeConversionTasks
    class DescribeConversionTasks

      def self.default(visited=[])
        {
          conversion_tasks: Stubs::DescribeConversionTaskList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for DescribeConversionTaskList
    class DescribeConversionTaskList
      def self.default(visited=[])
        return nil if visited.include?('DescribeConversionTaskList')
        visited = visited + ['DescribeConversionTaskList']
        [
          Stubs::ConversionTask.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ConversionTask
    class ConversionTask

      def self.default(visited=[])
        return nil if visited.include?('ConversionTask')
        visited = visited + ['ConversionTask']
        {
          conversion_task_id: 'conversion_task_id',
          expiration_time: 'expiration_time',
          import_instance: Stubs::ImportInstanceTaskDetails.default(visited),
          import_volume: Stubs::ImportVolumeTaskDetails.default(visited),
          state: 'state',
          status_message: 'status_message',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ImportVolumeTaskDetails
    class ImportVolumeTaskDetails

      def self.default(visited=[])
        return nil if visited.include?('ImportVolumeTaskDetails')
        visited = visited + ['ImportVolumeTaskDetails']
        {
          availability_zone: 'availability_zone',
          bytes_converted: 1,
          description: 'description',
          image: Stubs::DiskImageDescription.default(visited),
          volume: Stubs::DiskImageVolumeDescription.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for DiskImageVolumeDescription
    class DiskImageVolumeDescription

      def self.default(visited=[])
        return nil if visited.include?('DiskImageVolumeDescription')
        visited = visited + ['DiskImageVolumeDescription']
        {
          id: 'id',
          size: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for DiskImageDescription
    class DiskImageDescription

      def self.default(visited=[])
        return nil if visited.include?('DiskImageDescription')
        visited = visited + ['DiskImageDescription']
        {
          checksum: 'checksum',
          format: 'format',
          import_manifest_url: 'import_manifest_url',
          size: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ImportInstanceTaskDetails
    class ImportInstanceTaskDetails

      def self.default(visited=[])
        return nil if visited.include?('ImportInstanceTaskDetails')
        visited = visited + ['ImportInstanceTaskDetails']
        {
          description: 'description',
          instance_id: 'instance_id',
          platform: 'platform',
          volumes: Stubs::ImportInstanceVolumeDetailSet.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ImportInstanceVolumeDetailSet
    class ImportInstanceVolumeDetailSet
      def self.default(visited=[])
        return nil if visited.include?('ImportInstanceVolumeDetailSet')
        visited = visited + ['ImportInstanceVolumeDetailSet']
        [
          Stubs::ImportInstanceVolumeDetailItem.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ImportInstanceVolumeDetailItem
    class ImportInstanceVolumeDetailItem

      def self.default(visited=[])
        return nil if visited.include?('ImportInstanceVolumeDetailItem')
        visited = visited + ['ImportInstanceVolumeDetailItem']
        {
          availability_zone: 'availability_zone',
          bytes_converted: 1,
          description: 'description',
          image: Stubs::DiskImageDescription.default(visited),
          status: 'status',
          status_message: 'status_message',
          volume: Stubs::DiskImageVolumeDescription.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeCustomerGateways
    class DescribeCustomerGateways

      def self.default(visited=[])
        {
          customer_gateways: Stubs::CustomerGatewayList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for CustomerGatewayList
    class CustomerGatewayList
      def self.default(visited=[])
        return nil if visited.include?('CustomerGatewayList')
        visited = visited + ['CustomerGatewayList']
        [
          Stubs::CustomerGateway.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeDhcpOptions
    class DescribeDhcpOptions

      def self.default(visited=[])
        {
          dhcp_options: Stubs::DhcpOptionsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for DhcpOptionsList
    class DhcpOptionsList
      def self.default(visited=[])
        return nil if visited.include?('DhcpOptionsList')
        visited = visited + ['DhcpOptionsList']
        [
          Stubs::DhcpOptions.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeEgressOnlyInternetGateways
    class DescribeEgressOnlyInternetGateways

      def self.default(visited=[])
        {
          egress_only_internet_gateways: Stubs::EgressOnlyInternetGatewayList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for EgressOnlyInternetGatewayList
    class EgressOnlyInternetGatewayList
      def self.default(visited=[])
        return nil if visited.include?('EgressOnlyInternetGatewayList')
        visited = visited + ['EgressOnlyInternetGatewayList']
        [
          Stubs::EgressOnlyInternetGateway.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeElasticGpus
    class DescribeElasticGpus

      def self.default(visited=[])
        {
          elastic_gpu_set: Stubs::ElasticGpuSet.default(visited),
          max_results: 1,
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ElasticGpuSet
    class ElasticGpuSet
      def self.default(visited=[])
        return nil if visited.include?('ElasticGpuSet')
        visited = visited + ['ElasticGpuSet']
        [
          Stubs::ElasticGpus.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ElasticGpus
    class ElasticGpus

      def self.default(visited=[])
        return nil if visited.include?('ElasticGpus')
        visited = visited + ['ElasticGpus']
        {
          elastic_gpu_id: 'elastic_gpu_id',
          availability_zone: 'availability_zone',
          elastic_gpu_type: 'elastic_gpu_type',
          elastic_gpu_health: Stubs::ElasticGpuHealth.default(visited),
          elastic_gpu_state: 'elastic_gpu_state',
          instance_id: 'instance_id',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ElasticGpuHealth
    class ElasticGpuHealth

      def self.default(visited=[])
        return nil if visited.include?('ElasticGpuHealth')
        visited = visited + ['ElasticGpuHealth']
        {
          status: 'status',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeExportImageTasks
    class DescribeExportImageTasks

      def self.default(visited=[])
        {
          export_image_tasks: Stubs::ExportImageTaskList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ExportImageTaskList
    class ExportImageTaskList
      def self.default(visited=[])
        return nil if visited.include?('ExportImageTaskList')
        visited = visited + ['ExportImageTaskList']
        [
          Stubs::ExportImageTask.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ExportImageTask
    class ExportImageTask

      def self.default(visited=[])
        return nil if visited.include?('ExportImageTask')
        visited = visited + ['ExportImageTask']
        {
          description: 'description',
          export_image_task_id: 'export_image_task_id',
          image_id: 'image_id',
          progress: 'progress',
          s3_export_location: Stubs::ExportTaskS3Location.default(visited),
          status: 'status',
          status_message: 'status_message',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ExportTaskS3Location
    class ExportTaskS3Location

      def self.default(visited=[])
        return nil if visited.include?('ExportTaskS3Location')
        visited = visited + ['ExportTaskS3Location']
        {
          s3_bucket: 's3_bucket',
          s3_prefix: 's3_prefix',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeExportTasks
    class DescribeExportTasks

      def self.default(visited=[])
        {
          export_tasks: Stubs::ExportTaskList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ExportTaskList
    class ExportTaskList
      def self.default(visited=[])
        return nil if visited.include?('ExportTaskList')
        visited = visited + ['ExportTaskList']
        [
          Stubs::ExportTask.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeFastSnapshotRestores
    class DescribeFastSnapshotRestores

      def self.default(visited=[])
        {
          fast_snapshot_restores: Stubs::DescribeFastSnapshotRestoreSuccessSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for DescribeFastSnapshotRestoreSuccessSet
    class DescribeFastSnapshotRestoreSuccessSet
      def self.default(visited=[])
        return nil if visited.include?('DescribeFastSnapshotRestoreSuccessSet')
        visited = visited + ['DescribeFastSnapshotRestoreSuccessSet']
        [
          Stubs::DescribeFastSnapshotRestoreSuccessItem.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for DescribeFastSnapshotRestoreSuccessItem
    class DescribeFastSnapshotRestoreSuccessItem

      def self.default(visited=[])
        return nil if visited.include?('DescribeFastSnapshotRestoreSuccessItem')
        visited = visited + ['DescribeFastSnapshotRestoreSuccessItem']
        {
          snapshot_id: 'snapshot_id',
          availability_zone: 'availability_zone',
          state: 'state',
          state_transition_reason: 'state_transition_reason',
          owner_id: 'owner_id',
          owner_alias: 'owner_alias',
          enabling_time: Time.now,
          optimizing_time: Time.now,
          enabled_time: Time.now,
          disabling_time: Time.now,
          disabled_time: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeFleetHistory
    class DescribeFleetHistory

      def self.default(visited=[])
        {
          history_records: Stubs::HistoryRecordSet.default(visited),
          last_evaluated_time: Time.now,
          next_token: 'next_token',
          fleet_id: 'fleet_id',
          start_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for HistoryRecordSet
    class HistoryRecordSet
      def self.default(visited=[])
        return nil if visited.include?('HistoryRecordSet')
        visited = visited + ['HistoryRecordSet']
        [
          Stubs::HistoryRecordEntry.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for HistoryRecordEntry
    class HistoryRecordEntry

      def self.default(visited=[])
        return nil if visited.include?('HistoryRecordEntry')
        visited = visited + ['HistoryRecordEntry']
        {
          event_information: Stubs::EventInformation.default(visited),
          event_type: 'event_type',
          timestamp: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for EventInformation
    class EventInformation

      def self.default(visited=[])
        return nil if visited.include?('EventInformation')
        visited = visited + ['EventInformation']
        {
          event_description: 'event_description',
          event_sub_type: 'event_sub_type',
          instance_id: 'instance_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeFleetInstances
    class DescribeFleetInstances

      def self.default(visited=[])
        {
          active_instances: Stubs::ActiveInstanceSet.default(visited),
          next_token: 'next_token',
          fleet_id: 'fleet_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ActiveInstanceSet
    class ActiveInstanceSet
      def self.default(visited=[])
        return nil if visited.include?('ActiveInstanceSet')
        visited = visited + ['ActiveInstanceSet']
        [
          Stubs::ActiveInstance.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ActiveInstance
    class ActiveInstance

      def self.default(visited=[])
        return nil if visited.include?('ActiveInstance')
        visited = visited + ['ActiveInstance']
        {
          instance_id: 'instance_id',
          instance_type: 'instance_type',
          spot_instance_request_id: 'spot_instance_request_id',
          instance_health: 'instance_health',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeFleets
    class DescribeFleets

      def self.default(visited=[])
        {
          next_token: 'next_token',
          fleets: Stubs::FleetSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for FleetSet
    class FleetSet
      def self.default(visited=[])
        return nil if visited.include?('FleetSet')
        visited = visited + ['FleetSet']
        [
          Stubs::FleetData.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for FleetData
    class FleetData

      def self.default(visited=[])
        return nil if visited.include?('FleetData')
        visited = visited + ['FleetData']
        {
          activity_status: 'activity_status',
          create_time: Time.now,
          fleet_id: 'fleet_id',
          fleet_state: 'fleet_state',
          client_token: 'client_token',
          excess_capacity_termination_policy: 'excess_capacity_termination_policy',
          fulfilled_capacity: 1.0,
          fulfilled_on_demand_capacity: 1.0,
          launch_template_configs: Stubs::FleetLaunchTemplateConfigList.default(visited),
          target_capacity_specification: Stubs::TargetCapacitySpecification.default(visited),
          terminate_instances_with_expiration: false,
          type: 'type',
          valid_from: Time.now,
          valid_until: Time.now,
          replace_unhealthy_instances: false,
          spot_options: Stubs::SpotOptions.default(visited),
          on_demand_options: Stubs::OnDemandOptions.default(visited),
          tags: Stubs::TagList.default(visited),
          errors: Stubs::DescribeFleetsErrorSet.default(visited),
          instances: Stubs::DescribeFleetsInstancesSet.default(visited),
          context: 'context',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for DescribeFleetsInstancesSet
    class DescribeFleetsInstancesSet
      def self.default(visited=[])
        return nil if visited.include?('DescribeFleetsInstancesSet')
        visited = visited + ['DescribeFleetsInstancesSet']
        [
          Stubs::DescribeFleetsInstances.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for DescribeFleetsInstances
    class DescribeFleetsInstances

      def self.default(visited=[])
        return nil if visited.include?('DescribeFleetsInstances')
        visited = visited + ['DescribeFleetsInstances']
        {
          launch_template_and_overrides: Stubs::LaunchTemplateAndOverridesResponse.default(visited),
          lifecycle: 'lifecycle',
          instance_ids: Stubs::InstanceIdsSet.default(visited),
          instance_type: 'instance_type',
          platform: 'platform',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for DescribeFleetsErrorSet
    class DescribeFleetsErrorSet
      def self.default(visited=[])
        return nil if visited.include?('DescribeFleetsErrorSet')
        visited = visited + ['DescribeFleetsErrorSet']
        [
          Stubs::DescribeFleetError.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for DescribeFleetError
    class DescribeFleetError

      def self.default(visited=[])
        return nil if visited.include?('DescribeFleetError')
        visited = visited + ['DescribeFleetError']
        {
          launch_template_and_overrides: Stubs::LaunchTemplateAndOverridesResponse.default(visited),
          lifecycle: 'lifecycle',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for OnDemandOptions
    class OnDemandOptions

      def self.default(visited=[])
        return nil if visited.include?('OnDemandOptions')
        visited = visited + ['OnDemandOptions']
        {
          allocation_strategy: 'allocation_strategy',
          capacity_reservation_options: Stubs::CapacityReservationOptions.default(visited),
          single_instance_type: false,
          single_availability_zone: false,
          min_target_capacity: 1,
          max_total_price: 'max_total_price',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for CapacityReservationOptions
    class CapacityReservationOptions

      def self.default(visited=[])
        return nil if visited.include?('CapacityReservationOptions')
        visited = visited + ['CapacityReservationOptions']
        {
          usage_strategy: 'usage_strategy',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for SpotOptions
    class SpotOptions

      def self.default(visited=[])
        return nil if visited.include?('SpotOptions')
        visited = visited + ['SpotOptions']
        {
          allocation_strategy: 'allocation_strategy',
          maintenance_strategies: Stubs::FleetSpotMaintenanceStrategies.default(visited),
          instance_interruption_behavior: 'instance_interruption_behavior',
          instance_pools_to_use_count: 1,
          single_instance_type: false,
          single_availability_zone: false,
          min_target_capacity: 1,
          max_total_price: 'max_total_price',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for FleetSpotMaintenanceStrategies
    class FleetSpotMaintenanceStrategies

      def self.default(visited=[])
        return nil if visited.include?('FleetSpotMaintenanceStrategies')
        visited = visited + ['FleetSpotMaintenanceStrategies']
        {
          capacity_rebalance: Stubs::FleetSpotCapacityRebalance.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for FleetSpotCapacityRebalance
    class FleetSpotCapacityRebalance

      def self.default(visited=[])
        return nil if visited.include?('FleetSpotCapacityRebalance')
        visited = visited + ['FleetSpotCapacityRebalance']
        {
          replacement_strategy: 'replacement_strategy',
          termination_delay: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for TargetCapacitySpecification
    class TargetCapacitySpecification

      def self.default(visited=[])
        return nil if visited.include?('TargetCapacitySpecification')
        visited = visited + ['TargetCapacitySpecification']
        {
          total_target_capacity: 1,
          on_demand_target_capacity: 1,
          spot_target_capacity: 1,
          default_target_capacity_type: 'default_target_capacity_type',
          target_capacity_unit_type: 'target_capacity_unit_type',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for FleetLaunchTemplateConfigList
    class FleetLaunchTemplateConfigList
      def self.default(visited=[])
        return nil if visited.include?('FleetLaunchTemplateConfigList')
        visited = visited + ['FleetLaunchTemplateConfigList']
        [
          Stubs::FleetLaunchTemplateConfig.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for FleetLaunchTemplateConfig
    class FleetLaunchTemplateConfig

      def self.default(visited=[])
        return nil if visited.include?('FleetLaunchTemplateConfig')
        visited = visited + ['FleetLaunchTemplateConfig']
        {
          launch_template_specification: Stubs::FleetLaunchTemplateSpecification.default(visited),
          overrides: Stubs::FleetLaunchTemplateOverridesList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for FleetLaunchTemplateOverridesList
    class FleetLaunchTemplateOverridesList
      def self.default(visited=[])
        return nil if visited.include?('FleetLaunchTemplateOverridesList')
        visited = visited + ['FleetLaunchTemplateOverridesList']
        [
          Stubs::FleetLaunchTemplateOverrides.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeFlowLogs
    class DescribeFlowLogs

      def self.default(visited=[])
        {
          flow_logs: Stubs::FlowLogSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for FlowLogSet
    class FlowLogSet
      def self.default(visited=[])
        return nil if visited.include?('FlowLogSet')
        visited = visited + ['FlowLogSet']
        [
          Stubs::FlowLog.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for FlowLog
    class FlowLog

      def self.default(visited=[])
        return nil if visited.include?('FlowLog')
        visited = visited + ['FlowLog']
        {
          creation_time: Time.now,
          deliver_logs_error_message: 'deliver_logs_error_message',
          deliver_logs_permission_arn: 'deliver_logs_permission_arn',
          deliver_logs_status: 'deliver_logs_status',
          flow_log_id: 'flow_log_id',
          flow_log_status: 'flow_log_status',
          log_group_name: 'log_group_name',
          resource_id: 'resource_id',
          traffic_type: 'traffic_type',
          log_destination_type: 'log_destination_type',
          log_destination: 'log_destination',
          log_format: 'log_format',
          tags: Stubs::TagList.default(visited),
          max_aggregation_interval: 1,
          destination_options: Stubs::DestinationOptionsResponse.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for DestinationOptionsResponse
    class DestinationOptionsResponse

      def self.default(visited=[])
        return nil if visited.include?('DestinationOptionsResponse')
        visited = visited + ['DestinationOptionsResponse']
        {
          file_format: 'file_format',
          hive_compatible_partitions: false,
          per_hour_partition: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeFpgaImageAttribute
    class DescribeFpgaImageAttribute

      def self.default(visited=[])
        {
          fpga_image_attribute: Stubs::FpgaImageAttribute.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for FpgaImageAttribute
    class FpgaImageAttribute

      def self.default(visited=[])
        return nil if visited.include?('FpgaImageAttribute')
        visited = visited + ['FpgaImageAttribute']
        {
          fpga_image_id: 'fpga_image_id',
          member_name: 'member_name',
          description: 'description',
          load_permissions: Stubs::LoadPermissionList.default(visited),
          product_codes: Stubs::ProductCodeList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ProductCodeList
    class ProductCodeList
      def self.default(visited=[])
        return nil if visited.include?('ProductCodeList')
        visited = visited + ['ProductCodeList']
        [
          Stubs::ProductCode.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ProductCode
    class ProductCode

      def self.default(visited=[])
        return nil if visited.include?('ProductCode')
        visited = visited + ['ProductCode']
        {
          product_code_id: 'product_code_id',
          product_code_type: 'product_code_type',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for LoadPermissionList
    class LoadPermissionList
      def self.default(visited=[])
        return nil if visited.include?('LoadPermissionList')
        visited = visited + ['LoadPermissionList']
        [
          Stubs::LoadPermission.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for LoadPermission
    class LoadPermission

      def self.default(visited=[])
        return nil if visited.include?('LoadPermission')
        visited = visited + ['LoadPermission']
        {
          user_id: 'user_id',
          group: 'group',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeFpgaImages
    class DescribeFpgaImages

      def self.default(visited=[])
        {
          fpga_images: Stubs::FpgaImageList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for FpgaImageList
    class FpgaImageList
      def self.default(visited=[])
        return nil if visited.include?('FpgaImageList')
        visited = visited + ['FpgaImageList']
        [
          Stubs::FpgaImage.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for FpgaImage
    class FpgaImage

      def self.default(visited=[])
        return nil if visited.include?('FpgaImage')
        visited = visited + ['FpgaImage']
        {
          fpga_image_id: 'fpga_image_id',
          fpga_image_global_id: 'fpga_image_global_id',
          member_name: 'member_name',
          description: 'description',
          shell_version: 'shell_version',
          pci_id: Stubs::PciId.default(visited),
          state: Stubs::FpgaImageState.default(visited),
          create_time: Time.now,
          update_time: Time.now,
          owner_id: 'owner_id',
          owner_alias: 'owner_alias',
          product_codes: Stubs::ProductCodeList.default(visited),
          tags: Stubs::TagList.default(visited),
          public: false,
          data_retention_support: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for FpgaImageState
    class FpgaImageState

      def self.default(visited=[])
        return nil if visited.include?('FpgaImageState')
        visited = visited + ['FpgaImageState']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for PciId
    class PciId

      def self.default(visited=[])
        return nil if visited.include?('PciId')
        visited = visited + ['PciId']
        {
          device_id: 'device_id',
          vendor_id: 'vendor_id',
          subsystem_id: 'subsystem_id',
          subsystem_vendor_id: 'subsystem_vendor_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeHostReservationOfferings
    class DescribeHostReservationOfferings

      def self.default(visited=[])
        {
          next_token: 'next_token',
          offering_set: Stubs::HostOfferingSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for HostOfferingSet
    class HostOfferingSet
      def self.default(visited=[])
        return nil if visited.include?('HostOfferingSet')
        visited = visited + ['HostOfferingSet']
        [
          Stubs::HostOffering.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for HostOffering
    class HostOffering

      def self.default(visited=[])
        return nil if visited.include?('HostOffering')
        visited = visited + ['HostOffering']
        {
          currency_code: 'currency_code',
          duration: 1,
          hourly_price: 'hourly_price',
          instance_family: 'instance_family',
          offering_id: 'offering_id',
          payment_option: 'payment_option',
          upfront_price: 'upfront_price',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeHostReservations
    class DescribeHostReservations

      def self.default(visited=[])
        {
          host_reservation_set: Stubs::HostReservationSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for HostReservationSet
    class HostReservationSet
      def self.default(visited=[])
        return nil if visited.include?('HostReservationSet')
        visited = visited + ['HostReservationSet']
        [
          Stubs::HostReservation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for HostReservation
    class HostReservation

      def self.default(visited=[])
        return nil if visited.include?('HostReservation')
        visited = visited + ['HostReservation']
        {
          count: 1,
          currency_code: 'currency_code',
          duration: 1,
          end: Time.now,
          host_id_set: Stubs::ResponseHostIdSet.default(visited),
          host_reservation_id: 'host_reservation_id',
          hourly_price: 'hourly_price',
          instance_family: 'instance_family',
          offering_id: 'offering_id',
          payment_option: 'payment_option',
          start: Time.now,
          state: 'state',
          upfront_price: 'upfront_price',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ResponseHostIdSet
    class ResponseHostIdSet
      def self.default(visited=[])
        return nil if visited.include?('ResponseHostIdSet')
        visited = visited + ['ResponseHostIdSet']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeHosts
    class DescribeHosts

      def self.default(visited=[])
        {
          hosts: Stubs::HostList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for HostList
    class HostList
      def self.default(visited=[])
        return nil if visited.include?('HostList')
        visited = visited + ['HostList']
        [
          Stubs::Host.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Host
    class Host

      def self.default(visited=[])
        return nil if visited.include?('Host')
        visited = visited + ['Host']
        {
          auto_placement: 'auto_placement',
          availability_zone: 'availability_zone',
          available_capacity: Stubs::AvailableCapacity.default(visited),
          client_token: 'client_token',
          host_id: 'host_id',
          host_properties: Stubs::HostProperties.default(visited),
          host_reservation_id: 'host_reservation_id',
          instances: Stubs::HostInstanceList.default(visited),
          state: 'state',
          allocation_time: Time.now,
          release_time: Time.now,
          tags: Stubs::TagList.default(visited),
          host_recovery: 'host_recovery',
          allows_multiple_instance_types: 'allows_multiple_instance_types',
          owner_id: 'owner_id',
          availability_zone_id: 'availability_zone_id',
          member_of_service_linked_resource_group: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for HostInstanceList
    class HostInstanceList
      def self.default(visited=[])
        return nil if visited.include?('HostInstanceList')
        visited = visited + ['HostInstanceList']
        [
          Stubs::HostInstance.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for HostInstance
    class HostInstance

      def self.default(visited=[])
        return nil if visited.include?('HostInstance')
        visited = visited + ['HostInstance']
        {
          instance_id: 'instance_id',
          instance_type: 'instance_type',
          owner_id: 'owner_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for HostProperties
    class HostProperties

      def self.default(visited=[])
        return nil if visited.include?('HostProperties')
        visited = visited + ['HostProperties']
        {
          cores: 1,
          instance_type: 'instance_type',
          instance_family: 'instance_family',
          sockets: 1,
          total_v_cpus: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for AvailableCapacity
    class AvailableCapacity

      def self.default(visited=[])
        return nil if visited.include?('AvailableCapacity')
        visited = visited + ['AvailableCapacity']
        {
          available_instance_capacity: Stubs::AvailableInstanceCapacityList.default(visited),
          available_v_cpus: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for AvailableInstanceCapacityList
    class AvailableInstanceCapacityList
      def self.default(visited=[])
        return nil if visited.include?('AvailableInstanceCapacityList')
        visited = visited + ['AvailableInstanceCapacityList']
        [
          Stubs::InstanceCapacity.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstanceCapacity
    class InstanceCapacity

      def self.default(visited=[])
        return nil if visited.include?('InstanceCapacity')
        visited = visited + ['InstanceCapacity']
        {
          available_capacity: 1,
          instance_type: 'instance_type',
          total_capacity: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeIamInstanceProfileAssociations
    class DescribeIamInstanceProfileAssociations

      def self.default(visited=[])
        {
          iam_instance_profile_associations: Stubs::IamInstanceProfileAssociationSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for IamInstanceProfileAssociationSet
    class IamInstanceProfileAssociationSet
      def self.default(visited=[])
        return nil if visited.include?('IamInstanceProfileAssociationSet')
        visited = visited + ['IamInstanceProfileAssociationSet']
        [
          Stubs::IamInstanceProfileAssociation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeIdFormat
    class DescribeIdFormat

      def self.default(visited=[])
        {
          statuses: Stubs::IdFormatList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DescribeIdentityIdFormat
    class DescribeIdentityIdFormat

      def self.default(visited=[])
        {
          statuses: Stubs::IdFormatList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DescribeImageAttribute
    class DescribeImageAttribute

      def self.default(visited=[])
        {
          block_device_mappings: Stubs::BlockDeviceMappingList.default(visited),
          image_id: 'image_id',
          launch_permissions: Stubs::LaunchPermissionList.default(visited),
          product_codes: Stubs::ProductCodeList.default(visited),
          description: Stubs::AttributeValue.default(visited),
          kernel_id: Stubs::AttributeValue.default(visited),
          ramdisk_id: Stubs::AttributeValue.default(visited),
          sriov_net_support: Stubs::AttributeValue.default(visited),
          boot_mode: Stubs::AttributeValue.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for LaunchPermissionList
    class LaunchPermissionList
      def self.default(visited=[])
        return nil if visited.include?('LaunchPermissionList')
        visited = visited + ['LaunchPermissionList']
        [
          Stubs::LaunchPermission.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for LaunchPermission
    class LaunchPermission

      def self.default(visited=[])
        return nil if visited.include?('LaunchPermission')
        visited = visited + ['LaunchPermission']
        {
          group: 'group',
          user_id: 'user_id',
          organization_arn: 'organization_arn',
          organizational_unit_arn: 'organizational_unit_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for BlockDeviceMappingList
    class BlockDeviceMappingList
      def self.default(visited=[])
        return nil if visited.include?('BlockDeviceMappingList')
        visited = visited + ['BlockDeviceMappingList']
        [
          Stubs::BlockDeviceMapping.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for BlockDeviceMapping
    class BlockDeviceMapping

      def self.default(visited=[])
        return nil if visited.include?('BlockDeviceMapping')
        visited = visited + ['BlockDeviceMapping']
        {
          device_name: 'device_name',
          virtual_name: 'virtual_name',
          ebs: Stubs::EbsBlockDevice.default(visited),
          no_device: 'no_device',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for EbsBlockDevice
    class EbsBlockDevice

      def self.default(visited=[])
        return nil if visited.include?('EbsBlockDevice')
        visited = visited + ['EbsBlockDevice']
        {
          delete_on_termination: false,
          iops: 1,
          snapshot_id: 'snapshot_id',
          volume_size: 1,
          volume_type: 'volume_type',
          kms_key_id: 'kms_key_id',
          throughput: 1,
          outpost_arn: 'outpost_arn',
          encrypted: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeImages
    class DescribeImages

      def self.default(visited=[])
        {
          images: Stubs::ImageList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ImageList
    class ImageList
      def self.default(visited=[])
        return nil if visited.include?('ImageList')
        visited = visited + ['ImageList']
        [
          Stubs::Image.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Image
    class Image

      def self.default(visited=[])
        return nil if visited.include?('Image')
        visited = visited + ['Image']
        {
          architecture: 'architecture',
          creation_date: 'creation_date',
          image_id: 'image_id',
          image_location: 'image_location',
          image_type: 'image_type',
          public: false,
          kernel_id: 'kernel_id',
          owner_id: 'owner_id',
          platform: 'platform',
          platform_details: 'platform_details',
          usage_operation: 'usage_operation',
          product_codes: Stubs::ProductCodeList.default(visited),
          ramdisk_id: 'ramdisk_id',
          state: 'state',
          block_device_mappings: Stubs::BlockDeviceMappingList.default(visited),
          description: 'description',
          ena_support: false,
          hypervisor: 'hypervisor',
          image_owner_alias: 'image_owner_alias',
          member_name: 'member_name',
          root_device_name: 'root_device_name',
          root_device_type: 'root_device_type',
          sriov_net_support: 'sriov_net_support',
          state_reason: Stubs::StateReason.default(visited),
          tags: Stubs::TagList.default(visited),
          virtualization_type: 'virtualization_type',
          boot_mode: 'boot_mode',
          deprecation_time: 'deprecation_time',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for StateReason
    class StateReason

      def self.default(visited=[])
        return nil if visited.include?('StateReason')
        visited = visited + ['StateReason']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeImportImageTasks
    class DescribeImportImageTasks

      def self.default(visited=[])
        {
          import_image_tasks: Stubs::ImportImageTaskList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ImportImageTaskList
    class ImportImageTaskList
      def self.default(visited=[])
        return nil if visited.include?('ImportImageTaskList')
        visited = visited + ['ImportImageTaskList']
        [
          Stubs::ImportImageTask.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ImportImageTask
    class ImportImageTask

      def self.default(visited=[])
        return nil if visited.include?('ImportImageTask')
        visited = visited + ['ImportImageTask']
        {
          architecture: 'architecture',
          description: 'description',
          encrypted: false,
          hypervisor: 'hypervisor',
          image_id: 'image_id',
          import_task_id: 'import_task_id',
          kms_key_id: 'kms_key_id',
          license_type: 'license_type',
          platform: 'platform',
          progress: 'progress',
          snapshot_details: Stubs::SnapshotDetailList.default(visited),
          status: 'status',
          status_message: 'status_message',
          tags: Stubs::TagList.default(visited),
          license_specifications: Stubs::ImportImageLicenseSpecificationListResponse.default(visited),
          usage_operation: 'usage_operation',
          boot_mode: 'boot_mode',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ImportImageLicenseSpecificationListResponse
    class ImportImageLicenseSpecificationListResponse
      def self.default(visited=[])
        return nil if visited.include?('ImportImageLicenseSpecificationListResponse')
        visited = visited + ['ImportImageLicenseSpecificationListResponse']
        [
          Stubs::ImportImageLicenseConfigurationResponse.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ImportImageLicenseConfigurationResponse
    class ImportImageLicenseConfigurationResponse

      def self.default(visited=[])
        return nil if visited.include?('ImportImageLicenseConfigurationResponse')
        visited = visited + ['ImportImageLicenseConfigurationResponse']
        {
          license_configuration_arn: 'license_configuration_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for SnapshotDetailList
    class SnapshotDetailList
      def self.default(visited=[])
        return nil if visited.include?('SnapshotDetailList')
        visited = visited + ['SnapshotDetailList']
        [
          Stubs::SnapshotDetail.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for SnapshotDetail
    class SnapshotDetail

      def self.default(visited=[])
        return nil if visited.include?('SnapshotDetail')
        visited = visited + ['SnapshotDetail']
        {
          description: 'description',
          device_name: 'device_name',
          disk_image_size: 1.0,
          format: 'format',
          progress: 'progress',
          snapshot_id: 'snapshot_id',
          status: 'status',
          status_message: 'status_message',
          url: 'url',
          user_bucket: Stubs::UserBucketDetails.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for UserBucketDetails
    class UserBucketDetails

      def self.default(visited=[])
        return nil if visited.include?('UserBucketDetails')
        visited = visited + ['UserBucketDetails']
        {
          s3_bucket: 's3_bucket',
          s3_key: 's3_key',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeImportSnapshotTasks
    class DescribeImportSnapshotTasks

      def self.default(visited=[])
        {
          import_snapshot_tasks: Stubs::ImportSnapshotTaskList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ImportSnapshotTaskList
    class ImportSnapshotTaskList
      def self.default(visited=[])
        return nil if visited.include?('ImportSnapshotTaskList')
        visited = visited + ['ImportSnapshotTaskList']
        [
          Stubs::ImportSnapshotTask.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ImportSnapshotTask
    class ImportSnapshotTask

      def self.default(visited=[])
        return nil if visited.include?('ImportSnapshotTask')
        visited = visited + ['ImportSnapshotTask']
        {
          description: 'description',
          import_task_id: 'import_task_id',
          snapshot_task_detail: Stubs::SnapshotTaskDetail.default(visited),
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for SnapshotTaskDetail
    class SnapshotTaskDetail

      def self.default(visited=[])
        return nil if visited.include?('SnapshotTaskDetail')
        visited = visited + ['SnapshotTaskDetail']
        {
          description: 'description',
          disk_image_size: 1.0,
          encrypted: false,
          format: 'format',
          kms_key_id: 'kms_key_id',
          progress: 'progress',
          snapshot_id: 'snapshot_id',
          status: 'status',
          status_message: 'status_message',
          url: 'url',
          user_bucket: Stubs::UserBucketDetails.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeInstanceAttribute
    class DescribeInstanceAttribute

      def self.default(visited=[])
        {
          groups: Stubs::GroupIdentifierList.default(visited),
          block_device_mappings: Stubs::InstanceBlockDeviceMappingList.default(visited),
          disable_api_termination: Stubs::AttributeBooleanValue.default(visited),
          ena_support: Stubs::AttributeBooleanValue.default(visited),
          enclave_options: Stubs::EnclaveOptions.default(visited),
          ebs_optimized: Stubs::AttributeBooleanValue.default(visited),
          instance_id: 'instance_id',
          instance_initiated_shutdown_behavior: Stubs::AttributeValue.default(visited),
          instance_type: Stubs::AttributeValue.default(visited),
          kernel_id: Stubs::AttributeValue.default(visited),
          product_codes: Stubs::ProductCodeList.default(visited),
          ramdisk_id: Stubs::AttributeValue.default(visited),
          root_device_name: Stubs::AttributeValue.default(visited),
          source_dest_check: Stubs::AttributeBooleanValue.default(visited),
          sriov_net_support: Stubs::AttributeValue.default(visited),
          user_data: Stubs::AttributeValue.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for AttributeBooleanValue
    class AttributeBooleanValue

      def self.default(visited=[])
        return nil if visited.include?('AttributeBooleanValue')
        visited = visited + ['AttributeBooleanValue']
        {
          value: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for EnclaveOptions
    class EnclaveOptions

      def self.default(visited=[])
        return nil if visited.include?('EnclaveOptions')
        visited = visited + ['EnclaveOptions']
        {
          enabled: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for InstanceBlockDeviceMappingList
    class InstanceBlockDeviceMappingList
      def self.default(visited=[])
        return nil if visited.include?('InstanceBlockDeviceMappingList')
        visited = visited + ['InstanceBlockDeviceMappingList']
        [
          Stubs::InstanceBlockDeviceMapping.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstanceBlockDeviceMapping
    class InstanceBlockDeviceMapping

      def self.default(visited=[])
        return nil if visited.include?('InstanceBlockDeviceMapping')
        visited = visited + ['InstanceBlockDeviceMapping']
        {
          device_name: 'device_name',
          ebs: Stubs::EbsInstanceBlockDevice.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for EbsInstanceBlockDevice
    class EbsInstanceBlockDevice

      def self.default(visited=[])
        return nil if visited.include?('EbsInstanceBlockDevice')
        visited = visited + ['EbsInstanceBlockDevice']
        {
          attach_time: Time.now,
          delete_on_termination: false,
          status: 'status',
          volume_id: 'volume_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeInstanceCreditSpecifications
    class DescribeInstanceCreditSpecifications

      def self.default(visited=[])
        {
          instance_credit_specifications: Stubs::InstanceCreditSpecificationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for InstanceCreditSpecificationList
    class InstanceCreditSpecificationList
      def self.default(visited=[])
        return nil if visited.include?('InstanceCreditSpecificationList')
        visited = visited + ['InstanceCreditSpecificationList']
        [
          Stubs::InstanceCreditSpecification.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstanceCreditSpecification
    class InstanceCreditSpecification

      def self.default(visited=[])
        return nil if visited.include?('InstanceCreditSpecification')
        visited = visited + ['InstanceCreditSpecification']
        {
          instance_id: 'instance_id',
          cpu_credits: 'cpu_credits',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeInstanceEventNotificationAttributes
    class DescribeInstanceEventNotificationAttributes

      def self.default(visited=[])
        {
          instance_tag_attribute: Stubs::InstanceTagNotificationAttribute.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DescribeInstanceEventWindows
    class DescribeInstanceEventWindows

      def self.default(visited=[])
        {
          instance_event_windows: Stubs::InstanceEventWindowSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for InstanceEventWindowSet
    class InstanceEventWindowSet
      def self.default(visited=[])
        return nil if visited.include?('InstanceEventWindowSet')
        visited = visited + ['InstanceEventWindowSet']
        [
          Stubs::InstanceEventWindow.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeInstanceStatus
    class DescribeInstanceStatus

      def self.default(visited=[])
        {
          instance_statuses: Stubs::InstanceStatusList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for InstanceStatusList
    class InstanceStatusList
      def self.default(visited=[])
        return nil if visited.include?('InstanceStatusList')
        visited = visited + ['InstanceStatusList']
        [
          Stubs::InstanceStatus.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstanceStatus
    class InstanceStatus

      def self.default(visited=[])
        return nil if visited.include?('InstanceStatus')
        visited = visited + ['InstanceStatus']
        {
          availability_zone: 'availability_zone',
          outpost_arn: 'outpost_arn',
          events: Stubs::InstanceStatusEventList.default(visited),
          instance_id: 'instance_id',
          instance_state: Stubs::InstanceState.default(visited),
          instance_status: Stubs::InstanceStatusSummary.default(visited),
          system_status: Stubs::InstanceStatusSummary.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for InstanceStatusSummary
    class InstanceStatusSummary

      def self.default(visited=[])
        return nil if visited.include?('InstanceStatusSummary')
        visited = visited + ['InstanceStatusSummary']
        {
          details: Stubs::InstanceStatusDetailsList.default(visited),
          status: 'status',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for InstanceStatusDetailsList
    class InstanceStatusDetailsList
      def self.default(visited=[])
        return nil if visited.include?('InstanceStatusDetailsList')
        visited = visited + ['InstanceStatusDetailsList']
        [
          Stubs::InstanceStatusDetails.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstanceStatusDetails
    class InstanceStatusDetails

      def self.default(visited=[])
        return nil if visited.include?('InstanceStatusDetails')
        visited = visited + ['InstanceStatusDetails']
        {
          impaired_since: Time.now,
          member_name: 'member_name',
          status: 'status',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for InstanceState
    class InstanceState

      def self.default(visited=[])
        return nil if visited.include?('InstanceState')
        visited = visited + ['InstanceState']
        {
          code: 1,
          member_name: 'member_name',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for InstanceStatusEventList
    class InstanceStatusEventList
      def self.default(visited=[])
        return nil if visited.include?('InstanceStatusEventList')
        visited = visited + ['InstanceStatusEventList']
        [
          Stubs::InstanceStatusEvent.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstanceStatusEvent
    class InstanceStatusEvent

      def self.default(visited=[])
        return nil if visited.include?('InstanceStatusEvent')
        visited = visited + ['InstanceStatusEvent']
        {
          instance_event_id: 'instance_event_id',
          code: 'code',
          description: 'description',
          not_after: Time.now,
          not_before: Time.now,
          not_before_deadline: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeInstanceTypeOfferings
    class DescribeInstanceTypeOfferings

      def self.default(visited=[])
        {
          instance_type_offerings: Stubs::InstanceTypeOfferingsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for InstanceTypeOfferingsList
    class InstanceTypeOfferingsList
      def self.default(visited=[])
        return nil if visited.include?('InstanceTypeOfferingsList')
        visited = visited + ['InstanceTypeOfferingsList']
        [
          Stubs::InstanceTypeOffering.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstanceTypeOffering
    class InstanceTypeOffering

      def self.default(visited=[])
        return nil if visited.include?('InstanceTypeOffering')
        visited = visited + ['InstanceTypeOffering']
        {
          instance_type: 'instance_type',
          location_type: 'location_type',
          location: 'location',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeInstanceTypes
    class DescribeInstanceTypes

      def self.default(visited=[])
        {
          instance_types: Stubs::InstanceTypeInfoList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for InstanceTypeInfoList
    class InstanceTypeInfoList
      def self.default(visited=[])
        return nil if visited.include?('InstanceTypeInfoList')
        visited = visited + ['InstanceTypeInfoList']
        [
          Stubs::InstanceTypeInfo.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstanceTypeInfo
    class InstanceTypeInfo

      def self.default(visited=[])
        return nil if visited.include?('InstanceTypeInfo')
        visited = visited + ['InstanceTypeInfo']
        {
          instance_type: 'instance_type',
          current_generation: false,
          free_tier_eligible: false,
          supported_usage_classes: Stubs::UsageClassTypeList.default(visited),
          supported_root_device_types: Stubs::RootDeviceTypeList.default(visited),
          supported_virtualization_types: Stubs::VirtualizationTypeList.default(visited),
          bare_metal: false,
          hypervisor: 'hypervisor',
          processor_info: Stubs::ProcessorInfo.default(visited),
          v_cpu_info: Stubs::VCpuInfo.default(visited),
          memory_info: Stubs::MemoryInfo.default(visited),
          instance_storage_supported: false,
          instance_storage_info: Stubs::InstanceStorageInfo.default(visited),
          ebs_info: Stubs::EbsInfo.default(visited),
          network_info: Stubs::NetworkInfo.default(visited),
          gpu_info: Stubs::GpuInfo.default(visited),
          fpga_info: Stubs::FpgaInfo.default(visited),
          placement_group_info: Stubs::PlacementGroupInfo.default(visited),
          inference_accelerator_info: Stubs::InferenceAcceleratorInfo.default(visited),
          hibernation_supported: false,
          burstable_performance_supported: false,
          dedicated_hosts_supported: false,
          auto_recovery_supported: false,
          supported_boot_modes: Stubs::BootModeTypeList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for BootModeTypeList
    class BootModeTypeList
      def self.default(visited=[])
        return nil if visited.include?('BootModeTypeList')
        visited = visited + ['BootModeTypeList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InferenceAcceleratorInfo
    class InferenceAcceleratorInfo

      def self.default(visited=[])
        return nil if visited.include?('InferenceAcceleratorInfo')
        visited = visited + ['InferenceAcceleratorInfo']
        {
          accelerators: Stubs::InferenceDeviceInfoList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for InferenceDeviceInfoList
    class InferenceDeviceInfoList
      def self.default(visited=[])
        return nil if visited.include?('InferenceDeviceInfoList')
        visited = visited + ['InferenceDeviceInfoList']
        [
          Stubs::InferenceDeviceInfo.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InferenceDeviceInfo
    class InferenceDeviceInfo

      def self.default(visited=[])
        return nil if visited.include?('InferenceDeviceInfo')
        visited = visited + ['InferenceDeviceInfo']
        {
          count: 1,
          member_name: 'member_name',
          manufacturer: 'manufacturer',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for PlacementGroupInfo
    class PlacementGroupInfo

      def self.default(visited=[])
        return nil if visited.include?('PlacementGroupInfo')
        visited = visited + ['PlacementGroupInfo']
        {
          supported_strategies: Stubs::PlacementGroupStrategyList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for PlacementGroupStrategyList
    class PlacementGroupStrategyList
      def self.default(visited=[])
        return nil if visited.include?('PlacementGroupStrategyList')
        visited = visited + ['PlacementGroupStrategyList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for FpgaInfo
    class FpgaInfo

      def self.default(visited=[])
        return nil if visited.include?('FpgaInfo')
        visited = visited + ['FpgaInfo']
        {
          fpgas: Stubs::FpgaDeviceInfoList.default(visited),
          total_fpga_memory_in_mi_b: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for FpgaDeviceInfoList
    class FpgaDeviceInfoList
      def self.default(visited=[])
        return nil if visited.include?('FpgaDeviceInfoList')
        visited = visited + ['FpgaDeviceInfoList']
        [
          Stubs::FpgaDeviceInfo.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for FpgaDeviceInfo
    class FpgaDeviceInfo

      def self.default(visited=[])
        return nil if visited.include?('FpgaDeviceInfo')
        visited = visited + ['FpgaDeviceInfo']
        {
          member_name: 'member_name',
          manufacturer: 'manufacturer',
          count: 1,
          memory_info: Stubs::FpgaDeviceMemoryInfo.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for FpgaDeviceMemoryInfo
    class FpgaDeviceMemoryInfo

      def self.default(visited=[])
        return nil if visited.include?('FpgaDeviceMemoryInfo')
        visited = visited + ['FpgaDeviceMemoryInfo']
        {
          size_in_mi_b: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for GpuInfo
    class GpuInfo

      def self.default(visited=[])
        return nil if visited.include?('GpuInfo')
        visited = visited + ['GpuInfo']
        {
          gpus: Stubs::GpuDeviceInfoList.default(visited),
          total_gpu_memory_in_mi_b: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for GpuDeviceInfoList
    class GpuDeviceInfoList
      def self.default(visited=[])
        return nil if visited.include?('GpuDeviceInfoList')
        visited = visited + ['GpuDeviceInfoList']
        [
          Stubs::GpuDeviceInfo.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for GpuDeviceInfo
    class GpuDeviceInfo

      def self.default(visited=[])
        return nil if visited.include?('GpuDeviceInfo')
        visited = visited + ['GpuDeviceInfo']
        {
          member_name: 'member_name',
          manufacturer: 'manufacturer',
          count: 1,
          memory_info: Stubs::GpuDeviceMemoryInfo.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for GpuDeviceMemoryInfo
    class GpuDeviceMemoryInfo

      def self.default(visited=[])
        return nil if visited.include?('GpuDeviceMemoryInfo')
        visited = visited + ['GpuDeviceMemoryInfo']
        {
          size_in_mi_b: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for NetworkInfo
    class NetworkInfo

      def self.default(visited=[])
        return nil if visited.include?('NetworkInfo')
        visited = visited + ['NetworkInfo']
        {
          network_performance: 'network_performance',
          maximum_network_interfaces: 1,
          maximum_network_cards: 1,
          default_network_card_index: 1,
          network_cards: Stubs::NetworkCardInfoList.default(visited),
          ipv4_addresses_per_interface: 1,
          ipv6_addresses_per_interface: 1,
          ipv6_supported: false,
          ena_support: 'ena_support',
          efa_supported: false,
          efa_info: Stubs::EfaInfo.default(visited),
          encryption_in_transit_supported: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for EfaInfo
    class EfaInfo

      def self.default(visited=[])
        return nil if visited.include?('EfaInfo')
        visited = visited + ['EfaInfo']
        {
          maximum_efa_interfaces: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for NetworkCardInfoList
    class NetworkCardInfoList
      def self.default(visited=[])
        return nil if visited.include?('NetworkCardInfoList')
        visited = visited + ['NetworkCardInfoList']
        [
          Stubs::NetworkCardInfo.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for NetworkCardInfo
    class NetworkCardInfo

      def self.default(visited=[])
        return nil if visited.include?('NetworkCardInfo')
        visited = visited + ['NetworkCardInfo']
        {
          network_card_index: 1,
          network_performance: 'network_performance',
          maximum_network_interfaces: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for EbsInfo
    class EbsInfo

      def self.default(visited=[])
        return nil if visited.include?('EbsInfo')
        visited = visited + ['EbsInfo']
        {
          ebs_optimized_support: 'ebs_optimized_support',
          encryption_support: 'encryption_support',
          ebs_optimized_info: Stubs::EbsOptimizedInfo.default(visited),
          nvme_support: 'nvme_support',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for EbsOptimizedInfo
    class EbsOptimizedInfo

      def self.default(visited=[])
        return nil if visited.include?('EbsOptimizedInfo')
        visited = visited + ['EbsOptimizedInfo']
        {
          baseline_bandwidth_in_mbps: 1,
          baseline_throughput_in_m_bps: 1.0,
          baseline_iops: 1,
          maximum_bandwidth_in_mbps: 1,
          maximum_throughput_in_m_bps: 1.0,
          maximum_iops: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for InstanceStorageInfo
    class InstanceStorageInfo

      def self.default(visited=[])
        return nil if visited.include?('InstanceStorageInfo')
        visited = visited + ['InstanceStorageInfo']
        {
          total_size_in_gb: 1,
          disks: Stubs::DiskInfoList.default(visited),
          nvme_support: 'nvme_support',
          encryption_support: 'encryption_support',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for DiskInfoList
    class DiskInfoList
      def self.default(visited=[])
        return nil if visited.include?('DiskInfoList')
        visited = visited + ['DiskInfoList']
        [
          Stubs::DiskInfo.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for DiskInfo
    class DiskInfo

      def self.default(visited=[])
        return nil if visited.include?('DiskInfo')
        visited = visited + ['DiskInfo']
        {
          size_in_gb: 1,
          count: 1,
          type: 'type',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for MemoryInfo
    class MemoryInfo

      def self.default(visited=[])
        return nil if visited.include?('MemoryInfo')
        visited = visited + ['MemoryInfo']
        {
          size_in_mi_b: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for VCpuInfo
    class VCpuInfo

      def self.default(visited=[])
        return nil if visited.include?('VCpuInfo')
        visited = visited + ['VCpuInfo']
        {
          default_v_cpus: 1,
          default_cores: 1,
          default_threads_per_core: 1,
          valid_cores: Stubs::CoreCountList.default(visited),
          valid_threads_per_core: Stubs::ThreadsPerCoreList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ThreadsPerCoreList
    class ThreadsPerCoreList
      def self.default(visited=[])
        return nil if visited.include?('ThreadsPerCoreList')
        visited = visited + ['ThreadsPerCoreList']
        [
          1
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # List Stubber for CoreCountList
    class CoreCountList
      def self.default(visited=[])
        return nil if visited.include?('CoreCountList')
        visited = visited + ['CoreCountList']
        [
          1
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ProcessorInfo
    class ProcessorInfo

      def self.default(visited=[])
        return nil if visited.include?('ProcessorInfo')
        visited = visited + ['ProcessorInfo']
        {
          supported_architectures: Stubs::ArchitectureTypeList.default(visited),
          sustained_clock_speed_in_ghz: 1.0,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ArchitectureTypeList
    class ArchitectureTypeList
      def self.default(visited=[])
        return nil if visited.include?('ArchitectureTypeList')
        visited = visited + ['ArchitectureTypeList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # List Stubber for VirtualizationTypeList
    class VirtualizationTypeList
      def self.default(visited=[])
        return nil if visited.include?('VirtualizationTypeList')
        visited = visited + ['VirtualizationTypeList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # List Stubber for RootDeviceTypeList
    class RootDeviceTypeList
      def self.default(visited=[])
        return nil if visited.include?('RootDeviceTypeList')
        visited = visited + ['RootDeviceTypeList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # List Stubber for UsageClassTypeList
    class UsageClassTypeList
      def self.default(visited=[])
        return nil if visited.include?('UsageClassTypeList')
        visited = visited + ['UsageClassTypeList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeInstances
    class DescribeInstances

      def self.default(visited=[])
        {
          reservations: Stubs::ReservationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ReservationList
    class ReservationList
      def self.default(visited=[])
        return nil if visited.include?('ReservationList')
        visited = visited + ['ReservationList']
        [
          Stubs::Reservation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Reservation
    class Reservation

      def self.default(visited=[])
        return nil if visited.include?('Reservation')
        visited = visited + ['Reservation']
        {
          groups: Stubs::GroupIdentifierList.default(visited),
          instances: Stubs::InstanceList.default(visited),
          owner_id: 'owner_id',
          requester_id: 'requester_id',
          reservation_id: 'reservation_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for InstanceList
    class InstanceList
      def self.default(visited=[])
        return nil if visited.include?('InstanceList')
        visited = visited + ['InstanceList']
        [
          Stubs::Instance.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Instance
    class Instance

      def self.default(visited=[])
        return nil if visited.include?('Instance')
        visited = visited + ['Instance']
        {
          ami_launch_index: 1,
          image_id: 'image_id',
          instance_id: 'instance_id',
          instance_type: 'instance_type',
          kernel_id: 'kernel_id',
          key_name: 'key_name',
          launch_time: Time.now,
          monitoring: Stubs::Monitoring.default(visited),
          placement: Stubs::Placement.default(visited),
          platform: 'platform',
          private_dns_name: 'private_dns_name',
          private_ip_address: 'private_ip_address',
          product_codes: Stubs::ProductCodeList.default(visited),
          public_dns_name: 'public_dns_name',
          public_ip_address: 'public_ip_address',
          ramdisk_id: 'ramdisk_id',
          state: Stubs::InstanceState.default(visited),
          state_transition_reason: 'state_transition_reason',
          subnet_id: 'subnet_id',
          vpc_id: 'vpc_id',
          architecture: 'architecture',
          block_device_mappings: Stubs::InstanceBlockDeviceMappingList.default(visited),
          client_token: 'client_token',
          ebs_optimized: false,
          ena_support: false,
          hypervisor: 'hypervisor',
          iam_instance_profile: Stubs::IamInstanceProfile.default(visited),
          instance_lifecycle: 'instance_lifecycle',
          elastic_gpu_associations: Stubs::ElasticGpuAssociationList.default(visited),
          elastic_inference_accelerator_associations: Stubs::ElasticInferenceAcceleratorAssociationList.default(visited),
          network_interfaces: Stubs::InstanceNetworkInterfaceList.default(visited),
          outpost_arn: 'outpost_arn',
          root_device_name: 'root_device_name',
          root_device_type: 'root_device_type',
          security_groups: Stubs::GroupIdentifierList.default(visited),
          source_dest_check: false,
          spot_instance_request_id: 'spot_instance_request_id',
          sriov_net_support: 'sriov_net_support',
          state_reason: Stubs::StateReason.default(visited),
          tags: Stubs::TagList.default(visited),
          virtualization_type: 'virtualization_type',
          cpu_options: Stubs::CpuOptions.default(visited),
          capacity_reservation_id: 'capacity_reservation_id',
          capacity_reservation_specification: Stubs::CapacityReservationSpecificationResponse.default(visited),
          hibernation_options: Stubs::HibernationOptions.default(visited),
          licenses: Stubs::LicenseList.default(visited),
          metadata_options: Stubs::InstanceMetadataOptionsResponse.default(visited),
          enclave_options: Stubs::EnclaveOptions.default(visited),
          boot_mode: 'boot_mode',
          platform_details: 'platform_details',
          usage_operation: 'usage_operation',
          usage_operation_update_time: Time.now,
          private_dns_name_options: Stubs::PrivateDnsNameOptionsResponse.default(visited),
          ipv6_address: 'ipv6_address',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for PrivateDnsNameOptionsResponse
    class PrivateDnsNameOptionsResponse

      def self.default(visited=[])
        return nil if visited.include?('PrivateDnsNameOptionsResponse')
        visited = visited + ['PrivateDnsNameOptionsResponse']
        {
          hostname_type: 'hostname_type',
          enable_resource_name_dns_a_record: false,
          enable_resource_name_dns_aaaa_record: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for InstanceMetadataOptionsResponse
    class InstanceMetadataOptionsResponse

      def self.default(visited=[])
        return nil if visited.include?('InstanceMetadataOptionsResponse')
        visited = visited + ['InstanceMetadataOptionsResponse']
        {
          state: 'state',
          http_tokens: 'http_tokens',
          http_put_response_hop_limit: 1,
          http_endpoint: 'http_endpoint',
          http_protocol_ipv6: 'http_protocol_ipv6',
          instance_metadata_tags: 'instance_metadata_tags',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for LicenseList
    class LicenseList
      def self.default(visited=[])
        return nil if visited.include?('LicenseList')
        visited = visited + ['LicenseList']
        [
          Stubs::LicenseConfiguration.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for LicenseConfiguration
    class LicenseConfiguration

      def self.default(visited=[])
        return nil if visited.include?('LicenseConfiguration')
        visited = visited + ['LicenseConfiguration']
        {
          license_configuration_arn: 'license_configuration_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for HibernationOptions
    class HibernationOptions

      def self.default(visited=[])
        return nil if visited.include?('HibernationOptions')
        visited = visited + ['HibernationOptions']
        {
          configured: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for CapacityReservationSpecificationResponse
    class CapacityReservationSpecificationResponse

      def self.default(visited=[])
        return nil if visited.include?('CapacityReservationSpecificationResponse')
        visited = visited + ['CapacityReservationSpecificationResponse']
        {
          capacity_reservation_preference: 'capacity_reservation_preference',
          capacity_reservation_target: Stubs::CapacityReservationTargetResponse.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for CpuOptions
    class CpuOptions

      def self.default(visited=[])
        return nil if visited.include?('CpuOptions')
        visited = visited + ['CpuOptions']
        {
          core_count: 1,
          threads_per_core: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for InstanceNetworkInterfaceList
    class InstanceNetworkInterfaceList
      def self.default(visited=[])
        return nil if visited.include?('InstanceNetworkInterfaceList')
        visited = visited + ['InstanceNetworkInterfaceList']
        [
          Stubs::InstanceNetworkInterface.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstanceNetworkInterface
    class InstanceNetworkInterface

      def self.default(visited=[])
        return nil if visited.include?('InstanceNetworkInterface')
        visited = visited + ['InstanceNetworkInterface']
        {
          association: Stubs::InstanceNetworkInterfaceAssociation.default(visited),
          attachment: Stubs::InstanceNetworkInterfaceAttachment.default(visited),
          description: 'description',
          groups: Stubs::GroupIdentifierList.default(visited),
          ipv6_addresses: Stubs::InstanceIpv6AddressList.default(visited),
          mac_address: 'mac_address',
          network_interface_id: 'network_interface_id',
          owner_id: 'owner_id',
          private_dns_name: 'private_dns_name',
          private_ip_address: 'private_ip_address',
          private_ip_addresses: Stubs::InstancePrivateIpAddressList.default(visited),
          source_dest_check: false,
          status: 'status',
          subnet_id: 'subnet_id',
          vpc_id: 'vpc_id',
          interface_type: 'interface_type',
          ipv4_prefixes: Stubs::InstanceIpv4PrefixList.default(visited),
          ipv6_prefixes: Stubs::InstanceIpv6PrefixList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for InstanceIpv6PrefixList
    class InstanceIpv6PrefixList
      def self.default(visited=[])
        return nil if visited.include?('InstanceIpv6PrefixList')
        visited = visited + ['InstanceIpv6PrefixList']
        [
          Stubs::InstanceIpv6Prefix.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstanceIpv6Prefix
    class InstanceIpv6Prefix

      def self.default(visited=[])
        return nil if visited.include?('InstanceIpv6Prefix')
        visited = visited + ['InstanceIpv6Prefix']
        {
          ipv6_prefix: 'ipv6_prefix',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for InstanceIpv4PrefixList
    class InstanceIpv4PrefixList
      def self.default(visited=[])
        return nil if visited.include?('InstanceIpv4PrefixList')
        visited = visited + ['InstanceIpv4PrefixList']
        [
          Stubs::InstanceIpv4Prefix.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstanceIpv4Prefix
    class InstanceIpv4Prefix

      def self.default(visited=[])
        return nil if visited.include?('InstanceIpv4Prefix')
        visited = visited + ['InstanceIpv4Prefix']
        {
          ipv4_prefix: 'ipv4_prefix',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for InstancePrivateIpAddressList
    class InstancePrivateIpAddressList
      def self.default(visited=[])
        return nil if visited.include?('InstancePrivateIpAddressList')
        visited = visited + ['InstancePrivateIpAddressList']
        [
          Stubs::InstancePrivateIpAddress.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstancePrivateIpAddress
    class InstancePrivateIpAddress

      def self.default(visited=[])
        return nil if visited.include?('InstancePrivateIpAddress')
        visited = visited + ['InstancePrivateIpAddress']
        {
          association: Stubs::InstanceNetworkInterfaceAssociation.default(visited),
          primary: false,
          private_dns_name: 'private_dns_name',
          private_ip_address: 'private_ip_address',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for InstanceNetworkInterfaceAssociation
    class InstanceNetworkInterfaceAssociation

      def self.default(visited=[])
        return nil if visited.include?('InstanceNetworkInterfaceAssociation')
        visited = visited + ['InstanceNetworkInterfaceAssociation']
        {
          carrier_ip: 'carrier_ip',
          customer_owned_ip: 'customer_owned_ip',
          ip_owner_id: 'ip_owner_id',
          public_dns_name: 'public_dns_name',
          public_ip: 'public_ip',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for InstanceNetworkInterfaceAttachment
    class InstanceNetworkInterfaceAttachment

      def self.default(visited=[])
        return nil if visited.include?('InstanceNetworkInterfaceAttachment')
        visited = visited + ['InstanceNetworkInterfaceAttachment']
        {
          attach_time: Time.now,
          attachment_id: 'attachment_id',
          delete_on_termination: false,
          device_index: 1,
          status: 'status',
          network_card_index: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ElasticInferenceAcceleratorAssociationList
    class ElasticInferenceAcceleratorAssociationList
      def self.default(visited=[])
        return nil if visited.include?('ElasticInferenceAcceleratorAssociationList')
        visited = visited + ['ElasticInferenceAcceleratorAssociationList']
        [
          Stubs::ElasticInferenceAcceleratorAssociation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ElasticInferenceAcceleratorAssociation
    class ElasticInferenceAcceleratorAssociation

      def self.default(visited=[])
        return nil if visited.include?('ElasticInferenceAcceleratorAssociation')
        visited = visited + ['ElasticInferenceAcceleratorAssociation']
        {
          elastic_inference_accelerator_arn: 'elastic_inference_accelerator_arn',
          elastic_inference_accelerator_association_id: 'elastic_inference_accelerator_association_id',
          elastic_inference_accelerator_association_state: 'elastic_inference_accelerator_association_state',
          elastic_inference_accelerator_association_time: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ElasticGpuAssociationList
    class ElasticGpuAssociationList
      def self.default(visited=[])
        return nil if visited.include?('ElasticGpuAssociationList')
        visited = visited + ['ElasticGpuAssociationList']
        [
          Stubs::ElasticGpuAssociation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ElasticGpuAssociation
    class ElasticGpuAssociation

      def self.default(visited=[])
        return nil if visited.include?('ElasticGpuAssociation')
        visited = visited + ['ElasticGpuAssociation']
        {
          elastic_gpu_id: 'elastic_gpu_id',
          elastic_gpu_association_id: 'elastic_gpu_association_id',
          elastic_gpu_association_state: 'elastic_gpu_association_state',
          elastic_gpu_association_time: 'elastic_gpu_association_time',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for Placement
    class Placement

      def self.default(visited=[])
        return nil if visited.include?('Placement')
        visited = visited + ['Placement']
        {
          availability_zone: 'availability_zone',
          affinity: 'affinity',
          group_name: 'group_name',
          partition_number: 1,
          host_id: 'host_id',
          tenancy: 'tenancy',
          spread_domain: 'spread_domain',
          host_resource_group_arn: 'host_resource_group_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for Monitoring
    class Monitoring

      def self.default(visited=[])
        return nil if visited.include?('Monitoring')
        visited = visited + ['Monitoring']
        {
          state: 'state',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeInternetGateways
    class DescribeInternetGateways

      def self.default(visited=[])
        {
          internet_gateways: Stubs::InternetGatewayList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for InternetGatewayList
    class InternetGatewayList
      def self.default(visited=[])
        return nil if visited.include?('InternetGatewayList')
        visited = visited + ['InternetGatewayList']
        [
          Stubs::InternetGateway.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeIpamPools
    class DescribeIpamPools

      def self.default(visited=[])
        {
          next_token: 'next_token',
          ipam_pools: Stubs::IpamPoolSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for IpamPoolSet
    class IpamPoolSet
      def self.default(visited=[])
        return nil if visited.include?('IpamPoolSet')
        visited = visited + ['IpamPoolSet']
        [
          Stubs::IpamPool.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeIpamScopes
    class DescribeIpamScopes

      def self.default(visited=[])
        {
          next_token: 'next_token',
          ipam_scopes: Stubs::IpamScopeSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for IpamScopeSet
    class IpamScopeSet
      def self.default(visited=[])
        return nil if visited.include?('IpamScopeSet')
        visited = visited + ['IpamScopeSet']
        [
          Stubs::IpamScope.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeIpams
    class DescribeIpams

      def self.default(visited=[])
        {
          next_token: 'next_token',
          ipams: Stubs::IpamSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for IpamSet
    class IpamSet
      def self.default(visited=[])
        return nil if visited.include?('IpamSet')
        visited = visited + ['IpamSet']
        [
          Stubs::Ipam.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeIpv6Pools
    class DescribeIpv6Pools

      def self.default(visited=[])
        {
          ipv6_pools: Stubs::Ipv6PoolSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for Ipv6PoolSet
    class Ipv6PoolSet
      def self.default(visited=[])
        return nil if visited.include?('Ipv6PoolSet')
        visited = visited + ['Ipv6PoolSet']
        [
          Stubs::Ipv6Pool.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Ipv6Pool
    class Ipv6Pool

      def self.default(visited=[])
        return nil if visited.include?('Ipv6Pool')
        visited = visited + ['Ipv6Pool']
        {
          pool_id: 'pool_id',
          description: 'description',
          pool_cidr_blocks: Stubs::PoolCidrBlocksSet.default(visited),
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for PoolCidrBlocksSet
    class PoolCidrBlocksSet
      def self.default(visited=[])
        return nil if visited.include?('PoolCidrBlocksSet')
        visited = visited + ['PoolCidrBlocksSet']
        [
          Stubs::PoolCidrBlock.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for PoolCidrBlock
    class PoolCidrBlock

      def self.default(visited=[])
        return nil if visited.include?('PoolCidrBlock')
        visited = visited + ['PoolCidrBlock']
        {
          cidr: 'cidr',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeKeyPairs
    class DescribeKeyPairs

      def self.default(visited=[])
        {
          key_pairs: Stubs::KeyPairList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for KeyPairList
    class KeyPairList
      def self.default(visited=[])
        return nil if visited.include?('KeyPairList')
        visited = visited + ['KeyPairList']
        [
          Stubs::KeyPairInfo.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for KeyPairInfo
    class KeyPairInfo

      def self.default(visited=[])
        return nil if visited.include?('KeyPairInfo')
        visited = visited + ['KeyPairInfo']
        {
          key_pair_id: 'key_pair_id',
          key_fingerprint: 'key_fingerprint',
          key_name: 'key_name',
          key_type: 'key_type',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeLaunchTemplateVersions
    class DescribeLaunchTemplateVersions

      def self.default(visited=[])
        {
          launch_template_versions: Stubs::LaunchTemplateVersionSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for LaunchTemplateVersionSet
    class LaunchTemplateVersionSet
      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateVersionSet')
        visited = visited + ['LaunchTemplateVersionSet']
        [
          Stubs::LaunchTemplateVersion.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeLaunchTemplates
    class DescribeLaunchTemplates

      def self.default(visited=[])
        {
          launch_templates: Stubs::LaunchTemplateSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for LaunchTemplateSet
    class LaunchTemplateSet
      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateSet')
        visited = visited + ['LaunchTemplateSet']
        [
          Stubs::LaunchTemplate.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
    class DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations

      def self.default(visited=[])
        {
          local_gateway_route_table_virtual_interface_group_associations: Stubs::LocalGatewayRouteTableVirtualInterfaceGroupAssociationSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for LocalGatewayRouteTableVirtualInterfaceGroupAssociationSet
    class LocalGatewayRouteTableVirtualInterfaceGroupAssociationSet
      def self.default(visited=[])
        return nil if visited.include?('LocalGatewayRouteTableVirtualInterfaceGroupAssociationSet')
        visited = visited + ['LocalGatewayRouteTableVirtualInterfaceGroupAssociationSet']
        [
          Stubs::LocalGatewayRouteTableVirtualInterfaceGroupAssociation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for LocalGatewayRouteTableVirtualInterfaceGroupAssociation
    class LocalGatewayRouteTableVirtualInterfaceGroupAssociation

      def self.default(visited=[])
        return nil if visited.include?('LocalGatewayRouteTableVirtualInterfaceGroupAssociation')
        visited = visited + ['LocalGatewayRouteTableVirtualInterfaceGroupAssociation']
        {
          local_gateway_route_table_virtual_interface_group_association_id: 'local_gateway_route_table_virtual_interface_group_association_id',
          local_gateway_virtual_interface_group_id: 'local_gateway_virtual_interface_group_id',
          local_gateway_id: 'local_gateway_id',
          local_gateway_route_table_id: 'local_gateway_route_table_id',
          local_gateway_route_table_arn: 'local_gateway_route_table_arn',
          owner_id: 'owner_id',
          state: 'state',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeLocalGatewayRouteTableVpcAssociations
    class DescribeLocalGatewayRouteTableVpcAssociations

      def self.default(visited=[])
        {
          local_gateway_route_table_vpc_associations: Stubs::LocalGatewayRouteTableVpcAssociationSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for LocalGatewayRouteTableVpcAssociationSet
    class LocalGatewayRouteTableVpcAssociationSet
      def self.default(visited=[])
        return nil if visited.include?('LocalGatewayRouteTableVpcAssociationSet')
        visited = visited + ['LocalGatewayRouteTableVpcAssociationSet']
        [
          Stubs::LocalGatewayRouteTableVpcAssociation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeLocalGatewayRouteTables
    class DescribeLocalGatewayRouteTables

      def self.default(visited=[])
        {
          local_gateway_route_tables: Stubs::LocalGatewayRouteTableSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for LocalGatewayRouteTableSet
    class LocalGatewayRouteTableSet
      def self.default(visited=[])
        return nil if visited.include?('LocalGatewayRouteTableSet')
        visited = visited + ['LocalGatewayRouteTableSet']
        [
          Stubs::LocalGatewayRouteTable.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for LocalGatewayRouteTable
    class LocalGatewayRouteTable

      def self.default(visited=[])
        return nil if visited.include?('LocalGatewayRouteTable')
        visited = visited + ['LocalGatewayRouteTable']
        {
          local_gateway_route_table_id: 'local_gateway_route_table_id',
          local_gateway_route_table_arn: 'local_gateway_route_table_arn',
          local_gateway_id: 'local_gateway_id',
          outpost_arn: 'outpost_arn',
          owner_id: 'owner_id',
          state: 'state',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeLocalGatewayVirtualInterfaceGroups
    class DescribeLocalGatewayVirtualInterfaceGroups

      def self.default(visited=[])
        {
          local_gateway_virtual_interface_groups: Stubs::LocalGatewayVirtualInterfaceGroupSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for LocalGatewayVirtualInterfaceGroupSet
    class LocalGatewayVirtualInterfaceGroupSet
      def self.default(visited=[])
        return nil if visited.include?('LocalGatewayVirtualInterfaceGroupSet')
        visited = visited + ['LocalGatewayVirtualInterfaceGroupSet']
        [
          Stubs::LocalGatewayVirtualInterfaceGroup.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for LocalGatewayVirtualInterfaceGroup
    class LocalGatewayVirtualInterfaceGroup

      def self.default(visited=[])
        return nil if visited.include?('LocalGatewayVirtualInterfaceGroup')
        visited = visited + ['LocalGatewayVirtualInterfaceGroup']
        {
          local_gateway_virtual_interface_group_id: 'local_gateway_virtual_interface_group_id',
          local_gateway_virtual_interface_ids: Stubs::LocalGatewayVirtualInterfaceIdSet.default(visited),
          local_gateway_id: 'local_gateway_id',
          owner_id: 'owner_id',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for LocalGatewayVirtualInterfaceIdSet
    class LocalGatewayVirtualInterfaceIdSet
      def self.default(visited=[])
        return nil if visited.include?('LocalGatewayVirtualInterfaceIdSet')
        visited = visited + ['LocalGatewayVirtualInterfaceIdSet']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeLocalGatewayVirtualInterfaces
    class DescribeLocalGatewayVirtualInterfaces

      def self.default(visited=[])
        {
          local_gateway_virtual_interfaces: Stubs::LocalGatewayVirtualInterfaceSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for LocalGatewayVirtualInterfaceSet
    class LocalGatewayVirtualInterfaceSet
      def self.default(visited=[])
        return nil if visited.include?('LocalGatewayVirtualInterfaceSet')
        visited = visited + ['LocalGatewayVirtualInterfaceSet']
        [
          Stubs::LocalGatewayVirtualInterface.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for LocalGatewayVirtualInterface
    class LocalGatewayVirtualInterface

      def self.default(visited=[])
        return nil if visited.include?('LocalGatewayVirtualInterface')
        visited = visited + ['LocalGatewayVirtualInterface']
        {
          local_gateway_virtual_interface_id: 'local_gateway_virtual_interface_id',
          local_gateway_id: 'local_gateway_id',
          vlan: 1,
          local_address: 'local_address',
          peer_address: 'peer_address',
          local_bgp_asn: 1,
          peer_bgp_asn: 1,
          owner_id: 'owner_id',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeLocalGateways
    class DescribeLocalGateways

      def self.default(visited=[])
        {
          local_gateways: Stubs::LocalGatewaySet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for LocalGatewaySet
    class LocalGatewaySet
      def self.default(visited=[])
        return nil if visited.include?('LocalGatewaySet')
        visited = visited + ['LocalGatewaySet']
        [
          Stubs::LocalGateway.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for LocalGateway
    class LocalGateway

      def self.default(visited=[])
        return nil if visited.include?('LocalGateway')
        visited = visited + ['LocalGateway']
        {
          local_gateway_id: 'local_gateway_id',
          outpost_arn: 'outpost_arn',
          owner_id: 'owner_id',
          state: 'state',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeManagedPrefixLists
    class DescribeManagedPrefixLists

      def self.default(visited=[])
        {
          next_token: 'next_token',
          prefix_lists: Stubs::ManagedPrefixListSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ManagedPrefixListSet
    class ManagedPrefixListSet
      def self.default(visited=[])
        return nil if visited.include?('ManagedPrefixListSet')
        visited = visited + ['ManagedPrefixListSet']
        [
          Stubs::ManagedPrefixList.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeMovingAddresses
    class DescribeMovingAddresses

      def self.default(visited=[])
        {
          moving_address_statuses: Stubs::MovingAddressStatusSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for MovingAddressStatusSet
    class MovingAddressStatusSet
      def self.default(visited=[])
        return nil if visited.include?('MovingAddressStatusSet')
        visited = visited + ['MovingAddressStatusSet']
        [
          Stubs::MovingAddressStatus.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for MovingAddressStatus
    class MovingAddressStatus

      def self.default(visited=[])
        return nil if visited.include?('MovingAddressStatus')
        visited = visited + ['MovingAddressStatus']
        {
          move_status: 'move_status',
          public_ip: 'public_ip',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeNatGateways
    class DescribeNatGateways

      def self.default(visited=[])
        {
          nat_gateways: Stubs::NatGatewayList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for NatGatewayList
    class NatGatewayList
      def self.default(visited=[])
        return nil if visited.include?('NatGatewayList')
        visited = visited + ['NatGatewayList']
        [
          Stubs::NatGateway.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeNetworkAcls
    class DescribeNetworkAcls

      def self.default(visited=[])
        {
          network_acls: Stubs::NetworkAclList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for NetworkAclList
    class NetworkAclList
      def self.default(visited=[])
        return nil if visited.include?('NetworkAclList')
        visited = visited + ['NetworkAclList']
        [
          Stubs::NetworkAcl.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeNetworkInsightsAccessScopeAnalyses
    class DescribeNetworkInsightsAccessScopeAnalyses

      def self.default(visited=[])
        {
          network_insights_access_scope_analyses: Stubs::NetworkInsightsAccessScopeAnalysisList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for NetworkInsightsAccessScopeAnalysisList
    class NetworkInsightsAccessScopeAnalysisList
      def self.default(visited=[])
        return nil if visited.include?('NetworkInsightsAccessScopeAnalysisList')
        visited = visited + ['NetworkInsightsAccessScopeAnalysisList']
        [
          Stubs::NetworkInsightsAccessScopeAnalysis.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for NetworkInsightsAccessScopeAnalysis
    class NetworkInsightsAccessScopeAnalysis

      def self.default(visited=[])
        return nil if visited.include?('NetworkInsightsAccessScopeAnalysis')
        visited = visited + ['NetworkInsightsAccessScopeAnalysis']
        {
          network_insights_access_scope_analysis_id: 'network_insights_access_scope_analysis_id',
          network_insights_access_scope_analysis_arn: 'network_insights_access_scope_analysis_arn',
          network_insights_access_scope_id: 'network_insights_access_scope_id',
          status: 'status',
          status_message: 'status_message',
          warning_message: 'warning_message',
          start_date: Time.now,
          end_date: Time.now,
          findings_found: 'findings_found',
          analyzed_eni_count: 1,
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeNetworkInsightsAccessScopes
    class DescribeNetworkInsightsAccessScopes

      def self.default(visited=[])
        {
          network_insights_access_scopes: Stubs::NetworkInsightsAccessScopeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for NetworkInsightsAccessScopeList
    class NetworkInsightsAccessScopeList
      def self.default(visited=[])
        return nil if visited.include?('NetworkInsightsAccessScopeList')
        visited = visited + ['NetworkInsightsAccessScopeList']
        [
          Stubs::NetworkInsightsAccessScope.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeNetworkInsightsAnalyses
    class DescribeNetworkInsightsAnalyses

      def self.default(visited=[])
        {
          network_insights_analyses: Stubs::NetworkInsightsAnalysisList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for NetworkInsightsAnalysisList
    class NetworkInsightsAnalysisList
      def self.default(visited=[])
        return nil if visited.include?('NetworkInsightsAnalysisList')
        visited = visited + ['NetworkInsightsAnalysisList']
        [
          Stubs::NetworkInsightsAnalysis.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for NetworkInsightsAnalysis
    class NetworkInsightsAnalysis

      def self.default(visited=[])
        return nil if visited.include?('NetworkInsightsAnalysis')
        visited = visited + ['NetworkInsightsAnalysis']
        {
          network_insights_analysis_id: 'network_insights_analysis_id',
          network_insights_analysis_arn: 'network_insights_analysis_arn',
          network_insights_path_id: 'network_insights_path_id',
          filter_in_arns: Stubs::ArnList.default(visited),
          start_date: Time.now,
          status: 'status',
          status_message: 'status_message',
          warning_message: 'warning_message',
          network_path_found: false,
          forward_path_components: Stubs::PathComponentList.default(visited),
          return_path_components: Stubs::PathComponentList.default(visited),
          explanations: Stubs::ExplanationList.default(visited),
          alternate_path_hints: Stubs::AlternatePathHintList.default(visited),
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for AlternatePathHintList
    class AlternatePathHintList
      def self.default(visited=[])
        return nil if visited.include?('AlternatePathHintList')
        visited = visited + ['AlternatePathHintList']
        [
          Stubs::AlternatePathHint.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AlternatePathHint
    class AlternatePathHint

      def self.default(visited=[])
        return nil if visited.include?('AlternatePathHint')
        visited = visited + ['AlternatePathHint']
        {
          component_id: 'component_id',
          component_arn: 'component_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ExplanationList
    class ExplanationList
      def self.default(visited=[])
        return nil if visited.include?('ExplanationList')
        visited = visited + ['ExplanationList']
        [
          Stubs::Explanation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Explanation
    class Explanation

      def self.default(visited=[])
        return nil if visited.include?('Explanation')
        visited = visited + ['Explanation']
        {
          acl: Stubs::AnalysisComponent.default(visited),
          acl_rule: Stubs::AnalysisAclRule.default(visited),
          address: 'address',
          addresses: Stubs::IpAddressList.default(visited),
          attached_to: Stubs::AnalysisComponent.default(visited),
          availability_zones: Stubs::ValueStringList.default(visited),
          cidrs: Stubs::ValueStringList.default(visited),
          component: Stubs::AnalysisComponent.default(visited),
          customer_gateway: Stubs::AnalysisComponent.default(visited),
          destination: Stubs::AnalysisComponent.default(visited),
          destination_vpc: Stubs::AnalysisComponent.default(visited),
          direction: 'direction',
          explanation_code: 'explanation_code',
          ingress_route_table: Stubs::AnalysisComponent.default(visited),
          internet_gateway: Stubs::AnalysisComponent.default(visited),
          load_balancer_arn: 'load_balancer_arn',
          classic_load_balancer_listener: Stubs::AnalysisLoadBalancerListener.default(visited),
          load_balancer_listener_port: 1,
          load_balancer_target: Stubs::AnalysisLoadBalancerTarget.default(visited),
          load_balancer_target_group: Stubs::AnalysisComponent.default(visited),
          load_balancer_target_groups: Stubs::AnalysisComponentList.default(visited),
          load_balancer_target_port: 1,
          elastic_load_balancer_listener: Stubs::AnalysisComponent.default(visited),
          missing_component: 'missing_component',
          nat_gateway: Stubs::AnalysisComponent.default(visited),
          network_interface: Stubs::AnalysisComponent.default(visited),
          packet_field: 'packet_field',
          vpc_peering_connection: Stubs::AnalysisComponent.default(visited),
          port: 1,
          port_ranges: Stubs::PortRangeList.default(visited),
          prefix_list: Stubs::AnalysisComponent.default(visited),
          protocols: Stubs::StringList.default(visited),
          route_table_route: Stubs::AnalysisRouteTableRoute.default(visited),
          route_table: Stubs::AnalysisComponent.default(visited),
          security_group: Stubs::AnalysisComponent.default(visited),
          security_group_rule: Stubs::AnalysisSecurityGroupRule.default(visited),
          security_groups: Stubs::AnalysisComponentList.default(visited),
          source_vpc: Stubs::AnalysisComponent.default(visited),
          state: 'state',
          subnet: Stubs::AnalysisComponent.default(visited),
          subnet_route_table: Stubs::AnalysisComponent.default(visited),
          vpc: Stubs::AnalysisComponent.default(visited),
          vpc_endpoint: Stubs::AnalysisComponent.default(visited),
          vpn_connection: Stubs::AnalysisComponent.default(visited),
          vpn_gateway: Stubs::AnalysisComponent.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for AnalysisComponent
    class AnalysisComponent

      def self.default(visited=[])
        return nil if visited.include?('AnalysisComponent')
        visited = visited + ['AnalysisComponent']
        {
          id: 'id',
          arn: 'arn',
          member_name: 'member_name',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for AnalysisComponentList
    class AnalysisComponentList
      def self.default(visited=[])
        return nil if visited.include?('AnalysisComponentList')
        visited = visited + ['AnalysisComponentList']
        [
          Stubs::AnalysisComponent.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AnalysisSecurityGroupRule
    class AnalysisSecurityGroupRule

      def self.default(visited=[])
        return nil if visited.include?('AnalysisSecurityGroupRule')
        visited = visited + ['AnalysisSecurityGroupRule']
        {
          cidr: 'cidr',
          direction: 'direction',
          security_group_id: 'security_group_id',
          port_range: Stubs::PortRange.default(visited),
          prefix_list_id: 'prefix_list_id',
          protocol: 'protocol',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for AnalysisRouteTableRoute
    class AnalysisRouteTableRoute

      def self.default(visited=[])
        return nil if visited.include?('AnalysisRouteTableRoute')
        visited = visited + ['AnalysisRouteTableRoute']
        {
          destination_cidr: 'destination_cidr',
          destination_prefix_list_id: 'destination_prefix_list_id',
          egress_only_internet_gateway_id: 'egress_only_internet_gateway_id',
          gateway_id: 'gateway_id',
          instance_id: 'instance_id',
          nat_gateway_id: 'nat_gateway_id',
          network_interface_id: 'network_interface_id',
          origin: 'origin',
          transit_gateway_id: 'transit_gateway_id',
          vpc_peering_connection_id: 'vpc_peering_connection_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # List Stubber for PortRangeList
    class PortRangeList
      def self.default(visited=[])
        return nil if visited.include?('PortRangeList')
        visited = visited + ['PortRangeList']
        [
          Stubs::PortRange.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AnalysisLoadBalancerTarget
    class AnalysisLoadBalancerTarget

      def self.default(visited=[])
        return nil if visited.include?('AnalysisLoadBalancerTarget')
        visited = visited + ['AnalysisLoadBalancerTarget']
        {
          address: 'address',
          availability_zone: 'availability_zone',
          instance: Stubs::AnalysisComponent.default(visited),
          port: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for AnalysisLoadBalancerListener
    class AnalysisLoadBalancerListener

      def self.default(visited=[])
        return nil if visited.include?('AnalysisLoadBalancerListener')
        visited = visited + ['AnalysisLoadBalancerListener']
        {
          load_balancer_port: 1,
          instance_port: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for IpAddressList
    class IpAddressList
      def self.default(visited=[])
        return nil if visited.include?('IpAddressList')
        visited = visited + ['IpAddressList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AnalysisAclRule
    class AnalysisAclRule

      def self.default(visited=[])
        return nil if visited.include?('AnalysisAclRule')
        visited = visited + ['AnalysisAclRule']
        {
          cidr: 'cidr',
          egress: false,
          port_range: Stubs::PortRange.default(visited),
          protocol: 'protocol',
          rule_action: 'rule_action',
          rule_number: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for PathComponentList
    class PathComponentList
      def self.default(visited=[])
        return nil if visited.include?('PathComponentList')
        visited = visited + ['PathComponentList']
        [
          Stubs::PathComponent.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for PathComponent
    class PathComponent

      def self.default(visited=[])
        return nil if visited.include?('PathComponent')
        visited = visited + ['PathComponent']
        {
          sequence_number: 1,
          acl_rule: Stubs::AnalysisAclRule.default(visited),
          attached_to: Stubs::AnalysisComponent.default(visited),
          component: Stubs::AnalysisComponent.default(visited),
          destination_vpc: Stubs::AnalysisComponent.default(visited),
          outbound_header: Stubs::AnalysisPacketHeader.default(visited),
          inbound_header: Stubs::AnalysisPacketHeader.default(visited),
          route_table_route: Stubs::AnalysisRouteTableRoute.default(visited),
          security_group_rule: Stubs::AnalysisSecurityGroupRule.default(visited),
          source_vpc: Stubs::AnalysisComponent.default(visited),
          subnet: Stubs::AnalysisComponent.default(visited),
          vpc: Stubs::AnalysisComponent.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for AnalysisPacketHeader
    class AnalysisPacketHeader

      def self.default(visited=[])
        return nil if visited.include?('AnalysisPacketHeader')
        visited = visited + ['AnalysisPacketHeader']
        {
          destination_addresses: Stubs::IpAddressList.default(visited),
          destination_port_ranges: Stubs::PortRangeList.default(visited),
          protocol: 'protocol',
          source_addresses: Stubs::IpAddressList.default(visited),
          source_port_ranges: Stubs::PortRangeList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ArnList
    class ArnList
      def self.default(visited=[])
        return nil if visited.include?('ArnList')
        visited = visited + ['ArnList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeNetworkInsightsPaths
    class DescribeNetworkInsightsPaths

      def self.default(visited=[])
        {
          network_insights_paths: Stubs::NetworkInsightsPathList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for NetworkInsightsPathList
    class NetworkInsightsPathList
      def self.default(visited=[])
        return nil if visited.include?('NetworkInsightsPathList')
        visited = visited + ['NetworkInsightsPathList']
        [
          Stubs::NetworkInsightsPath.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeNetworkInterfaceAttribute
    class DescribeNetworkInterfaceAttribute

      def self.default(visited=[])
        {
          attachment: Stubs::NetworkInterfaceAttachment.default(visited),
          description: Stubs::AttributeValue.default(visited),
          groups: Stubs::GroupIdentifierList.default(visited),
          network_interface_id: 'network_interface_id',
          source_dest_check: Stubs::AttributeBooleanValue.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DescribeNetworkInterfacePermissions
    class DescribeNetworkInterfacePermissions

      def self.default(visited=[])
        {
          network_interface_permissions: Stubs::NetworkInterfacePermissionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for NetworkInterfacePermissionList
    class NetworkInterfacePermissionList
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfacePermissionList')
        visited = visited + ['NetworkInterfacePermissionList']
        [
          Stubs::NetworkInterfacePermission.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeNetworkInterfaces
    class DescribeNetworkInterfaces

      def self.default(visited=[])
        {
          network_interfaces: Stubs::NetworkInterfaceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for NetworkInterfaceList
    class NetworkInterfaceList
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfaceList')
        visited = visited + ['NetworkInterfaceList']
        [
          Stubs::NetworkInterface.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribePlacementGroups
    class DescribePlacementGroups

      def self.default(visited=[])
        {
          placement_groups: Stubs::PlacementGroupList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for PlacementGroupList
    class PlacementGroupList
      def self.default(visited=[])
        return nil if visited.include?('PlacementGroupList')
        visited = visited + ['PlacementGroupList']
        [
          Stubs::PlacementGroup.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribePrefixLists
    class DescribePrefixLists

      def self.default(visited=[])
        {
          next_token: 'next_token',
          prefix_lists: Stubs::PrefixListSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for PrefixListSet
    class PrefixListSet
      def self.default(visited=[])
        return nil if visited.include?('PrefixListSet')
        visited = visited + ['PrefixListSet']
        [
          Stubs::PrefixList.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for PrefixList
    class PrefixList

      def self.default(visited=[])
        return nil if visited.include?('PrefixList')
        visited = visited + ['PrefixList']
        {
          cidrs: Stubs::ValueStringList.default(visited),
          prefix_list_id: 'prefix_list_id',
          prefix_list_name: 'prefix_list_name',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribePrincipalIdFormat
    class DescribePrincipalIdFormat

      def self.default(visited=[])
        {
          principals: Stubs::PrincipalIdFormatList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for PrincipalIdFormatList
    class PrincipalIdFormatList
      def self.default(visited=[])
        return nil if visited.include?('PrincipalIdFormatList')
        visited = visited + ['PrincipalIdFormatList']
        [
          Stubs::PrincipalIdFormat.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for PrincipalIdFormat
    class PrincipalIdFormat

      def self.default(visited=[])
        return nil if visited.include?('PrincipalIdFormat')
        visited = visited + ['PrincipalIdFormat']
        {
          arn: 'arn',
          statuses: Stubs::IdFormatList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribePublicIpv4Pools
    class DescribePublicIpv4Pools

      def self.default(visited=[])
        {
          public_ipv4_pools: Stubs::PublicIpv4PoolSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for PublicIpv4PoolSet
    class PublicIpv4PoolSet
      def self.default(visited=[])
        return nil if visited.include?('PublicIpv4PoolSet')
        visited = visited + ['PublicIpv4PoolSet']
        [
          Stubs::PublicIpv4Pool.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for PublicIpv4Pool
    class PublicIpv4Pool

      def self.default(visited=[])
        return nil if visited.include?('PublicIpv4Pool')
        visited = visited + ['PublicIpv4Pool']
        {
          pool_id: 'pool_id',
          description: 'description',
          pool_address_ranges: Stubs::PublicIpv4PoolRangeSet.default(visited),
          total_address_count: 1,
          total_available_address_count: 1,
          network_border_group: 'network_border_group',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for PublicIpv4PoolRangeSet
    class PublicIpv4PoolRangeSet
      def self.default(visited=[])
        return nil if visited.include?('PublicIpv4PoolRangeSet')
        visited = visited + ['PublicIpv4PoolRangeSet']
        [
          Stubs::PublicIpv4PoolRange.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for PublicIpv4PoolRange
    class PublicIpv4PoolRange

      def self.default(visited=[])
        return nil if visited.include?('PublicIpv4PoolRange')
        visited = visited + ['PublicIpv4PoolRange']
        {
          first_address: 'first_address',
          last_address: 'last_address',
          address_count: 1,
          available_address_count: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeRegions
    class DescribeRegions

      def self.default(visited=[])
        {
          regions: Stubs::RegionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for RegionList
    class RegionList
      def self.default(visited=[])
        return nil if visited.include?('RegionList')
        visited = visited + ['RegionList']
        [
          Stubs::Region.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Region
    class Region

      def self.default(visited=[])
        return nil if visited.include?('Region')
        visited = visited + ['Region']
        {
          endpoint: 'endpoint',
          region_name: 'region_name',
          opt_in_status: 'opt_in_status',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeReplaceRootVolumeTasks
    class DescribeReplaceRootVolumeTasks

      def self.default(visited=[])
        {
          replace_root_volume_tasks: Stubs::ReplaceRootVolumeTasks.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ReplaceRootVolumeTasks
    class ReplaceRootVolumeTasks
      def self.default(visited=[])
        return nil if visited.include?('ReplaceRootVolumeTasks')
        visited = visited + ['ReplaceRootVolumeTasks']
        [
          Stubs::ReplaceRootVolumeTask.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeReservedInstances
    class DescribeReservedInstances

      def self.default(visited=[])
        {
          reserved_instances: Stubs::ReservedInstancesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ReservedInstancesList
    class ReservedInstancesList
      def self.default(visited=[])
        return nil if visited.include?('ReservedInstancesList')
        visited = visited + ['ReservedInstancesList']
        [
          Stubs::ReservedInstances.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ReservedInstances
    class ReservedInstances

      def self.default(visited=[])
        return nil if visited.include?('ReservedInstances')
        visited = visited + ['ReservedInstances']
        {
          availability_zone: 'availability_zone',
          duration: 1,
          end: Time.now,
          fixed_price: 1.0,
          instance_count: 1,
          instance_type: 'instance_type',
          product_description: 'product_description',
          reserved_instances_id: 'reserved_instances_id',
          start: Time.now,
          state: 'state',
          usage_price: 1.0,
          currency_code: 'currency_code',
          instance_tenancy: 'instance_tenancy',
          offering_class: 'offering_class',
          offering_type: 'offering_type',
          recurring_charges: Stubs::RecurringChargesList.default(visited),
          scope: 'scope',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for RecurringChargesList
    class RecurringChargesList
      def self.default(visited=[])
        return nil if visited.include?('RecurringChargesList')
        visited = visited + ['RecurringChargesList']
        [
          Stubs::RecurringCharge.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for RecurringCharge
    class RecurringCharge

      def self.default(visited=[])
        return nil if visited.include?('RecurringCharge')
        visited = visited + ['RecurringCharge']
        {
          amount: 1.0,
          frequency: 'frequency',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeReservedInstancesListings
    class DescribeReservedInstancesListings

      def self.default(visited=[])
        {
          reserved_instances_listings: Stubs::ReservedInstancesListingList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DescribeReservedInstancesModifications
    class DescribeReservedInstancesModifications

      def self.default(visited=[])
        {
          next_token: 'next_token',
          reserved_instances_modifications: Stubs::ReservedInstancesModificationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ReservedInstancesModificationList
    class ReservedInstancesModificationList
      def self.default(visited=[])
        return nil if visited.include?('ReservedInstancesModificationList')
        visited = visited + ['ReservedInstancesModificationList']
        [
          Stubs::ReservedInstancesModification.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ReservedInstancesModification
    class ReservedInstancesModification

      def self.default(visited=[])
        return nil if visited.include?('ReservedInstancesModification')
        visited = visited + ['ReservedInstancesModification']
        {
          client_token: 'client_token',
          create_date: Time.now,
          effective_date: Time.now,
          modification_results: Stubs::ReservedInstancesModificationResultList.default(visited),
          reserved_instances_ids: Stubs::ReservedIntancesIds.default(visited),
          reserved_instances_modification_id: 'reserved_instances_modification_id',
          status: 'status',
          status_message: 'status_message',
          update_date: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ReservedIntancesIds
    class ReservedIntancesIds
      def self.default(visited=[])
        return nil if visited.include?('ReservedIntancesIds')
        visited = visited + ['ReservedIntancesIds']
        [
          Stubs::ReservedInstancesId.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ReservedInstancesId
    class ReservedInstancesId

      def self.default(visited=[])
        return nil if visited.include?('ReservedInstancesId')
        visited = visited + ['ReservedInstancesId']
        {
          reserved_instances_id: 'reserved_instances_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ReservedInstancesModificationResultList
    class ReservedInstancesModificationResultList
      def self.default(visited=[])
        return nil if visited.include?('ReservedInstancesModificationResultList')
        visited = visited + ['ReservedInstancesModificationResultList']
        [
          Stubs::ReservedInstancesModificationResult.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ReservedInstancesModificationResult
    class ReservedInstancesModificationResult

      def self.default(visited=[])
        return nil if visited.include?('ReservedInstancesModificationResult')
        visited = visited + ['ReservedInstancesModificationResult']
        {
          reserved_instances_id: 'reserved_instances_id',
          target_configuration: Stubs::ReservedInstancesConfiguration.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ReservedInstancesConfiguration
    class ReservedInstancesConfiguration

      def self.default(visited=[])
        return nil if visited.include?('ReservedInstancesConfiguration')
        visited = visited + ['ReservedInstancesConfiguration']
        {
          availability_zone: 'availability_zone',
          instance_count: 1,
          instance_type: 'instance_type',
          platform: 'platform',
          scope: 'scope',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeReservedInstancesOfferings
    class DescribeReservedInstancesOfferings

      def self.default(visited=[])
        {
          reserved_instances_offerings: Stubs::ReservedInstancesOfferingList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ReservedInstancesOfferingList
    class ReservedInstancesOfferingList
      def self.default(visited=[])
        return nil if visited.include?('ReservedInstancesOfferingList')
        visited = visited + ['ReservedInstancesOfferingList']
        [
          Stubs::ReservedInstancesOffering.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ReservedInstancesOffering
    class ReservedInstancesOffering

      def self.default(visited=[])
        return nil if visited.include?('ReservedInstancesOffering')
        visited = visited + ['ReservedInstancesOffering']
        {
          availability_zone: 'availability_zone',
          duration: 1,
          fixed_price: 1.0,
          instance_type: 'instance_type',
          product_description: 'product_description',
          reserved_instances_offering_id: 'reserved_instances_offering_id',
          usage_price: 1.0,
          currency_code: 'currency_code',
          instance_tenancy: 'instance_tenancy',
          marketplace: false,
          offering_class: 'offering_class',
          offering_type: 'offering_type',
          pricing_details: Stubs::PricingDetailsList.default(visited),
          recurring_charges: Stubs::RecurringChargesList.default(visited),
          scope: 'scope',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for PricingDetailsList
    class PricingDetailsList
      def self.default(visited=[])
        return nil if visited.include?('PricingDetailsList')
        visited = visited + ['PricingDetailsList']
        [
          Stubs::PricingDetail.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for PricingDetail
    class PricingDetail

      def self.default(visited=[])
        return nil if visited.include?('PricingDetail')
        visited = visited + ['PricingDetail']
        {
          count: 1,
          price: 1.0,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeRouteTables
    class DescribeRouteTables

      def self.default(visited=[])
        {
          route_tables: Stubs::RouteTableList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for RouteTableList
    class RouteTableList
      def self.default(visited=[])
        return nil if visited.include?('RouteTableList')
        visited = visited + ['RouteTableList']
        [
          Stubs::RouteTable.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeScheduledInstanceAvailability
    class DescribeScheduledInstanceAvailability

      def self.default(visited=[])
        {
          next_token: 'next_token',
          scheduled_instance_availability_set: Stubs::ScheduledInstanceAvailabilitySet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ScheduledInstanceAvailabilitySet
    class ScheduledInstanceAvailabilitySet
      def self.default(visited=[])
        return nil if visited.include?('ScheduledInstanceAvailabilitySet')
        visited = visited + ['ScheduledInstanceAvailabilitySet']
        [
          Stubs::ScheduledInstanceAvailability.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ScheduledInstanceAvailability
    class ScheduledInstanceAvailability

      def self.default(visited=[])
        return nil if visited.include?('ScheduledInstanceAvailability')
        visited = visited + ['ScheduledInstanceAvailability']
        {
          availability_zone: 'availability_zone',
          available_instance_count: 1,
          first_slot_start_time: Time.now,
          hourly_price: 'hourly_price',
          instance_type: 'instance_type',
          max_term_duration_in_days: 1,
          min_term_duration_in_days: 1,
          network_platform: 'network_platform',
          platform: 'platform',
          purchase_token: 'purchase_token',
          recurrence: Stubs::ScheduledInstanceRecurrence.default(visited),
          slot_duration_in_hours: 1,
          total_scheduled_instance_hours: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ScheduledInstanceRecurrence
    class ScheduledInstanceRecurrence

      def self.default(visited=[])
        return nil if visited.include?('ScheduledInstanceRecurrence')
        visited = visited + ['ScheduledInstanceRecurrence']
        {
          frequency: 'frequency',
          interval: 1,
          occurrence_day_set: Stubs::OccurrenceDaySet.default(visited),
          occurrence_relative_to_end: false,
          occurrence_unit: 'occurrence_unit',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for OccurrenceDaySet
    class OccurrenceDaySet
      def self.default(visited=[])
        return nil if visited.include?('OccurrenceDaySet')
        visited = visited + ['OccurrenceDaySet']
        [
          1
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeScheduledInstances
    class DescribeScheduledInstances

      def self.default(visited=[])
        {
          next_token: 'next_token',
          scheduled_instance_set: Stubs::ScheduledInstanceSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ScheduledInstanceSet
    class ScheduledInstanceSet
      def self.default(visited=[])
        return nil if visited.include?('ScheduledInstanceSet')
        visited = visited + ['ScheduledInstanceSet']
        [
          Stubs::ScheduledInstance.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ScheduledInstance
    class ScheduledInstance

      def self.default(visited=[])
        return nil if visited.include?('ScheduledInstance')
        visited = visited + ['ScheduledInstance']
        {
          availability_zone: 'availability_zone',
          create_date: Time.now,
          hourly_price: 'hourly_price',
          instance_count: 1,
          instance_type: 'instance_type',
          network_platform: 'network_platform',
          next_slot_start_time: Time.now,
          platform: 'platform',
          previous_slot_end_time: Time.now,
          recurrence: Stubs::ScheduledInstanceRecurrence.default(visited),
          scheduled_instance_id: 'scheduled_instance_id',
          slot_duration_in_hours: 1,
          term_end_date: Time.now,
          term_start_date: Time.now,
          total_scheduled_instance_hours: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeSecurityGroupReferences
    class DescribeSecurityGroupReferences

      def self.default(visited=[])
        {
          security_group_reference_set: Stubs::SecurityGroupReferences.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for SecurityGroupReferences
    class SecurityGroupReferences
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupReferences')
        visited = visited + ['SecurityGroupReferences']
        [
          Stubs::SecurityGroupReference.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for SecurityGroupReference
    class SecurityGroupReference

      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupReference')
        visited = visited + ['SecurityGroupReference']
        {
          group_id: 'group_id',
          referencing_vpc_id: 'referencing_vpc_id',
          vpc_peering_connection_id: 'vpc_peering_connection_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeSecurityGroupRules
    class DescribeSecurityGroupRules

      def self.default(visited=[])
        {
          security_group_rules: Stubs::SecurityGroupRuleList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DescribeSecurityGroups
    class DescribeSecurityGroups

      def self.default(visited=[])
        {
          security_groups: Stubs::SecurityGroupList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for SecurityGroupList
    class SecurityGroupList
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupList')
        visited = visited + ['SecurityGroupList']
        [
          Stubs::SecurityGroup.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for SecurityGroup
    class SecurityGroup

      def self.default(visited=[])
        return nil if visited.include?('SecurityGroup')
        visited = visited + ['SecurityGroup']
        {
          description: 'description',
          group_name: 'group_name',
          ip_permissions: Stubs::IpPermissionList.default(visited),
          owner_id: 'owner_id',
          group_id: 'group_id',
          ip_permissions_egress: Stubs::IpPermissionList.default(visited),
          tags: Stubs::TagList.default(visited),
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for IpPermissionList
    class IpPermissionList
      def self.default(visited=[])
        return nil if visited.include?('IpPermissionList')
        visited = visited + ['IpPermissionList']
        [
          Stubs::IpPermission.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for IpPermission
    class IpPermission

      def self.default(visited=[])
        return nil if visited.include?('IpPermission')
        visited = visited + ['IpPermission']
        {
          from_port: 1,
          ip_protocol: 'ip_protocol',
          ip_ranges: Stubs::IpRangeList.default(visited),
          ipv6_ranges: Stubs::Ipv6RangeList.default(visited),
          prefix_list_ids: Stubs::PrefixListIdList.default(visited),
          to_port: 1,
          user_id_group_pairs: Stubs::UserIdGroupPairList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for UserIdGroupPairList
    class UserIdGroupPairList
      def self.default(visited=[])
        return nil if visited.include?('UserIdGroupPairList')
        visited = visited + ['UserIdGroupPairList']
        [
          Stubs::UserIdGroupPair.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for UserIdGroupPair
    class UserIdGroupPair

      def self.default(visited=[])
        return nil if visited.include?('UserIdGroupPair')
        visited = visited + ['UserIdGroupPair']
        {
          description: 'description',
          group_id: 'group_id',
          group_name: 'group_name',
          peering_status: 'peering_status',
          user_id: 'user_id',
          vpc_id: 'vpc_id',
          vpc_peering_connection_id: 'vpc_peering_connection_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for PrefixListIdList
    class PrefixListIdList
      def self.default(visited=[])
        return nil if visited.include?('PrefixListIdList')
        visited = visited + ['PrefixListIdList']
        [
          Stubs::PrefixListId.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for PrefixListId
    class PrefixListId

      def self.default(visited=[])
        return nil if visited.include?('PrefixListId')
        visited = visited + ['PrefixListId']
        {
          description: 'description',
          prefix_list_id: 'prefix_list_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for Ipv6RangeList
    class Ipv6RangeList
      def self.default(visited=[])
        return nil if visited.include?('Ipv6RangeList')
        visited = visited + ['Ipv6RangeList']
        [
          Stubs::Ipv6Range.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Ipv6Range
    class Ipv6Range

      def self.default(visited=[])
        return nil if visited.include?('Ipv6Range')
        visited = visited + ['Ipv6Range']
        {
          cidr_ipv6: 'cidr_ipv6',
          description: 'description',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for IpRangeList
    class IpRangeList
      def self.default(visited=[])
        return nil if visited.include?('IpRangeList')
        visited = visited + ['IpRangeList']
        [
          Stubs::IpRange.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for IpRange
    class IpRange

      def self.default(visited=[])
        return nil if visited.include?('IpRange')
        visited = visited + ['IpRange']
        {
          cidr_ip: 'cidr_ip',
          description: 'description',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeSnapshotAttribute
    class DescribeSnapshotAttribute

      def self.default(visited=[])
        {
          create_volume_permissions: Stubs::CreateVolumePermissionList.default(visited),
          product_codes: Stubs::ProductCodeList.default(visited),
          snapshot_id: 'snapshot_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for CreateVolumePermissionList
    class CreateVolumePermissionList
      def self.default(visited=[])
        return nil if visited.include?('CreateVolumePermissionList')
        visited = visited + ['CreateVolumePermissionList']
        [
          Stubs::CreateVolumePermission.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for CreateVolumePermission
    class CreateVolumePermission

      def self.default(visited=[])
        return nil if visited.include?('CreateVolumePermission')
        visited = visited + ['CreateVolumePermission']
        {
          group: 'group',
          user_id: 'user_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeSnapshotTierStatus
    class DescribeSnapshotTierStatus

      def self.default(visited=[])
        {
          snapshot_tier_statuses: Stubs::SnapshotTierStatusSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for snapshotTierStatusSet
    class SnapshotTierStatusSet
      def self.default(visited=[])
        return nil if visited.include?('SnapshotTierStatusSet')
        visited = visited + ['SnapshotTierStatusSet']
        [
          Stubs::SnapshotTierStatus.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for SnapshotTierStatus
    class SnapshotTierStatus

      def self.default(visited=[])
        return nil if visited.include?('SnapshotTierStatus')
        visited = visited + ['SnapshotTierStatus']
        {
          snapshot_id: 'snapshot_id',
          volume_id: 'volume_id',
          status: 'status',
          owner_id: 'owner_id',
          tags: Stubs::TagList.default(visited),
          storage_tier: 'storage_tier',
          last_tiering_start_time: Time.now,
          last_tiering_progress: 1,
          last_tiering_operation_status: 'last_tiering_operation_status',
          last_tiering_operation_status_detail: 'last_tiering_operation_status_detail',
          archival_complete_time: Time.now,
          restore_expiry_time: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeSnapshots
    class DescribeSnapshots

      def self.default(visited=[])
        {
          snapshots: Stubs::SnapshotList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for SnapshotList
    class SnapshotList
      def self.default(visited=[])
        return nil if visited.include?('SnapshotList')
        visited = visited + ['SnapshotList']
        [
          Stubs::Snapshot.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Snapshot
    class Snapshot

      def self.default(visited=[])
        return nil if visited.include?('Snapshot')
        visited = visited + ['Snapshot']
        {
          data_encryption_key_id: 'data_encryption_key_id',
          description: 'description',
          encrypted: false,
          kms_key_id: 'kms_key_id',
          owner_id: 'owner_id',
          progress: 'progress',
          snapshot_id: 'snapshot_id',
          start_time: Time.now,
          state: 'state',
          state_message: 'state_message',
          volume_id: 'volume_id',
          volume_size: 1,
          owner_alias: 'owner_alias',
          outpost_arn: 'outpost_arn',
          tags: Stubs::TagList.default(visited),
          storage_tier: 'storage_tier',
          restore_expiry_time: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeSpotDatafeedSubscription
    class DescribeSpotDatafeedSubscription

      def self.default(visited=[])
        {
          spot_datafeed_subscription: Stubs::SpotDatafeedSubscription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DescribeSpotFleetInstances
    class DescribeSpotFleetInstances

      def self.default(visited=[])
        {
          active_instances: Stubs::ActiveInstanceSet.default(visited),
          next_token: 'next_token',
          spot_fleet_request_id: 'spot_fleet_request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DescribeSpotFleetRequestHistory
    class DescribeSpotFleetRequestHistory

      def self.default(visited=[])
        {
          history_records: Stubs::HistoryRecords.default(visited),
          last_evaluated_time: Time.now,
          next_token: 'next_token',
          spot_fleet_request_id: 'spot_fleet_request_id',
          start_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for HistoryRecords
    class HistoryRecords
      def self.default(visited=[])
        return nil if visited.include?('HistoryRecords')
        visited = visited + ['HistoryRecords']
        [
          Stubs::HistoryRecord.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for HistoryRecord
    class HistoryRecord

      def self.default(visited=[])
        return nil if visited.include?('HistoryRecord')
        visited = visited + ['HistoryRecord']
        {
          event_information: Stubs::EventInformation.default(visited),
          event_type: 'event_type',
          timestamp: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeSpotFleetRequests
    class DescribeSpotFleetRequests

      def self.default(visited=[])
        {
          next_token: 'next_token',
          spot_fleet_request_configs: Stubs::SpotFleetRequestConfigSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for SpotFleetRequestConfigSet
    class SpotFleetRequestConfigSet
      def self.default(visited=[])
        return nil if visited.include?('SpotFleetRequestConfigSet')
        visited = visited + ['SpotFleetRequestConfigSet']
        [
          Stubs::SpotFleetRequestConfig.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for SpotFleetRequestConfig
    class SpotFleetRequestConfig

      def self.default(visited=[])
        return nil if visited.include?('SpotFleetRequestConfig')
        visited = visited + ['SpotFleetRequestConfig']
        {
          activity_status: 'activity_status',
          create_time: Time.now,
          spot_fleet_request_config: Stubs::SpotFleetRequestConfigData.default(visited),
          spot_fleet_request_id: 'spot_fleet_request_id',
          spot_fleet_request_state: 'spot_fleet_request_state',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for SpotFleetRequestConfigData
    class SpotFleetRequestConfigData

      def self.default(visited=[])
        return nil if visited.include?('SpotFleetRequestConfigData')
        visited = visited + ['SpotFleetRequestConfigData']
        {
          allocation_strategy: 'allocation_strategy',
          on_demand_allocation_strategy: 'on_demand_allocation_strategy',
          spot_maintenance_strategies: Stubs::SpotMaintenanceStrategies.default(visited),
          client_token: 'client_token',
          excess_capacity_termination_policy: 'excess_capacity_termination_policy',
          fulfilled_capacity: 1.0,
          on_demand_fulfilled_capacity: 1.0,
          iam_fleet_role: 'iam_fleet_role',
          launch_specifications: Stubs::LaunchSpecsList.default(visited),
          launch_template_configs: Stubs::LaunchTemplateConfigList.default(visited),
          spot_price: 'spot_price',
          target_capacity: 1,
          on_demand_target_capacity: 1,
          on_demand_max_total_price: 'on_demand_max_total_price',
          spot_max_total_price: 'spot_max_total_price',
          terminate_instances_with_expiration: false,
          type: 'type',
          valid_from: Time.now,
          valid_until: Time.now,
          replace_unhealthy_instances: false,
          instance_interruption_behavior: 'instance_interruption_behavior',
          load_balancers_config: Stubs::LoadBalancersConfig.default(visited),
          instance_pools_to_use_count: 1,
          context: 'context',
          target_capacity_unit_type: 'target_capacity_unit_type',
          tag_specifications: Stubs::TagSpecificationList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for TagSpecificationList
    class TagSpecificationList
      def self.default(visited=[])
        return nil if visited.include?('TagSpecificationList')
        visited = visited + ['TagSpecificationList']
        [
          Stubs::TagSpecification.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for TagSpecification
    class TagSpecification

      def self.default(visited=[])
        return nil if visited.include?('TagSpecification')
        visited = visited + ['TagSpecification']
        {
          resource_type: 'resource_type',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for LoadBalancersConfig
    class LoadBalancersConfig

      def self.default(visited=[])
        return nil if visited.include?('LoadBalancersConfig')
        visited = visited + ['LoadBalancersConfig']
        {
          classic_load_balancers_config: Stubs::ClassicLoadBalancersConfig.default(visited),
          target_groups_config: Stubs::TargetGroupsConfig.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for TargetGroupsConfig
    class TargetGroupsConfig

      def self.default(visited=[])
        return nil if visited.include?('TargetGroupsConfig')
        visited = visited + ['TargetGroupsConfig']
        {
          target_groups: Stubs::TargetGroups.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for TargetGroups
    class TargetGroups
      def self.default(visited=[])
        return nil if visited.include?('TargetGroups')
        visited = visited + ['TargetGroups']
        [
          Stubs::TargetGroup.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for TargetGroup
    class TargetGroup

      def self.default(visited=[])
        return nil if visited.include?('TargetGroup')
        visited = visited + ['TargetGroup']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ClassicLoadBalancersConfig
    class ClassicLoadBalancersConfig

      def self.default(visited=[])
        return nil if visited.include?('ClassicLoadBalancersConfig')
        visited = visited + ['ClassicLoadBalancersConfig']
        {
          classic_load_balancers: Stubs::ClassicLoadBalancers.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ClassicLoadBalancers
    class ClassicLoadBalancers
      def self.default(visited=[])
        return nil if visited.include?('ClassicLoadBalancers')
        visited = visited + ['ClassicLoadBalancers']
        [
          Stubs::ClassicLoadBalancer.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ClassicLoadBalancer
    class ClassicLoadBalancer

      def self.default(visited=[])
        return nil if visited.include?('ClassicLoadBalancer')
        visited = visited + ['ClassicLoadBalancer']
        {
          member_name: 'member_name',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for LaunchTemplateConfigList
    class LaunchTemplateConfigList
      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateConfigList')
        visited = visited + ['LaunchTemplateConfigList']
        [
          Stubs::LaunchTemplateConfig.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for LaunchTemplateConfig
    class LaunchTemplateConfig

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateConfig')
        visited = visited + ['LaunchTemplateConfig']
        {
          launch_template_specification: Stubs::FleetLaunchTemplateSpecification.default(visited),
          overrides: Stubs::LaunchTemplateOverridesList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for LaunchTemplateOverridesList
    class LaunchTemplateOverridesList
      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateOverridesList')
        visited = visited + ['LaunchTemplateOverridesList']
        [
          Stubs::LaunchTemplateOverrides.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for LaunchTemplateOverrides
    class LaunchTemplateOverrides

      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateOverrides')
        visited = visited + ['LaunchTemplateOverrides']
        {
          instance_type: 'instance_type',
          spot_price: 'spot_price',
          subnet_id: 'subnet_id',
          availability_zone: 'availability_zone',
          weighted_capacity: 1.0,
          priority: 1.0,
          instance_requirements: Stubs::InstanceRequirements.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for LaunchSpecsList
    class LaunchSpecsList
      def self.default(visited=[])
        return nil if visited.include?('LaunchSpecsList')
        visited = visited + ['LaunchSpecsList']
        [
          Stubs::SpotFleetLaunchSpecification.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for SpotFleetLaunchSpecification
    class SpotFleetLaunchSpecification

      def self.default(visited=[])
        return nil if visited.include?('SpotFleetLaunchSpecification')
        visited = visited + ['SpotFleetLaunchSpecification']
        {
          security_groups: Stubs::GroupIdentifierList.default(visited),
          addressing_type: 'addressing_type',
          block_device_mappings: Stubs::BlockDeviceMappingList.default(visited),
          ebs_optimized: false,
          iam_instance_profile: Stubs::IamInstanceProfileSpecification.default(visited),
          image_id: 'image_id',
          instance_type: 'instance_type',
          kernel_id: 'kernel_id',
          key_name: 'key_name',
          monitoring: Stubs::SpotFleetMonitoring.default(visited),
          network_interfaces: Stubs::InstanceNetworkInterfaceSpecificationList.default(visited),
          placement: Stubs::SpotPlacement.default(visited),
          ramdisk_id: 'ramdisk_id',
          spot_price: 'spot_price',
          subnet_id: 'subnet_id',
          user_data: 'user_data',
          weighted_capacity: 1.0,
          tag_specifications: Stubs::SpotFleetTagSpecificationList.default(visited),
          instance_requirements: Stubs::InstanceRequirements.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for SpotFleetTagSpecificationList
    class SpotFleetTagSpecificationList
      def self.default(visited=[])
        return nil if visited.include?('SpotFleetTagSpecificationList')
        visited = visited + ['SpotFleetTagSpecificationList']
        [
          Stubs::SpotFleetTagSpecification.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for SpotFleetTagSpecification
    class SpotFleetTagSpecification

      def self.default(visited=[])
        return nil if visited.include?('SpotFleetTagSpecification')
        visited = visited + ['SpotFleetTagSpecification']
        {
          resource_type: 'resource_type',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for SpotPlacement
    class SpotPlacement

      def self.default(visited=[])
        return nil if visited.include?('SpotPlacement')
        visited = visited + ['SpotPlacement']
        {
          availability_zone: 'availability_zone',
          group_name: 'group_name',
          tenancy: 'tenancy',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for InstanceNetworkInterfaceSpecificationList
    class InstanceNetworkInterfaceSpecificationList
      def self.default(visited=[])
        return nil if visited.include?('InstanceNetworkInterfaceSpecificationList')
        visited = visited + ['InstanceNetworkInterfaceSpecificationList']
        [
          Stubs::InstanceNetworkInterfaceSpecification.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstanceNetworkInterfaceSpecification
    class InstanceNetworkInterfaceSpecification

      def self.default(visited=[])
        return nil if visited.include?('InstanceNetworkInterfaceSpecification')
        visited = visited + ['InstanceNetworkInterfaceSpecification']
        {
          associate_public_ip_address: false,
          delete_on_termination: false,
          description: 'description',
          device_index: 1,
          groups: Stubs::SecurityGroupIdStringList.default(visited),
          ipv6_address_count: 1,
          ipv6_addresses: Stubs::InstanceIpv6AddressList.default(visited),
          network_interface_id: 'network_interface_id',
          private_ip_address: 'private_ip_address',
          private_ip_addresses: Stubs::PrivateIpAddressSpecificationList.default(visited),
          secondary_private_ip_address_count: 1,
          subnet_id: 'subnet_id',
          associate_carrier_ip_address: false,
          interface_type: 'interface_type',
          network_card_index: 1,
          ipv4_prefixes: Stubs::Ipv4PrefixList.default(visited),
          ipv4_prefix_count: 1,
          ipv6_prefixes: Stubs::Ipv6PrefixList.default(visited),
          ipv6_prefix_count: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for Ipv6PrefixList
    class Ipv6PrefixList
      def self.default(visited=[])
        return nil if visited.include?('Ipv6PrefixList')
        visited = visited + ['Ipv6PrefixList']
        [
          Stubs::Ipv6PrefixSpecificationRequest.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Ipv6PrefixSpecificationRequest
    class Ipv6PrefixSpecificationRequest

      def self.default(visited=[])
        return nil if visited.include?('Ipv6PrefixSpecificationRequest')
        visited = visited + ['Ipv6PrefixSpecificationRequest']
        {
          ipv6_prefix: 'ipv6_prefix',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for Ipv4PrefixList
    class Ipv4PrefixList
      def self.default(visited=[])
        return nil if visited.include?('Ipv4PrefixList')
        visited = visited + ['Ipv4PrefixList']
        [
          Stubs::Ipv4PrefixSpecificationRequest.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Ipv4PrefixSpecificationRequest
    class Ipv4PrefixSpecificationRequest

      def self.default(visited=[])
        return nil if visited.include?('Ipv4PrefixSpecificationRequest')
        visited = visited + ['Ipv4PrefixSpecificationRequest']
        {
          ipv4_prefix: 'ipv4_prefix',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for SecurityGroupIdStringList
    class SecurityGroupIdStringList
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIdStringList')
        visited = visited + ['SecurityGroupIdStringList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for SpotFleetMonitoring
    class SpotFleetMonitoring

      def self.default(visited=[])
        return nil if visited.include?('SpotFleetMonitoring')
        visited = visited + ['SpotFleetMonitoring']
        {
          enabled: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for IamInstanceProfileSpecification
    class IamInstanceProfileSpecification

      def self.default(visited=[])
        return nil if visited.include?('IamInstanceProfileSpecification')
        visited = visited + ['IamInstanceProfileSpecification']
        {
          arn: 'arn',
          member_name: 'member_name',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for SpotMaintenanceStrategies
    class SpotMaintenanceStrategies

      def self.default(visited=[])
        return nil if visited.include?('SpotMaintenanceStrategies')
        visited = visited + ['SpotMaintenanceStrategies']
        {
          capacity_rebalance: Stubs::SpotCapacityRebalance.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for SpotCapacityRebalance
    class SpotCapacityRebalance

      def self.default(visited=[])
        return nil if visited.include?('SpotCapacityRebalance')
        visited = visited + ['SpotCapacityRebalance']
        {
          replacement_strategy: 'replacement_strategy',
          termination_delay: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeSpotInstanceRequests
    class DescribeSpotInstanceRequests

      def self.default(visited=[])
        {
          spot_instance_requests: Stubs::SpotInstanceRequestList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for SpotInstanceRequestList
    class SpotInstanceRequestList
      def self.default(visited=[])
        return nil if visited.include?('SpotInstanceRequestList')
        visited = visited + ['SpotInstanceRequestList']
        [
          Stubs::SpotInstanceRequest.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for SpotInstanceRequest
    class SpotInstanceRequest

      def self.default(visited=[])
        return nil if visited.include?('SpotInstanceRequest')
        visited = visited + ['SpotInstanceRequest']
        {
          actual_block_hourly_price: 'actual_block_hourly_price',
          availability_zone_group: 'availability_zone_group',
          block_duration_minutes: 1,
          create_time: Time.now,
          fault: Stubs::SpotInstanceStateFault.default(visited),
          instance_id: 'instance_id',
          launch_group: 'launch_group',
          launch_specification: Stubs::LaunchSpecification.default(visited),
          launched_availability_zone: 'launched_availability_zone',
          product_description: 'product_description',
          spot_instance_request_id: 'spot_instance_request_id',
          spot_price: 'spot_price',
          state: 'state',
          status: Stubs::SpotInstanceStatus.default(visited),
          tags: Stubs::TagList.default(visited),
          type: 'type',
          valid_from: Time.now,
          valid_until: Time.now,
          instance_interruption_behavior: 'instance_interruption_behavior',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for SpotInstanceStatus
    class SpotInstanceStatus

      def self.default(visited=[])
        return nil if visited.include?('SpotInstanceStatus')
        visited = visited + ['SpotInstanceStatus']
        {
          code: 'code',
          message: 'message',
          update_time: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for LaunchSpecification
    class LaunchSpecification

      def self.default(visited=[])
        return nil if visited.include?('LaunchSpecification')
        visited = visited + ['LaunchSpecification']
        {
          user_data: 'user_data',
          security_groups: Stubs::GroupIdentifierList.default(visited),
          addressing_type: 'addressing_type',
          block_device_mappings: Stubs::BlockDeviceMappingList.default(visited),
          ebs_optimized: false,
          iam_instance_profile: Stubs::IamInstanceProfileSpecification.default(visited),
          image_id: 'image_id',
          instance_type: 'instance_type',
          kernel_id: 'kernel_id',
          key_name: 'key_name',
          network_interfaces: Stubs::InstanceNetworkInterfaceSpecificationList.default(visited),
          placement: Stubs::SpotPlacement.default(visited),
          ramdisk_id: 'ramdisk_id',
          subnet_id: 'subnet_id',
          monitoring: Stubs::RunInstancesMonitoringEnabled.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for RunInstancesMonitoringEnabled
    class RunInstancesMonitoringEnabled

      def self.default(visited=[])
        return nil if visited.include?('RunInstancesMonitoringEnabled')
        visited = visited + ['RunInstancesMonitoringEnabled']
        {
          enabled: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeSpotPriceHistory
    class DescribeSpotPriceHistory

      def self.default(visited=[])
        {
          next_token: 'next_token',
          spot_price_history: Stubs::SpotPriceHistoryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for SpotPriceHistoryList
    class SpotPriceHistoryList
      def self.default(visited=[])
        return nil if visited.include?('SpotPriceHistoryList')
        visited = visited + ['SpotPriceHistoryList']
        [
          Stubs::SpotPrice.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for SpotPrice
    class SpotPrice

      def self.default(visited=[])
        return nil if visited.include?('SpotPrice')
        visited = visited + ['SpotPrice']
        {
          availability_zone: 'availability_zone',
          instance_type: 'instance_type',
          product_description: 'product_description',
          spot_price: 'spot_price',
          timestamp: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeStaleSecurityGroups
    class DescribeStaleSecurityGroups

      def self.default(visited=[])
        {
          next_token: 'next_token',
          stale_security_group_set: Stubs::StaleSecurityGroupSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for StaleSecurityGroupSet
    class StaleSecurityGroupSet
      def self.default(visited=[])
        return nil if visited.include?('StaleSecurityGroupSet')
        visited = visited + ['StaleSecurityGroupSet']
        [
          Stubs::StaleSecurityGroup.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for StaleSecurityGroup
    class StaleSecurityGroup

      def self.default(visited=[])
        return nil if visited.include?('StaleSecurityGroup')
        visited = visited + ['StaleSecurityGroup']
        {
          description: 'description',
          group_id: 'group_id',
          group_name: 'group_name',
          stale_ip_permissions: Stubs::StaleIpPermissionSet.default(visited),
          stale_ip_permissions_egress: Stubs::StaleIpPermissionSet.default(visited),
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for StaleIpPermissionSet
    class StaleIpPermissionSet
      def self.default(visited=[])
        return nil if visited.include?('StaleIpPermissionSet')
        visited = visited + ['StaleIpPermissionSet']
        [
          Stubs::StaleIpPermission.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for StaleIpPermission
    class StaleIpPermission

      def self.default(visited=[])
        return nil if visited.include?('StaleIpPermission')
        visited = visited + ['StaleIpPermission']
        {
          from_port: 1,
          ip_protocol: 'ip_protocol',
          ip_ranges: Stubs::IpRanges.default(visited),
          prefix_list_ids: Stubs::PrefixListIdSet.default(visited),
          to_port: 1,
          user_id_group_pairs: Stubs::UserIdGroupPairSet.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for UserIdGroupPairSet
    class UserIdGroupPairSet
      def self.default(visited=[])
        return nil if visited.include?('UserIdGroupPairSet')
        visited = visited + ['UserIdGroupPairSet']
        [
          Stubs::UserIdGroupPair.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # List Stubber for PrefixListIdSet
    class PrefixListIdSet
      def self.default(visited=[])
        return nil if visited.include?('PrefixListIdSet')
        visited = visited + ['PrefixListIdSet']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # List Stubber for IpRanges
    class IpRanges
      def self.default(visited=[])
        return nil if visited.include?('IpRanges')
        visited = visited + ['IpRanges']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeStoreImageTasks
    class DescribeStoreImageTasks

      def self.default(visited=[])
        {
          store_image_task_results: Stubs::StoreImageTaskResultSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for StoreImageTaskResultSet
    class StoreImageTaskResultSet
      def self.default(visited=[])
        return nil if visited.include?('StoreImageTaskResultSet')
        visited = visited + ['StoreImageTaskResultSet']
        [
          Stubs::StoreImageTaskResult.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for StoreImageTaskResult
    class StoreImageTaskResult

      def self.default(visited=[])
        return nil if visited.include?('StoreImageTaskResult')
        visited = visited + ['StoreImageTaskResult']
        {
          ami_id: 'ami_id',
          task_start_time: Time.now,
          bucket: 'bucket',
          s3object_key: 's3object_key',
          progress_percentage: 1,
          store_task_state: 'store_task_state',
          store_task_failure_reason: 'store_task_failure_reason',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeSubnets
    class DescribeSubnets

      def self.default(visited=[])
        {
          subnets: Stubs::SubnetList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for SubnetList
    class SubnetList
      def self.default(visited=[])
        return nil if visited.include?('SubnetList')
        visited = visited + ['SubnetList']
        [
          Stubs::Subnet.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeTags
    class DescribeTags

      def self.default(visited=[])
        {
          next_token: 'next_token',
          tags: Stubs::TagDescriptionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TagDescriptionList
    class TagDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('TagDescriptionList')
        visited = visited + ['TagDescriptionList']
        [
          Stubs::TagDescription.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for TagDescription
    class TagDescription

      def self.default(visited=[])
        return nil if visited.include?('TagDescription')
        visited = visited + ['TagDescription']
        {
          key: 'key',
          resource_id: 'resource_id',
          resource_type: 'resource_type',
          value: 'value',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeTrafficMirrorFilters
    class DescribeTrafficMirrorFilters

      def self.default(visited=[])
        {
          traffic_mirror_filters: Stubs::TrafficMirrorFilterSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TrafficMirrorFilterSet
    class TrafficMirrorFilterSet
      def self.default(visited=[])
        return nil if visited.include?('TrafficMirrorFilterSet')
        visited = visited + ['TrafficMirrorFilterSet']
        [
          Stubs::TrafficMirrorFilter.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeTrafficMirrorSessions
    class DescribeTrafficMirrorSessions

      def self.default(visited=[])
        {
          traffic_mirror_sessions: Stubs::TrafficMirrorSessionSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TrafficMirrorSessionSet
    class TrafficMirrorSessionSet
      def self.default(visited=[])
        return nil if visited.include?('TrafficMirrorSessionSet')
        visited = visited + ['TrafficMirrorSessionSet']
        [
          Stubs::TrafficMirrorSession.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeTrafficMirrorTargets
    class DescribeTrafficMirrorTargets

      def self.default(visited=[])
        {
          traffic_mirror_targets: Stubs::TrafficMirrorTargetSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TrafficMirrorTargetSet
    class TrafficMirrorTargetSet
      def self.default(visited=[])
        return nil if visited.include?('TrafficMirrorTargetSet')
        visited = visited + ['TrafficMirrorTargetSet']
        [
          Stubs::TrafficMirrorTarget.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeTransitGatewayAttachments
    class DescribeTransitGatewayAttachments

      def self.default(visited=[])
        {
          transit_gateway_attachments: Stubs::TransitGatewayAttachmentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TransitGatewayAttachmentList
    class TransitGatewayAttachmentList
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayAttachmentList')
        visited = visited + ['TransitGatewayAttachmentList']
        [
          Stubs::TransitGatewayAttachment.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for TransitGatewayAttachment
    class TransitGatewayAttachment

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayAttachment')
        visited = visited + ['TransitGatewayAttachment']
        {
          transit_gateway_attachment_id: 'transit_gateway_attachment_id',
          transit_gateway_id: 'transit_gateway_id',
          transit_gateway_owner_id: 'transit_gateway_owner_id',
          resource_owner_id: 'resource_owner_id',
          resource_type: 'resource_type',
          resource_id: 'resource_id',
          state: 'state',
          association: Stubs::TransitGatewayAttachmentAssociation.default(visited),
          creation_time: Time.now,
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for TransitGatewayAttachmentAssociation
    class TransitGatewayAttachmentAssociation

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayAttachmentAssociation')
        visited = visited + ['TransitGatewayAttachmentAssociation']
        {
          transit_gateway_route_table_id: 'transit_gateway_route_table_id',
          state: 'state',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeTransitGatewayConnectPeers
    class DescribeTransitGatewayConnectPeers

      def self.default(visited=[])
        {
          transit_gateway_connect_peers: Stubs::TransitGatewayConnectPeerList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TransitGatewayConnectPeerList
    class TransitGatewayConnectPeerList
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayConnectPeerList')
        visited = visited + ['TransitGatewayConnectPeerList']
        [
          Stubs::TransitGatewayConnectPeer.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeTransitGatewayConnects
    class DescribeTransitGatewayConnects

      def self.default(visited=[])
        {
          transit_gateway_connects: Stubs::TransitGatewayConnectList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TransitGatewayConnectList
    class TransitGatewayConnectList
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayConnectList')
        visited = visited + ['TransitGatewayConnectList']
        [
          Stubs::TransitGatewayConnect.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeTransitGatewayMulticastDomains
    class DescribeTransitGatewayMulticastDomains

      def self.default(visited=[])
        {
          transit_gateway_multicast_domains: Stubs::TransitGatewayMulticastDomainList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TransitGatewayMulticastDomainList
    class TransitGatewayMulticastDomainList
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayMulticastDomainList')
        visited = visited + ['TransitGatewayMulticastDomainList']
        [
          Stubs::TransitGatewayMulticastDomain.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeTransitGatewayPeeringAttachments
    class DescribeTransitGatewayPeeringAttachments

      def self.default(visited=[])
        {
          transit_gateway_peering_attachments: Stubs::TransitGatewayPeeringAttachmentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TransitGatewayPeeringAttachmentList
    class TransitGatewayPeeringAttachmentList
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayPeeringAttachmentList')
        visited = visited + ['TransitGatewayPeeringAttachmentList']
        [
          Stubs::TransitGatewayPeeringAttachment.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeTransitGatewayRouteTables
    class DescribeTransitGatewayRouteTables

      def self.default(visited=[])
        {
          transit_gateway_route_tables: Stubs::TransitGatewayRouteTableList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TransitGatewayRouteTableList
    class TransitGatewayRouteTableList
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayRouteTableList')
        visited = visited + ['TransitGatewayRouteTableList']
        [
          Stubs::TransitGatewayRouteTable.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeTransitGatewayVpcAttachments
    class DescribeTransitGatewayVpcAttachments

      def self.default(visited=[])
        {
          transit_gateway_vpc_attachments: Stubs::TransitGatewayVpcAttachmentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TransitGatewayVpcAttachmentList
    class TransitGatewayVpcAttachmentList
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayVpcAttachmentList')
        visited = visited + ['TransitGatewayVpcAttachmentList']
        [
          Stubs::TransitGatewayVpcAttachment.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeTransitGateways
    class DescribeTransitGateways

      def self.default(visited=[])
        {
          transit_gateways: Stubs::TransitGatewayList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TransitGatewayList
    class TransitGatewayList
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayList')
        visited = visited + ['TransitGatewayList']
        [
          Stubs::TransitGateway.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeTrunkInterfaceAssociations
    class DescribeTrunkInterfaceAssociations

      def self.default(visited=[])
        {
          interface_associations: Stubs::TrunkInterfaceAssociationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TrunkInterfaceAssociationList
    class TrunkInterfaceAssociationList
      def self.default(visited=[])
        return nil if visited.include?('TrunkInterfaceAssociationList')
        visited = visited + ['TrunkInterfaceAssociationList']
        [
          Stubs::TrunkInterfaceAssociation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeVolumeAttribute
    class DescribeVolumeAttribute

      def self.default(visited=[])
        {
          auto_enable_io: Stubs::AttributeBooleanValue.default(visited),
          product_codes: Stubs::ProductCodeList.default(visited),
          volume_id: 'volume_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DescribeVolumeStatus
    class DescribeVolumeStatus

      def self.default(visited=[])
        {
          next_token: 'next_token',
          volume_statuses: Stubs::VolumeStatusList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for VolumeStatusList
    class VolumeStatusList
      def self.default(visited=[])
        return nil if visited.include?('VolumeStatusList')
        visited = visited + ['VolumeStatusList']
        [
          Stubs::VolumeStatusItem.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for VolumeStatusItem
    class VolumeStatusItem

      def self.default(visited=[])
        return nil if visited.include?('VolumeStatusItem')
        visited = visited + ['VolumeStatusItem']
        {
          actions: Stubs::VolumeStatusActionsList.default(visited),
          availability_zone: 'availability_zone',
          outpost_arn: 'outpost_arn',
          events: Stubs::VolumeStatusEventsList.default(visited),
          volume_id: 'volume_id',
          volume_status: Stubs::VolumeStatusInfo.default(visited),
          attachment_statuses: Stubs::VolumeStatusAttachmentStatusList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for VolumeStatusAttachmentStatusList
    class VolumeStatusAttachmentStatusList
      def self.default(visited=[])
        return nil if visited.include?('VolumeStatusAttachmentStatusList')
        visited = visited + ['VolumeStatusAttachmentStatusList']
        [
          Stubs::VolumeStatusAttachmentStatus.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for VolumeStatusAttachmentStatus
    class VolumeStatusAttachmentStatus

      def self.default(visited=[])
        return nil if visited.include?('VolumeStatusAttachmentStatus')
        visited = visited + ['VolumeStatusAttachmentStatus']
        {
          io_performance: 'io_performance',
          instance_id: 'instance_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for VolumeStatusInfo
    class VolumeStatusInfo

      def self.default(visited=[])
        return nil if visited.include?('VolumeStatusInfo')
        visited = visited + ['VolumeStatusInfo']
        {
          details: Stubs::VolumeStatusDetailsList.default(visited),
          status: 'status',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for VolumeStatusDetailsList
    class VolumeStatusDetailsList
      def self.default(visited=[])
        return nil if visited.include?('VolumeStatusDetailsList')
        visited = visited + ['VolumeStatusDetailsList']
        [
          Stubs::VolumeStatusDetails.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for VolumeStatusDetails
    class VolumeStatusDetails

      def self.default(visited=[])
        return nil if visited.include?('VolumeStatusDetails')
        visited = visited + ['VolumeStatusDetails']
        {
          member_name: 'member_name',
          status: 'status',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for VolumeStatusEventsList
    class VolumeStatusEventsList
      def self.default(visited=[])
        return nil if visited.include?('VolumeStatusEventsList')
        visited = visited + ['VolumeStatusEventsList']
        [
          Stubs::VolumeStatusEvent.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for VolumeStatusEvent
    class VolumeStatusEvent

      def self.default(visited=[])
        return nil if visited.include?('VolumeStatusEvent')
        visited = visited + ['VolumeStatusEvent']
        {
          description: 'description',
          event_id: 'event_id',
          event_type: 'event_type',
          not_after: Time.now,
          not_before: Time.now,
          instance_id: 'instance_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for VolumeStatusActionsList
    class VolumeStatusActionsList
      def self.default(visited=[])
        return nil if visited.include?('VolumeStatusActionsList')
        visited = visited + ['VolumeStatusActionsList']
        [
          Stubs::VolumeStatusAction.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for VolumeStatusAction
    class VolumeStatusAction

      def self.default(visited=[])
        return nil if visited.include?('VolumeStatusAction')
        visited = visited + ['VolumeStatusAction']
        {
          code: 'code',
          description: 'description',
          event_id: 'event_id',
          event_type: 'event_type',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeVolumes
    class DescribeVolumes

      def self.default(visited=[])
        {
          volumes: Stubs::VolumeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for VolumeList
    class VolumeList
      def self.default(visited=[])
        return nil if visited.include?('VolumeList')
        visited = visited + ['VolumeList']
        [
          Stubs::Volume.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Volume
    class Volume

      def self.default(visited=[])
        return nil if visited.include?('Volume')
        visited = visited + ['Volume']
        {
          attachments: Stubs::VolumeAttachmentList.default(visited),
          availability_zone: 'availability_zone',
          create_time: Time.now,
          encrypted: false,
          kms_key_id: 'kms_key_id',
          outpost_arn: 'outpost_arn',
          size: 1,
          snapshot_id: 'snapshot_id',
          state: 'state',
          volume_id: 'volume_id',
          iops: 1,
          tags: Stubs::TagList.default(visited),
          volume_type: 'volume_type',
          fast_restored: false,
          multi_attach_enabled: false,
          throughput: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeVolumesModifications
    class DescribeVolumesModifications

      def self.default(visited=[])
        {
          volumes_modifications: Stubs::VolumeModificationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for VolumeModificationList
    class VolumeModificationList
      def self.default(visited=[])
        return nil if visited.include?('VolumeModificationList')
        visited = visited + ['VolumeModificationList']
        [
          Stubs::VolumeModification.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for VolumeModification
    class VolumeModification

      def self.default(visited=[])
        return nil if visited.include?('VolumeModification')
        visited = visited + ['VolumeModification']
        {
          volume_id: 'volume_id',
          modification_state: 'modification_state',
          status_message: 'status_message',
          target_size: 1,
          target_iops: 1,
          target_volume_type: 'target_volume_type',
          target_throughput: 1,
          target_multi_attach_enabled: false,
          original_size: 1,
          original_iops: 1,
          original_volume_type: 'original_volume_type',
          original_throughput: 1,
          original_multi_attach_enabled: false,
          progress: 1,
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeVpcAttribute
    class DescribeVpcAttribute

      def self.default(visited=[])
        {
          vpc_id: 'vpc_id',
          enable_dns_hostnames: Stubs::AttributeBooleanValue.default(visited),
          enable_dns_support: Stubs::AttributeBooleanValue.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DescribeVpcClassicLink
    class DescribeVpcClassicLink

      def self.default(visited=[])
        {
          vpcs: Stubs::VpcClassicLinkList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for VpcClassicLinkList
    class VpcClassicLinkList
      def self.default(visited=[])
        return nil if visited.include?('VpcClassicLinkList')
        visited = visited + ['VpcClassicLinkList']
        [
          Stubs::VpcClassicLink.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for VpcClassicLink
    class VpcClassicLink

      def self.default(visited=[])
        return nil if visited.include?('VpcClassicLink')
        visited = visited + ['VpcClassicLink']
        {
          classic_link_enabled: false,
          tags: Stubs::TagList.default(visited),
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeVpcClassicLinkDnsSupport
    class DescribeVpcClassicLinkDnsSupport

      def self.default(visited=[])
        {
          next_token: 'next_token',
          vpcs: Stubs::ClassicLinkDnsSupportList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ClassicLinkDnsSupportList
    class ClassicLinkDnsSupportList
      def self.default(visited=[])
        return nil if visited.include?('ClassicLinkDnsSupportList')
        visited = visited + ['ClassicLinkDnsSupportList']
        [
          Stubs::ClassicLinkDnsSupport.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ClassicLinkDnsSupport
    class ClassicLinkDnsSupport

      def self.default(visited=[])
        return nil if visited.include?('ClassicLinkDnsSupport')
        visited = visited + ['ClassicLinkDnsSupport']
        {
          classic_link_dns_supported: false,
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeVpcEndpointConnectionNotifications
    class DescribeVpcEndpointConnectionNotifications

      def self.default(visited=[])
        {
          connection_notification_set: Stubs::ConnectionNotificationSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ConnectionNotificationSet
    class ConnectionNotificationSet
      def self.default(visited=[])
        return nil if visited.include?('ConnectionNotificationSet')
        visited = visited + ['ConnectionNotificationSet']
        [
          Stubs::ConnectionNotification.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeVpcEndpointConnections
    class DescribeVpcEndpointConnections

      def self.default(visited=[])
        {
          vpc_endpoint_connections: Stubs::VpcEndpointConnectionSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for VpcEndpointConnectionSet
    class VpcEndpointConnectionSet
      def self.default(visited=[])
        return nil if visited.include?('VpcEndpointConnectionSet')
        visited = visited + ['VpcEndpointConnectionSet']
        [
          Stubs::VpcEndpointConnection.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for VpcEndpointConnection
    class VpcEndpointConnection

      def self.default(visited=[])
        return nil if visited.include?('VpcEndpointConnection')
        visited = visited + ['VpcEndpointConnection']
        {
          service_id: 'service_id',
          vpc_endpoint_id: 'vpc_endpoint_id',
          vpc_endpoint_owner: 'vpc_endpoint_owner',
          vpc_endpoint_state: 'vpc_endpoint_state',
          creation_timestamp: Time.now,
          dns_entries: Stubs::DnsEntrySet.default(visited),
          network_load_balancer_arns: Stubs::ValueStringList.default(visited),
          gateway_load_balancer_arns: Stubs::ValueStringList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeVpcEndpointServiceConfigurations
    class DescribeVpcEndpointServiceConfigurations

      def self.default(visited=[])
        {
          service_configurations: Stubs::ServiceConfigurationSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ServiceConfigurationSet
    class ServiceConfigurationSet
      def self.default(visited=[])
        return nil if visited.include?('ServiceConfigurationSet')
        visited = visited + ['ServiceConfigurationSet']
        [
          Stubs::ServiceConfiguration.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeVpcEndpointServicePermissions
    class DescribeVpcEndpointServicePermissions

      def self.default(visited=[])
        {
          allowed_principals: Stubs::AllowedPrincipalSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for AllowedPrincipalSet
    class AllowedPrincipalSet
      def self.default(visited=[])
        return nil if visited.include?('AllowedPrincipalSet')
        visited = visited + ['AllowedPrincipalSet']
        [
          Stubs::AllowedPrincipal.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AllowedPrincipal
    class AllowedPrincipal

      def self.default(visited=[])
        return nil if visited.include?('AllowedPrincipal')
        visited = visited + ['AllowedPrincipal']
        {
          principal_type: 'principal_type',
          principal: 'principal',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeVpcEndpointServices
    class DescribeVpcEndpointServices

      def self.default(visited=[])
        {
          service_names: Stubs::ValueStringList.default(visited),
          service_details: Stubs::ServiceDetailSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ServiceDetailSet
    class ServiceDetailSet
      def self.default(visited=[])
        return nil if visited.include?('ServiceDetailSet')
        visited = visited + ['ServiceDetailSet']
        [
          Stubs::ServiceDetail.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ServiceDetail
    class ServiceDetail

      def self.default(visited=[])
        return nil if visited.include?('ServiceDetail')
        visited = visited + ['ServiceDetail']
        {
          service_name: 'service_name',
          service_id: 'service_id',
          service_type: Stubs::ServiceTypeDetailSet.default(visited),
          availability_zones: Stubs::ValueStringList.default(visited),
          owner: 'owner',
          base_endpoint_dns_names: Stubs::ValueStringList.default(visited),
          private_dns_name: 'private_dns_name',
          private_dns_names: Stubs::PrivateDnsDetailsSet.default(visited),
          vpc_endpoint_policy_supported: false,
          acceptance_required: false,
          manages_vpc_endpoints: false,
          payer_responsibility: 'payer_responsibility',
          tags: Stubs::TagList.default(visited),
          private_dns_name_verification_state: 'private_dns_name_verification_state',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for PrivateDnsDetailsSet
    class PrivateDnsDetailsSet
      def self.default(visited=[])
        return nil if visited.include?('PrivateDnsDetailsSet')
        visited = visited + ['PrivateDnsDetailsSet']
        [
          Stubs::PrivateDnsDetails.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for PrivateDnsDetails
    class PrivateDnsDetails

      def self.default(visited=[])
        return nil if visited.include?('PrivateDnsDetails')
        visited = visited + ['PrivateDnsDetails']
        {
          private_dns_name: 'private_dns_name',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeVpcEndpoints
    class DescribeVpcEndpoints

      def self.default(visited=[])
        {
          vpc_endpoints: Stubs::VpcEndpointSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for VpcEndpointSet
    class VpcEndpointSet
      def self.default(visited=[])
        return nil if visited.include?('VpcEndpointSet')
        visited = visited + ['VpcEndpointSet']
        [
          Stubs::VpcEndpoint.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeVpcPeeringConnections
    class DescribeVpcPeeringConnections

      def self.default(visited=[])
        {
          vpc_peering_connections: Stubs::VpcPeeringConnectionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for VpcPeeringConnectionList
    class VpcPeeringConnectionList
      def self.default(visited=[])
        return nil if visited.include?('VpcPeeringConnectionList')
        visited = visited + ['VpcPeeringConnectionList']
        [
          Stubs::VpcPeeringConnection.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeVpcs
    class DescribeVpcs

      def self.default(visited=[])
        {
          vpcs: Stubs::VpcList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for VpcList
    class VpcList
      def self.default(visited=[])
        return nil if visited.include?('VpcList')
        visited = visited + ['VpcList']
        [
          Stubs::Vpc.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeVpnConnections
    class DescribeVpnConnections

      def self.default(visited=[])
        {
          vpn_connections: Stubs::VpnConnectionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for VpnConnectionList
    class VpnConnectionList
      def self.default(visited=[])
        return nil if visited.include?('VpnConnectionList')
        visited = visited + ['VpnConnectionList']
        [
          Stubs::VpnConnection.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeVpnGateways
    class DescribeVpnGateways

      def self.default(visited=[])
        {
          vpn_gateways: Stubs::VpnGatewayList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for VpnGatewayList
    class VpnGatewayList
      def self.default(visited=[])
        return nil if visited.include?('VpnGatewayList')
        visited = visited + ['VpnGatewayList']
        [
          Stubs::VpnGateway.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DetachClassicLinkVpc
    class DetachClassicLinkVpc

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DetachInternetGateway
    class DetachInternetGateway

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DetachNetworkInterface
    class DetachNetworkInterface

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DetachVolume
    class DetachVolume

      def self.default(visited=[])
        {
          attach_time: Time.now,
          device: 'device',
          instance_id: 'instance_id',
          state: 'state',
          volume_id: 'volume_id',
          delete_on_termination: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DetachVpnGateway
    class DetachVpnGateway

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DisableEbsEncryptionByDefault
    class DisableEbsEncryptionByDefault

      def self.default(visited=[])
        {
          ebs_encryption_by_default: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DisableFastSnapshotRestores
    class DisableFastSnapshotRestores

      def self.default(visited=[])
        {
          successful: Stubs::DisableFastSnapshotRestoreSuccessSet.default(visited),
          unsuccessful: Stubs::DisableFastSnapshotRestoreErrorSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for DisableFastSnapshotRestoreErrorSet
    class DisableFastSnapshotRestoreErrorSet
      def self.default(visited=[])
        return nil if visited.include?('DisableFastSnapshotRestoreErrorSet')
        visited = visited + ['DisableFastSnapshotRestoreErrorSet']
        [
          Stubs::DisableFastSnapshotRestoreErrorItem.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for DisableFastSnapshotRestoreErrorItem
    class DisableFastSnapshotRestoreErrorItem

      def self.default(visited=[])
        return nil if visited.include?('DisableFastSnapshotRestoreErrorItem')
        visited = visited + ['DisableFastSnapshotRestoreErrorItem']
        {
          snapshot_id: 'snapshot_id',
          fast_snapshot_restore_state_errors: Stubs::DisableFastSnapshotRestoreStateErrorSet.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for DisableFastSnapshotRestoreStateErrorSet
    class DisableFastSnapshotRestoreStateErrorSet
      def self.default(visited=[])
        return nil if visited.include?('DisableFastSnapshotRestoreStateErrorSet')
        visited = visited + ['DisableFastSnapshotRestoreStateErrorSet']
        [
          Stubs::DisableFastSnapshotRestoreStateErrorItem.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for DisableFastSnapshotRestoreStateErrorItem
    class DisableFastSnapshotRestoreStateErrorItem

      def self.default(visited=[])
        return nil if visited.include?('DisableFastSnapshotRestoreStateErrorItem')
        visited = visited + ['DisableFastSnapshotRestoreStateErrorItem']
        {
          availability_zone: 'availability_zone',
          error: Stubs::DisableFastSnapshotRestoreStateError.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for DisableFastSnapshotRestoreStateError
    class DisableFastSnapshotRestoreStateError

      def self.default(visited=[])
        return nil if visited.include?('DisableFastSnapshotRestoreStateError')
        visited = visited + ['DisableFastSnapshotRestoreStateError']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for DisableFastSnapshotRestoreSuccessSet
    class DisableFastSnapshotRestoreSuccessSet
      def self.default(visited=[])
        return nil if visited.include?('DisableFastSnapshotRestoreSuccessSet')
        visited = visited + ['DisableFastSnapshotRestoreSuccessSet']
        [
          Stubs::DisableFastSnapshotRestoreSuccessItem.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for DisableFastSnapshotRestoreSuccessItem
    class DisableFastSnapshotRestoreSuccessItem

      def self.default(visited=[])
        return nil if visited.include?('DisableFastSnapshotRestoreSuccessItem')
        visited = visited + ['DisableFastSnapshotRestoreSuccessItem']
        {
          snapshot_id: 'snapshot_id',
          availability_zone: 'availability_zone',
          state: 'state',
          state_transition_reason: 'state_transition_reason',
          owner_id: 'owner_id',
          owner_alias: 'owner_alias',
          enabling_time: Time.now,
          optimizing_time: Time.now,
          enabled_time: Time.now,
          disabling_time: Time.now,
          disabled_time: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DisableImageDeprecation
    class DisableImageDeprecation

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DisableIpamOrganizationAdminAccount
    class DisableIpamOrganizationAdminAccount

      def self.default(visited=[])
        {
          success: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DisableSerialConsoleAccess
    class DisableSerialConsoleAccess

      def self.default(visited=[])
        {
          serial_console_access_enabled: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DisableTransitGatewayRouteTablePropagation
    class DisableTransitGatewayRouteTablePropagation

      def self.default(visited=[])
        {
          propagation: Stubs::TransitGatewayPropagation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TransitGatewayPropagation
    class TransitGatewayPropagation

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayPropagation')
        visited = visited + ['TransitGatewayPropagation']
        {
          transit_gateway_attachment_id: 'transit_gateway_attachment_id',
          resource_id: 'resource_id',
          resource_type: 'resource_type',
          transit_gateway_route_table_id: 'transit_gateway_route_table_id',
          state: 'state',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DisableVgwRoutePropagation
    class DisableVgwRoutePropagation

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DisableVpcClassicLink
    class DisableVpcClassicLink

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DisableVpcClassicLinkDnsSupport
    class DisableVpcClassicLinkDnsSupport

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DisassociateAddress
    class DisassociateAddress

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DisassociateClientVpnTargetNetwork
    class DisassociateClientVpnTargetNetwork

      def self.default(visited=[])
        {
          association_id: 'association_id',
          status: Stubs::AssociationStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DisassociateEnclaveCertificateIamRole
    class DisassociateEnclaveCertificateIamRole

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DisassociateIamInstanceProfile
    class DisassociateIamInstanceProfile

      def self.default(visited=[])
        {
          iam_instance_profile_association: Stubs::IamInstanceProfileAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DisassociateInstanceEventWindow
    class DisassociateInstanceEventWindow

      def self.default(visited=[])
        {
          instance_event_window: Stubs::InstanceEventWindow.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DisassociateRouteTable
    class DisassociateRouteTable

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DisassociateSubnetCidrBlock
    class DisassociateSubnetCidrBlock

      def self.default(visited=[])
        {
          ipv6_cidr_block_association: Stubs::SubnetIpv6CidrBlockAssociation.default(visited),
          subnet_id: 'subnet_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DisassociateTransitGatewayMulticastDomain
    class DisassociateTransitGatewayMulticastDomain

      def self.default(visited=[])
        {
          associations: Stubs::TransitGatewayMulticastDomainAssociations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DisassociateTransitGatewayRouteTable
    class DisassociateTransitGatewayRouteTable

      def self.default(visited=[])
        {
          association: Stubs::TransitGatewayAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DisassociateTrunkInterface
    class DisassociateTrunkInterface

      def self.default(visited=[])
        {
          return: false,
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DisassociateVpcCidrBlock
    class DisassociateVpcCidrBlock

      def self.default(visited=[])
        {
          ipv6_cidr_block_association: Stubs::VpcIpv6CidrBlockAssociation.default(visited),
          cidr_block_association: Stubs::VpcCidrBlockAssociation.default(visited),
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for EnableEbsEncryptionByDefault
    class EnableEbsEncryptionByDefault

      def self.default(visited=[])
        {
          ebs_encryption_by_default: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for EnableFastSnapshotRestores
    class EnableFastSnapshotRestores

      def self.default(visited=[])
        {
          successful: Stubs::EnableFastSnapshotRestoreSuccessSet.default(visited),
          unsuccessful: Stubs::EnableFastSnapshotRestoreErrorSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for EnableFastSnapshotRestoreErrorSet
    class EnableFastSnapshotRestoreErrorSet
      def self.default(visited=[])
        return nil if visited.include?('EnableFastSnapshotRestoreErrorSet')
        visited = visited + ['EnableFastSnapshotRestoreErrorSet']
        [
          Stubs::EnableFastSnapshotRestoreErrorItem.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for EnableFastSnapshotRestoreErrorItem
    class EnableFastSnapshotRestoreErrorItem

      def self.default(visited=[])
        return nil if visited.include?('EnableFastSnapshotRestoreErrorItem')
        visited = visited + ['EnableFastSnapshotRestoreErrorItem']
        {
          snapshot_id: 'snapshot_id',
          fast_snapshot_restore_state_errors: Stubs::EnableFastSnapshotRestoreStateErrorSet.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for EnableFastSnapshotRestoreStateErrorSet
    class EnableFastSnapshotRestoreStateErrorSet
      def self.default(visited=[])
        return nil if visited.include?('EnableFastSnapshotRestoreStateErrorSet')
        visited = visited + ['EnableFastSnapshotRestoreStateErrorSet']
        [
          Stubs::EnableFastSnapshotRestoreStateErrorItem.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for EnableFastSnapshotRestoreStateErrorItem
    class EnableFastSnapshotRestoreStateErrorItem

      def self.default(visited=[])
        return nil if visited.include?('EnableFastSnapshotRestoreStateErrorItem')
        visited = visited + ['EnableFastSnapshotRestoreStateErrorItem']
        {
          availability_zone: 'availability_zone',
          error: Stubs::EnableFastSnapshotRestoreStateError.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for EnableFastSnapshotRestoreStateError
    class EnableFastSnapshotRestoreStateError

      def self.default(visited=[])
        return nil if visited.include?('EnableFastSnapshotRestoreStateError')
        visited = visited + ['EnableFastSnapshotRestoreStateError']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for EnableFastSnapshotRestoreSuccessSet
    class EnableFastSnapshotRestoreSuccessSet
      def self.default(visited=[])
        return nil if visited.include?('EnableFastSnapshotRestoreSuccessSet')
        visited = visited + ['EnableFastSnapshotRestoreSuccessSet']
        [
          Stubs::EnableFastSnapshotRestoreSuccessItem.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for EnableFastSnapshotRestoreSuccessItem
    class EnableFastSnapshotRestoreSuccessItem

      def self.default(visited=[])
        return nil if visited.include?('EnableFastSnapshotRestoreSuccessItem')
        visited = visited + ['EnableFastSnapshotRestoreSuccessItem']
        {
          snapshot_id: 'snapshot_id',
          availability_zone: 'availability_zone',
          state: 'state',
          state_transition_reason: 'state_transition_reason',
          owner_id: 'owner_id',
          owner_alias: 'owner_alias',
          enabling_time: Time.now,
          optimizing_time: Time.now,
          enabled_time: Time.now,
          disabling_time: Time.now,
          disabled_time: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for EnableImageDeprecation
    class EnableImageDeprecation

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for EnableIpamOrganizationAdminAccount
    class EnableIpamOrganizationAdminAccount

      def self.default(visited=[])
        {
          success: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for EnableSerialConsoleAccess
    class EnableSerialConsoleAccess

      def self.default(visited=[])
        {
          serial_console_access_enabled: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for EnableTransitGatewayRouteTablePropagation
    class EnableTransitGatewayRouteTablePropagation

      def self.default(visited=[])
        {
          propagation: Stubs::TransitGatewayPropagation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for EnableVgwRoutePropagation
    class EnableVgwRoutePropagation

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for EnableVolumeIO
    class EnableVolumeIO

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for EnableVpcClassicLink
    class EnableVpcClassicLink

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for EnableVpcClassicLinkDnsSupport
    class EnableVpcClassicLinkDnsSupport

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ExportClientVpnClientCertificateRevocationList
    class ExportClientVpnClientCertificateRevocationList

      def self.default(visited=[])
        {
          certificate_revocation_list: 'certificate_revocation_list',
          status: Stubs::ClientCertificateRevocationListStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for ClientCertificateRevocationListStatus
    class ClientCertificateRevocationListStatus

      def self.default(visited=[])
        return nil if visited.include?('ClientCertificateRevocationListStatus')
        visited = visited + ['ClientCertificateRevocationListStatus']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for ExportClientVpnClientConfiguration
    class ExportClientVpnClientConfiguration

      def self.default(visited=[])
        {
          client_configuration: 'client_configuration',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ExportImage
    class ExportImage

      def self.default(visited=[])
        {
          description: 'description',
          disk_image_format: 'disk_image_format',
          export_image_task_id: 'export_image_task_id',
          image_id: 'image_id',
          role_name: 'role_name',
          progress: 'progress',
          s3_export_location: Stubs::ExportTaskS3Location.default(visited),
          status: 'status',
          status_message: 'status_message',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ExportTransitGatewayRoutes
    class ExportTransitGatewayRoutes

      def self.default(visited=[])
        {
          s3_location: 's3_location',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for GetAssociatedEnclaveCertificateIamRoles
    class GetAssociatedEnclaveCertificateIamRoles

      def self.default(visited=[])
        {
          associated_roles: Stubs::AssociatedRolesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for AssociatedRolesList
    class AssociatedRolesList
      def self.default(visited=[])
        return nil if visited.include?('AssociatedRolesList')
        visited = visited + ['AssociatedRolesList']
        [
          Stubs::AssociatedRole.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AssociatedRole
    class AssociatedRole

      def self.default(visited=[])
        return nil if visited.include?('AssociatedRole')
        visited = visited + ['AssociatedRole']
        {
          associated_role_arn: 'associated_role_arn',
          certificate_s3_bucket_name: 'certificate_s3_bucket_name',
          certificate_s3_object_key: 'certificate_s3_object_key',
          encryption_kms_key_id: 'encryption_kms_key_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for GetAssociatedIpv6PoolCidrs
    class GetAssociatedIpv6PoolCidrs

      def self.default(visited=[])
        {
          ipv6_cidr_associations: Stubs::Ipv6CidrAssociationSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for Ipv6CidrAssociationSet
    class Ipv6CidrAssociationSet
      def self.default(visited=[])
        return nil if visited.include?('Ipv6CidrAssociationSet')
        visited = visited + ['Ipv6CidrAssociationSet']
        [
          Stubs::Ipv6CidrAssociation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Ipv6CidrAssociation
    class Ipv6CidrAssociation

      def self.default(visited=[])
        return nil if visited.include?('Ipv6CidrAssociation')
        visited = visited + ['Ipv6CidrAssociation']
        {
          ipv6_cidr: 'ipv6_cidr',
          associated_resource: 'associated_resource',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for GetCapacityReservationUsage
    class GetCapacityReservationUsage

      def self.default(visited=[])
        {
          next_token: 'next_token',
          capacity_reservation_id: 'capacity_reservation_id',
          instance_type: 'instance_type',
          total_instance_count: 1,
          available_instance_count: 1,
          state: 'state',
          instance_usages: Stubs::InstanceUsageSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for InstanceUsageSet
    class InstanceUsageSet
      def self.default(visited=[])
        return nil if visited.include?('InstanceUsageSet')
        visited = visited + ['InstanceUsageSet']
        [
          Stubs::InstanceUsage.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstanceUsage
    class InstanceUsage

      def self.default(visited=[])
        return nil if visited.include?('InstanceUsage')
        visited = visited + ['InstanceUsage']
        {
          account_id: 'account_id',
          used_instance_count: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for GetCoipPoolUsage
    class GetCoipPoolUsage

      def self.default(visited=[])
        {
          coip_pool_id: 'coip_pool_id',
          coip_address_usages: Stubs::CoipAddressUsageSet.default(visited),
          local_gateway_route_table_id: 'local_gateway_route_table_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for CoipAddressUsageSet
    class CoipAddressUsageSet
      def self.default(visited=[])
        return nil if visited.include?('CoipAddressUsageSet')
        visited = visited + ['CoipAddressUsageSet']
        [
          Stubs::CoipAddressUsage.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for CoipAddressUsage
    class CoipAddressUsage

      def self.default(visited=[])
        return nil if visited.include?('CoipAddressUsage')
        visited = visited + ['CoipAddressUsage']
        {
          allocation_id: 'allocation_id',
          aws_account_id: 'aws_account_id',
          aws_service: 'aws_service',
          co_ip: 'co_ip',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for GetConsoleOutput
    class GetConsoleOutput

      def self.default(visited=[])
        {
          instance_id: 'instance_id',
          output: 'output',
          timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for GetConsoleScreenshot
    class GetConsoleScreenshot

      def self.default(visited=[])
        {
          image_data: 'image_data',
          instance_id: 'instance_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for GetDefaultCreditSpecification
    class GetDefaultCreditSpecification

      def self.default(visited=[])
        {
          instance_family_credit_specification: Stubs::InstanceFamilyCreditSpecification.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for InstanceFamilyCreditSpecification
    class InstanceFamilyCreditSpecification

      def self.default(visited=[])
        return nil if visited.include?('InstanceFamilyCreditSpecification')
        visited = visited + ['InstanceFamilyCreditSpecification']
        {
          instance_family: 'instance_family',
          cpu_credits: 'cpu_credits',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for GetEbsDefaultKmsKeyId
    class GetEbsDefaultKmsKeyId

      def self.default(visited=[])
        {
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for GetEbsEncryptionByDefault
    class GetEbsEncryptionByDefault

      def self.default(visited=[])
        {
          ebs_encryption_by_default: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for GetFlowLogsIntegrationTemplate
    class GetFlowLogsIntegrationTemplate

      def self.default(visited=[])
        {
          result: 'result',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for GetGroupsForCapacityReservation
    class GetGroupsForCapacityReservation

      def self.default(visited=[])
        {
          next_token: 'next_token',
          capacity_reservation_groups: Stubs::CapacityReservationGroupSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for CapacityReservationGroupSet
    class CapacityReservationGroupSet
      def self.default(visited=[])
        return nil if visited.include?('CapacityReservationGroupSet')
        visited = visited + ['CapacityReservationGroupSet']
        [
          Stubs::CapacityReservationGroup.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for CapacityReservationGroup
    class CapacityReservationGroup

      def self.default(visited=[])
        return nil if visited.include?('CapacityReservationGroup')
        visited = visited + ['CapacityReservationGroup']
        {
          group_arn: 'group_arn',
          owner_id: 'owner_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for GetHostReservationPurchasePreview
    class GetHostReservationPurchasePreview

      def self.default(visited=[])
        {
          currency_code: 'currency_code',
          purchase: Stubs::PurchaseSet.default(visited),
          total_hourly_price: 'total_hourly_price',
          total_upfront_price: 'total_upfront_price',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for PurchaseSet
    class PurchaseSet
      def self.default(visited=[])
        return nil if visited.include?('PurchaseSet')
        visited = visited + ['PurchaseSet']
        [
          Stubs::Purchase.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Purchase
    class Purchase

      def self.default(visited=[])
        return nil if visited.include?('Purchase')
        visited = visited + ['Purchase']
        {
          currency_code: 'currency_code',
          duration: 1,
          host_id_set: Stubs::ResponseHostIdSet.default(visited),
          host_reservation_id: 'host_reservation_id',
          hourly_price: 'hourly_price',
          instance_family: 'instance_family',
          payment_option: 'payment_option',
          upfront_price: 'upfront_price',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for GetInstanceTypesFromInstanceRequirements
    class GetInstanceTypesFromInstanceRequirements

      def self.default(visited=[])
        {
          instance_types: Stubs::InstanceTypeInfoFromInstanceRequirementsSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for InstanceTypeInfoFromInstanceRequirementsSet
    class InstanceTypeInfoFromInstanceRequirementsSet
      def self.default(visited=[])
        return nil if visited.include?('InstanceTypeInfoFromInstanceRequirementsSet')
        visited = visited + ['InstanceTypeInfoFromInstanceRequirementsSet']
        [
          Stubs::InstanceTypeInfoFromInstanceRequirements.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstanceTypeInfoFromInstanceRequirements
    class InstanceTypeInfoFromInstanceRequirements

      def self.default(visited=[])
        return nil if visited.include?('InstanceTypeInfoFromInstanceRequirements')
        visited = visited + ['InstanceTypeInfoFromInstanceRequirements']
        {
          instance_type: 'instance_type',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for GetIpamAddressHistory
    class GetIpamAddressHistory

      def self.default(visited=[])
        {
          history_records: Stubs::IpamAddressHistoryRecordSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for IpamAddressHistoryRecordSet
    class IpamAddressHistoryRecordSet
      def self.default(visited=[])
        return nil if visited.include?('IpamAddressHistoryRecordSet')
        visited = visited + ['IpamAddressHistoryRecordSet']
        [
          Stubs::IpamAddressHistoryRecord.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for IpamAddressHistoryRecord
    class IpamAddressHistoryRecord

      def self.default(visited=[])
        return nil if visited.include?('IpamAddressHistoryRecord')
        visited = visited + ['IpamAddressHistoryRecord']
        {
          resource_owner_id: 'resource_owner_id',
          resource_region: 'resource_region',
          resource_type: 'resource_type',
          resource_id: 'resource_id',
          resource_cidr: 'resource_cidr',
          resource_name: 'resource_name',
          resource_compliance_status: 'resource_compliance_status',
          resource_overlap_status: 'resource_overlap_status',
          vpc_id: 'vpc_id',
          sampled_start_time: Time.now,
          sampled_end_time: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for GetIpamPoolAllocations
    class GetIpamPoolAllocations

      def self.default(visited=[])
        {
          ipam_pool_allocations: Stubs::IpamPoolAllocationSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for IpamPoolAllocationSet
    class IpamPoolAllocationSet
      def self.default(visited=[])
        return nil if visited.include?('IpamPoolAllocationSet')
        visited = visited + ['IpamPoolAllocationSet']
        [
          Stubs::IpamPoolAllocation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for GetIpamPoolCidrs
    class GetIpamPoolCidrs

      def self.default(visited=[])
        {
          ipam_pool_cidrs: Stubs::IpamPoolCidrSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for IpamPoolCidrSet
    class IpamPoolCidrSet
      def self.default(visited=[])
        return nil if visited.include?('IpamPoolCidrSet')
        visited = visited + ['IpamPoolCidrSet']
        [
          Stubs::IpamPoolCidr.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for GetIpamResourceCidrs
    class GetIpamResourceCidrs

      def self.default(visited=[])
        {
          next_token: 'next_token',
          ipam_resource_cidrs: Stubs::IpamResourceCidrSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for IpamResourceCidrSet
    class IpamResourceCidrSet
      def self.default(visited=[])
        return nil if visited.include?('IpamResourceCidrSet')
        visited = visited + ['IpamResourceCidrSet']
        [
          Stubs::IpamResourceCidr.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for IpamResourceCidr
    class IpamResourceCidr

      def self.default(visited=[])
        return nil if visited.include?('IpamResourceCidr')
        visited = visited + ['IpamResourceCidr']
        {
          ipam_id: 'ipam_id',
          ipam_scope_id: 'ipam_scope_id',
          ipam_pool_id: 'ipam_pool_id',
          resource_region: 'resource_region',
          resource_owner_id: 'resource_owner_id',
          resource_id: 'resource_id',
          resource_name: 'resource_name',
          resource_cidr: 'resource_cidr',
          resource_type: 'resource_type',
          resource_tags: Stubs::IpamResourceTagList.default(visited),
          ip_usage: 1.0,
          compliance_status: 'compliance_status',
          management_state: 'management_state',
          overlap_status: 'overlap_status',
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for GetLaunchTemplateData
    class GetLaunchTemplateData

      def self.default(visited=[])
        {
          launch_template_data: Stubs::ResponseLaunchTemplateData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for GetManagedPrefixListAssociations
    class GetManagedPrefixListAssociations

      def self.default(visited=[])
        {
          prefix_list_associations: Stubs::PrefixListAssociationSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for PrefixListAssociationSet
    class PrefixListAssociationSet
      def self.default(visited=[])
        return nil if visited.include?('PrefixListAssociationSet')
        visited = visited + ['PrefixListAssociationSet']
        [
          Stubs::PrefixListAssociation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for PrefixListAssociation
    class PrefixListAssociation

      def self.default(visited=[])
        return nil if visited.include?('PrefixListAssociation')
        visited = visited + ['PrefixListAssociation']
        {
          resource_id: 'resource_id',
          resource_owner: 'resource_owner',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for GetManagedPrefixListEntries
    class GetManagedPrefixListEntries

      def self.default(visited=[])
        {
          entries: Stubs::PrefixListEntrySet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for PrefixListEntrySet
    class PrefixListEntrySet
      def self.default(visited=[])
        return nil if visited.include?('PrefixListEntrySet')
        visited = visited + ['PrefixListEntrySet']
        [
          Stubs::PrefixListEntry.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for PrefixListEntry
    class PrefixListEntry

      def self.default(visited=[])
        return nil if visited.include?('PrefixListEntry')
        visited = visited + ['PrefixListEntry']
        {
          cidr: 'cidr',
          description: 'description',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for GetNetworkInsightsAccessScopeAnalysisFindings
    class GetNetworkInsightsAccessScopeAnalysisFindings

      def self.default(visited=[])
        {
          network_insights_access_scope_analysis_id: 'network_insights_access_scope_analysis_id',
          analysis_status: 'analysis_status',
          analysis_findings: Stubs::AccessScopeAnalysisFindingList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for AccessScopeAnalysisFindingList
    class AccessScopeAnalysisFindingList
      def self.default(visited=[])
        return nil if visited.include?('AccessScopeAnalysisFindingList')
        visited = visited + ['AccessScopeAnalysisFindingList']
        [
          Stubs::AccessScopeAnalysisFinding.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AccessScopeAnalysisFinding
    class AccessScopeAnalysisFinding

      def self.default(visited=[])
        return nil if visited.include?('AccessScopeAnalysisFinding')
        visited = visited + ['AccessScopeAnalysisFinding']
        {
          network_insights_access_scope_analysis_id: 'network_insights_access_scope_analysis_id',
          network_insights_access_scope_id: 'network_insights_access_scope_id',
          finding_id: 'finding_id',
          finding_components: Stubs::PathComponentList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for GetNetworkInsightsAccessScopeContent
    class GetNetworkInsightsAccessScopeContent

      def self.default(visited=[])
        {
          network_insights_access_scope_content: Stubs::NetworkInsightsAccessScopeContent.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for GetPasswordData
    class GetPasswordData

      def self.default(visited=[])
        {
          instance_id: 'instance_id',
          password_data: 'password_data',
          timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for GetReservedInstancesExchangeQuote
    class GetReservedInstancesExchangeQuote

      def self.default(visited=[])
        {
          currency_code: 'currency_code',
          is_valid_exchange: false,
          output_reserved_instances_will_expire_at: Time.now,
          payment_due: 'payment_due',
          reserved_instance_value_rollup: Stubs::ReservationValue.default(visited),
          reserved_instance_value_set: Stubs::ReservedInstanceReservationValueSet.default(visited),
          target_configuration_value_rollup: Stubs::ReservationValue.default(visited),
          target_configuration_value_set: Stubs::TargetReservationValueSet.default(visited),
          validation_failure_reason: 'validation_failure_reason',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TargetReservationValueSet
    class TargetReservationValueSet
      def self.default(visited=[])
        return nil if visited.include?('TargetReservationValueSet')
        visited = visited + ['TargetReservationValueSet']
        [
          Stubs::TargetReservationValue.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for TargetReservationValue
    class TargetReservationValue

      def self.default(visited=[])
        return nil if visited.include?('TargetReservationValue')
        visited = visited + ['TargetReservationValue']
        {
          reservation_value: Stubs::ReservationValue.default(visited),
          target_configuration: Stubs::TargetConfiguration.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for TargetConfiguration
    class TargetConfiguration

      def self.default(visited=[])
        return nil if visited.include?('TargetConfiguration')
        visited = visited + ['TargetConfiguration']
        {
          instance_count: 1,
          offering_id: 'offering_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ReservationValue
    class ReservationValue

      def self.default(visited=[])
        return nil if visited.include?('ReservationValue')
        visited = visited + ['ReservationValue']
        {
          hourly_price: 'hourly_price',
          remaining_total_value: 'remaining_total_value',
          remaining_upfront_value: 'remaining_upfront_value',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ReservedInstanceReservationValueSet
    class ReservedInstanceReservationValueSet
      def self.default(visited=[])
        return nil if visited.include?('ReservedInstanceReservationValueSet')
        visited = visited + ['ReservedInstanceReservationValueSet']
        [
          Stubs::ReservedInstanceReservationValue.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ReservedInstanceReservationValue
    class ReservedInstanceReservationValue

      def self.default(visited=[])
        return nil if visited.include?('ReservedInstanceReservationValue')
        visited = visited + ['ReservedInstanceReservationValue']
        {
          reservation_value: Stubs::ReservationValue.default(visited),
          reserved_instance_id: 'reserved_instance_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for GetSerialConsoleAccessStatus
    class GetSerialConsoleAccessStatus

      def self.default(visited=[])
        {
          serial_console_access_enabled: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for GetSpotPlacementScores
    class GetSpotPlacementScores

      def self.default(visited=[])
        {
          spot_placement_scores: Stubs::SpotPlacementScores.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for SpotPlacementScores
    class SpotPlacementScores
      def self.default(visited=[])
        return nil if visited.include?('SpotPlacementScores')
        visited = visited + ['SpotPlacementScores']
        [
          Stubs::SpotPlacementScore.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for SpotPlacementScore
    class SpotPlacementScore

      def self.default(visited=[])
        return nil if visited.include?('SpotPlacementScore')
        visited = visited + ['SpotPlacementScore']
        {
          region: 'region',
          availability_zone_id: 'availability_zone_id',
          score: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for GetSubnetCidrReservations
    class GetSubnetCidrReservations

      def self.default(visited=[])
        {
          subnet_ipv4_cidr_reservations: Stubs::SubnetCidrReservationList.default(visited),
          subnet_ipv6_cidr_reservations: Stubs::SubnetCidrReservationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for SubnetCidrReservationList
    class SubnetCidrReservationList
      def self.default(visited=[])
        return nil if visited.include?('SubnetCidrReservationList')
        visited = visited + ['SubnetCidrReservationList']
        [
          Stubs::SubnetCidrReservation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for GetTransitGatewayAttachmentPropagations
    class GetTransitGatewayAttachmentPropagations

      def self.default(visited=[])
        {
          transit_gateway_attachment_propagations: Stubs::TransitGatewayAttachmentPropagationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TransitGatewayAttachmentPropagationList
    class TransitGatewayAttachmentPropagationList
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayAttachmentPropagationList')
        visited = visited + ['TransitGatewayAttachmentPropagationList']
        [
          Stubs::TransitGatewayAttachmentPropagation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for TransitGatewayAttachmentPropagation
    class TransitGatewayAttachmentPropagation

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayAttachmentPropagation')
        visited = visited + ['TransitGatewayAttachmentPropagation']
        {
          transit_gateway_route_table_id: 'transit_gateway_route_table_id',
          state: 'state',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for GetTransitGatewayMulticastDomainAssociations
    class GetTransitGatewayMulticastDomainAssociations

      def self.default(visited=[])
        {
          multicast_domain_associations: Stubs::TransitGatewayMulticastDomainAssociationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TransitGatewayMulticastDomainAssociationList
    class TransitGatewayMulticastDomainAssociationList
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayMulticastDomainAssociationList')
        visited = visited + ['TransitGatewayMulticastDomainAssociationList']
        [
          Stubs::TransitGatewayMulticastDomainAssociation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for TransitGatewayMulticastDomainAssociation
    class TransitGatewayMulticastDomainAssociation

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayMulticastDomainAssociation')
        visited = visited + ['TransitGatewayMulticastDomainAssociation']
        {
          transit_gateway_attachment_id: 'transit_gateway_attachment_id',
          resource_id: 'resource_id',
          resource_type: 'resource_type',
          resource_owner_id: 'resource_owner_id',
          subnet: Stubs::SubnetAssociation.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for GetTransitGatewayPrefixListReferences
    class GetTransitGatewayPrefixListReferences

      def self.default(visited=[])
        {
          transit_gateway_prefix_list_references: Stubs::TransitGatewayPrefixListReferenceSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TransitGatewayPrefixListReferenceSet
    class TransitGatewayPrefixListReferenceSet
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayPrefixListReferenceSet')
        visited = visited + ['TransitGatewayPrefixListReferenceSet']
        [
          Stubs::TransitGatewayPrefixListReference.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for GetTransitGatewayRouteTableAssociations
    class GetTransitGatewayRouteTableAssociations

      def self.default(visited=[])
        {
          associations: Stubs::TransitGatewayRouteTableAssociationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TransitGatewayRouteTableAssociationList
    class TransitGatewayRouteTableAssociationList
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayRouteTableAssociationList')
        visited = visited + ['TransitGatewayRouteTableAssociationList']
        [
          Stubs::TransitGatewayRouteTableAssociation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for TransitGatewayRouteTableAssociation
    class TransitGatewayRouteTableAssociation

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayRouteTableAssociation')
        visited = visited + ['TransitGatewayRouteTableAssociation']
        {
          transit_gateway_attachment_id: 'transit_gateway_attachment_id',
          resource_id: 'resource_id',
          resource_type: 'resource_type',
          state: 'state',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for GetTransitGatewayRouteTablePropagations
    class GetTransitGatewayRouteTablePropagations

      def self.default(visited=[])
        {
          transit_gateway_route_table_propagations: Stubs::TransitGatewayRouteTablePropagationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TransitGatewayRouteTablePropagationList
    class TransitGatewayRouteTablePropagationList
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayRouteTablePropagationList')
        visited = visited + ['TransitGatewayRouteTablePropagationList']
        [
          Stubs::TransitGatewayRouteTablePropagation.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for TransitGatewayRouteTablePropagation
    class TransitGatewayRouteTablePropagation

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayRouteTablePropagation')
        visited = visited + ['TransitGatewayRouteTablePropagation']
        {
          transit_gateway_attachment_id: 'transit_gateway_attachment_id',
          resource_id: 'resource_id',
          resource_type: 'resource_type',
          state: 'state',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for GetVpnConnectionDeviceSampleConfiguration
    class GetVpnConnectionDeviceSampleConfiguration

      def self.default(visited=[])
        {
          vpn_connection_device_sample_configuration: 'vpn_connection_device_sample_configuration',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for GetVpnConnectionDeviceTypes
    class GetVpnConnectionDeviceTypes

      def self.default(visited=[])
        {
          vpn_connection_device_types: Stubs::VpnConnectionDeviceTypeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for VpnConnectionDeviceTypeList
    class VpnConnectionDeviceTypeList
      def self.default(visited=[])
        return nil if visited.include?('VpnConnectionDeviceTypeList')
        visited = visited + ['VpnConnectionDeviceTypeList']
        [
          Stubs::VpnConnectionDeviceType.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for VpnConnectionDeviceType
    class VpnConnectionDeviceType

      def self.default(visited=[])
        return nil if visited.include?('VpnConnectionDeviceType')
        visited = visited + ['VpnConnectionDeviceType']
        {
          vpn_connection_device_type_id: 'vpn_connection_device_type_id',
          vendor: 'vendor',
          platform: 'platform',
          software: 'software',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for ImportClientVpnClientCertificateRevocationList
    class ImportClientVpnClientCertificateRevocationList

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ImportImage
    class ImportImage

      def self.default(visited=[])
        {
          architecture: 'architecture',
          description: 'description',
          encrypted: false,
          hypervisor: 'hypervisor',
          image_id: 'image_id',
          import_task_id: 'import_task_id',
          kms_key_id: 'kms_key_id',
          license_type: 'license_type',
          platform: 'platform',
          progress: 'progress',
          snapshot_details: Stubs::SnapshotDetailList.default(visited),
          status: 'status',
          status_message: 'status_message',
          license_specifications: Stubs::ImportImageLicenseSpecificationListResponse.default(visited),
          tags: Stubs::TagList.default(visited),
          usage_operation: 'usage_operation',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ImportInstance
    class ImportInstance

      def self.default(visited=[])
        {
          conversion_task: Stubs::ConversionTask.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ImportKeyPair
    class ImportKeyPair

      def self.default(visited=[])
        {
          key_fingerprint: 'key_fingerprint',
          key_name: 'key_name',
          key_pair_id: 'key_pair_id',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ImportSnapshot
    class ImportSnapshot

      def self.default(visited=[])
        {
          description: 'description',
          import_task_id: 'import_task_id',
          snapshot_task_detail: Stubs::SnapshotTaskDetail.default(visited),
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ImportVolume
    class ImportVolume

      def self.default(visited=[])
        {
          conversion_task: Stubs::ConversionTask.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ListSnapshotsInRecycleBin
    class ListSnapshotsInRecycleBin

      def self.default(visited=[])
        {
          snapshots: Stubs::SnapshotRecycleBinInfoList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for SnapshotRecycleBinInfoList
    class SnapshotRecycleBinInfoList
      def self.default(visited=[])
        return nil if visited.include?('SnapshotRecycleBinInfoList')
        visited = visited + ['SnapshotRecycleBinInfoList']
        [
          Stubs::SnapshotRecycleBinInfo.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for SnapshotRecycleBinInfo
    class SnapshotRecycleBinInfo

      def self.default(visited=[])
        return nil if visited.include?('SnapshotRecycleBinInfo')
        visited = visited + ['SnapshotRecycleBinInfo']
        {
          snapshot_id: 'snapshot_id',
          recycle_bin_enter_time: Time.now,
          recycle_bin_exit_time: Time.now,
          description: 'description',
          volume_id: 'volume_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for ModifyAddressAttribute
    class ModifyAddressAttribute

      def self.default(visited=[])
        {
          address: Stubs::AddressAttribute.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyAvailabilityZoneGroup
    class ModifyAvailabilityZoneGroup

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyCapacityReservation
    class ModifyCapacityReservation

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyCapacityReservationFleet
    class ModifyCapacityReservationFleet

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyClientVpnEndpoint
    class ModifyClientVpnEndpoint

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyDefaultCreditSpecification
    class ModifyDefaultCreditSpecification

      def self.default(visited=[])
        {
          instance_family_credit_specification: Stubs::InstanceFamilyCreditSpecification.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyEbsDefaultKmsKeyId
    class ModifyEbsDefaultKmsKeyId

      def self.default(visited=[])
        {
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyFleet
    class ModifyFleet

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyFpgaImageAttribute
    class ModifyFpgaImageAttribute

      def self.default(visited=[])
        {
          fpga_image_attribute: Stubs::FpgaImageAttribute.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyHosts
    class ModifyHosts

      def self.default(visited=[])
        {
          successful: Stubs::ResponseHostIdList.default(visited),
          unsuccessful: Stubs::UnsuccessfulItemList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for UnsuccessfulItemList
    class UnsuccessfulItemList
      def self.default(visited=[])
        return nil if visited.include?('UnsuccessfulItemList')
        visited = visited + ['UnsuccessfulItemList']
        [
          Stubs::UnsuccessfulItem.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for ModifyIdFormat
    class ModifyIdFormat

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyIdentityIdFormat
    class ModifyIdentityIdFormat

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyImageAttribute
    class ModifyImageAttribute

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyInstanceAttribute
    class ModifyInstanceAttribute

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyInstanceCapacityReservationAttributes
    class ModifyInstanceCapacityReservationAttributes

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyInstanceCreditSpecification
    class ModifyInstanceCreditSpecification

      def self.default(visited=[])
        {
          successful_instance_credit_specifications: Stubs::SuccessfulInstanceCreditSpecificationSet.default(visited),
          unsuccessful_instance_credit_specifications: Stubs::UnsuccessfulInstanceCreditSpecificationSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for UnsuccessfulInstanceCreditSpecificationSet
    class UnsuccessfulInstanceCreditSpecificationSet
      def self.default(visited=[])
        return nil if visited.include?('UnsuccessfulInstanceCreditSpecificationSet')
        visited = visited + ['UnsuccessfulInstanceCreditSpecificationSet']
        [
          Stubs::UnsuccessfulInstanceCreditSpecificationItem.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for UnsuccessfulInstanceCreditSpecificationItem
    class UnsuccessfulInstanceCreditSpecificationItem

      def self.default(visited=[])
        return nil if visited.include?('UnsuccessfulInstanceCreditSpecificationItem')
        visited = visited + ['UnsuccessfulInstanceCreditSpecificationItem']
        {
          instance_id: 'instance_id',
          error: Stubs::UnsuccessfulInstanceCreditSpecificationItemError.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for UnsuccessfulInstanceCreditSpecificationItemError
    class UnsuccessfulInstanceCreditSpecificationItemError

      def self.default(visited=[])
        return nil if visited.include?('UnsuccessfulInstanceCreditSpecificationItemError')
        visited = visited + ['UnsuccessfulInstanceCreditSpecificationItemError']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for SuccessfulInstanceCreditSpecificationSet
    class SuccessfulInstanceCreditSpecificationSet
      def self.default(visited=[])
        return nil if visited.include?('SuccessfulInstanceCreditSpecificationSet')
        visited = visited + ['SuccessfulInstanceCreditSpecificationSet']
        [
          Stubs::SuccessfulInstanceCreditSpecificationItem.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for SuccessfulInstanceCreditSpecificationItem
    class SuccessfulInstanceCreditSpecificationItem

      def self.default(visited=[])
        return nil if visited.include?('SuccessfulInstanceCreditSpecificationItem')
        visited = visited + ['SuccessfulInstanceCreditSpecificationItem']
        {
          instance_id: 'instance_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for ModifyInstanceEventStartTime
    class ModifyInstanceEventStartTime

      def self.default(visited=[])
        {
          event: Stubs::InstanceStatusEvent.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyInstanceEventWindow
    class ModifyInstanceEventWindow

      def self.default(visited=[])
        {
          instance_event_window: Stubs::InstanceEventWindow.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyInstanceMetadataOptions
    class ModifyInstanceMetadataOptions

      def self.default(visited=[])
        {
          instance_id: 'instance_id',
          instance_metadata_options: Stubs::InstanceMetadataOptionsResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyInstancePlacement
    class ModifyInstancePlacement

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyIpam
    class ModifyIpam

      def self.default(visited=[])
        {
          ipam: Stubs::Ipam.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyIpamPool
    class ModifyIpamPool

      def self.default(visited=[])
        {
          ipam_pool: Stubs::IpamPool.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyIpamResourceCidr
    class ModifyIpamResourceCidr

      def self.default(visited=[])
        {
          ipam_resource_cidr: Stubs::IpamResourceCidr.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyIpamScope
    class ModifyIpamScope

      def self.default(visited=[])
        {
          ipam_scope: Stubs::IpamScope.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyLaunchTemplate
    class ModifyLaunchTemplate

      def self.default(visited=[])
        {
          launch_template: Stubs::LaunchTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyManagedPrefixList
    class ModifyManagedPrefixList

      def self.default(visited=[])
        {
          prefix_list: Stubs::ManagedPrefixList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyNetworkInterfaceAttribute
    class ModifyNetworkInterfaceAttribute

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyPrivateDnsNameOptions
    class ModifyPrivateDnsNameOptions

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyReservedInstances
    class ModifyReservedInstances

      def self.default(visited=[])
        {
          reserved_instances_modification_id: 'reserved_instances_modification_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifySecurityGroupRules
    class ModifySecurityGroupRules

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifySnapshotAttribute
    class ModifySnapshotAttribute

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifySnapshotTier
    class ModifySnapshotTier

      def self.default(visited=[])
        {
          snapshot_id: 'snapshot_id',
          tiering_start_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifySpotFleetRequest
    class ModifySpotFleetRequest

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifySubnetAttribute
    class ModifySubnetAttribute

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyTrafficMirrorFilterNetworkServices
    class ModifyTrafficMirrorFilterNetworkServices

      def self.default(visited=[])
        {
          traffic_mirror_filter: Stubs::TrafficMirrorFilter.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyTrafficMirrorFilterRule
    class ModifyTrafficMirrorFilterRule

      def self.default(visited=[])
        {
          traffic_mirror_filter_rule: Stubs::TrafficMirrorFilterRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyTrafficMirrorSession
    class ModifyTrafficMirrorSession

      def self.default(visited=[])
        {
          traffic_mirror_session: Stubs::TrafficMirrorSession.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyTransitGateway
    class ModifyTransitGateway

      def self.default(visited=[])
        {
          transit_gateway: Stubs::TransitGateway.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyTransitGatewayPrefixListReference
    class ModifyTransitGatewayPrefixListReference

      def self.default(visited=[])
        {
          transit_gateway_prefix_list_reference: Stubs::TransitGatewayPrefixListReference.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyTransitGatewayVpcAttachment
    class ModifyTransitGatewayVpcAttachment

      def self.default(visited=[])
        {
          transit_gateway_vpc_attachment: Stubs::TransitGatewayVpcAttachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyVolume
    class ModifyVolume

      def self.default(visited=[])
        {
          volume_modification: Stubs::VolumeModification.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyVolumeAttribute
    class ModifyVolumeAttribute

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyVpcAttribute
    class ModifyVpcAttribute

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyVpcEndpoint
    class ModifyVpcEndpoint

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyVpcEndpointConnectionNotification
    class ModifyVpcEndpointConnectionNotification

      def self.default(visited=[])
        {
          return_value: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyVpcEndpointServiceConfiguration
    class ModifyVpcEndpointServiceConfiguration

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyVpcEndpointServicePayerResponsibility
    class ModifyVpcEndpointServicePayerResponsibility

      def self.default(visited=[])
        {
          return_value: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyVpcEndpointServicePermissions
    class ModifyVpcEndpointServicePermissions

      def self.default(visited=[])
        {
          return_value: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyVpcPeeringConnectionOptions
    class ModifyVpcPeeringConnectionOptions

      def self.default(visited=[])
        {
          accepter_peering_connection_options: Stubs::PeeringConnectionOptions.default(visited),
          requester_peering_connection_options: Stubs::PeeringConnectionOptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for PeeringConnectionOptions
    class PeeringConnectionOptions

      def self.default(visited=[])
        return nil if visited.include?('PeeringConnectionOptions')
        visited = visited + ['PeeringConnectionOptions']
        {
          allow_dns_resolution_from_remote_vpc: false,
          allow_egress_from_local_classic_link_to_remote_vpc: false,
          allow_egress_from_local_vpc_to_remote_classic_link: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for ModifyVpcTenancy
    class ModifyVpcTenancy

      def self.default(visited=[])
        {
          return_value: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyVpnConnection
    class ModifyVpnConnection

      def self.default(visited=[])
        {
          vpn_connection: Stubs::VpnConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyVpnConnectionOptions
    class ModifyVpnConnectionOptions

      def self.default(visited=[])
        {
          vpn_connection: Stubs::VpnConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyVpnTunnelCertificate
    class ModifyVpnTunnelCertificate

      def self.default(visited=[])
        {
          vpn_connection: Stubs::VpnConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ModifyVpnTunnelOptions
    class ModifyVpnTunnelOptions

      def self.default(visited=[])
        {
          vpn_connection: Stubs::VpnConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for MonitorInstances
    class MonitorInstances

      def self.default(visited=[])
        {
          instance_monitorings: Stubs::InstanceMonitoringList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for InstanceMonitoringList
    class InstanceMonitoringList
      def self.default(visited=[])
        return nil if visited.include?('InstanceMonitoringList')
        visited = visited + ['InstanceMonitoringList']
        [
          Stubs::InstanceMonitoring.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstanceMonitoring
    class InstanceMonitoring

      def self.default(visited=[])
        return nil if visited.include?('InstanceMonitoring')
        visited = visited + ['InstanceMonitoring']
        {
          instance_id: 'instance_id',
          monitoring: Stubs::Monitoring.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for MoveAddressToVpc
    class MoveAddressToVpc

      def self.default(visited=[])
        {
          allocation_id: 'allocation_id',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for MoveByoipCidrToIpam
    class MoveByoipCidrToIpam

      def self.default(visited=[])
        {
          byoip_cidr: Stubs::ByoipCidr.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ProvisionByoipCidr
    class ProvisionByoipCidr

      def self.default(visited=[])
        {
          byoip_cidr: Stubs::ByoipCidr.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ProvisionIpamPoolCidr
    class ProvisionIpamPoolCidr

      def self.default(visited=[])
        {
          ipam_pool_cidr: Stubs::IpamPoolCidr.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ProvisionPublicIpv4PoolCidr
    class ProvisionPublicIpv4PoolCidr

      def self.default(visited=[])
        {
          pool_id: 'pool_id',
          pool_address_range: Stubs::PublicIpv4PoolRange.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for PurchaseHostReservation
    class PurchaseHostReservation

      def self.default(visited=[])
        {
          client_token: 'client_token',
          currency_code: 'currency_code',
          purchase: Stubs::PurchaseSet.default(visited),
          total_hourly_price: 'total_hourly_price',
          total_upfront_price: 'total_upfront_price',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for PurchaseReservedInstancesOffering
    class PurchaseReservedInstancesOffering

      def self.default(visited=[])
        {
          reserved_instances_id: 'reserved_instances_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for PurchaseScheduledInstances
    class PurchaseScheduledInstances

      def self.default(visited=[])
        {
          scheduled_instance_set: Stubs::PurchasedScheduledInstanceSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for PurchasedScheduledInstanceSet
    class PurchasedScheduledInstanceSet
      def self.default(visited=[])
        return nil if visited.include?('PurchasedScheduledInstanceSet')
        visited = visited + ['PurchasedScheduledInstanceSet']
        [
          Stubs::ScheduledInstance.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for RebootInstances
    class RebootInstances

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RegisterImage
    class RegisterImage

      def self.default(visited=[])
        {
          image_id: 'image_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RegisterInstanceEventNotificationAttributes
    class RegisterInstanceEventNotificationAttributes

      def self.default(visited=[])
        {
          instance_tag_attribute: Stubs::InstanceTagNotificationAttribute.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RegisterTransitGatewayMulticastGroupMembers
    class RegisterTransitGatewayMulticastGroupMembers

      def self.default(visited=[])
        {
          registered_multicast_group_members: Stubs::TransitGatewayMulticastRegisteredGroupMembers.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TransitGatewayMulticastRegisteredGroupMembers
    class TransitGatewayMulticastRegisteredGroupMembers

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayMulticastRegisteredGroupMembers')
        visited = visited + ['TransitGatewayMulticastRegisteredGroupMembers']
        {
          transit_gateway_multicast_domain_id: 'transit_gateway_multicast_domain_id',
          registered_network_interface_ids: Stubs::ValueStringList.default(visited),
          group_ip_address: 'group_ip_address',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for RegisterTransitGatewayMulticastGroupSources
    class RegisterTransitGatewayMulticastGroupSources

      def self.default(visited=[])
        {
          registered_multicast_group_sources: Stubs::TransitGatewayMulticastRegisteredGroupSources.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TransitGatewayMulticastRegisteredGroupSources
    class TransitGatewayMulticastRegisteredGroupSources

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayMulticastRegisteredGroupSources')
        visited = visited + ['TransitGatewayMulticastRegisteredGroupSources']
        {
          transit_gateway_multicast_domain_id: 'transit_gateway_multicast_domain_id',
          registered_network_interface_ids: Stubs::ValueStringList.default(visited),
          group_ip_address: 'group_ip_address',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for RejectTransitGatewayMulticastDomainAssociations
    class RejectTransitGatewayMulticastDomainAssociations

      def self.default(visited=[])
        {
          associations: Stubs::TransitGatewayMulticastDomainAssociations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RejectTransitGatewayPeeringAttachment
    class RejectTransitGatewayPeeringAttachment

      def self.default(visited=[])
        {
          transit_gateway_peering_attachment: Stubs::TransitGatewayPeeringAttachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RejectTransitGatewayVpcAttachment
    class RejectTransitGatewayVpcAttachment

      def self.default(visited=[])
        {
          transit_gateway_vpc_attachment: Stubs::TransitGatewayVpcAttachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RejectVpcEndpointConnections
    class RejectVpcEndpointConnections

      def self.default(visited=[])
        {
          unsuccessful: Stubs::UnsuccessfulItemSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RejectVpcPeeringConnection
    class RejectVpcPeeringConnection

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ReleaseAddress
    class ReleaseAddress

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ReleaseHosts
    class ReleaseHosts

      def self.default(visited=[])
        {
          successful: Stubs::ResponseHostIdList.default(visited),
          unsuccessful: Stubs::UnsuccessfulItemList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ReleaseIpamPoolAllocation
    class ReleaseIpamPoolAllocation

      def self.default(visited=[])
        {
          success: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ReplaceIamInstanceProfileAssociation
    class ReplaceIamInstanceProfileAssociation

      def self.default(visited=[])
        {
          iam_instance_profile_association: Stubs::IamInstanceProfileAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ReplaceNetworkAclAssociation
    class ReplaceNetworkAclAssociation

      def self.default(visited=[])
        {
          new_association_id: 'new_association_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ReplaceNetworkAclEntry
    class ReplaceNetworkAclEntry

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ReplaceRoute
    class ReplaceRoute

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ReplaceRouteTableAssociation
    class ReplaceRouteTableAssociation

      def self.default(visited=[])
        {
          new_association_id: 'new_association_id',
          association_state: Stubs::RouteTableAssociationState.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ReplaceTransitGatewayRoute
    class ReplaceTransitGatewayRoute

      def self.default(visited=[])
        {
          route: Stubs::TransitGatewayRoute.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ReportInstanceStatus
    class ReportInstanceStatus

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RequestSpotFleet
    class RequestSpotFleet

      def self.default(visited=[])
        {
          spot_fleet_request_id: 'spot_fleet_request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RequestSpotInstances
    class RequestSpotInstances

      def self.default(visited=[])
        {
          spot_instance_requests: Stubs::SpotInstanceRequestList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ResetAddressAttribute
    class ResetAddressAttribute

      def self.default(visited=[])
        {
          address: Stubs::AddressAttribute.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ResetEbsDefaultKmsKeyId
    class ResetEbsDefaultKmsKeyId

      def self.default(visited=[])
        {
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ResetFpgaImageAttribute
    class ResetFpgaImageAttribute

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ResetImageAttribute
    class ResetImageAttribute

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ResetInstanceAttribute
    class ResetInstanceAttribute

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ResetNetworkInterfaceAttribute
    class ResetNetworkInterfaceAttribute

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ResetSnapshotAttribute
    class ResetSnapshotAttribute

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RestoreAddressToClassic
    class RestoreAddressToClassic

      def self.default(visited=[])
        {
          public_ip: 'public_ip',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RestoreManagedPrefixListVersion
    class RestoreManagedPrefixListVersion

      def self.default(visited=[])
        {
          prefix_list: Stubs::ManagedPrefixList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RestoreSnapshotFromRecycleBin
    class RestoreSnapshotFromRecycleBin

      def self.default(visited=[])
        {
          snapshot_id: 'snapshot_id',
          outpost_arn: 'outpost_arn',
          description: 'description',
          encrypted: false,
          owner_id: 'owner_id',
          progress: 'progress',
          start_time: Time.now,
          state: 'state',
          volume_id: 'volume_id',
          volume_size: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RestoreSnapshotTier
    class RestoreSnapshotTier

      def self.default(visited=[])
        {
          snapshot_id: 'snapshot_id',
          restore_start_time: Time.now,
          restore_duration: 1,
          is_permanent_restore: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RevokeClientVpnIngress
    class RevokeClientVpnIngress

      def self.default(visited=[])
        {
          status: Stubs::ClientVpnAuthorizationRuleStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RevokeSecurityGroupEgress
    class RevokeSecurityGroupEgress

      def self.default(visited=[])
        {
          return: false,
          unknown_ip_permissions: Stubs::IpPermissionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RevokeSecurityGroupIngress
    class RevokeSecurityGroupIngress

      def self.default(visited=[])
        {
          return: false,
          unknown_ip_permissions: Stubs::IpPermissionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RunInstances
    class RunInstances

      def self.default(visited=[])
        {
          groups: Stubs::GroupIdentifierList.default(visited),
          instances: Stubs::InstanceList.default(visited),
          owner_id: 'owner_id',
          requester_id: 'requester_id',
          reservation_id: 'reservation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RunScheduledInstances
    class RunScheduledInstances

      def self.default(visited=[])
        {
          instance_id_set: Stubs::InstanceIdSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for InstanceIdSet
    class InstanceIdSet
      def self.default(visited=[])
        return nil if visited.include?('InstanceIdSet')
        visited = visited + ['InstanceIdSet']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for SearchLocalGatewayRoutes
    class SearchLocalGatewayRoutes

      def self.default(visited=[])
        {
          routes: Stubs::LocalGatewayRouteList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for LocalGatewayRouteList
    class LocalGatewayRouteList
      def self.default(visited=[])
        return nil if visited.include?('LocalGatewayRouteList')
        visited = visited + ['LocalGatewayRouteList']
        [
          Stubs::LocalGatewayRoute.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for SearchTransitGatewayMulticastGroups
    class SearchTransitGatewayMulticastGroups

      def self.default(visited=[])
        {
          multicast_groups: Stubs::TransitGatewayMulticastGroupList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TransitGatewayMulticastGroupList
    class TransitGatewayMulticastGroupList
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayMulticastGroupList')
        visited = visited + ['TransitGatewayMulticastGroupList']
        [
          Stubs::TransitGatewayMulticastGroup.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for TransitGatewayMulticastGroup
    class TransitGatewayMulticastGroup

      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayMulticastGroup')
        visited = visited + ['TransitGatewayMulticastGroup']
        {
          group_ip_address: 'group_ip_address',
          transit_gateway_attachment_id: 'transit_gateway_attachment_id',
          subnet_id: 'subnet_id',
          resource_id: 'resource_id',
          resource_type: 'resource_type',
          resource_owner_id: 'resource_owner_id',
          network_interface_id: 'network_interface_id',
          group_member: false,
          group_source: false,
          member_type: 'member_type',
          source_type: 'source_type',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for SearchTransitGatewayRoutes
    class SearchTransitGatewayRoutes

      def self.default(visited=[])
        {
          routes: Stubs::TransitGatewayRouteList.default(visited),
          additional_routes_available: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TransitGatewayRouteList
    class TransitGatewayRouteList
      def self.default(visited=[])
        return nil if visited.include?('TransitGatewayRouteList')
        visited = visited + ['TransitGatewayRouteList']
        [
          Stubs::TransitGatewayRoute.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for SendDiagnosticInterrupt
    class SendDiagnosticInterrupt

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for StartInstances
    class StartInstances

      def self.default(visited=[])
        {
          starting_instances: Stubs::InstanceStateChangeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for InstanceStateChangeList
    class InstanceStateChangeList
      def self.default(visited=[])
        return nil if visited.include?('InstanceStateChangeList')
        visited = visited + ['InstanceStateChangeList']
        [
          Stubs::InstanceStateChange.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for InstanceStateChange
    class InstanceStateChange

      def self.default(visited=[])
        return nil if visited.include?('InstanceStateChange')
        visited = visited + ['InstanceStateChange']
        {
          current_state: Stubs::InstanceState.default(visited),
          instance_id: 'instance_id',
          previous_state: Stubs::InstanceState.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for StartNetworkInsightsAccessScopeAnalysis
    class StartNetworkInsightsAccessScopeAnalysis

      def self.default(visited=[])
        {
          network_insights_access_scope_analysis: Stubs::NetworkInsightsAccessScopeAnalysis.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for StartNetworkInsightsAnalysis
    class StartNetworkInsightsAnalysis

      def self.default(visited=[])
        {
          network_insights_analysis: Stubs::NetworkInsightsAnalysis.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for StartVpcEndpointServicePrivateDnsVerification
    class StartVpcEndpointServicePrivateDnsVerification

      def self.default(visited=[])
        {
          return_value: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for StopInstances
    class StopInstances

      def self.default(visited=[])
        {
          stopping_instances: Stubs::InstanceStateChangeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for TerminateClientVpnConnections
    class TerminateClientVpnConnections

      def self.default(visited=[])
        {
          client_vpn_endpoint_id: 'client_vpn_endpoint_id',
          username: 'username',
          connection_statuses: Stubs::TerminateConnectionStatusSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TerminateConnectionStatusSet
    class TerminateConnectionStatusSet
      def self.default(visited=[])
        return nil if visited.include?('TerminateConnectionStatusSet')
        visited = visited + ['TerminateConnectionStatusSet']
        [
          Stubs::TerminateConnectionStatus.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for TerminateConnectionStatus
    class TerminateConnectionStatus

      def self.default(visited=[])
        return nil if visited.include?('TerminateConnectionStatus')
        visited = visited + ['TerminateConnectionStatus']
        {
          connection_id: 'connection_id',
          previous_status: Stubs::ClientVpnConnectionStatus.default(visited),
          current_status: Stubs::ClientVpnConnectionStatus.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for TerminateInstances
    class TerminateInstances

      def self.default(visited=[])
        {
          terminating_instances: Stubs::InstanceStateChangeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for UnassignIpv6Addresses
    class UnassignIpv6Addresses

      def self.default(visited=[])
        {
          network_interface_id: 'network_interface_id',
          unassigned_ipv6_addresses: Stubs::Ipv6AddressList.default(visited),
          unassigned_ipv6_prefixes: Stubs::IpPrefixList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for UnassignPrivateIpAddresses
    class UnassignPrivateIpAddresses

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for UnmonitorInstances
    class UnmonitorInstances

      def self.default(visited=[])
        {
          instance_monitorings: Stubs::InstanceMonitoringList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for UpdateSecurityGroupRuleDescriptionsEgress
    class UpdateSecurityGroupRuleDescriptionsEgress

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for UpdateSecurityGroupRuleDescriptionsIngress
    class UpdateSecurityGroupRuleDescriptionsIngress

      def self.default(visited=[])
        {
          return: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for WithdrawByoipCidr
    class WithdrawByoipCidr

      def self.default(visited=[])
        {
          byoip_cidr: Stubs::ByoipCidr.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end
  end
end
