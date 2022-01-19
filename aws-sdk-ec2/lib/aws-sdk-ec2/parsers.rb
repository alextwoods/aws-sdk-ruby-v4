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
        data
      end
    end

    # Operation Parser for AcceptTransitGatewayMulticastDomainAssociations
    class AcceptTransitGatewayMulticastDomainAssociations
      def self.parse(http_resp)
        data = Types::AcceptTransitGatewayMulticastDomainAssociationsOutput.new
        data
      end
    end

    class TransitGatewayMulticastDomainAssociations
      def self.parse(map)
        data = Types::TransitGatewayMulticastDomainAssociations.new
        return data
      end
    end

    class SubnetAssociationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class SubnetAssociation
      def self.parse(map)
        data = Types::SubnetAssociation.new
        return data
      end
    end

    # Operation Parser for AcceptTransitGatewayPeeringAttachment
    class AcceptTransitGatewayPeeringAttachment
      def self.parse(http_resp)
        data = Types::AcceptTransitGatewayPeeringAttachmentOutput.new
        data
      end
    end

    class TransitGatewayPeeringAttachment
      def self.parse(map)
        data = Types::TransitGatewayPeeringAttachment.new
        return data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        return data
      end
    end

    class PeeringAttachmentStatus
      def self.parse(map)
        data = Types::PeeringAttachmentStatus.new
        return data
      end
    end

    class PeeringTgwInfo
      def self.parse(map)
        data = Types::PeeringTgwInfo.new
        return data
      end
    end

    # Operation Parser for AcceptTransitGatewayVpcAttachment
    class AcceptTransitGatewayVpcAttachment
      def self.parse(http_resp)
        data = Types::AcceptTransitGatewayVpcAttachmentOutput.new
        data
      end
    end

    class TransitGatewayVpcAttachment
      def self.parse(map)
        data = Types::TransitGatewayVpcAttachment.new
        return data
      end
    end

    class TransitGatewayVpcAttachmentOptions
      def self.parse(map)
        data = Types::TransitGatewayVpcAttachmentOptions.new
        return data
      end
    end

    class ValueStringList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for AcceptVpcEndpointConnections
    class AcceptVpcEndpointConnections
      def self.parse(http_resp)
        data = Types::AcceptVpcEndpointConnectionsOutput.new
        data
      end
    end

    class UnsuccessfulItemSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class UnsuccessfulItem
      def self.parse(map)
        data = Types::UnsuccessfulItem.new
        return data
      end
    end

    class UnsuccessfulItemError
      def self.parse(map)
        data = Types::UnsuccessfulItemError.new
        return data
      end
    end

    # Operation Parser for AcceptVpcPeeringConnection
    class AcceptVpcPeeringConnection
      def self.parse(http_resp)
        data = Types::AcceptVpcPeeringConnectionOutput.new
        data
      end
    end

    class VpcPeeringConnection
      def self.parse(map)
        data = Types::VpcPeeringConnection.new
        return data
      end
    end

    class VpcPeeringConnectionStateReason
      def self.parse(map)
        data = Types::VpcPeeringConnectionStateReason.new
        return data
      end
    end

    class VpcPeeringConnectionVpcInfo
      def self.parse(map)
        data = Types::VpcPeeringConnectionVpcInfo.new
        return data
      end
    end

    class VpcPeeringConnectionOptionsDescription
      def self.parse(map)
        data = Types::VpcPeeringConnectionOptionsDescription.new
        return data
      end
    end

    class CidrBlockSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CidrBlock
      def self.parse(map)
        data = Types::CidrBlock.new
        return data
      end
    end

    class Ipv6CidrBlockSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Ipv6CidrBlock
      def self.parse(map)
        data = Types::Ipv6CidrBlock.new
        return data
      end
    end

    # Operation Parser for AdvertiseByoipCidr
    class AdvertiseByoipCidr
      def self.parse(http_resp)
        data = Types::AdvertiseByoipCidrOutput.new
        data
      end
    end

    class ByoipCidr
      def self.parse(map)
        data = Types::ByoipCidr.new
        return data
      end
    end

    # Operation Parser for AllocateAddress
    class AllocateAddress
      def self.parse(http_resp)
        data = Types::AllocateAddressOutput.new
        data
      end
    end

    # Operation Parser for AllocateHosts
    class AllocateHosts
      def self.parse(http_resp)
        data = Types::AllocateHostsOutput.new
        data
      end
    end

    class ResponseHostIdList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for AllocateIpamPoolCidr
    class AllocateIpamPoolCidr
      def self.parse(http_resp)
        data = Types::AllocateIpamPoolCidrOutput.new
        data
      end
    end

    class IpamPoolAllocation
      def self.parse(map)
        data = Types::IpamPoolAllocation.new
        return data
      end
    end

    # Operation Parser for ApplySecurityGroupsToClientVpnTargetNetwork
    class ApplySecurityGroupsToClientVpnTargetNetwork
      def self.parse(http_resp)
        data = Types::ApplySecurityGroupsToClientVpnTargetNetworkOutput.new
        data
      end
    end

    class ClientVpnSecurityGroupIdSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for AssignIpv6Addresses
    class AssignIpv6Addresses
      def self.parse(http_resp)
        data = Types::AssignIpv6AddressesOutput.new
        data
      end
    end

    class IpPrefixList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Ipv6AddressList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for AssignPrivateIpAddresses
    class AssignPrivateIpAddresses
      def self.parse(http_resp)
        data = Types::AssignPrivateIpAddressesOutput.new
        data
      end
    end

    class Ipv4PrefixesList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Ipv4PrefixSpecification
      def self.parse(map)
        data = Types::Ipv4PrefixSpecification.new
        return data
      end
    end

    class AssignedPrivateIpAddressList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AssignedPrivateIpAddress
      def self.parse(map)
        data = Types::AssignedPrivateIpAddress.new
        return data
      end
    end

    # Operation Parser for AssociateAddress
    class AssociateAddress
      def self.parse(http_resp)
        data = Types::AssociateAddressOutput.new
        data
      end
    end

    # Operation Parser for AssociateClientVpnTargetNetwork
    class AssociateClientVpnTargetNetwork
      def self.parse(http_resp)
        data = Types::AssociateClientVpnTargetNetworkOutput.new
        data
      end
    end

    class AssociationStatus
      def self.parse(map)
        data = Types::AssociationStatus.new
        return data
      end
    end

    # Operation Parser for AssociateDhcpOptions
    class AssociateDhcpOptions
      def self.parse(http_resp)
        data = Types::AssociateDhcpOptionsOutput.new
        data
      end
    end

    # Operation Parser for AssociateEnclaveCertificateIamRole
    class AssociateEnclaveCertificateIamRole
      def self.parse(http_resp)
        data = Types::AssociateEnclaveCertificateIamRoleOutput.new
        data
      end
    end

    # Operation Parser for AssociateIamInstanceProfile
    class AssociateIamInstanceProfile
      def self.parse(http_resp)
        data = Types::AssociateIamInstanceProfileOutput.new
        data
      end
    end

    class IamInstanceProfileAssociation
      def self.parse(map)
        data = Types::IamInstanceProfileAssociation.new
        return data
      end
    end

    class IamInstanceProfile
      def self.parse(map)
        data = Types::IamInstanceProfile.new
        return data
      end
    end

    # Operation Parser for AssociateInstanceEventWindow
    class AssociateInstanceEventWindow
      def self.parse(http_resp)
        data = Types::AssociateInstanceEventWindowOutput.new
        data
      end
    end

    class InstanceEventWindow
      def self.parse(map)
        data = Types::InstanceEventWindow.new
        return data
      end
    end

    class InstanceEventWindowAssociationTarget
      def self.parse(map)
        data = Types::InstanceEventWindowAssociationTarget.new
        return data
      end
    end

    class DedicatedHostIdList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceIdList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceEventWindowTimeRangeList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceEventWindowTimeRange
      def self.parse(map)
        data = Types::InstanceEventWindowTimeRange.new
        return data
      end
    end

    # Operation Parser for AssociateRouteTable
    class AssociateRouteTable
      def self.parse(http_resp)
        data = Types::AssociateRouteTableOutput.new
        data
      end
    end

    class RouteTableAssociationState
      def self.parse(map)
        data = Types::RouteTableAssociationState.new
        return data
      end
    end

    # Operation Parser for AssociateSubnetCidrBlock
    class AssociateSubnetCidrBlock
      def self.parse(http_resp)
        data = Types::AssociateSubnetCidrBlockOutput.new
        data
      end
    end

    class SubnetIpv6CidrBlockAssociation
      def self.parse(map)
        data = Types::SubnetIpv6CidrBlockAssociation.new
        return data
      end
    end

    class SubnetCidrBlockState
      def self.parse(map)
        data = Types::SubnetCidrBlockState.new
        return data
      end
    end

    # Operation Parser for AssociateTransitGatewayMulticastDomain
    class AssociateTransitGatewayMulticastDomain
      def self.parse(http_resp)
        data = Types::AssociateTransitGatewayMulticastDomainOutput.new
        data
      end
    end

    # Operation Parser for AssociateTransitGatewayRouteTable
    class AssociateTransitGatewayRouteTable
      def self.parse(http_resp)
        data = Types::AssociateTransitGatewayRouteTableOutput.new
        data
      end
    end

    class TransitGatewayAssociation
      def self.parse(map)
        data = Types::TransitGatewayAssociation.new
        return data
      end
    end

    # Operation Parser for AssociateTrunkInterface
    class AssociateTrunkInterface
      def self.parse(http_resp)
        data = Types::AssociateTrunkInterfaceOutput.new
        data
      end
    end

    class TrunkInterfaceAssociation
      def self.parse(map)
        data = Types::TrunkInterfaceAssociation.new
        return data
      end
    end

    # Operation Parser for AssociateVpcCidrBlock
    class AssociateVpcCidrBlock
      def self.parse(http_resp)
        data = Types::AssociateVpcCidrBlockOutput.new
        data
      end
    end

    class VpcCidrBlockAssociation
      def self.parse(map)
        data = Types::VpcCidrBlockAssociation.new
        return data
      end
    end

    class VpcCidrBlockState
      def self.parse(map)
        data = Types::VpcCidrBlockState.new
        return data
      end
    end

    class VpcIpv6CidrBlockAssociation
      def self.parse(map)
        data = Types::VpcIpv6CidrBlockAssociation.new
        return data
      end
    end

    # Operation Parser for AttachClassicLinkVpc
    class AttachClassicLinkVpc
      def self.parse(http_resp)
        data = Types::AttachClassicLinkVpcOutput.new
        data
      end
    end

    # Operation Parser for AttachInternetGateway
    class AttachInternetGateway
      def self.parse(http_resp)
        data = Types::AttachInternetGatewayOutput.new
        data
      end
    end

    # Operation Parser for AttachNetworkInterface
    class AttachNetworkInterface
      def self.parse(http_resp)
        data = Types::AttachNetworkInterfaceOutput.new
        data
      end
    end

    # Operation Parser for AttachVolume
    class AttachVolume
      def self.parse(http_resp)
        data = Types::AttachVolumeOutput.new
        data
      end
    end

    # Operation Parser for AttachVpnGateway
    class AttachVpnGateway
      def self.parse(http_resp)
        data = Types::AttachVpnGatewayOutput.new
        data
      end
    end

    class VpcAttachment
      def self.parse(map)
        data = Types::VpcAttachment.new
        return data
      end
    end

    # Operation Parser for AuthorizeClientVpnIngress
    class AuthorizeClientVpnIngress
      def self.parse(http_resp)
        data = Types::AuthorizeClientVpnIngressOutput.new
        data
      end
    end

    class ClientVpnAuthorizationRuleStatus
      def self.parse(map)
        data = Types::ClientVpnAuthorizationRuleStatus.new
        return data
      end
    end

    # Operation Parser for AuthorizeSecurityGroupEgress
    class AuthorizeSecurityGroupEgress
      def self.parse(http_resp)
        data = Types::AuthorizeSecurityGroupEgressOutput.new
        data
      end
    end

    class SecurityGroupRuleList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class SecurityGroupRule
      def self.parse(map)
        data = Types::SecurityGroupRule.new
        return data
      end
    end

    class ReferencedSecurityGroup
      def self.parse(map)
        data = Types::ReferencedSecurityGroup.new
        return data
      end
    end

    # Operation Parser for AuthorizeSecurityGroupIngress
    class AuthorizeSecurityGroupIngress
      def self.parse(http_resp)
        data = Types::AuthorizeSecurityGroupIngressOutput.new
        data
      end
    end

    # Operation Parser for BundleInstance
    class BundleInstance
      def self.parse(http_resp)
        data = Types::BundleInstanceOutput.new
        data
      end
    end

    class BundleTask
      def self.parse(map)
        data = Types::BundleTask.new
        return data
      end
    end

    class Storage
      def self.parse(map)
        data = Types::Storage.new
        return data
      end
    end

    class S3Storage
      def self.parse(map)
        data = Types::S3Storage.new
        return data
      end
    end

    class BundleTaskError
      def self.parse(map)
        data = Types::BundleTaskError.new
        return data
      end
    end

    # Operation Parser for CancelBundleTask
    class CancelBundleTask
      def self.parse(http_resp)
        data = Types::CancelBundleTaskOutput.new
        data
      end
    end

    # Operation Parser for CancelCapacityReservation
    class CancelCapacityReservation
      def self.parse(http_resp)
        data = Types::CancelCapacityReservationOutput.new
        data
      end
    end

    # Operation Parser for CancelCapacityReservationFleets
    class CancelCapacityReservationFleets
      def self.parse(http_resp)
        data = Types::CancelCapacityReservationFleetsOutput.new
        data
      end
    end

    class FailedCapacityReservationFleetCancellationResultSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class FailedCapacityReservationFleetCancellationResult
      def self.parse(map)
        data = Types::FailedCapacityReservationFleetCancellationResult.new
        return data
      end
    end

    class CancelCapacityReservationFleetError
      def self.parse(map)
        data = Types::CancelCapacityReservationFleetError.new
        return data
      end
    end

    class CapacityReservationFleetCancellationStateSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CapacityReservationFleetCancellationState
      def self.parse(map)
        data = Types::CapacityReservationFleetCancellationState.new
        return data
      end
    end

    # Operation Parser for CancelConversionTask
    class CancelConversionTask
      def self.parse(http_resp)
        data = Types::CancelConversionTaskOutput.new
        data
      end
    end

    # Operation Parser for CancelExportTask
    class CancelExportTask
      def self.parse(http_resp)
        data = Types::CancelExportTaskOutput.new
        data
      end
    end

    # Operation Parser for CancelImportTask
    class CancelImportTask
      def self.parse(http_resp)
        data = Types::CancelImportTaskOutput.new
        data
      end
    end

    # Operation Parser for CancelReservedInstancesListing
    class CancelReservedInstancesListing
      def self.parse(http_resp)
        data = Types::CancelReservedInstancesListingOutput.new
        data
      end
    end

    class ReservedInstancesListingList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ReservedInstancesListing
      def self.parse(map)
        data = Types::ReservedInstancesListing.new
        return data
      end
    end

    class PriceScheduleList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class PriceSchedule
      def self.parse(map)
        data = Types::PriceSchedule.new
        return data
      end
    end

    class InstanceCountList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceCount
      def self.parse(map)
        data = Types::InstanceCount.new
        return data
      end
    end

    # Operation Parser for CancelSpotFleetRequests
    class CancelSpotFleetRequests
      def self.parse(http_resp)
        data = Types::CancelSpotFleetRequestsOutput.new
        data
      end
    end

    class CancelSpotFleetRequestsErrorSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CancelSpotFleetRequestsErrorItem
      def self.parse(map)
        data = Types::CancelSpotFleetRequestsErrorItem.new
        return data
      end
    end

    class CancelSpotFleetRequestsError
      def self.parse(map)
        data = Types::CancelSpotFleetRequestsError.new
        return data
      end
    end

    class CancelSpotFleetRequestsSuccessSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CancelSpotFleetRequestsSuccessItem
      def self.parse(map)
        data = Types::CancelSpotFleetRequestsSuccessItem.new
        return data
      end
    end

    # Operation Parser for CancelSpotInstanceRequests
    class CancelSpotInstanceRequests
      def self.parse(http_resp)
        data = Types::CancelSpotInstanceRequestsOutput.new
        data
      end
    end

    class CancelledSpotInstanceRequestList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CancelledSpotInstanceRequest
      def self.parse(map)
        data = Types::CancelledSpotInstanceRequest.new
        return data
      end
    end

    # Operation Parser for ConfirmProductInstance
    class ConfirmProductInstance
      def self.parse(http_resp)
        data = Types::ConfirmProductInstanceOutput.new
        data
      end
    end

    # Operation Parser for CopyFpgaImage
    class CopyFpgaImage
      def self.parse(http_resp)
        data = Types::CopyFpgaImageOutput.new
        data
      end
    end

    # Operation Parser for CopyImage
    class CopyImage
      def self.parse(http_resp)
        data = Types::CopyImageOutput.new
        data
      end
    end

    # Operation Parser for CopySnapshot
    class CopySnapshot
      def self.parse(http_resp)
        data = Types::CopySnapshotOutput.new
        data
      end
    end

    # Operation Parser for CreateCapacityReservation
    class CreateCapacityReservation
      def self.parse(http_resp)
        data = Types::CreateCapacityReservationOutput.new
        data
      end
    end

    class CapacityReservation
      def self.parse(map)
        data = Types::CapacityReservation.new
        return data
      end
    end

    # Operation Parser for CreateCapacityReservationFleet
    class CreateCapacityReservationFleet
      def self.parse(http_resp)
        data = Types::CreateCapacityReservationFleetOutput.new
        data
      end
    end

    class FleetCapacityReservationSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class FleetCapacityReservation
      def self.parse(map)
        data = Types::FleetCapacityReservation.new
        return data
      end
    end

    # Operation Parser for CreateCarrierGateway
    class CreateCarrierGateway
      def self.parse(http_resp)
        data = Types::CreateCarrierGatewayOutput.new
        data
      end
    end

    class CarrierGateway
      def self.parse(map)
        data = Types::CarrierGateway.new
        return data
      end
    end

    # Operation Parser for CreateClientVpnEndpoint
    class CreateClientVpnEndpoint
      def self.parse(http_resp)
        data = Types::CreateClientVpnEndpointOutput.new
        data
      end
    end

    class ClientVpnEndpointStatus
      def self.parse(map)
        data = Types::ClientVpnEndpointStatus.new
        return data
      end
    end

    # Operation Parser for CreateClientVpnRoute
    class CreateClientVpnRoute
      def self.parse(http_resp)
        data = Types::CreateClientVpnRouteOutput.new
        data
      end
    end

    class ClientVpnRouteStatus
      def self.parse(map)
        data = Types::ClientVpnRouteStatus.new
        return data
      end
    end

    # Operation Parser for CreateCustomerGateway
    class CreateCustomerGateway
      def self.parse(http_resp)
        data = Types::CreateCustomerGatewayOutput.new
        data
      end
    end

    class CustomerGateway
      def self.parse(map)
        data = Types::CustomerGateway.new
        return data
      end
    end

    # Operation Parser for CreateDefaultSubnet
    class CreateDefaultSubnet
      def self.parse(http_resp)
        data = Types::CreateDefaultSubnetOutput.new
        data
      end
    end

    class Subnet
      def self.parse(map)
        data = Types::Subnet.new
        return data
      end
    end

    class PrivateDnsNameOptionsOnLaunch
      def self.parse(map)
        data = Types::PrivateDnsNameOptionsOnLaunch.new
        return data
      end
    end

    class SubnetIpv6CidrBlockAssociationSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for CreateDefaultVpc
    class CreateDefaultVpc
      def self.parse(http_resp)
        data = Types::CreateDefaultVpcOutput.new
        data
      end
    end

    class Vpc
      def self.parse(map)
        data = Types::Vpc.new
        return data
      end
    end

    class VpcCidrBlockAssociationSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class VpcIpv6CidrBlockAssociationSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for CreateDhcpOptions
    class CreateDhcpOptions
      def self.parse(http_resp)
        data = Types::CreateDhcpOptionsOutput.new
        data
      end
    end

    class DhcpOptions
      def self.parse(map)
        data = Types::DhcpOptions.new
        return data
      end
    end

    class DhcpConfigurationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class DhcpConfiguration
      def self.parse(map)
        data = Types::DhcpConfiguration.new
        return data
      end
    end

    class DhcpConfigurationValueList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AttributeValue
      def self.parse(map)
        data = Types::AttributeValue.new
        return data
      end
    end

    # Operation Parser for CreateEgressOnlyInternetGateway
    class CreateEgressOnlyInternetGateway
      def self.parse(http_resp)
        data = Types::CreateEgressOnlyInternetGatewayOutput.new
        data
      end
    end

    class EgressOnlyInternetGateway
      def self.parse(map)
        data = Types::EgressOnlyInternetGateway.new
        return data
      end
    end

    class InternetGatewayAttachmentList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InternetGatewayAttachment
      def self.parse(map)
        data = Types::InternetGatewayAttachment.new
        return data
      end
    end

    # Operation Parser for CreateFleet
    class CreateFleet
      def self.parse(http_resp)
        data = Types::CreateFleetOutput.new
        data
      end
    end

    class CreateFleetInstancesSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CreateFleetInstance
      def self.parse(map)
        data = Types::CreateFleetInstance.new
        return data
      end
    end

    class InstanceIdsSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LaunchTemplateAndOverridesResponse
      def self.parse(map)
        data = Types::LaunchTemplateAndOverridesResponse.new
        return data
      end
    end

    class FleetLaunchTemplateOverrides
      def self.parse(map)
        data = Types::FleetLaunchTemplateOverrides.new
        return data
      end
    end

    class InstanceRequirements
      def self.parse(map)
        data = Types::InstanceRequirements.new
        return data
      end
    end

    class AcceleratorTotalMemoryMiB
      def self.parse(map)
        data = Types::AcceleratorTotalMemoryMiB.new
        return data
      end
    end

    class AcceleratorNameSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AcceleratorManufacturerSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AcceleratorCount
      def self.parse(map)
        data = Types::AcceleratorCount.new
        return data
      end
    end

    class AcceleratorTypeSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class BaselineEbsBandwidthMbps
      def self.parse(map)
        data = Types::BaselineEbsBandwidthMbps.new
        return data
      end
    end

    class TotalLocalStorageGB
      def self.parse(map)
        data = Types::TotalLocalStorageGB.new
        return data
      end
    end

    class LocalStorageTypeSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class NetworkInterfaceCount
      def self.parse(map)
        data = Types::NetworkInterfaceCount.new
        return data
      end
    end

    class InstanceGenerationSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ExcludedInstanceTypeSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class MemoryGiBPerVCpu
      def self.parse(map)
        data = Types::MemoryGiBPerVCpu.new
        return data
      end
    end

    class CpuManufacturerSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class MemoryMiB
      def self.parse(map)
        data = Types::MemoryMiB.new
        return data
      end
    end

    class VCpuCountRange
      def self.parse(map)
        data = Types::VCpuCountRange.new
        return data
      end
    end

    class PlacementResponse
      def self.parse(map)
        data = Types::PlacementResponse.new
        return data
      end
    end

    class FleetLaunchTemplateSpecification
      def self.parse(map)
        data = Types::FleetLaunchTemplateSpecification.new
        return data
      end
    end

    class CreateFleetErrorsSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CreateFleetError
      def self.parse(map)
        data = Types::CreateFleetError.new
        return data
      end
    end

    # Operation Parser for CreateFlowLogs
    class CreateFlowLogs
      def self.parse(http_resp)
        data = Types::CreateFlowLogsOutput.new
        data
      end
    end

    # Operation Parser for CreateFpgaImage
    class CreateFpgaImage
      def self.parse(http_resp)
        data = Types::CreateFpgaImageOutput.new
        data
      end
    end

    # Operation Parser for CreateImage
    class CreateImage
      def self.parse(http_resp)
        data = Types::CreateImageOutput.new
        data
      end
    end

    # Operation Parser for CreateInstanceEventWindow
    class CreateInstanceEventWindow
      def self.parse(http_resp)
        data = Types::CreateInstanceEventWindowOutput.new
        data
      end
    end

    # Operation Parser for CreateInstanceExportTask
    class CreateInstanceExportTask
      def self.parse(http_resp)
        data = Types::CreateInstanceExportTaskOutput.new
        data
      end
    end

    class ExportTask
      def self.parse(map)
        data = Types::ExportTask.new
        return data
      end
    end

    class InstanceExportDetails
      def self.parse(map)
        data = Types::InstanceExportDetails.new
        return data
      end
    end

    class ExportToS3Task
      def self.parse(map)
        data = Types::ExportToS3Task.new
        return data
      end
    end

    # Operation Parser for CreateInternetGateway
    class CreateInternetGateway
      def self.parse(http_resp)
        data = Types::CreateInternetGatewayOutput.new
        data
      end
    end

    class InternetGateway
      def self.parse(map)
        data = Types::InternetGateway.new
        return data
      end
    end

    # Operation Parser for CreateIpam
    class CreateIpam
      def self.parse(http_resp)
        data = Types::CreateIpamOutput.new
        data
      end
    end

    class Ipam
      def self.parse(map)
        data = Types::Ipam.new
        return data
      end
    end

    class IpamOperatingRegionSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class IpamOperatingRegion
      def self.parse(map)
        data = Types::IpamOperatingRegion.new
        return data
      end
    end

    # Operation Parser for CreateIpamPool
    class CreateIpamPool
      def self.parse(http_resp)
        data = Types::CreateIpamPoolOutput.new
        data
      end
    end

    class IpamPool
      def self.parse(map)
        data = Types::IpamPool.new
        return data
      end
    end

    class IpamResourceTagList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class IpamResourceTag
      def self.parse(map)
        data = Types::IpamResourceTag.new
        return data
      end
    end

    # Operation Parser for CreateIpamScope
    class CreateIpamScope
      def self.parse(http_resp)
        data = Types::CreateIpamScopeOutput.new
        data
      end
    end

    class IpamScope
      def self.parse(map)
        data = Types::IpamScope.new
        return data
      end
    end

    # Operation Parser for CreateKeyPair
    class CreateKeyPair
      def self.parse(http_resp)
        data = Types::CreateKeyPairOutput.new
        data
      end
    end

    # Operation Parser for CreateLaunchTemplate
    class CreateLaunchTemplate
      def self.parse(http_resp)
        data = Types::CreateLaunchTemplateOutput.new
        data
      end
    end

    class ValidationWarning
      def self.parse(map)
        data = Types::ValidationWarning.new
        return data
      end
    end

    class ErrorSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ValidationError
      def self.parse(map)
        data = Types::ValidationError.new
        return data
      end
    end

    class LaunchTemplate
      def self.parse(map)
        data = Types::LaunchTemplate.new
        return data
      end
    end

    # Operation Parser for CreateLaunchTemplateVersion
    class CreateLaunchTemplateVersion
      def self.parse(http_resp)
        data = Types::CreateLaunchTemplateVersionOutput.new
        data
      end
    end

    class LaunchTemplateVersion
      def self.parse(map)
        data = Types::LaunchTemplateVersion.new
        return data
      end
    end

    class ResponseLaunchTemplateData
      def self.parse(map)
        data = Types::ResponseLaunchTemplateData.new
        return data
      end
    end

    class LaunchTemplatePrivateDnsNameOptions
      def self.parse(map)
        data = Types::LaunchTemplatePrivateDnsNameOptions.new
        return data
      end
    end

    class LaunchTemplateEnclaveOptions
      def self.parse(map)
        data = Types::LaunchTemplateEnclaveOptions.new
        return data
      end
    end

    class LaunchTemplateInstanceMetadataOptions
      def self.parse(map)
        data = Types::LaunchTemplateInstanceMetadataOptions.new
        return data
      end
    end

    class LaunchTemplateHibernationOptions
      def self.parse(map)
        data = Types::LaunchTemplateHibernationOptions.new
        return data
      end
    end

    class LaunchTemplateLicenseList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LaunchTemplateLicenseConfiguration
      def self.parse(map)
        data = Types::LaunchTemplateLicenseConfiguration.new
        return data
      end
    end

    class LaunchTemplateCapacityReservationSpecificationResponse
      def self.parse(map)
        data = Types::LaunchTemplateCapacityReservationSpecificationResponse.new
        return data
      end
    end

    class CapacityReservationTargetResponse
      def self.parse(map)
        data = Types::CapacityReservationTargetResponse.new
        return data
      end
    end

    class LaunchTemplateCpuOptions
      def self.parse(map)
        data = Types::LaunchTemplateCpuOptions.new
        return data
      end
    end

    class CreditSpecification
      def self.parse(map)
        data = Types::CreditSpecification.new
        return data
      end
    end

    class LaunchTemplateInstanceMarketOptions
      def self.parse(map)
        data = Types::LaunchTemplateInstanceMarketOptions.new
        return data
      end
    end

    class LaunchTemplateSpotMarketOptions
      def self.parse(map)
        data = Types::LaunchTemplateSpotMarketOptions.new
        return data
      end
    end

    class LaunchTemplateElasticInferenceAcceleratorResponseList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LaunchTemplateElasticInferenceAcceleratorResponse
      def self.parse(map)
        data = Types::LaunchTemplateElasticInferenceAcceleratorResponse.new
        return data
      end
    end

    class ElasticGpuSpecificationResponseList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ElasticGpuSpecificationResponse
      def self.parse(map)
        data = Types::ElasticGpuSpecificationResponse.new
        return data
      end
    end

    class LaunchTemplateTagSpecificationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LaunchTemplateTagSpecification
      def self.parse(map)
        data = Types::LaunchTemplateTagSpecification.new
        return data
      end
    end

    class LaunchTemplatePlacement
      def self.parse(map)
        data = Types::LaunchTemplatePlacement.new
        return data
      end
    end

    class LaunchTemplatesMonitoring
      def self.parse(map)
        data = Types::LaunchTemplatesMonitoring.new
        return data
      end
    end

    class LaunchTemplateInstanceNetworkInterfaceSpecificationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LaunchTemplateInstanceNetworkInterfaceSpecification
      def self.parse(map)
        data = Types::LaunchTemplateInstanceNetworkInterfaceSpecification.new
        return data
      end
    end

    class Ipv6PrefixListResponse
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Ipv6PrefixSpecificationResponse
      def self.parse(map)
        data = Types::Ipv6PrefixSpecificationResponse.new
        return data
      end
    end

    class Ipv4PrefixListResponse
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Ipv4PrefixSpecificationResponse
      def self.parse(map)
        data = Types::Ipv4PrefixSpecificationResponse.new
        return data
      end
    end

    class PrivateIpAddressSpecificationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class PrivateIpAddressSpecification
      def self.parse(map)
        data = Types::PrivateIpAddressSpecification.new
        return data
      end
    end

    class InstanceIpv6AddressList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceIpv6Address
      def self.parse(map)
        data = Types::InstanceIpv6Address.new
        return data
      end
    end

    class GroupIdStringList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LaunchTemplateBlockDeviceMappingList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LaunchTemplateBlockDeviceMapping
      def self.parse(map)
        data = Types::LaunchTemplateBlockDeviceMapping.new
        return data
      end
    end

    class LaunchTemplateEbsBlockDevice
      def self.parse(map)
        data = Types::LaunchTemplateEbsBlockDevice.new
        return data
      end
    end

    class LaunchTemplateIamInstanceProfileSpecification
      def self.parse(map)
        data = Types::LaunchTemplateIamInstanceProfileSpecification.new
        return data
      end
    end

    # Operation Parser for CreateLocalGatewayRoute
    class CreateLocalGatewayRoute
      def self.parse(http_resp)
        data = Types::CreateLocalGatewayRouteOutput.new
        data
      end
    end

    class LocalGatewayRoute
      def self.parse(map)
        data = Types::LocalGatewayRoute.new
        return data
      end
    end

    # Operation Parser for CreateLocalGatewayRouteTableVpcAssociation
    class CreateLocalGatewayRouteTableVpcAssociation
      def self.parse(http_resp)
        data = Types::CreateLocalGatewayRouteTableVpcAssociationOutput.new
        data
      end
    end

    class LocalGatewayRouteTableVpcAssociation
      def self.parse(map)
        data = Types::LocalGatewayRouteTableVpcAssociation.new
        return data
      end
    end

    # Operation Parser for CreateManagedPrefixList
    class CreateManagedPrefixList
      def self.parse(http_resp)
        data = Types::CreateManagedPrefixListOutput.new
        data
      end
    end

    class ManagedPrefixList
      def self.parse(map)
        data = Types::ManagedPrefixList.new
        return data
      end
    end

    # Operation Parser for CreateNatGateway
    class CreateNatGateway
      def self.parse(http_resp)
        data = Types::CreateNatGatewayOutput.new
        data
      end
    end

    class NatGateway
      def self.parse(map)
        data = Types::NatGateway.new
        return data
      end
    end

    class ProvisionedBandwidth
      def self.parse(map)
        data = Types::ProvisionedBandwidth.new
        return data
      end
    end

    class NatGatewayAddressList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class NatGatewayAddress
      def self.parse(map)
        data = Types::NatGatewayAddress.new
        return data
      end
    end

    # Operation Parser for CreateNetworkAcl
    class CreateNetworkAcl
      def self.parse(http_resp)
        data = Types::CreateNetworkAclOutput.new
        data
      end
    end

    class NetworkAcl
      def self.parse(map)
        data = Types::NetworkAcl.new
        return data
      end
    end

    class NetworkAclEntryList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class NetworkAclEntry
      def self.parse(map)
        data = Types::NetworkAclEntry.new
        return data
      end
    end

    class PortRange
      def self.parse(map)
        data = Types::PortRange.new
        return data
      end
    end

    class IcmpTypeCode
      def self.parse(map)
        data = Types::IcmpTypeCode.new
        return data
      end
    end

    class NetworkAclAssociationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class NetworkAclAssociation
      def self.parse(map)
        data = Types::NetworkAclAssociation.new
        return data
      end
    end

    # Operation Parser for CreateNetworkAclEntry
    class CreateNetworkAclEntry
      def self.parse(http_resp)
        data = Types::CreateNetworkAclEntryOutput.new
        data
      end
    end

    # Operation Parser for CreateNetworkInsightsAccessScope
    class CreateNetworkInsightsAccessScope
      def self.parse(http_resp)
        data = Types::CreateNetworkInsightsAccessScopeOutput.new
        data
      end
    end

    class NetworkInsightsAccessScopeContent
      def self.parse(map)
        data = Types::NetworkInsightsAccessScopeContent.new
        return data
      end
    end

    class AccessScopePathList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AccessScopePath
      def self.parse(map)
        data = Types::AccessScopePath.new
        return data
      end
    end

    class ThroughResourcesStatementList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ThroughResourcesStatement
      def self.parse(map)
        data = Types::ThroughResourcesStatement.new
        return data
      end
    end

    class ResourceStatement
      def self.parse(map)
        data = Types::ResourceStatement.new
        return data
      end
    end

    class PathStatement
      def self.parse(map)
        data = Types::PathStatement.new
        return data
      end
    end

    class PacketHeaderStatement
      def self.parse(map)
        data = Types::PacketHeaderStatement.new
        return data
      end
    end

    class ProtocolList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class NetworkInsightsAccessScope
      def self.parse(map)
        data = Types::NetworkInsightsAccessScope.new
        return data
      end
    end

    # Operation Parser for CreateNetworkInsightsPath
    class CreateNetworkInsightsPath
      def self.parse(http_resp)
        data = Types::CreateNetworkInsightsPathOutput.new
        data
      end
    end

    class NetworkInsightsPath
      def self.parse(map)
        data = Types::NetworkInsightsPath.new
        return data
      end
    end

    # Operation Parser for CreateNetworkInterface
    class CreateNetworkInterface
      def self.parse(http_resp)
        data = Types::CreateNetworkInterfaceOutput.new
        data
      end
    end

    class NetworkInterface
      def self.parse(map)
        data = Types::NetworkInterface.new
        return data
      end
    end

    class Ipv6PrefixesList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Ipv6PrefixSpecification
      def self.parse(map)
        data = Types::Ipv6PrefixSpecification.new
        return data
      end
    end

    class NetworkInterfacePrivateIpAddressList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class NetworkInterfacePrivateIpAddress
      def self.parse(map)
        data = Types::NetworkInterfacePrivateIpAddress.new
        return data
      end
    end

    class NetworkInterfaceAssociation
      def self.parse(map)
        data = Types::NetworkInterfaceAssociation.new
        return data
      end
    end

    class NetworkInterfaceIpv6AddressesList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class NetworkInterfaceIpv6Address
      def self.parse(map)
        data = Types::NetworkInterfaceIpv6Address.new
        return data
      end
    end

    class GroupIdentifierList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class GroupIdentifier
      def self.parse(map)
        data = Types::GroupIdentifier.new
        return data
      end
    end

    class NetworkInterfaceAttachment
      def self.parse(map)
        data = Types::NetworkInterfaceAttachment.new
        return data
      end
    end

    # Operation Parser for CreateNetworkInterfacePermission
    class CreateNetworkInterfacePermission
      def self.parse(http_resp)
        data = Types::CreateNetworkInterfacePermissionOutput.new
        data
      end
    end

    class NetworkInterfacePermission
      def self.parse(map)
        data = Types::NetworkInterfacePermission.new
        return data
      end
    end

    class NetworkInterfacePermissionState
      def self.parse(map)
        data = Types::NetworkInterfacePermissionState.new
        return data
      end
    end

    # Operation Parser for CreatePlacementGroup
    class CreatePlacementGroup
      def self.parse(http_resp)
        data = Types::CreatePlacementGroupOutput.new
        data
      end
    end

    class PlacementGroup
      def self.parse(map)
        data = Types::PlacementGroup.new
        return data
      end
    end

    # Operation Parser for CreatePublicIpv4Pool
    class CreatePublicIpv4Pool
      def self.parse(http_resp)
        data = Types::CreatePublicIpv4PoolOutput.new
        data
      end
    end

    # Operation Parser for CreateReplaceRootVolumeTask
    class CreateReplaceRootVolumeTask
      def self.parse(http_resp)
        data = Types::CreateReplaceRootVolumeTaskOutput.new
        data
      end
    end

    class ReplaceRootVolumeTask
      def self.parse(map)
        data = Types::ReplaceRootVolumeTask.new
        return data
      end
    end

    # Operation Parser for CreateReservedInstancesListing
    class CreateReservedInstancesListing
      def self.parse(http_resp)
        data = Types::CreateReservedInstancesListingOutput.new
        data
      end
    end

    # Operation Parser for CreateRestoreImageTask
    class CreateRestoreImageTask
      def self.parse(http_resp)
        data = Types::CreateRestoreImageTaskOutput.new
        data
      end
    end

    # Operation Parser for CreateRoute
    class CreateRoute
      def self.parse(http_resp)
        data = Types::CreateRouteOutput.new
        data
      end
    end

    # Operation Parser for CreateRouteTable
    class CreateRouteTable
      def self.parse(http_resp)
        data = Types::CreateRouteTableOutput.new
        data
      end
    end

    class RouteTable
      def self.parse(map)
        data = Types::RouteTable.new
        return data
      end
    end

    class RouteList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Route
      def self.parse(map)
        data = Types::Route.new
        return data
      end
    end

    class PropagatingVgwList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class PropagatingVgw
      def self.parse(map)
        data = Types::PropagatingVgw.new
        return data
      end
    end

    class RouteTableAssociationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class RouteTableAssociation
      def self.parse(map)
        data = Types::RouteTableAssociation.new
        return data
      end
    end

    # Operation Parser for CreateSecurityGroup
    class CreateSecurityGroup
      def self.parse(http_resp)
        data = Types::CreateSecurityGroupOutput.new
        data
      end
    end

    # Operation Parser for CreateSnapshot
    class CreateSnapshot
      def self.parse(http_resp)
        data = Types::CreateSnapshotOutput.new
        data
      end
    end

    # Operation Parser for CreateSnapshots
    class CreateSnapshots
      def self.parse(http_resp)
        data = Types::CreateSnapshotsOutput.new
        data
      end
    end

    class SnapshotSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class SnapshotInfo
      def self.parse(map)
        data = Types::SnapshotInfo.new
        return data
      end
    end

    # Operation Parser for CreateSpotDatafeedSubscription
    class CreateSpotDatafeedSubscription
      def self.parse(http_resp)
        data = Types::CreateSpotDatafeedSubscriptionOutput.new
        data
      end
    end

    class SpotDatafeedSubscription
      def self.parse(map)
        data = Types::SpotDatafeedSubscription.new
        return data
      end
    end

    class SpotInstanceStateFault
      def self.parse(map)
        data = Types::SpotInstanceStateFault.new
        return data
      end
    end

    # Operation Parser for CreateStoreImageTask
    class CreateStoreImageTask
      def self.parse(http_resp)
        data = Types::CreateStoreImageTaskOutput.new
        data
      end
    end

    # Operation Parser for CreateSubnet
    class CreateSubnet
      def self.parse(http_resp)
        data = Types::CreateSubnetOutput.new
        data
      end
    end

    # Operation Parser for CreateSubnetCidrReservation
    class CreateSubnetCidrReservation
      def self.parse(http_resp)
        data = Types::CreateSubnetCidrReservationOutput.new
        data
      end
    end

    class SubnetCidrReservation
      def self.parse(map)
        data = Types::SubnetCidrReservation.new
        return data
      end
    end

    # Operation Parser for CreateTags
    class CreateTags
      def self.parse(http_resp)
        data = Types::CreateTagsOutput.new
        data
      end
    end

    # Operation Parser for CreateTrafficMirrorFilter
    class CreateTrafficMirrorFilter
      def self.parse(http_resp)
        data = Types::CreateTrafficMirrorFilterOutput.new
        data
      end
    end

    class TrafficMirrorFilter
      def self.parse(map)
        data = Types::TrafficMirrorFilter.new
        return data
      end
    end

    class TrafficMirrorNetworkServiceList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class TrafficMirrorFilterRuleList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class TrafficMirrorFilterRule
      def self.parse(map)
        data = Types::TrafficMirrorFilterRule.new
        return data
      end
    end

    class TrafficMirrorPortRange
      def self.parse(map)
        data = Types::TrafficMirrorPortRange.new
        return data
      end
    end

    # Operation Parser for CreateTrafficMirrorFilterRule
    class CreateTrafficMirrorFilterRule
      def self.parse(http_resp)
        data = Types::CreateTrafficMirrorFilterRuleOutput.new
        data
      end
    end

    # Operation Parser for CreateTrafficMirrorSession
    class CreateTrafficMirrorSession
      def self.parse(http_resp)
        data = Types::CreateTrafficMirrorSessionOutput.new
        data
      end
    end

    class TrafficMirrorSession
      def self.parse(map)
        data = Types::TrafficMirrorSession.new
        return data
      end
    end

    # Operation Parser for CreateTrafficMirrorTarget
    class CreateTrafficMirrorTarget
      def self.parse(http_resp)
        data = Types::CreateTrafficMirrorTargetOutput.new
        data
      end
    end

    class TrafficMirrorTarget
      def self.parse(map)
        data = Types::TrafficMirrorTarget.new
        return data
      end
    end

    # Operation Parser for CreateTransitGateway
    class CreateTransitGateway
      def self.parse(http_resp)
        data = Types::CreateTransitGatewayOutput.new
        data
      end
    end

    class TransitGateway
      def self.parse(map)
        data = Types::TransitGateway.new
        return data
      end
    end

    class TransitGatewayOptions
      def self.parse(map)
        data = Types::TransitGatewayOptions.new
        return data
      end
    end

    # Operation Parser for CreateTransitGatewayConnect
    class CreateTransitGatewayConnect
      def self.parse(http_resp)
        data = Types::CreateTransitGatewayConnectOutput.new
        data
      end
    end

    class TransitGatewayConnect
      def self.parse(map)
        data = Types::TransitGatewayConnect.new
        return data
      end
    end

    class TransitGatewayConnectOptions
      def self.parse(map)
        data = Types::TransitGatewayConnectOptions.new
        return data
      end
    end

    # Operation Parser for CreateTransitGatewayConnectPeer
    class CreateTransitGatewayConnectPeer
      def self.parse(http_resp)
        data = Types::CreateTransitGatewayConnectPeerOutput.new
        data
      end
    end

    class TransitGatewayConnectPeer
      def self.parse(map)
        data = Types::TransitGatewayConnectPeer.new
        return data
      end
    end

    class TransitGatewayConnectPeerConfiguration
      def self.parse(map)
        data = Types::TransitGatewayConnectPeerConfiguration.new
        return data
      end
    end

    class TransitGatewayAttachmentBgpConfigurationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class TransitGatewayAttachmentBgpConfiguration
      def self.parse(map)
        data = Types::TransitGatewayAttachmentBgpConfiguration.new
        return data
      end
    end

    class InsideCidrBlocksStringList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for CreateTransitGatewayMulticastDomain
    class CreateTransitGatewayMulticastDomain
      def self.parse(http_resp)
        data = Types::CreateTransitGatewayMulticastDomainOutput.new
        data
      end
    end

    class TransitGatewayMulticastDomain
      def self.parse(map)
        data = Types::TransitGatewayMulticastDomain.new
        return data
      end
    end

    class TransitGatewayMulticastDomainOptions
      def self.parse(map)
        data = Types::TransitGatewayMulticastDomainOptions.new
        return data
      end
    end

    # Operation Parser for CreateTransitGatewayPeeringAttachment
    class CreateTransitGatewayPeeringAttachment
      def self.parse(http_resp)
        data = Types::CreateTransitGatewayPeeringAttachmentOutput.new
        data
      end
    end

    # Operation Parser for CreateTransitGatewayPrefixListReference
    class CreateTransitGatewayPrefixListReference
      def self.parse(http_resp)
        data = Types::CreateTransitGatewayPrefixListReferenceOutput.new
        data
      end
    end

    class TransitGatewayPrefixListReference
      def self.parse(map)
        data = Types::TransitGatewayPrefixListReference.new
        return data
      end
    end

    class TransitGatewayPrefixListAttachment
      def self.parse(map)
        data = Types::TransitGatewayPrefixListAttachment.new
        return data
      end
    end

    # Operation Parser for CreateTransitGatewayRoute
    class CreateTransitGatewayRoute
      def self.parse(http_resp)
        data = Types::CreateTransitGatewayRouteOutput.new
        data
      end
    end

    class TransitGatewayRoute
      def self.parse(map)
        data = Types::TransitGatewayRoute.new
        return data
      end
    end

    class TransitGatewayRouteAttachmentList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class TransitGatewayRouteAttachment
      def self.parse(map)
        data = Types::TransitGatewayRouteAttachment.new
        return data
      end
    end

    # Operation Parser for CreateTransitGatewayRouteTable
    class CreateTransitGatewayRouteTable
      def self.parse(http_resp)
        data = Types::CreateTransitGatewayRouteTableOutput.new
        data
      end
    end

    class TransitGatewayRouteTable
      def self.parse(map)
        data = Types::TransitGatewayRouteTable.new
        return data
      end
    end

    # Operation Parser for CreateTransitGatewayVpcAttachment
    class CreateTransitGatewayVpcAttachment
      def self.parse(http_resp)
        data = Types::CreateTransitGatewayVpcAttachmentOutput.new
        data
      end
    end

    # Operation Parser for CreateVolume
    class CreateVolume
      def self.parse(http_resp)
        data = Types::CreateVolumeOutput.new
        data
      end
    end

    class VolumeAttachmentList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class VolumeAttachment
      def self.parse(map)
        data = Types::VolumeAttachment.new
        return data
      end
    end

    # Operation Parser for CreateVpc
    class CreateVpc
      def self.parse(http_resp)
        data = Types::CreateVpcOutput.new
        data
      end
    end

    # Operation Parser for CreateVpcEndpoint
    class CreateVpcEndpoint
      def self.parse(http_resp)
        data = Types::CreateVpcEndpointOutput.new
        data
      end
    end

    class VpcEndpoint
      def self.parse(map)
        data = Types::VpcEndpoint.new
        return data
      end
    end

    class LastError
      def self.parse(map)
        data = Types::LastError.new
        return data
      end
    end

    class DnsEntrySet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class DnsEntry
      def self.parse(map)
        data = Types::DnsEntry.new
        return data
      end
    end

    class GroupIdentifierSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class SecurityGroupIdentifier
      def self.parse(map)
        data = Types::SecurityGroupIdentifier.new
        return data
      end
    end

    # Operation Parser for CreateVpcEndpointConnectionNotification
    class CreateVpcEndpointConnectionNotification
      def self.parse(http_resp)
        data = Types::CreateVpcEndpointConnectionNotificationOutput.new
        data
      end
    end

    class ConnectionNotification
      def self.parse(map)
        data = Types::ConnectionNotification.new
        return data
      end
    end

    # Operation Parser for CreateVpcEndpointServiceConfiguration
    class CreateVpcEndpointServiceConfiguration
      def self.parse(http_resp)
        data = Types::CreateVpcEndpointServiceConfigurationOutput.new
        data
      end
    end

    class ServiceConfiguration
      def self.parse(map)
        data = Types::ServiceConfiguration.new
        return data
      end
    end

    class PrivateDnsNameConfiguration
      def self.parse(map)
        data = Types::PrivateDnsNameConfiguration.new
        return data
      end
    end

    class ServiceTypeDetailSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ServiceTypeDetail
      def self.parse(map)
        data = Types::ServiceTypeDetail.new
        return data
      end
    end

    # Operation Parser for CreateVpcPeeringConnection
    class CreateVpcPeeringConnection
      def self.parse(http_resp)
        data = Types::CreateVpcPeeringConnectionOutput.new
        data
      end
    end

    # Operation Parser for CreateVpnConnection
    class CreateVpnConnection
      def self.parse(http_resp)
        data = Types::CreateVpnConnectionOutput.new
        data
      end
    end

    class VpnConnection
      def self.parse(map)
        data = Types::VpnConnection.new
        return data
      end
    end

    class VgwTelemetryList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class VgwTelemetry
      def self.parse(map)
        data = Types::VgwTelemetry.new
        return data
      end
    end

    class VpnStaticRouteList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class VpnStaticRoute
      def self.parse(map)
        data = Types::VpnStaticRoute.new
        return data
      end
    end

    class VpnConnectionOptions
      def self.parse(map)
        data = Types::VpnConnectionOptions.new
        return data
      end
    end

    class TunnelOptionsList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class TunnelOption
      def self.parse(map)
        data = Types::TunnelOption.new
        return data
      end
    end

    class IKEVersionsList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class IKEVersionsListValue
      def self.parse(map)
        data = Types::IKEVersionsListValue.new
        return data
      end
    end

    class Phase2DHGroupNumbersList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Phase2DHGroupNumbersListValue
      def self.parse(map)
        data = Types::Phase2DHGroupNumbersListValue.new
        return data
      end
    end

    class Phase1DHGroupNumbersList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Phase1DHGroupNumbersListValue
      def self.parse(map)
        data = Types::Phase1DHGroupNumbersListValue.new
        return data
      end
    end

    class Phase2IntegrityAlgorithmsList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Phase2IntegrityAlgorithmsListValue
      def self.parse(map)
        data = Types::Phase2IntegrityAlgorithmsListValue.new
        return data
      end
    end

    class Phase1IntegrityAlgorithmsList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Phase1IntegrityAlgorithmsListValue
      def self.parse(map)
        data = Types::Phase1IntegrityAlgorithmsListValue.new
        return data
      end
    end

    class Phase2EncryptionAlgorithmsList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Phase2EncryptionAlgorithmsListValue
      def self.parse(map)
        data = Types::Phase2EncryptionAlgorithmsListValue.new
        return data
      end
    end

    class Phase1EncryptionAlgorithmsList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Phase1EncryptionAlgorithmsListValue
      def self.parse(map)
        data = Types::Phase1EncryptionAlgorithmsListValue.new
        return data
      end
    end

    # Operation Parser for CreateVpnConnectionRoute
    class CreateVpnConnectionRoute
      def self.parse(http_resp)
        data = Types::CreateVpnConnectionRouteOutput.new
        data
      end
    end

    # Operation Parser for CreateVpnGateway
    class CreateVpnGateway
      def self.parse(http_resp)
        data = Types::CreateVpnGatewayOutput.new
        data
      end
    end

    class VpnGateway
      def self.parse(map)
        data = Types::VpnGateway.new
        return data
      end
    end

    class VpcAttachmentList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DeleteCarrierGateway
    class DeleteCarrierGateway
      def self.parse(http_resp)
        data = Types::DeleteCarrierGatewayOutput.new
        data
      end
    end

    # Operation Parser for DeleteClientVpnEndpoint
    class DeleteClientVpnEndpoint
      def self.parse(http_resp)
        data = Types::DeleteClientVpnEndpointOutput.new
        data
      end
    end

    # Operation Parser for DeleteClientVpnRoute
    class DeleteClientVpnRoute
      def self.parse(http_resp)
        data = Types::DeleteClientVpnRouteOutput.new
        data
      end
    end

    # Operation Parser for DeleteCustomerGateway
    class DeleteCustomerGateway
      def self.parse(http_resp)
        data = Types::DeleteCustomerGatewayOutput.new
        data
      end
    end

    # Operation Parser for DeleteDhcpOptions
    class DeleteDhcpOptions
      def self.parse(http_resp)
        data = Types::DeleteDhcpOptionsOutput.new
        data
      end
    end

    # Operation Parser for DeleteEgressOnlyInternetGateway
    class DeleteEgressOnlyInternetGateway
      def self.parse(http_resp)
        data = Types::DeleteEgressOnlyInternetGatewayOutput.new
        data
      end
    end

    # Operation Parser for DeleteFleets
    class DeleteFleets
      def self.parse(http_resp)
        data = Types::DeleteFleetsOutput.new
        data
      end
    end

    class DeleteFleetErrorSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class DeleteFleetErrorItem
      def self.parse(map)
        data = Types::DeleteFleetErrorItem.new
        return data
      end
    end

    class DeleteFleetError
      def self.parse(map)
        data = Types::DeleteFleetError.new
        return data
      end
    end

    class DeleteFleetSuccessSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class DeleteFleetSuccessItem
      def self.parse(map)
        data = Types::DeleteFleetSuccessItem.new
        return data
      end
    end

    # Operation Parser for DeleteFlowLogs
    class DeleteFlowLogs
      def self.parse(http_resp)
        data = Types::DeleteFlowLogsOutput.new
        data
      end
    end

    # Operation Parser for DeleteFpgaImage
    class DeleteFpgaImage
      def self.parse(http_resp)
        data = Types::DeleteFpgaImageOutput.new
        data
      end
    end

    # Operation Parser for DeleteInstanceEventWindow
    class DeleteInstanceEventWindow
      def self.parse(http_resp)
        data = Types::DeleteInstanceEventWindowOutput.new
        data
      end
    end

    class InstanceEventWindowStateChange
      def self.parse(map)
        data = Types::InstanceEventWindowStateChange.new
        return data
      end
    end

    # Operation Parser for DeleteInternetGateway
    class DeleteInternetGateway
      def self.parse(http_resp)
        data = Types::DeleteInternetGatewayOutput.new
        data
      end
    end

    # Operation Parser for DeleteIpam
    class DeleteIpam
      def self.parse(http_resp)
        data = Types::DeleteIpamOutput.new
        data
      end
    end

    # Operation Parser for DeleteIpamPool
    class DeleteIpamPool
      def self.parse(http_resp)
        data = Types::DeleteIpamPoolOutput.new
        data
      end
    end

    # Operation Parser for DeleteIpamScope
    class DeleteIpamScope
      def self.parse(http_resp)
        data = Types::DeleteIpamScopeOutput.new
        data
      end
    end

    # Operation Parser for DeleteKeyPair
    class DeleteKeyPair
      def self.parse(http_resp)
        data = Types::DeleteKeyPairOutput.new
        data
      end
    end

    # Operation Parser for DeleteLaunchTemplate
    class DeleteLaunchTemplate
      def self.parse(http_resp)
        data = Types::DeleteLaunchTemplateOutput.new
        data
      end
    end

    # Operation Parser for DeleteLaunchTemplateVersions
    class DeleteLaunchTemplateVersions
      def self.parse(http_resp)
        data = Types::DeleteLaunchTemplateVersionsOutput.new
        data
      end
    end

    class DeleteLaunchTemplateVersionsResponseErrorSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class DeleteLaunchTemplateVersionsResponseErrorItem
      def self.parse(map)
        data = Types::DeleteLaunchTemplateVersionsResponseErrorItem.new
        return data
      end
    end

    class ResponseError
      def self.parse(map)
        data = Types::ResponseError.new
        return data
      end
    end

    class DeleteLaunchTemplateVersionsResponseSuccessSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class DeleteLaunchTemplateVersionsResponseSuccessItem
      def self.parse(map)
        data = Types::DeleteLaunchTemplateVersionsResponseSuccessItem.new
        return data
      end
    end

    # Operation Parser for DeleteLocalGatewayRoute
    class DeleteLocalGatewayRoute
      def self.parse(http_resp)
        data = Types::DeleteLocalGatewayRouteOutput.new
        data
      end
    end

    # Operation Parser for DeleteLocalGatewayRouteTableVpcAssociation
    class DeleteLocalGatewayRouteTableVpcAssociation
      def self.parse(http_resp)
        data = Types::DeleteLocalGatewayRouteTableVpcAssociationOutput.new
        data
      end
    end

    # Operation Parser for DeleteManagedPrefixList
    class DeleteManagedPrefixList
      def self.parse(http_resp)
        data = Types::DeleteManagedPrefixListOutput.new
        data
      end
    end

    # Operation Parser for DeleteNatGateway
    class DeleteNatGateway
      def self.parse(http_resp)
        data = Types::DeleteNatGatewayOutput.new
        data
      end
    end

    # Operation Parser for DeleteNetworkAcl
    class DeleteNetworkAcl
      def self.parse(http_resp)
        data = Types::DeleteNetworkAclOutput.new
        data
      end
    end

    # Operation Parser for DeleteNetworkAclEntry
    class DeleteNetworkAclEntry
      def self.parse(http_resp)
        data = Types::DeleteNetworkAclEntryOutput.new
        data
      end
    end

    # Operation Parser for DeleteNetworkInsightsAccessScope
    class DeleteNetworkInsightsAccessScope
      def self.parse(http_resp)
        data = Types::DeleteNetworkInsightsAccessScopeOutput.new
        data
      end
    end

    # Operation Parser for DeleteNetworkInsightsAccessScopeAnalysis
    class DeleteNetworkInsightsAccessScopeAnalysis
      def self.parse(http_resp)
        data = Types::DeleteNetworkInsightsAccessScopeAnalysisOutput.new
        data
      end
    end

    # Operation Parser for DeleteNetworkInsightsAnalysis
    class DeleteNetworkInsightsAnalysis
      def self.parse(http_resp)
        data = Types::DeleteNetworkInsightsAnalysisOutput.new
        data
      end
    end

    # Operation Parser for DeleteNetworkInsightsPath
    class DeleteNetworkInsightsPath
      def self.parse(http_resp)
        data = Types::DeleteNetworkInsightsPathOutput.new
        data
      end
    end

    # Operation Parser for DeleteNetworkInterface
    class DeleteNetworkInterface
      def self.parse(http_resp)
        data = Types::DeleteNetworkInterfaceOutput.new
        data
      end
    end

    # Operation Parser for DeleteNetworkInterfacePermission
    class DeleteNetworkInterfacePermission
      def self.parse(http_resp)
        data = Types::DeleteNetworkInterfacePermissionOutput.new
        data
      end
    end

    # Operation Parser for DeletePlacementGroup
    class DeletePlacementGroup
      def self.parse(http_resp)
        data = Types::DeletePlacementGroupOutput.new
        data
      end
    end

    # Operation Parser for DeletePublicIpv4Pool
    class DeletePublicIpv4Pool
      def self.parse(http_resp)
        data = Types::DeletePublicIpv4PoolOutput.new
        data
      end
    end

    # Operation Parser for DeleteQueuedReservedInstances
    class DeleteQueuedReservedInstances
      def self.parse(http_resp)
        data = Types::DeleteQueuedReservedInstancesOutput.new
        data
      end
    end

    class FailedQueuedPurchaseDeletionSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class FailedQueuedPurchaseDeletion
      def self.parse(map)
        data = Types::FailedQueuedPurchaseDeletion.new
        return data
      end
    end

    class DeleteQueuedReservedInstancesError
      def self.parse(map)
        data = Types::DeleteQueuedReservedInstancesError.new
        return data
      end
    end

    class SuccessfulQueuedPurchaseDeletionSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class SuccessfulQueuedPurchaseDeletion
      def self.parse(map)
        data = Types::SuccessfulQueuedPurchaseDeletion.new
        return data
      end
    end

    # Operation Parser for DeleteRoute
    class DeleteRoute
      def self.parse(http_resp)
        data = Types::DeleteRouteOutput.new
        data
      end
    end

    # Operation Parser for DeleteRouteTable
    class DeleteRouteTable
      def self.parse(http_resp)
        data = Types::DeleteRouteTableOutput.new
        data
      end
    end

    # Operation Parser for DeleteSecurityGroup
    class DeleteSecurityGroup
      def self.parse(http_resp)
        data = Types::DeleteSecurityGroupOutput.new
        data
      end
    end

    # Operation Parser for DeleteSnapshot
    class DeleteSnapshot
      def self.parse(http_resp)
        data = Types::DeleteSnapshotOutput.new
        data
      end
    end

    # Operation Parser for DeleteSpotDatafeedSubscription
    class DeleteSpotDatafeedSubscription
      def self.parse(http_resp)
        data = Types::DeleteSpotDatafeedSubscriptionOutput.new
        data
      end
    end

    # Operation Parser for DeleteSubnet
    class DeleteSubnet
      def self.parse(http_resp)
        data = Types::DeleteSubnetOutput.new
        data
      end
    end

    # Operation Parser for DeleteSubnetCidrReservation
    class DeleteSubnetCidrReservation
      def self.parse(http_resp)
        data = Types::DeleteSubnetCidrReservationOutput.new
        data
      end
    end

    # Operation Parser for DeleteTags
    class DeleteTags
      def self.parse(http_resp)
        data = Types::DeleteTagsOutput.new
        data
      end
    end

    # Operation Parser for DeleteTrafficMirrorFilter
    class DeleteTrafficMirrorFilter
      def self.parse(http_resp)
        data = Types::DeleteTrafficMirrorFilterOutput.new
        data
      end
    end

    # Operation Parser for DeleteTrafficMirrorFilterRule
    class DeleteTrafficMirrorFilterRule
      def self.parse(http_resp)
        data = Types::DeleteTrafficMirrorFilterRuleOutput.new
        data
      end
    end

    # Operation Parser for DeleteTrafficMirrorSession
    class DeleteTrafficMirrorSession
      def self.parse(http_resp)
        data = Types::DeleteTrafficMirrorSessionOutput.new
        data
      end
    end

    # Operation Parser for DeleteTrafficMirrorTarget
    class DeleteTrafficMirrorTarget
      def self.parse(http_resp)
        data = Types::DeleteTrafficMirrorTargetOutput.new
        data
      end
    end

    # Operation Parser for DeleteTransitGateway
    class DeleteTransitGateway
      def self.parse(http_resp)
        data = Types::DeleteTransitGatewayOutput.new
        data
      end
    end

    # Operation Parser for DeleteTransitGatewayConnect
    class DeleteTransitGatewayConnect
      def self.parse(http_resp)
        data = Types::DeleteTransitGatewayConnectOutput.new
        data
      end
    end

    # Operation Parser for DeleteTransitGatewayConnectPeer
    class DeleteTransitGatewayConnectPeer
      def self.parse(http_resp)
        data = Types::DeleteTransitGatewayConnectPeerOutput.new
        data
      end
    end

    # Operation Parser for DeleteTransitGatewayMulticastDomain
    class DeleteTransitGatewayMulticastDomain
      def self.parse(http_resp)
        data = Types::DeleteTransitGatewayMulticastDomainOutput.new
        data
      end
    end

    # Operation Parser for DeleteTransitGatewayPeeringAttachment
    class DeleteTransitGatewayPeeringAttachment
      def self.parse(http_resp)
        data = Types::DeleteTransitGatewayPeeringAttachmentOutput.new
        data
      end
    end

    # Operation Parser for DeleteTransitGatewayPrefixListReference
    class DeleteTransitGatewayPrefixListReference
      def self.parse(http_resp)
        data = Types::DeleteTransitGatewayPrefixListReferenceOutput.new
        data
      end
    end

    # Operation Parser for DeleteTransitGatewayRoute
    class DeleteTransitGatewayRoute
      def self.parse(http_resp)
        data = Types::DeleteTransitGatewayRouteOutput.new
        data
      end
    end

    # Operation Parser for DeleteTransitGatewayRouteTable
    class DeleteTransitGatewayRouteTable
      def self.parse(http_resp)
        data = Types::DeleteTransitGatewayRouteTableOutput.new
        data
      end
    end

    # Operation Parser for DeleteTransitGatewayVpcAttachment
    class DeleteTransitGatewayVpcAttachment
      def self.parse(http_resp)
        data = Types::DeleteTransitGatewayVpcAttachmentOutput.new
        data
      end
    end

    # Operation Parser for DeleteVolume
    class DeleteVolume
      def self.parse(http_resp)
        data = Types::DeleteVolumeOutput.new
        data
      end
    end

    # Operation Parser for DeleteVpc
    class DeleteVpc
      def self.parse(http_resp)
        data = Types::DeleteVpcOutput.new
        data
      end
    end

    # Operation Parser for DeleteVpcEndpointConnectionNotifications
    class DeleteVpcEndpointConnectionNotifications
      def self.parse(http_resp)
        data = Types::DeleteVpcEndpointConnectionNotificationsOutput.new
        data
      end
    end

    # Operation Parser for DeleteVpcEndpointServiceConfigurations
    class DeleteVpcEndpointServiceConfigurations
      def self.parse(http_resp)
        data = Types::DeleteVpcEndpointServiceConfigurationsOutput.new
        data
      end
    end

    # Operation Parser for DeleteVpcEndpoints
    class DeleteVpcEndpoints
      def self.parse(http_resp)
        data = Types::DeleteVpcEndpointsOutput.new
        data
      end
    end

    # Operation Parser for DeleteVpcPeeringConnection
    class DeleteVpcPeeringConnection
      def self.parse(http_resp)
        data = Types::DeleteVpcPeeringConnectionOutput.new
        data
      end
    end

    # Operation Parser for DeleteVpnConnection
    class DeleteVpnConnection
      def self.parse(http_resp)
        data = Types::DeleteVpnConnectionOutput.new
        data
      end
    end

    # Operation Parser for DeleteVpnConnectionRoute
    class DeleteVpnConnectionRoute
      def self.parse(http_resp)
        data = Types::DeleteVpnConnectionRouteOutput.new
        data
      end
    end

    # Operation Parser for DeleteVpnGateway
    class DeleteVpnGateway
      def self.parse(http_resp)
        data = Types::DeleteVpnGatewayOutput.new
        data
      end
    end

    # Operation Parser for DeprovisionByoipCidr
    class DeprovisionByoipCidr
      def self.parse(http_resp)
        data = Types::DeprovisionByoipCidrOutput.new
        data
      end
    end

    # Operation Parser for DeprovisionIpamPoolCidr
    class DeprovisionIpamPoolCidr
      def self.parse(http_resp)
        data = Types::DeprovisionIpamPoolCidrOutput.new
        data
      end
    end

    class IpamPoolCidr
      def self.parse(map)
        data = Types::IpamPoolCidr.new
        return data
      end
    end

    class IpamPoolCidrFailureReason
      def self.parse(map)
        data = Types::IpamPoolCidrFailureReason.new
        return data
      end
    end

    # Operation Parser for DeprovisionPublicIpv4PoolCidr
    class DeprovisionPublicIpv4PoolCidr
      def self.parse(http_resp)
        data = Types::DeprovisionPublicIpv4PoolCidrOutput.new
        data
      end
    end

    class DeprovisionedAddressSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DeregisterImage
    class DeregisterImage
      def self.parse(http_resp)
        data = Types::DeregisterImageOutput.new
        data
      end
    end

    # Operation Parser for DeregisterInstanceEventNotificationAttributes
    class DeregisterInstanceEventNotificationAttributes
      def self.parse(http_resp)
        data = Types::DeregisterInstanceEventNotificationAttributesOutput.new
        data
      end
    end

    class InstanceTagNotificationAttribute
      def self.parse(map)
        data = Types::InstanceTagNotificationAttribute.new
        return data
      end
    end

    class InstanceTagKeySet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DeregisterTransitGatewayMulticastGroupMembers
    class DeregisterTransitGatewayMulticastGroupMembers
      def self.parse(http_resp)
        data = Types::DeregisterTransitGatewayMulticastGroupMembersOutput.new
        data
      end
    end

    class TransitGatewayMulticastDeregisteredGroupMembers
      def self.parse(map)
        data = Types::TransitGatewayMulticastDeregisteredGroupMembers.new
        return data
      end
    end

    # Operation Parser for DeregisterTransitGatewayMulticastGroupSources
    class DeregisterTransitGatewayMulticastGroupSources
      def self.parse(http_resp)
        data = Types::DeregisterTransitGatewayMulticastGroupSourcesOutput.new
        data
      end
    end

    class TransitGatewayMulticastDeregisteredGroupSources
      def self.parse(map)
        data = Types::TransitGatewayMulticastDeregisteredGroupSources.new
        return data
      end
    end

    # Operation Parser for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.parse(http_resp)
        data = Types::DescribeAccountAttributesOutput.new
        data
      end
    end

    class AccountAttributeList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AccountAttribute
      def self.parse(map)
        data = Types::AccountAttribute.new
        return data
      end
    end

    class AccountAttributeValueList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AccountAttributeValue
      def self.parse(map)
        data = Types::AccountAttributeValue.new
        return data
      end
    end

    # Operation Parser for DescribeAddresses
    class DescribeAddresses
      def self.parse(http_resp)
        data = Types::DescribeAddressesOutput.new
        data
      end
    end

    class AddressList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Address
      def self.parse(map)
        data = Types::Address.new
        return data
      end
    end

    # Operation Parser for DescribeAddressesAttribute
    class DescribeAddressesAttribute
      def self.parse(http_resp)
        data = Types::DescribeAddressesAttributeOutput.new
        data
      end
    end

    class AddressSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AddressAttribute
      def self.parse(map)
        data = Types::AddressAttribute.new
        return data
      end
    end

    class PtrUpdateStatus
      def self.parse(map)
        data = Types::PtrUpdateStatus.new
        return data
      end
    end

    # Operation Parser for DescribeAggregateIdFormat
    class DescribeAggregateIdFormat
      def self.parse(http_resp)
        data = Types::DescribeAggregateIdFormatOutput.new
        data
      end
    end

    class IdFormatList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class IdFormat
      def self.parse(map)
        data = Types::IdFormat.new
        return data
      end
    end

    # Operation Parser for DescribeAvailabilityZones
    class DescribeAvailabilityZones
      def self.parse(http_resp)
        data = Types::DescribeAvailabilityZonesOutput.new
        data
      end
    end

    class AvailabilityZoneList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AvailabilityZone
      def self.parse(map)
        data = Types::AvailabilityZone.new
        return data
      end
    end

    class AvailabilityZoneMessageList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AvailabilityZoneMessage
      def self.parse(map)
        data = Types::AvailabilityZoneMessage.new
        return data
      end
    end

    # Operation Parser for DescribeBundleTasks
    class DescribeBundleTasks
      def self.parse(http_resp)
        data = Types::DescribeBundleTasksOutput.new
        data
      end
    end

    class BundleTaskList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeByoipCidrs
    class DescribeByoipCidrs
      def self.parse(http_resp)
        data = Types::DescribeByoipCidrsOutput.new
        data
      end
    end

    class ByoipCidrSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeCapacityReservationFleets
    class DescribeCapacityReservationFleets
      def self.parse(http_resp)
        data = Types::DescribeCapacityReservationFleetsOutput.new
        data
      end
    end

    class CapacityReservationFleetSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CapacityReservationFleet
      def self.parse(map)
        data = Types::CapacityReservationFleet.new
        return data
      end
    end

    # Operation Parser for DescribeCapacityReservations
    class DescribeCapacityReservations
      def self.parse(http_resp)
        data = Types::DescribeCapacityReservationsOutput.new
        data
      end
    end

    class CapacityReservationSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeCarrierGateways
    class DescribeCarrierGateways
      def self.parse(http_resp)
        data = Types::DescribeCarrierGatewaysOutput.new
        data
      end
    end

    class CarrierGatewaySet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeClassicLinkInstances
    class DescribeClassicLinkInstances
      def self.parse(http_resp)
        data = Types::DescribeClassicLinkInstancesOutput.new
        data
      end
    end

    class ClassicLinkInstanceList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ClassicLinkInstance
      def self.parse(map)
        data = Types::ClassicLinkInstance.new
        return data
      end
    end

    # Operation Parser for DescribeClientVpnAuthorizationRules
    class DescribeClientVpnAuthorizationRules
      def self.parse(http_resp)
        data = Types::DescribeClientVpnAuthorizationRulesOutput.new
        data
      end
    end

    class AuthorizationRuleSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AuthorizationRule
      def self.parse(map)
        data = Types::AuthorizationRule.new
        return data
      end
    end

    # Operation Parser for DescribeClientVpnConnections
    class DescribeClientVpnConnections
      def self.parse(http_resp)
        data = Types::DescribeClientVpnConnectionsOutput.new
        data
      end
    end

    class ClientVpnConnectionSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ClientVpnConnection
      def self.parse(map)
        data = Types::ClientVpnConnection.new
        return data
      end
    end

    class ClientVpnConnectionStatus
      def self.parse(map)
        data = Types::ClientVpnConnectionStatus.new
        return data
      end
    end

    # Operation Parser for DescribeClientVpnEndpoints
    class DescribeClientVpnEndpoints
      def self.parse(http_resp)
        data = Types::DescribeClientVpnEndpointsOutput.new
        data
      end
    end

    class EndpointSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ClientVpnEndpoint
      def self.parse(map)
        data = Types::ClientVpnEndpoint.new
        return data
      end
    end

    class ClientConnectResponseOptions
      def self.parse(map)
        data = Types::ClientConnectResponseOptions.new
        return data
      end
    end

    class ClientVpnEndpointAttributeStatus
      def self.parse(map)
        data = Types::ClientVpnEndpointAttributeStatus.new
        return data
      end
    end

    class ConnectionLogResponseOptions
      def self.parse(map)
        data = Types::ConnectionLogResponseOptions.new
        return data
      end
    end

    class ClientVpnAuthenticationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ClientVpnAuthentication
      def self.parse(map)
        data = Types::ClientVpnAuthentication.new
        return data
      end
    end

    class FederatedAuthentication
      def self.parse(map)
        data = Types::FederatedAuthentication.new
        return data
      end
    end

    class CertificateAuthentication
      def self.parse(map)
        data = Types::CertificateAuthentication.new
        return data
      end
    end

    class DirectoryServiceAuthentication
      def self.parse(map)
        data = Types::DirectoryServiceAuthentication.new
        return data
      end
    end

    class AssociatedTargetNetworkSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AssociatedTargetNetwork
      def self.parse(map)
        data = Types::AssociatedTargetNetwork.new
        return data
      end
    end

    # Operation Parser for DescribeClientVpnRoutes
    class DescribeClientVpnRoutes
      def self.parse(http_resp)
        data = Types::DescribeClientVpnRoutesOutput.new
        data
      end
    end

    class ClientVpnRouteSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ClientVpnRoute
      def self.parse(map)
        data = Types::ClientVpnRoute.new
        return data
      end
    end

    # Operation Parser for DescribeClientVpnTargetNetworks
    class DescribeClientVpnTargetNetworks
      def self.parse(http_resp)
        data = Types::DescribeClientVpnTargetNetworksOutput.new
        data
      end
    end

    class TargetNetworkSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class TargetNetwork
      def self.parse(map)
        data = Types::TargetNetwork.new
        return data
      end
    end

    # Operation Parser for DescribeCoipPools
    class DescribeCoipPools
      def self.parse(http_resp)
        data = Types::DescribeCoipPoolsOutput.new
        data
      end
    end

    class CoipPoolSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CoipPool
      def self.parse(map)
        data = Types::CoipPool.new
        return data
      end
    end

    # Operation Parser for DescribeConversionTasks
    class DescribeConversionTasks
      def self.parse(http_resp)
        data = Types::DescribeConversionTasksOutput.new
        data
      end
    end

    class DescribeConversionTaskList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ConversionTask
      def self.parse(map)
        data = Types::ConversionTask.new
        return data
      end
    end

    class ImportVolumeTaskDetails
      def self.parse(map)
        data = Types::ImportVolumeTaskDetails.new
        return data
      end
    end

    class DiskImageVolumeDescription
      def self.parse(map)
        data = Types::DiskImageVolumeDescription.new
        return data
      end
    end

    class DiskImageDescription
      def self.parse(map)
        data = Types::DiskImageDescription.new
        return data
      end
    end

    class ImportInstanceTaskDetails
      def self.parse(map)
        data = Types::ImportInstanceTaskDetails.new
        return data
      end
    end

    class ImportInstanceVolumeDetailSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ImportInstanceVolumeDetailItem
      def self.parse(map)
        data = Types::ImportInstanceVolumeDetailItem.new
        return data
      end
    end

    # Operation Parser for DescribeCustomerGateways
    class DescribeCustomerGateways
      def self.parse(http_resp)
        data = Types::DescribeCustomerGatewaysOutput.new
        data
      end
    end

    class CustomerGatewayList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeDhcpOptions
    class DescribeDhcpOptions
      def self.parse(http_resp)
        data = Types::DescribeDhcpOptionsOutput.new
        data
      end
    end

    class DhcpOptionsList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeEgressOnlyInternetGateways
    class DescribeEgressOnlyInternetGateways
      def self.parse(http_resp)
        data = Types::DescribeEgressOnlyInternetGatewaysOutput.new
        data
      end
    end

    class EgressOnlyInternetGatewayList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeElasticGpus
    class DescribeElasticGpus
      def self.parse(http_resp)
        data = Types::DescribeElasticGpusOutput.new
        data
      end
    end

    class ElasticGpuSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ElasticGpus
      def self.parse(map)
        data = Types::ElasticGpus.new
        return data
      end
    end

    class ElasticGpuHealth
      def self.parse(map)
        data = Types::ElasticGpuHealth.new
        return data
      end
    end

    # Operation Parser for DescribeExportImageTasks
    class DescribeExportImageTasks
      def self.parse(http_resp)
        data = Types::DescribeExportImageTasksOutput.new
        data
      end
    end

    class ExportImageTaskList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ExportImageTask
      def self.parse(map)
        data = Types::ExportImageTask.new
        return data
      end
    end

    class ExportTaskS3Location
      def self.parse(map)
        data = Types::ExportTaskS3Location.new
        return data
      end
    end

    # Operation Parser for DescribeExportTasks
    class DescribeExportTasks
      def self.parse(http_resp)
        data = Types::DescribeExportTasksOutput.new
        data
      end
    end

    class ExportTaskList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeFastSnapshotRestores
    class DescribeFastSnapshotRestores
      def self.parse(http_resp)
        data = Types::DescribeFastSnapshotRestoresOutput.new
        data
      end
    end

    class DescribeFastSnapshotRestoreSuccessSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class DescribeFastSnapshotRestoreSuccessItem
      def self.parse(map)
        data = Types::DescribeFastSnapshotRestoreSuccessItem.new
        return data
      end
    end

    # Operation Parser for DescribeFleetHistory
    class DescribeFleetHistory
      def self.parse(http_resp)
        data = Types::DescribeFleetHistoryOutput.new
        data
      end
    end

    class HistoryRecordSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class HistoryRecordEntry
      def self.parse(map)
        data = Types::HistoryRecordEntry.new
        return data
      end
    end

    class EventInformation
      def self.parse(map)
        data = Types::EventInformation.new
        return data
      end
    end

    # Operation Parser for DescribeFleetInstances
    class DescribeFleetInstances
      def self.parse(http_resp)
        data = Types::DescribeFleetInstancesOutput.new
        data
      end
    end

    class ActiveInstanceSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ActiveInstance
      def self.parse(map)
        data = Types::ActiveInstance.new
        return data
      end
    end

    # Operation Parser for DescribeFleets
    class DescribeFleets
      def self.parse(http_resp)
        data = Types::DescribeFleetsOutput.new
        data
      end
    end

    class FleetSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class FleetData
      def self.parse(map)
        data = Types::FleetData.new
        return data
      end
    end

    class DescribeFleetsInstancesSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class DescribeFleetsInstances
      def self.parse(map)
        data = Types::DescribeFleetsInstances.new
        return data
      end
    end

    class DescribeFleetsErrorSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class DescribeFleetError
      def self.parse(map)
        data = Types::DescribeFleetError.new
        return data
      end
    end

    class OnDemandOptions
      def self.parse(map)
        data = Types::OnDemandOptions.new
        return data
      end
    end

    class CapacityReservationOptions
      def self.parse(map)
        data = Types::CapacityReservationOptions.new
        return data
      end
    end

    class SpotOptions
      def self.parse(map)
        data = Types::SpotOptions.new
        return data
      end
    end

    class FleetSpotMaintenanceStrategies
      def self.parse(map)
        data = Types::FleetSpotMaintenanceStrategies.new
        return data
      end
    end

    class FleetSpotCapacityRebalance
      def self.parse(map)
        data = Types::FleetSpotCapacityRebalance.new
        return data
      end
    end

    class TargetCapacitySpecification
      def self.parse(map)
        data = Types::TargetCapacitySpecification.new
        return data
      end
    end

    class FleetLaunchTemplateConfigList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class FleetLaunchTemplateConfig
      def self.parse(map)
        data = Types::FleetLaunchTemplateConfig.new
        return data
      end
    end

    class FleetLaunchTemplateOverridesList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeFlowLogs
    class DescribeFlowLogs
      def self.parse(http_resp)
        data = Types::DescribeFlowLogsOutput.new
        data
      end
    end

    class FlowLogSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class FlowLog
      def self.parse(map)
        data = Types::FlowLog.new
        return data
      end
    end

    class DestinationOptionsResponse
      def self.parse(map)
        data = Types::DestinationOptionsResponse.new
        return data
      end
    end

    # Operation Parser for DescribeFpgaImageAttribute
    class DescribeFpgaImageAttribute
      def self.parse(http_resp)
        data = Types::DescribeFpgaImageAttributeOutput.new
        data
      end
    end

    class FpgaImageAttribute
      def self.parse(map)
        data = Types::FpgaImageAttribute.new
        return data
      end
    end

    class ProductCodeList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ProductCode
      def self.parse(map)
        data = Types::ProductCode.new
        return data
      end
    end

    class LoadPermissionList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LoadPermission
      def self.parse(map)
        data = Types::LoadPermission.new
        return data
      end
    end

    # Operation Parser for DescribeFpgaImages
    class DescribeFpgaImages
      def self.parse(http_resp)
        data = Types::DescribeFpgaImagesOutput.new
        data
      end
    end

    class FpgaImageList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class FpgaImage
      def self.parse(map)
        data = Types::FpgaImage.new
        return data
      end
    end

    class FpgaImageState
      def self.parse(map)
        data = Types::FpgaImageState.new
        return data
      end
    end

    class PciId
      def self.parse(map)
        data = Types::PciId.new
        return data
      end
    end

    # Operation Parser for DescribeHostReservationOfferings
    class DescribeHostReservationOfferings
      def self.parse(http_resp)
        data = Types::DescribeHostReservationOfferingsOutput.new
        data
      end
    end

    class HostOfferingSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class HostOffering
      def self.parse(map)
        data = Types::HostOffering.new
        return data
      end
    end

    # Operation Parser for DescribeHostReservations
    class DescribeHostReservations
      def self.parse(http_resp)
        data = Types::DescribeHostReservationsOutput.new
        data
      end
    end

    class HostReservationSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class HostReservation
      def self.parse(map)
        data = Types::HostReservation.new
        return data
      end
    end

    class ResponseHostIdSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeHosts
    class DescribeHosts
      def self.parse(http_resp)
        data = Types::DescribeHostsOutput.new
        data
      end
    end

    class HostList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Host
      def self.parse(map)
        data = Types::Host.new
        return data
      end
    end

    class HostInstanceList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class HostInstance
      def self.parse(map)
        data = Types::HostInstance.new
        return data
      end
    end

    class HostProperties
      def self.parse(map)
        data = Types::HostProperties.new
        return data
      end
    end

    class AvailableCapacity
      def self.parse(map)
        data = Types::AvailableCapacity.new
        return data
      end
    end

    class AvailableInstanceCapacityList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceCapacity
      def self.parse(map)
        data = Types::InstanceCapacity.new
        return data
      end
    end

    # Operation Parser for DescribeIamInstanceProfileAssociations
    class DescribeIamInstanceProfileAssociations
      def self.parse(http_resp)
        data = Types::DescribeIamInstanceProfileAssociationsOutput.new
        data
      end
    end

    class IamInstanceProfileAssociationSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeIdFormat
    class DescribeIdFormat
      def self.parse(http_resp)
        data = Types::DescribeIdFormatOutput.new
        data
      end
    end

    # Operation Parser for DescribeIdentityIdFormat
    class DescribeIdentityIdFormat
      def self.parse(http_resp)
        data = Types::DescribeIdentityIdFormatOutput.new
        data
      end
    end

    # Operation Parser for DescribeImageAttribute
    class DescribeImageAttribute
      def self.parse(http_resp)
        data = Types::DescribeImageAttributeOutput.new
        data
      end
    end

    class LaunchPermissionList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LaunchPermission
      def self.parse(map)
        data = Types::LaunchPermission.new
        return data
      end
    end

    class BlockDeviceMappingList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class BlockDeviceMapping
      def self.parse(map)
        data = Types::BlockDeviceMapping.new
        return data
      end
    end

    class EbsBlockDevice
      def self.parse(map)
        data = Types::EbsBlockDevice.new
        return data
      end
    end

    # Operation Parser for DescribeImages
    class DescribeImages
      def self.parse(http_resp)
        data = Types::DescribeImagesOutput.new
        data
      end
    end

    class ImageList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Image
      def self.parse(map)
        data = Types::Image.new
        return data
      end
    end

    class StateReason
      def self.parse(map)
        data = Types::StateReason.new
        return data
      end
    end

    # Operation Parser for DescribeImportImageTasks
    class DescribeImportImageTasks
      def self.parse(http_resp)
        data = Types::DescribeImportImageTasksOutput.new
        data
      end
    end

    class ImportImageTaskList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ImportImageTask
      def self.parse(map)
        data = Types::ImportImageTask.new
        return data
      end
    end

    class ImportImageLicenseSpecificationListResponse
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ImportImageLicenseConfigurationResponse
      def self.parse(map)
        data = Types::ImportImageLicenseConfigurationResponse.new
        return data
      end
    end

    class SnapshotDetailList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class SnapshotDetail
      def self.parse(map)
        data = Types::SnapshotDetail.new
        return data
      end
    end

    class UserBucketDetails
      def self.parse(map)
        data = Types::UserBucketDetails.new
        return data
      end
    end

    # Operation Parser for DescribeImportSnapshotTasks
    class DescribeImportSnapshotTasks
      def self.parse(http_resp)
        data = Types::DescribeImportSnapshotTasksOutput.new
        data
      end
    end

    class ImportSnapshotTaskList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ImportSnapshotTask
      def self.parse(map)
        data = Types::ImportSnapshotTask.new
        return data
      end
    end

    class SnapshotTaskDetail
      def self.parse(map)
        data = Types::SnapshotTaskDetail.new
        return data
      end
    end

    # Operation Parser for DescribeInstanceAttribute
    class DescribeInstanceAttribute
      def self.parse(http_resp)
        data = Types::DescribeInstanceAttributeOutput.new
        data
      end
    end

    class AttributeBooleanValue
      def self.parse(map)
        data = Types::AttributeBooleanValue.new
        return data
      end
    end

    class EnclaveOptions
      def self.parse(map)
        data = Types::EnclaveOptions.new
        return data
      end
    end

    class InstanceBlockDeviceMappingList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceBlockDeviceMapping
      def self.parse(map)
        data = Types::InstanceBlockDeviceMapping.new
        return data
      end
    end

    class EbsInstanceBlockDevice
      def self.parse(map)
        data = Types::EbsInstanceBlockDevice.new
        return data
      end
    end

    # Operation Parser for DescribeInstanceCreditSpecifications
    class DescribeInstanceCreditSpecifications
      def self.parse(http_resp)
        data = Types::DescribeInstanceCreditSpecificationsOutput.new
        data
      end
    end

    class InstanceCreditSpecificationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceCreditSpecification
      def self.parse(map)
        data = Types::InstanceCreditSpecification.new
        return data
      end
    end

    # Operation Parser for DescribeInstanceEventNotificationAttributes
    class DescribeInstanceEventNotificationAttributes
      def self.parse(http_resp)
        data = Types::DescribeInstanceEventNotificationAttributesOutput.new
        data
      end
    end

    # Operation Parser for DescribeInstanceEventWindows
    class DescribeInstanceEventWindows
      def self.parse(http_resp)
        data = Types::DescribeInstanceEventWindowsOutput.new
        data
      end
    end

    class InstanceEventWindowSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeInstanceStatus
    class DescribeInstanceStatus
      def self.parse(http_resp)
        data = Types::DescribeInstanceStatusOutput.new
        data
      end
    end

    class InstanceStatusList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceStatus
      def self.parse(map)
        data = Types::InstanceStatus.new
        return data
      end
    end

    class InstanceStatusSummary
      def self.parse(map)
        data = Types::InstanceStatusSummary.new
        return data
      end
    end

    class InstanceStatusDetailsList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceStatusDetails
      def self.parse(map)
        data = Types::InstanceStatusDetails.new
        return data
      end
    end

    class InstanceState
      def self.parse(map)
        data = Types::InstanceState.new
        return data
      end
    end

    class InstanceStatusEventList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceStatusEvent
      def self.parse(map)
        data = Types::InstanceStatusEvent.new
        return data
      end
    end

    # Operation Parser for DescribeInstanceTypeOfferings
    class DescribeInstanceTypeOfferings
      def self.parse(http_resp)
        data = Types::DescribeInstanceTypeOfferingsOutput.new
        data
      end
    end

    class InstanceTypeOfferingsList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceTypeOffering
      def self.parse(map)
        data = Types::InstanceTypeOffering.new
        return data
      end
    end

    # Operation Parser for DescribeInstanceTypes
    class DescribeInstanceTypes
      def self.parse(http_resp)
        data = Types::DescribeInstanceTypesOutput.new
        data
      end
    end

    class InstanceTypeInfoList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceTypeInfo
      def self.parse(map)
        data = Types::InstanceTypeInfo.new
        return data
      end
    end

    class BootModeTypeList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InferenceAcceleratorInfo
      def self.parse(map)
        data = Types::InferenceAcceleratorInfo.new
        return data
      end
    end

    class InferenceDeviceInfoList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InferenceDeviceInfo
      def self.parse(map)
        data = Types::InferenceDeviceInfo.new
        return data
      end
    end

    class PlacementGroupInfo
      def self.parse(map)
        data = Types::PlacementGroupInfo.new
        return data
      end
    end

    class PlacementGroupStrategyList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class FpgaInfo
      def self.parse(map)
        data = Types::FpgaInfo.new
        return data
      end
    end

    class FpgaDeviceInfoList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class FpgaDeviceInfo
      def self.parse(map)
        data = Types::FpgaDeviceInfo.new
        return data
      end
    end

    class FpgaDeviceMemoryInfo
      def self.parse(map)
        data = Types::FpgaDeviceMemoryInfo.new
        return data
      end
    end

    class GpuInfo
      def self.parse(map)
        data = Types::GpuInfo.new
        return data
      end
    end

    class GpuDeviceInfoList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class GpuDeviceInfo
      def self.parse(map)
        data = Types::GpuDeviceInfo.new
        return data
      end
    end

    class GpuDeviceMemoryInfo
      def self.parse(map)
        data = Types::GpuDeviceMemoryInfo.new
        return data
      end
    end

    class NetworkInfo
      def self.parse(map)
        data = Types::NetworkInfo.new
        return data
      end
    end

    class EfaInfo
      def self.parse(map)
        data = Types::EfaInfo.new
        return data
      end
    end

    class NetworkCardInfoList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class NetworkCardInfo
      def self.parse(map)
        data = Types::NetworkCardInfo.new
        return data
      end
    end

    class EbsInfo
      def self.parse(map)
        data = Types::EbsInfo.new
        return data
      end
    end

    class EbsOptimizedInfo
      def self.parse(map)
        data = Types::EbsOptimizedInfo.new
        return data
      end
    end

    class InstanceStorageInfo
      def self.parse(map)
        data = Types::InstanceStorageInfo.new
        return data
      end
    end

    class DiskInfoList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class DiskInfo
      def self.parse(map)
        data = Types::DiskInfo.new
        return data
      end
    end

    class MemoryInfo
      def self.parse(map)
        data = Types::MemoryInfo.new
        return data
      end
    end

    class VCpuInfo
      def self.parse(map)
        data = Types::VCpuInfo.new
        return data
      end
    end

    class ThreadsPerCoreList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CoreCountList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ProcessorInfo
      def self.parse(map)
        data = Types::ProcessorInfo.new
        return data
      end
    end

    class ArchitectureTypeList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class VirtualizationTypeList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class RootDeviceTypeList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class UsageClassTypeList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeInstances
    class DescribeInstances
      def self.parse(http_resp)
        data = Types::DescribeInstancesOutput.new
        data
      end
    end

    class ReservationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Reservation
      def self.parse(map)
        data = Types::Reservation.new
        return data
      end
    end

    class InstanceList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Instance
      def self.parse(map)
        data = Types::Instance.new
        return data
      end
    end

    class PrivateDnsNameOptionsResponse
      def self.parse(map)
        data = Types::PrivateDnsNameOptionsResponse.new
        return data
      end
    end

    class InstanceMetadataOptionsResponse
      def self.parse(map)
        data = Types::InstanceMetadataOptionsResponse.new
        return data
      end
    end

    class LicenseList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LicenseConfiguration
      def self.parse(map)
        data = Types::LicenseConfiguration.new
        return data
      end
    end

    class HibernationOptions
      def self.parse(map)
        data = Types::HibernationOptions.new
        return data
      end
    end

    class CapacityReservationSpecificationResponse
      def self.parse(map)
        data = Types::CapacityReservationSpecificationResponse.new
        return data
      end
    end

    class CpuOptions
      def self.parse(map)
        data = Types::CpuOptions.new
        return data
      end
    end

    class InstanceNetworkInterfaceList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceNetworkInterface
      def self.parse(map)
        data = Types::InstanceNetworkInterface.new
        return data
      end
    end

    class InstanceIpv6PrefixList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceIpv6Prefix
      def self.parse(map)
        data = Types::InstanceIpv6Prefix.new
        return data
      end
    end

    class InstanceIpv4PrefixList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceIpv4Prefix
      def self.parse(map)
        data = Types::InstanceIpv4Prefix.new
        return data
      end
    end

    class InstancePrivateIpAddressList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstancePrivateIpAddress
      def self.parse(map)
        data = Types::InstancePrivateIpAddress.new
        return data
      end
    end

    class InstanceNetworkInterfaceAssociation
      def self.parse(map)
        data = Types::InstanceNetworkInterfaceAssociation.new
        return data
      end
    end

    class InstanceNetworkInterfaceAttachment
      def self.parse(map)
        data = Types::InstanceNetworkInterfaceAttachment.new
        return data
      end
    end

    class ElasticInferenceAcceleratorAssociationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ElasticInferenceAcceleratorAssociation
      def self.parse(map)
        data = Types::ElasticInferenceAcceleratorAssociation.new
        return data
      end
    end

    class ElasticGpuAssociationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ElasticGpuAssociation
      def self.parse(map)
        data = Types::ElasticGpuAssociation.new
        return data
      end
    end

    class Placement
      def self.parse(map)
        data = Types::Placement.new
        return data
      end
    end

    class Monitoring
      def self.parse(map)
        data = Types::Monitoring.new
        return data
      end
    end

    # Operation Parser for DescribeInternetGateways
    class DescribeInternetGateways
      def self.parse(http_resp)
        data = Types::DescribeInternetGatewaysOutput.new
        data
      end
    end

    class InternetGatewayList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeIpamPools
    class DescribeIpamPools
      def self.parse(http_resp)
        data = Types::DescribeIpamPoolsOutput.new
        data
      end
    end

    class IpamPoolSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeIpamScopes
    class DescribeIpamScopes
      def self.parse(http_resp)
        data = Types::DescribeIpamScopesOutput.new
        data
      end
    end

    class IpamScopeSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeIpams
    class DescribeIpams
      def self.parse(http_resp)
        data = Types::DescribeIpamsOutput.new
        data
      end
    end

    class IpamSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeIpv6Pools
    class DescribeIpv6Pools
      def self.parse(http_resp)
        data = Types::DescribeIpv6PoolsOutput.new
        data
      end
    end

    class Ipv6PoolSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Ipv6Pool
      def self.parse(map)
        data = Types::Ipv6Pool.new
        return data
      end
    end

    class PoolCidrBlocksSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class PoolCidrBlock
      def self.parse(map)
        data = Types::PoolCidrBlock.new
        return data
      end
    end

    # Operation Parser for DescribeKeyPairs
    class DescribeKeyPairs
      def self.parse(http_resp)
        data = Types::DescribeKeyPairsOutput.new
        data
      end
    end

    class KeyPairList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class KeyPairInfo
      def self.parse(map)
        data = Types::KeyPairInfo.new
        return data
      end
    end

    # Operation Parser for DescribeLaunchTemplateVersions
    class DescribeLaunchTemplateVersions
      def self.parse(http_resp)
        data = Types::DescribeLaunchTemplateVersionsOutput.new
        data
      end
    end

    class LaunchTemplateVersionSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeLaunchTemplates
    class DescribeLaunchTemplates
      def self.parse(http_resp)
        data = Types::DescribeLaunchTemplatesOutput.new
        data
      end
    end

    class LaunchTemplateSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
    class DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
      def self.parse(http_resp)
        data = Types::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsOutput.new
        data
      end
    end

    class LocalGatewayRouteTableVirtualInterfaceGroupAssociationSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LocalGatewayRouteTableVirtualInterfaceGroupAssociation
      def self.parse(map)
        data = Types::LocalGatewayRouteTableVirtualInterfaceGroupAssociation.new
        return data
      end
    end

    # Operation Parser for DescribeLocalGatewayRouteTableVpcAssociations
    class DescribeLocalGatewayRouteTableVpcAssociations
      def self.parse(http_resp)
        data = Types::DescribeLocalGatewayRouteTableVpcAssociationsOutput.new
        data
      end
    end

    class LocalGatewayRouteTableVpcAssociationSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeLocalGatewayRouteTables
    class DescribeLocalGatewayRouteTables
      def self.parse(http_resp)
        data = Types::DescribeLocalGatewayRouteTablesOutput.new
        data
      end
    end

    class LocalGatewayRouteTableSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LocalGatewayRouteTable
      def self.parse(map)
        data = Types::LocalGatewayRouteTable.new
        return data
      end
    end

    # Operation Parser for DescribeLocalGatewayVirtualInterfaceGroups
    class DescribeLocalGatewayVirtualInterfaceGroups
      def self.parse(http_resp)
        data = Types::DescribeLocalGatewayVirtualInterfaceGroupsOutput.new
        data
      end
    end

    class LocalGatewayVirtualInterfaceGroupSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LocalGatewayVirtualInterfaceGroup
      def self.parse(map)
        data = Types::LocalGatewayVirtualInterfaceGroup.new
        return data
      end
    end

    class LocalGatewayVirtualInterfaceIdSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeLocalGatewayVirtualInterfaces
    class DescribeLocalGatewayVirtualInterfaces
      def self.parse(http_resp)
        data = Types::DescribeLocalGatewayVirtualInterfacesOutput.new
        data
      end
    end

    class LocalGatewayVirtualInterfaceSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LocalGatewayVirtualInterface
      def self.parse(map)
        data = Types::LocalGatewayVirtualInterface.new
        return data
      end
    end

    # Operation Parser for DescribeLocalGateways
    class DescribeLocalGateways
      def self.parse(http_resp)
        data = Types::DescribeLocalGatewaysOutput.new
        data
      end
    end

    class LocalGatewaySet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LocalGateway
      def self.parse(map)
        data = Types::LocalGateway.new
        return data
      end
    end

    # Operation Parser for DescribeManagedPrefixLists
    class DescribeManagedPrefixLists
      def self.parse(http_resp)
        data = Types::DescribeManagedPrefixListsOutput.new
        data
      end
    end

    class ManagedPrefixListSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeMovingAddresses
    class DescribeMovingAddresses
      def self.parse(http_resp)
        data = Types::DescribeMovingAddressesOutput.new
        data
      end
    end

    class MovingAddressStatusSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class MovingAddressStatus
      def self.parse(map)
        data = Types::MovingAddressStatus.new
        return data
      end
    end

    # Operation Parser for DescribeNatGateways
    class DescribeNatGateways
      def self.parse(http_resp)
        data = Types::DescribeNatGatewaysOutput.new
        data
      end
    end

    class NatGatewayList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeNetworkAcls
    class DescribeNetworkAcls
      def self.parse(http_resp)
        data = Types::DescribeNetworkAclsOutput.new
        data
      end
    end

    class NetworkAclList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeNetworkInsightsAccessScopeAnalyses
    class DescribeNetworkInsightsAccessScopeAnalyses
      def self.parse(http_resp)
        data = Types::DescribeNetworkInsightsAccessScopeAnalysesOutput.new
        data
      end
    end

    class NetworkInsightsAccessScopeAnalysisList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class NetworkInsightsAccessScopeAnalysis
      def self.parse(map)
        data = Types::NetworkInsightsAccessScopeAnalysis.new
        return data
      end
    end

    # Operation Parser for DescribeNetworkInsightsAccessScopes
    class DescribeNetworkInsightsAccessScopes
      def self.parse(http_resp)
        data = Types::DescribeNetworkInsightsAccessScopesOutput.new
        data
      end
    end

    class NetworkInsightsAccessScopeList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeNetworkInsightsAnalyses
    class DescribeNetworkInsightsAnalyses
      def self.parse(http_resp)
        data = Types::DescribeNetworkInsightsAnalysesOutput.new
        data
      end
    end

    class NetworkInsightsAnalysisList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class NetworkInsightsAnalysis
      def self.parse(map)
        data = Types::NetworkInsightsAnalysis.new
        return data
      end
    end

    class AlternatePathHintList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AlternatePathHint
      def self.parse(map)
        data = Types::AlternatePathHint.new
        return data
      end
    end

    class ExplanationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Explanation
      def self.parse(map)
        data = Types::Explanation.new
        return data
      end
    end

    class AnalysisComponent
      def self.parse(map)
        data = Types::AnalysisComponent.new
        return data
      end
    end

    class AnalysisComponentList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AnalysisSecurityGroupRule
      def self.parse(map)
        data = Types::AnalysisSecurityGroupRule.new
        return data
      end
    end

    class AnalysisRouteTableRoute
      def self.parse(map)
        data = Types::AnalysisRouteTableRoute.new
        return data
      end
    end

    class StringList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class PortRangeList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AnalysisLoadBalancerTarget
      def self.parse(map)
        data = Types::AnalysisLoadBalancerTarget.new
        return data
      end
    end

    class AnalysisLoadBalancerListener
      def self.parse(map)
        data = Types::AnalysisLoadBalancerListener.new
        return data
      end
    end

    class IpAddressList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AnalysisAclRule
      def self.parse(map)
        data = Types::AnalysisAclRule.new
        return data
      end
    end

    class PathComponentList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class PathComponent
      def self.parse(map)
        data = Types::PathComponent.new
        return data
      end
    end

    class AnalysisPacketHeader
      def self.parse(map)
        data = Types::AnalysisPacketHeader.new
        return data
      end
    end

    class ArnList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeNetworkInsightsPaths
    class DescribeNetworkInsightsPaths
      def self.parse(http_resp)
        data = Types::DescribeNetworkInsightsPathsOutput.new
        data
      end
    end

    class NetworkInsightsPathList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeNetworkInterfaceAttribute
    class DescribeNetworkInterfaceAttribute
      def self.parse(http_resp)
        data = Types::DescribeNetworkInterfaceAttributeOutput.new
        data
      end
    end

    # Operation Parser for DescribeNetworkInterfacePermissions
    class DescribeNetworkInterfacePermissions
      def self.parse(http_resp)
        data = Types::DescribeNetworkInterfacePermissionsOutput.new
        data
      end
    end

    class NetworkInterfacePermissionList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeNetworkInterfaces
    class DescribeNetworkInterfaces
      def self.parse(http_resp)
        data = Types::DescribeNetworkInterfacesOutput.new
        data
      end
    end

    class NetworkInterfaceList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribePlacementGroups
    class DescribePlacementGroups
      def self.parse(http_resp)
        data = Types::DescribePlacementGroupsOutput.new
        data
      end
    end

    class PlacementGroupList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribePrefixLists
    class DescribePrefixLists
      def self.parse(http_resp)
        data = Types::DescribePrefixListsOutput.new
        data
      end
    end

    class PrefixListSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class PrefixList
      def self.parse(map)
        data = Types::PrefixList.new
        return data
      end
    end

    # Operation Parser for DescribePrincipalIdFormat
    class DescribePrincipalIdFormat
      def self.parse(http_resp)
        data = Types::DescribePrincipalIdFormatOutput.new
        data
      end
    end

    class PrincipalIdFormatList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class PrincipalIdFormat
      def self.parse(map)
        data = Types::PrincipalIdFormat.new
        return data
      end
    end

    # Operation Parser for DescribePublicIpv4Pools
    class DescribePublicIpv4Pools
      def self.parse(http_resp)
        data = Types::DescribePublicIpv4PoolsOutput.new
        data
      end
    end

    class PublicIpv4PoolSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class PublicIpv4Pool
      def self.parse(map)
        data = Types::PublicIpv4Pool.new
        return data
      end
    end

    class PublicIpv4PoolRangeSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class PublicIpv4PoolRange
      def self.parse(map)
        data = Types::PublicIpv4PoolRange.new
        return data
      end
    end

    # Operation Parser for DescribeRegions
    class DescribeRegions
      def self.parse(http_resp)
        data = Types::DescribeRegionsOutput.new
        data
      end
    end

    class RegionList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Region
      def self.parse(map)
        data = Types::Region.new
        return data
      end
    end

    # Operation Parser for DescribeReplaceRootVolumeTasks
    class DescribeReplaceRootVolumeTasks
      def self.parse(http_resp)
        data = Types::DescribeReplaceRootVolumeTasksOutput.new
        data
      end
    end

    class ReplaceRootVolumeTasks
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeReservedInstances
    class DescribeReservedInstances
      def self.parse(http_resp)
        data = Types::DescribeReservedInstancesOutput.new
        data
      end
    end

    class ReservedInstancesList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ReservedInstances
      def self.parse(map)
        data = Types::ReservedInstances.new
        return data
      end
    end

    class RecurringChargesList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class RecurringCharge
      def self.parse(map)
        data = Types::RecurringCharge.new
        return data
      end
    end

    # Operation Parser for DescribeReservedInstancesListings
    class DescribeReservedInstancesListings
      def self.parse(http_resp)
        data = Types::DescribeReservedInstancesListingsOutput.new
        data
      end
    end

    # Operation Parser for DescribeReservedInstancesModifications
    class DescribeReservedInstancesModifications
      def self.parse(http_resp)
        data = Types::DescribeReservedInstancesModificationsOutput.new
        data
      end
    end

    class ReservedInstancesModificationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ReservedInstancesModification
      def self.parse(map)
        data = Types::ReservedInstancesModification.new
        return data
      end
    end

    class ReservedIntancesIds
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ReservedInstancesId
      def self.parse(map)
        data = Types::ReservedInstancesId.new
        return data
      end
    end

    class ReservedInstancesModificationResultList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ReservedInstancesModificationResult
      def self.parse(map)
        data = Types::ReservedInstancesModificationResult.new
        return data
      end
    end

    class ReservedInstancesConfiguration
      def self.parse(map)
        data = Types::ReservedInstancesConfiguration.new
        return data
      end
    end

    # Operation Parser for DescribeReservedInstancesOfferings
    class DescribeReservedInstancesOfferings
      def self.parse(http_resp)
        data = Types::DescribeReservedInstancesOfferingsOutput.new
        data
      end
    end

    class ReservedInstancesOfferingList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ReservedInstancesOffering
      def self.parse(map)
        data = Types::ReservedInstancesOffering.new
        return data
      end
    end

    class PricingDetailsList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class PricingDetail
      def self.parse(map)
        data = Types::PricingDetail.new
        return data
      end
    end

    # Operation Parser for DescribeRouteTables
    class DescribeRouteTables
      def self.parse(http_resp)
        data = Types::DescribeRouteTablesOutput.new
        data
      end
    end

    class RouteTableList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeScheduledInstanceAvailability
    class DescribeScheduledInstanceAvailability
      def self.parse(http_resp)
        data = Types::DescribeScheduledInstanceAvailabilityOutput.new
        data
      end
    end

    class ScheduledInstanceAvailabilitySet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ScheduledInstanceAvailability
      def self.parse(map)
        data = Types::ScheduledInstanceAvailability.new
        return data
      end
    end

    class ScheduledInstanceRecurrence
      def self.parse(map)
        data = Types::ScheduledInstanceRecurrence.new
        return data
      end
    end

    class OccurrenceDaySet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeScheduledInstances
    class DescribeScheduledInstances
      def self.parse(http_resp)
        data = Types::DescribeScheduledInstancesOutput.new
        data
      end
    end

    class ScheduledInstanceSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ScheduledInstance
      def self.parse(map)
        data = Types::ScheduledInstance.new
        return data
      end
    end

    # Operation Parser for DescribeSecurityGroupReferences
    class DescribeSecurityGroupReferences
      def self.parse(http_resp)
        data = Types::DescribeSecurityGroupReferencesOutput.new
        data
      end
    end

    class SecurityGroupReferences
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class SecurityGroupReference
      def self.parse(map)
        data = Types::SecurityGroupReference.new
        return data
      end
    end

    # Operation Parser for DescribeSecurityGroupRules
    class DescribeSecurityGroupRules
      def self.parse(http_resp)
        data = Types::DescribeSecurityGroupRulesOutput.new
        data
      end
    end

    # Operation Parser for DescribeSecurityGroups
    class DescribeSecurityGroups
      def self.parse(http_resp)
        data = Types::DescribeSecurityGroupsOutput.new
        data
      end
    end

    class SecurityGroupList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class SecurityGroup
      def self.parse(map)
        data = Types::SecurityGroup.new
        return data
      end
    end

    class IpPermissionList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class IpPermission
      def self.parse(map)
        data = Types::IpPermission.new
        return data
      end
    end

    class UserIdGroupPairList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class UserIdGroupPair
      def self.parse(map)
        data = Types::UserIdGroupPair.new
        return data
      end
    end

    class PrefixListIdList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class PrefixListId
      def self.parse(map)
        data = Types::PrefixListId.new
        return data
      end
    end

    class Ipv6RangeList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Ipv6Range
      def self.parse(map)
        data = Types::Ipv6Range.new
        return data
      end
    end

    class IpRangeList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class IpRange
      def self.parse(map)
        data = Types::IpRange.new
        return data
      end
    end

    # Operation Parser for DescribeSnapshotAttribute
    class DescribeSnapshotAttribute
      def self.parse(http_resp)
        data = Types::DescribeSnapshotAttributeOutput.new
        data
      end
    end

    class CreateVolumePermissionList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CreateVolumePermission
      def self.parse(map)
        data = Types::CreateVolumePermission.new
        return data
      end
    end

    # Operation Parser for DescribeSnapshotTierStatus
    class DescribeSnapshotTierStatus
      def self.parse(http_resp)
        data = Types::DescribeSnapshotTierStatusOutput.new
        data
      end
    end

    class SnapshotTierStatusSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class SnapshotTierStatus
      def self.parse(map)
        data = Types::SnapshotTierStatus.new
        return data
      end
    end

    # Operation Parser for DescribeSnapshots
    class DescribeSnapshots
      def self.parse(http_resp)
        data = Types::DescribeSnapshotsOutput.new
        data
      end
    end

    class SnapshotList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Snapshot
      def self.parse(map)
        data = Types::Snapshot.new
        return data
      end
    end

    # Operation Parser for DescribeSpotDatafeedSubscription
    class DescribeSpotDatafeedSubscription
      def self.parse(http_resp)
        data = Types::DescribeSpotDatafeedSubscriptionOutput.new
        data
      end
    end

    # Operation Parser for DescribeSpotFleetInstances
    class DescribeSpotFleetInstances
      def self.parse(http_resp)
        data = Types::DescribeSpotFleetInstancesOutput.new
        data
      end
    end

    # Operation Parser for DescribeSpotFleetRequestHistory
    class DescribeSpotFleetRequestHistory
      def self.parse(http_resp)
        data = Types::DescribeSpotFleetRequestHistoryOutput.new
        data
      end
    end

    class HistoryRecords
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class HistoryRecord
      def self.parse(map)
        data = Types::HistoryRecord.new
        return data
      end
    end

    # Operation Parser for DescribeSpotFleetRequests
    class DescribeSpotFleetRequests
      def self.parse(http_resp)
        data = Types::DescribeSpotFleetRequestsOutput.new
        data
      end
    end

    class SpotFleetRequestConfigSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class SpotFleetRequestConfig
      def self.parse(map)
        data = Types::SpotFleetRequestConfig.new
        return data
      end
    end

    class SpotFleetRequestConfigData
      def self.parse(map)
        data = Types::SpotFleetRequestConfigData.new
        return data
      end
    end

    class TagSpecificationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class TagSpecification
      def self.parse(map)
        data = Types::TagSpecification.new
        return data
      end
    end

    class LoadBalancersConfig
      def self.parse(map)
        data = Types::LoadBalancersConfig.new
        return data
      end
    end

    class TargetGroupsConfig
      def self.parse(map)
        data = Types::TargetGroupsConfig.new
        return data
      end
    end

    class TargetGroups
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class TargetGroup
      def self.parse(map)
        data = Types::TargetGroup.new
        return data
      end
    end

    class ClassicLoadBalancersConfig
      def self.parse(map)
        data = Types::ClassicLoadBalancersConfig.new
        return data
      end
    end

    class ClassicLoadBalancers
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ClassicLoadBalancer
      def self.parse(map)
        data = Types::ClassicLoadBalancer.new
        return data
      end
    end

    class LaunchTemplateConfigList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LaunchTemplateConfig
      def self.parse(map)
        data = Types::LaunchTemplateConfig.new
        return data
      end
    end

    class LaunchTemplateOverridesList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LaunchTemplateOverrides
      def self.parse(map)
        data = Types::LaunchTemplateOverrides.new
        return data
      end
    end

    class LaunchSpecsList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class SpotFleetLaunchSpecification
      def self.parse(map)
        data = Types::SpotFleetLaunchSpecification.new
        return data
      end
    end

    class SpotFleetTagSpecificationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class SpotFleetTagSpecification
      def self.parse(map)
        data = Types::SpotFleetTagSpecification.new
        return data
      end
    end

    class SpotPlacement
      def self.parse(map)
        data = Types::SpotPlacement.new
        return data
      end
    end

    class InstanceNetworkInterfaceSpecificationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceNetworkInterfaceSpecification
      def self.parse(map)
        data = Types::InstanceNetworkInterfaceSpecification.new
        return data
      end
    end

    class Ipv6PrefixList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Ipv6PrefixSpecificationRequest
      def self.parse(map)
        data = Types::Ipv6PrefixSpecificationRequest.new
        return data
      end
    end

    class Ipv4PrefixList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Ipv4PrefixSpecificationRequest
      def self.parse(map)
        data = Types::Ipv4PrefixSpecificationRequest.new
        return data
      end
    end

    class SecurityGroupIdStringList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class SpotFleetMonitoring
      def self.parse(map)
        data = Types::SpotFleetMonitoring.new
        return data
      end
    end

    class IamInstanceProfileSpecification
      def self.parse(map)
        data = Types::IamInstanceProfileSpecification.new
        return data
      end
    end

    class SpotMaintenanceStrategies
      def self.parse(map)
        data = Types::SpotMaintenanceStrategies.new
        return data
      end
    end

    class SpotCapacityRebalance
      def self.parse(map)
        data = Types::SpotCapacityRebalance.new
        return data
      end
    end

    # Operation Parser for DescribeSpotInstanceRequests
    class DescribeSpotInstanceRequests
      def self.parse(http_resp)
        data = Types::DescribeSpotInstanceRequestsOutput.new
        data
      end
    end

    class SpotInstanceRequestList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class SpotInstanceRequest
      def self.parse(map)
        data = Types::SpotInstanceRequest.new
        return data
      end
    end

    class SpotInstanceStatus
      def self.parse(map)
        data = Types::SpotInstanceStatus.new
        return data
      end
    end

    class LaunchSpecification
      def self.parse(map)
        data = Types::LaunchSpecification.new
        return data
      end
    end

    class RunInstancesMonitoringEnabled
      def self.parse(map)
        data = Types::RunInstancesMonitoringEnabled.new
        return data
      end
    end

    # Operation Parser for DescribeSpotPriceHistory
    class DescribeSpotPriceHistory
      def self.parse(http_resp)
        data = Types::DescribeSpotPriceHistoryOutput.new
        data
      end
    end

    class SpotPriceHistoryList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class SpotPrice
      def self.parse(map)
        data = Types::SpotPrice.new
        return data
      end
    end

    # Operation Parser for DescribeStaleSecurityGroups
    class DescribeStaleSecurityGroups
      def self.parse(http_resp)
        data = Types::DescribeStaleSecurityGroupsOutput.new
        data
      end
    end

    class StaleSecurityGroupSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class StaleSecurityGroup
      def self.parse(map)
        data = Types::StaleSecurityGroup.new
        return data
      end
    end

    class StaleIpPermissionSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class StaleIpPermission
      def self.parse(map)
        data = Types::StaleIpPermission.new
        return data
      end
    end

    class UserIdGroupPairSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class PrefixListIdSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class IpRanges
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeStoreImageTasks
    class DescribeStoreImageTasks
      def self.parse(http_resp)
        data = Types::DescribeStoreImageTasksOutput.new
        data
      end
    end

    class StoreImageTaskResultSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class StoreImageTaskResult
      def self.parse(map)
        data = Types::StoreImageTaskResult.new
        return data
      end
    end

    # Operation Parser for DescribeSubnets
    class DescribeSubnets
      def self.parse(http_resp)
        data = Types::DescribeSubnetsOutput.new
        data
      end
    end

    class SubnetList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeTags
    class DescribeTags
      def self.parse(http_resp)
        data = Types::DescribeTagsOutput.new
        data
      end
    end

    class TagDescriptionList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class TagDescription
      def self.parse(map)
        data = Types::TagDescription.new
        return data
      end
    end

    # Operation Parser for DescribeTrafficMirrorFilters
    class DescribeTrafficMirrorFilters
      def self.parse(http_resp)
        data = Types::DescribeTrafficMirrorFiltersOutput.new
        data
      end
    end

    class TrafficMirrorFilterSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeTrafficMirrorSessions
    class DescribeTrafficMirrorSessions
      def self.parse(http_resp)
        data = Types::DescribeTrafficMirrorSessionsOutput.new
        data
      end
    end

    class TrafficMirrorSessionSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeTrafficMirrorTargets
    class DescribeTrafficMirrorTargets
      def self.parse(http_resp)
        data = Types::DescribeTrafficMirrorTargetsOutput.new
        data
      end
    end

    class TrafficMirrorTargetSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeTransitGatewayAttachments
    class DescribeTransitGatewayAttachments
      def self.parse(http_resp)
        data = Types::DescribeTransitGatewayAttachmentsOutput.new
        data
      end
    end

    class TransitGatewayAttachmentList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class TransitGatewayAttachment
      def self.parse(map)
        data = Types::TransitGatewayAttachment.new
        return data
      end
    end

    class TransitGatewayAttachmentAssociation
      def self.parse(map)
        data = Types::TransitGatewayAttachmentAssociation.new
        return data
      end
    end

    # Operation Parser for DescribeTransitGatewayConnectPeers
    class DescribeTransitGatewayConnectPeers
      def self.parse(http_resp)
        data = Types::DescribeTransitGatewayConnectPeersOutput.new
        data
      end
    end

    class TransitGatewayConnectPeerList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeTransitGatewayConnects
    class DescribeTransitGatewayConnects
      def self.parse(http_resp)
        data = Types::DescribeTransitGatewayConnectsOutput.new
        data
      end
    end

    class TransitGatewayConnectList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeTransitGatewayMulticastDomains
    class DescribeTransitGatewayMulticastDomains
      def self.parse(http_resp)
        data = Types::DescribeTransitGatewayMulticastDomainsOutput.new
        data
      end
    end

    class TransitGatewayMulticastDomainList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeTransitGatewayPeeringAttachments
    class DescribeTransitGatewayPeeringAttachments
      def self.parse(http_resp)
        data = Types::DescribeTransitGatewayPeeringAttachmentsOutput.new
        data
      end
    end

    class TransitGatewayPeeringAttachmentList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeTransitGatewayRouteTables
    class DescribeTransitGatewayRouteTables
      def self.parse(http_resp)
        data = Types::DescribeTransitGatewayRouteTablesOutput.new
        data
      end
    end

    class TransitGatewayRouteTableList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeTransitGatewayVpcAttachments
    class DescribeTransitGatewayVpcAttachments
      def self.parse(http_resp)
        data = Types::DescribeTransitGatewayVpcAttachmentsOutput.new
        data
      end
    end

    class TransitGatewayVpcAttachmentList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeTransitGateways
    class DescribeTransitGateways
      def self.parse(http_resp)
        data = Types::DescribeTransitGatewaysOutput.new
        data
      end
    end

    class TransitGatewayList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeTrunkInterfaceAssociations
    class DescribeTrunkInterfaceAssociations
      def self.parse(http_resp)
        data = Types::DescribeTrunkInterfaceAssociationsOutput.new
        data
      end
    end

    class TrunkInterfaceAssociationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeVolumeAttribute
    class DescribeVolumeAttribute
      def self.parse(http_resp)
        data = Types::DescribeVolumeAttributeOutput.new
        data
      end
    end

    # Operation Parser for DescribeVolumeStatus
    class DescribeVolumeStatus
      def self.parse(http_resp)
        data = Types::DescribeVolumeStatusOutput.new
        data
      end
    end

    class VolumeStatusList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class VolumeStatusItem
      def self.parse(map)
        data = Types::VolumeStatusItem.new
        return data
      end
    end

    class VolumeStatusAttachmentStatusList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class VolumeStatusAttachmentStatus
      def self.parse(map)
        data = Types::VolumeStatusAttachmentStatus.new
        return data
      end
    end

    class VolumeStatusInfo
      def self.parse(map)
        data = Types::VolumeStatusInfo.new
        return data
      end
    end

    class VolumeStatusDetailsList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class VolumeStatusDetails
      def self.parse(map)
        data = Types::VolumeStatusDetails.new
        return data
      end
    end

    class VolumeStatusEventsList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class VolumeStatusEvent
      def self.parse(map)
        data = Types::VolumeStatusEvent.new
        return data
      end
    end

    class VolumeStatusActionsList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class VolumeStatusAction
      def self.parse(map)
        data = Types::VolumeStatusAction.new
        return data
      end
    end

    # Operation Parser for DescribeVolumes
    class DescribeVolumes
      def self.parse(http_resp)
        data = Types::DescribeVolumesOutput.new
        data
      end
    end

    class VolumeList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Volume
      def self.parse(map)
        data = Types::Volume.new
        return data
      end
    end

    # Operation Parser for DescribeVolumesModifications
    class DescribeVolumesModifications
      def self.parse(http_resp)
        data = Types::DescribeVolumesModificationsOutput.new
        data
      end
    end

    class VolumeModificationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class VolumeModification
      def self.parse(map)
        data = Types::VolumeModification.new
        return data
      end
    end

    # Operation Parser for DescribeVpcAttribute
    class DescribeVpcAttribute
      def self.parse(http_resp)
        data = Types::DescribeVpcAttributeOutput.new
        data
      end
    end

    # Operation Parser for DescribeVpcClassicLink
    class DescribeVpcClassicLink
      def self.parse(http_resp)
        data = Types::DescribeVpcClassicLinkOutput.new
        data
      end
    end

    class VpcClassicLinkList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class VpcClassicLink
      def self.parse(map)
        data = Types::VpcClassicLink.new
        return data
      end
    end

    # Operation Parser for DescribeVpcClassicLinkDnsSupport
    class DescribeVpcClassicLinkDnsSupport
      def self.parse(http_resp)
        data = Types::DescribeVpcClassicLinkDnsSupportOutput.new
        data
      end
    end

    class ClassicLinkDnsSupportList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ClassicLinkDnsSupport
      def self.parse(map)
        data = Types::ClassicLinkDnsSupport.new
        return data
      end
    end

    # Operation Parser for DescribeVpcEndpointConnectionNotifications
    class DescribeVpcEndpointConnectionNotifications
      def self.parse(http_resp)
        data = Types::DescribeVpcEndpointConnectionNotificationsOutput.new
        data
      end
    end

    class ConnectionNotificationSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeVpcEndpointConnections
    class DescribeVpcEndpointConnections
      def self.parse(http_resp)
        data = Types::DescribeVpcEndpointConnectionsOutput.new
        data
      end
    end

    class VpcEndpointConnectionSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class VpcEndpointConnection
      def self.parse(map)
        data = Types::VpcEndpointConnection.new
        return data
      end
    end

    # Operation Parser for DescribeVpcEndpointServiceConfigurations
    class DescribeVpcEndpointServiceConfigurations
      def self.parse(http_resp)
        data = Types::DescribeVpcEndpointServiceConfigurationsOutput.new
        data
      end
    end

    class ServiceConfigurationSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeVpcEndpointServicePermissions
    class DescribeVpcEndpointServicePermissions
      def self.parse(http_resp)
        data = Types::DescribeVpcEndpointServicePermissionsOutput.new
        data
      end
    end

    class AllowedPrincipalSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AllowedPrincipal
      def self.parse(map)
        data = Types::AllowedPrincipal.new
        return data
      end
    end

    # Operation Parser for DescribeVpcEndpointServices
    class DescribeVpcEndpointServices
      def self.parse(http_resp)
        data = Types::DescribeVpcEndpointServicesOutput.new
        data
      end
    end

    class ServiceDetailSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ServiceDetail
      def self.parse(map)
        data = Types::ServiceDetail.new
        return data
      end
    end

    class PrivateDnsDetailsSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class PrivateDnsDetails
      def self.parse(map)
        data = Types::PrivateDnsDetails.new
        return data
      end
    end

    # Operation Parser for DescribeVpcEndpoints
    class DescribeVpcEndpoints
      def self.parse(http_resp)
        data = Types::DescribeVpcEndpointsOutput.new
        data
      end
    end

    class VpcEndpointSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeVpcPeeringConnections
    class DescribeVpcPeeringConnections
      def self.parse(http_resp)
        data = Types::DescribeVpcPeeringConnectionsOutput.new
        data
      end
    end

    class VpcPeeringConnectionList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeVpcs
    class DescribeVpcs
      def self.parse(http_resp)
        data = Types::DescribeVpcsOutput.new
        data
      end
    end

    class VpcList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeVpnConnections
    class DescribeVpnConnections
      def self.parse(http_resp)
        data = Types::DescribeVpnConnectionsOutput.new
        data
      end
    end

    class VpnConnectionList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeVpnGateways
    class DescribeVpnGateways
      def self.parse(http_resp)
        data = Types::DescribeVpnGatewaysOutput.new
        data
      end
    end

    class VpnGatewayList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DetachClassicLinkVpc
    class DetachClassicLinkVpc
      def self.parse(http_resp)
        data = Types::DetachClassicLinkVpcOutput.new
        data
      end
    end

    # Operation Parser for DetachInternetGateway
    class DetachInternetGateway
      def self.parse(http_resp)
        data = Types::DetachInternetGatewayOutput.new
        data
      end
    end

    # Operation Parser for DetachNetworkInterface
    class DetachNetworkInterface
      def self.parse(http_resp)
        data = Types::DetachNetworkInterfaceOutput.new
        data
      end
    end

    # Operation Parser for DetachVolume
    class DetachVolume
      def self.parse(http_resp)
        data = Types::DetachVolumeOutput.new
        data
      end
    end

    # Operation Parser for DetachVpnGateway
    class DetachVpnGateway
      def self.parse(http_resp)
        data = Types::DetachVpnGatewayOutput.new
        data
      end
    end

    # Operation Parser for DisableEbsEncryptionByDefault
    class DisableEbsEncryptionByDefault
      def self.parse(http_resp)
        data = Types::DisableEbsEncryptionByDefaultOutput.new
        data
      end
    end

    # Operation Parser for DisableFastSnapshotRestores
    class DisableFastSnapshotRestores
      def self.parse(http_resp)
        data = Types::DisableFastSnapshotRestoresOutput.new
        data
      end
    end

    class DisableFastSnapshotRestoreErrorSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class DisableFastSnapshotRestoreErrorItem
      def self.parse(map)
        data = Types::DisableFastSnapshotRestoreErrorItem.new
        return data
      end
    end

    class DisableFastSnapshotRestoreStateErrorSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class DisableFastSnapshotRestoreStateErrorItem
      def self.parse(map)
        data = Types::DisableFastSnapshotRestoreStateErrorItem.new
        return data
      end
    end

    class DisableFastSnapshotRestoreStateError
      def self.parse(map)
        data = Types::DisableFastSnapshotRestoreStateError.new
        return data
      end
    end

    class DisableFastSnapshotRestoreSuccessSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class DisableFastSnapshotRestoreSuccessItem
      def self.parse(map)
        data = Types::DisableFastSnapshotRestoreSuccessItem.new
        return data
      end
    end

    # Operation Parser for DisableImageDeprecation
    class DisableImageDeprecation
      def self.parse(http_resp)
        data = Types::DisableImageDeprecationOutput.new
        data
      end
    end

    # Operation Parser for DisableIpamOrganizationAdminAccount
    class DisableIpamOrganizationAdminAccount
      def self.parse(http_resp)
        data = Types::DisableIpamOrganizationAdminAccountOutput.new
        data
      end
    end

    # Operation Parser for DisableSerialConsoleAccess
    class DisableSerialConsoleAccess
      def self.parse(http_resp)
        data = Types::DisableSerialConsoleAccessOutput.new
        data
      end
    end

    # Operation Parser for DisableTransitGatewayRouteTablePropagation
    class DisableTransitGatewayRouteTablePropagation
      def self.parse(http_resp)
        data = Types::DisableTransitGatewayRouteTablePropagationOutput.new
        data
      end
    end

    class TransitGatewayPropagation
      def self.parse(map)
        data = Types::TransitGatewayPropagation.new
        return data
      end
    end

    # Operation Parser for DisableVgwRoutePropagation
    class DisableVgwRoutePropagation
      def self.parse(http_resp)
        data = Types::DisableVgwRoutePropagationOutput.new
        data
      end
    end

    # Operation Parser for DisableVpcClassicLink
    class DisableVpcClassicLink
      def self.parse(http_resp)
        data = Types::DisableVpcClassicLinkOutput.new
        data
      end
    end

    # Operation Parser for DisableVpcClassicLinkDnsSupport
    class DisableVpcClassicLinkDnsSupport
      def self.parse(http_resp)
        data = Types::DisableVpcClassicLinkDnsSupportOutput.new
        data
      end
    end

    # Operation Parser for DisassociateAddress
    class DisassociateAddress
      def self.parse(http_resp)
        data = Types::DisassociateAddressOutput.new
        data
      end
    end

    # Operation Parser for DisassociateClientVpnTargetNetwork
    class DisassociateClientVpnTargetNetwork
      def self.parse(http_resp)
        data = Types::DisassociateClientVpnTargetNetworkOutput.new
        data
      end
    end

    # Operation Parser for DisassociateEnclaveCertificateIamRole
    class DisassociateEnclaveCertificateIamRole
      def self.parse(http_resp)
        data = Types::DisassociateEnclaveCertificateIamRoleOutput.new
        data
      end
    end

    # Operation Parser for DisassociateIamInstanceProfile
    class DisassociateIamInstanceProfile
      def self.parse(http_resp)
        data = Types::DisassociateIamInstanceProfileOutput.new
        data
      end
    end

    # Operation Parser for DisassociateInstanceEventWindow
    class DisassociateInstanceEventWindow
      def self.parse(http_resp)
        data = Types::DisassociateInstanceEventWindowOutput.new
        data
      end
    end

    # Operation Parser for DisassociateRouteTable
    class DisassociateRouteTable
      def self.parse(http_resp)
        data = Types::DisassociateRouteTableOutput.new
        data
      end
    end

    # Operation Parser for DisassociateSubnetCidrBlock
    class DisassociateSubnetCidrBlock
      def self.parse(http_resp)
        data = Types::DisassociateSubnetCidrBlockOutput.new
        data
      end
    end

    # Operation Parser for DisassociateTransitGatewayMulticastDomain
    class DisassociateTransitGatewayMulticastDomain
      def self.parse(http_resp)
        data = Types::DisassociateTransitGatewayMulticastDomainOutput.new
        data
      end
    end

    # Operation Parser for DisassociateTransitGatewayRouteTable
    class DisassociateTransitGatewayRouteTable
      def self.parse(http_resp)
        data = Types::DisassociateTransitGatewayRouteTableOutput.new
        data
      end
    end

    # Operation Parser for DisassociateTrunkInterface
    class DisassociateTrunkInterface
      def self.parse(http_resp)
        data = Types::DisassociateTrunkInterfaceOutput.new
        data
      end
    end

    # Operation Parser for DisassociateVpcCidrBlock
    class DisassociateVpcCidrBlock
      def self.parse(http_resp)
        data = Types::DisassociateVpcCidrBlockOutput.new
        data
      end
    end

    # Operation Parser for EnableEbsEncryptionByDefault
    class EnableEbsEncryptionByDefault
      def self.parse(http_resp)
        data = Types::EnableEbsEncryptionByDefaultOutput.new
        data
      end
    end

    # Operation Parser for EnableFastSnapshotRestores
    class EnableFastSnapshotRestores
      def self.parse(http_resp)
        data = Types::EnableFastSnapshotRestoresOutput.new
        data
      end
    end

    class EnableFastSnapshotRestoreErrorSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class EnableFastSnapshotRestoreErrorItem
      def self.parse(map)
        data = Types::EnableFastSnapshotRestoreErrorItem.new
        return data
      end
    end

    class EnableFastSnapshotRestoreStateErrorSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class EnableFastSnapshotRestoreStateErrorItem
      def self.parse(map)
        data = Types::EnableFastSnapshotRestoreStateErrorItem.new
        return data
      end
    end

    class EnableFastSnapshotRestoreStateError
      def self.parse(map)
        data = Types::EnableFastSnapshotRestoreStateError.new
        return data
      end
    end

    class EnableFastSnapshotRestoreSuccessSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class EnableFastSnapshotRestoreSuccessItem
      def self.parse(map)
        data = Types::EnableFastSnapshotRestoreSuccessItem.new
        return data
      end
    end

    # Operation Parser for EnableImageDeprecation
    class EnableImageDeprecation
      def self.parse(http_resp)
        data = Types::EnableImageDeprecationOutput.new
        data
      end
    end

    # Operation Parser for EnableIpamOrganizationAdminAccount
    class EnableIpamOrganizationAdminAccount
      def self.parse(http_resp)
        data = Types::EnableIpamOrganizationAdminAccountOutput.new
        data
      end
    end

    # Operation Parser for EnableSerialConsoleAccess
    class EnableSerialConsoleAccess
      def self.parse(http_resp)
        data = Types::EnableSerialConsoleAccessOutput.new
        data
      end
    end

    # Operation Parser for EnableTransitGatewayRouteTablePropagation
    class EnableTransitGatewayRouteTablePropagation
      def self.parse(http_resp)
        data = Types::EnableTransitGatewayRouteTablePropagationOutput.new
        data
      end
    end

    # Operation Parser for EnableVgwRoutePropagation
    class EnableVgwRoutePropagation
      def self.parse(http_resp)
        data = Types::EnableVgwRoutePropagationOutput.new
        data
      end
    end

    # Operation Parser for EnableVolumeIO
    class EnableVolumeIO
      def self.parse(http_resp)
        data = Types::EnableVolumeIOOutput.new
        data
      end
    end

    # Operation Parser for EnableVpcClassicLink
    class EnableVpcClassicLink
      def self.parse(http_resp)
        data = Types::EnableVpcClassicLinkOutput.new
        data
      end
    end

    # Operation Parser for EnableVpcClassicLinkDnsSupport
    class EnableVpcClassicLinkDnsSupport
      def self.parse(http_resp)
        data = Types::EnableVpcClassicLinkDnsSupportOutput.new
        data
      end
    end

    # Operation Parser for ExportClientVpnClientCertificateRevocationList
    class ExportClientVpnClientCertificateRevocationList
      def self.parse(http_resp)
        data = Types::ExportClientVpnClientCertificateRevocationListOutput.new
        data
      end
    end

    class ClientCertificateRevocationListStatus
      def self.parse(map)
        data = Types::ClientCertificateRevocationListStatus.new
        return data
      end
    end

    # Operation Parser for ExportClientVpnClientConfiguration
    class ExportClientVpnClientConfiguration
      def self.parse(http_resp)
        data = Types::ExportClientVpnClientConfigurationOutput.new
        data
      end
    end

    # Operation Parser for ExportImage
    class ExportImage
      def self.parse(http_resp)
        data = Types::ExportImageOutput.new
        data
      end
    end

    # Operation Parser for ExportTransitGatewayRoutes
    class ExportTransitGatewayRoutes
      def self.parse(http_resp)
        data = Types::ExportTransitGatewayRoutesOutput.new
        data
      end
    end

    # Operation Parser for GetAssociatedEnclaveCertificateIamRoles
    class GetAssociatedEnclaveCertificateIamRoles
      def self.parse(http_resp)
        data = Types::GetAssociatedEnclaveCertificateIamRolesOutput.new
        data
      end
    end

    class AssociatedRolesList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AssociatedRole
      def self.parse(map)
        data = Types::AssociatedRole.new
        return data
      end
    end

    # Operation Parser for GetAssociatedIpv6PoolCidrs
    class GetAssociatedIpv6PoolCidrs
      def self.parse(http_resp)
        data = Types::GetAssociatedIpv6PoolCidrsOutput.new
        data
      end
    end

    class Ipv6CidrAssociationSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Ipv6CidrAssociation
      def self.parse(map)
        data = Types::Ipv6CidrAssociation.new
        return data
      end
    end

    # Operation Parser for GetCapacityReservationUsage
    class GetCapacityReservationUsage
      def self.parse(http_resp)
        data = Types::GetCapacityReservationUsageOutput.new
        data
      end
    end

    class InstanceUsageSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceUsage
      def self.parse(map)
        data = Types::InstanceUsage.new
        return data
      end
    end

    # Operation Parser for GetCoipPoolUsage
    class GetCoipPoolUsage
      def self.parse(http_resp)
        data = Types::GetCoipPoolUsageOutput.new
        data
      end
    end

    class CoipAddressUsageSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CoipAddressUsage
      def self.parse(map)
        data = Types::CoipAddressUsage.new
        return data
      end
    end

    # Operation Parser for GetConsoleOutput
    class GetConsoleOutput
      def self.parse(http_resp)
        data = Types::GetConsoleOutputOutput.new
        data
      end
    end

    # Operation Parser for GetConsoleScreenshot
    class GetConsoleScreenshot
      def self.parse(http_resp)
        data = Types::GetConsoleScreenshotOutput.new
        data
      end
    end

    # Operation Parser for GetDefaultCreditSpecification
    class GetDefaultCreditSpecification
      def self.parse(http_resp)
        data = Types::GetDefaultCreditSpecificationOutput.new
        data
      end
    end

    class InstanceFamilyCreditSpecification
      def self.parse(map)
        data = Types::InstanceFamilyCreditSpecification.new
        return data
      end
    end

    # Operation Parser for GetEbsDefaultKmsKeyId
    class GetEbsDefaultKmsKeyId
      def self.parse(http_resp)
        data = Types::GetEbsDefaultKmsKeyIdOutput.new
        data
      end
    end

    # Operation Parser for GetEbsEncryptionByDefault
    class GetEbsEncryptionByDefault
      def self.parse(http_resp)
        data = Types::GetEbsEncryptionByDefaultOutput.new
        data
      end
    end

    # Operation Parser for GetFlowLogsIntegrationTemplate
    class GetFlowLogsIntegrationTemplate
      def self.parse(http_resp)
        data = Types::GetFlowLogsIntegrationTemplateOutput.new
        data
      end
    end

    # Operation Parser for GetGroupsForCapacityReservation
    class GetGroupsForCapacityReservation
      def self.parse(http_resp)
        data = Types::GetGroupsForCapacityReservationOutput.new
        data
      end
    end

    class CapacityReservationGroupSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CapacityReservationGroup
      def self.parse(map)
        data = Types::CapacityReservationGroup.new
        return data
      end
    end

    # Operation Parser for GetHostReservationPurchasePreview
    class GetHostReservationPurchasePreview
      def self.parse(http_resp)
        data = Types::GetHostReservationPurchasePreviewOutput.new
        data
      end
    end

    class PurchaseSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Purchase
      def self.parse(map)
        data = Types::Purchase.new
        return data
      end
    end

    # Operation Parser for GetInstanceTypesFromInstanceRequirements
    class GetInstanceTypesFromInstanceRequirements
      def self.parse(http_resp)
        data = Types::GetInstanceTypesFromInstanceRequirementsOutput.new
        data
      end
    end

    class InstanceTypeInfoFromInstanceRequirementsSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceTypeInfoFromInstanceRequirements
      def self.parse(map)
        data = Types::InstanceTypeInfoFromInstanceRequirements.new
        return data
      end
    end

    # Operation Parser for GetIpamAddressHistory
    class GetIpamAddressHistory
      def self.parse(http_resp)
        data = Types::GetIpamAddressHistoryOutput.new
        data
      end
    end

    class IpamAddressHistoryRecordSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class IpamAddressHistoryRecord
      def self.parse(map)
        data = Types::IpamAddressHistoryRecord.new
        return data
      end
    end

    # Operation Parser for GetIpamPoolAllocations
    class GetIpamPoolAllocations
      def self.parse(http_resp)
        data = Types::GetIpamPoolAllocationsOutput.new
        data
      end
    end

    class IpamPoolAllocationSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for GetIpamPoolCidrs
    class GetIpamPoolCidrs
      def self.parse(http_resp)
        data = Types::GetIpamPoolCidrsOutput.new
        data
      end
    end

    class IpamPoolCidrSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for GetIpamResourceCidrs
    class GetIpamResourceCidrs
      def self.parse(http_resp)
        data = Types::GetIpamResourceCidrsOutput.new
        data
      end
    end

    class IpamResourceCidrSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class IpamResourceCidr
      def self.parse(map)
        data = Types::IpamResourceCidr.new
        return data
      end
    end

    # Operation Parser for GetLaunchTemplateData
    class GetLaunchTemplateData
      def self.parse(http_resp)
        data = Types::GetLaunchTemplateDataOutput.new
        data
      end
    end

    # Operation Parser for GetManagedPrefixListAssociations
    class GetManagedPrefixListAssociations
      def self.parse(http_resp)
        data = Types::GetManagedPrefixListAssociationsOutput.new
        data
      end
    end

    class PrefixListAssociationSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class PrefixListAssociation
      def self.parse(map)
        data = Types::PrefixListAssociation.new
        return data
      end
    end

    # Operation Parser for GetManagedPrefixListEntries
    class GetManagedPrefixListEntries
      def self.parse(http_resp)
        data = Types::GetManagedPrefixListEntriesOutput.new
        data
      end
    end

    class PrefixListEntrySet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class PrefixListEntry
      def self.parse(map)
        data = Types::PrefixListEntry.new
        return data
      end
    end

    # Operation Parser for GetNetworkInsightsAccessScopeAnalysisFindings
    class GetNetworkInsightsAccessScopeAnalysisFindings
      def self.parse(http_resp)
        data = Types::GetNetworkInsightsAccessScopeAnalysisFindingsOutput.new
        data
      end
    end

    class AccessScopeAnalysisFindingList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AccessScopeAnalysisFinding
      def self.parse(map)
        data = Types::AccessScopeAnalysisFinding.new
        return data
      end
    end

    # Operation Parser for GetNetworkInsightsAccessScopeContent
    class GetNetworkInsightsAccessScopeContent
      def self.parse(http_resp)
        data = Types::GetNetworkInsightsAccessScopeContentOutput.new
        data
      end
    end

    # Operation Parser for GetPasswordData
    class GetPasswordData
      def self.parse(http_resp)
        data = Types::GetPasswordDataOutput.new
        data
      end
    end

    # Operation Parser for GetReservedInstancesExchangeQuote
    class GetReservedInstancesExchangeQuote
      def self.parse(http_resp)
        data = Types::GetReservedInstancesExchangeQuoteOutput.new
        data
      end
    end

    class TargetReservationValueSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class TargetReservationValue
      def self.parse(map)
        data = Types::TargetReservationValue.new
        return data
      end
    end

    class TargetConfiguration
      def self.parse(map)
        data = Types::TargetConfiguration.new
        return data
      end
    end

    class ReservationValue
      def self.parse(map)
        data = Types::ReservationValue.new
        return data
      end
    end

    class ReservedInstanceReservationValueSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ReservedInstanceReservationValue
      def self.parse(map)
        data = Types::ReservedInstanceReservationValue.new
        return data
      end
    end

    # Operation Parser for GetSerialConsoleAccessStatus
    class GetSerialConsoleAccessStatus
      def self.parse(http_resp)
        data = Types::GetSerialConsoleAccessStatusOutput.new
        data
      end
    end

    # Operation Parser for GetSpotPlacementScores
    class GetSpotPlacementScores
      def self.parse(http_resp)
        data = Types::GetSpotPlacementScoresOutput.new
        data
      end
    end

    class SpotPlacementScores
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class SpotPlacementScore
      def self.parse(map)
        data = Types::SpotPlacementScore.new
        return data
      end
    end

    # Operation Parser for GetSubnetCidrReservations
    class GetSubnetCidrReservations
      def self.parse(http_resp)
        data = Types::GetSubnetCidrReservationsOutput.new
        data
      end
    end

    class SubnetCidrReservationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for GetTransitGatewayAttachmentPropagations
    class GetTransitGatewayAttachmentPropagations
      def self.parse(http_resp)
        data = Types::GetTransitGatewayAttachmentPropagationsOutput.new
        data
      end
    end

    class TransitGatewayAttachmentPropagationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class TransitGatewayAttachmentPropagation
      def self.parse(map)
        data = Types::TransitGatewayAttachmentPropagation.new
        return data
      end
    end

    # Operation Parser for GetTransitGatewayMulticastDomainAssociations
    class GetTransitGatewayMulticastDomainAssociations
      def self.parse(http_resp)
        data = Types::GetTransitGatewayMulticastDomainAssociationsOutput.new
        data
      end
    end

    class TransitGatewayMulticastDomainAssociationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class TransitGatewayMulticastDomainAssociation
      def self.parse(map)
        data = Types::TransitGatewayMulticastDomainAssociation.new
        return data
      end
    end

    # Operation Parser for GetTransitGatewayPrefixListReferences
    class GetTransitGatewayPrefixListReferences
      def self.parse(http_resp)
        data = Types::GetTransitGatewayPrefixListReferencesOutput.new
        data
      end
    end

    class TransitGatewayPrefixListReferenceSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for GetTransitGatewayRouteTableAssociations
    class GetTransitGatewayRouteTableAssociations
      def self.parse(http_resp)
        data = Types::GetTransitGatewayRouteTableAssociationsOutput.new
        data
      end
    end

    class TransitGatewayRouteTableAssociationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class TransitGatewayRouteTableAssociation
      def self.parse(map)
        data = Types::TransitGatewayRouteTableAssociation.new
        return data
      end
    end

    # Operation Parser for GetTransitGatewayRouteTablePropagations
    class GetTransitGatewayRouteTablePropagations
      def self.parse(http_resp)
        data = Types::GetTransitGatewayRouteTablePropagationsOutput.new
        data
      end
    end

    class TransitGatewayRouteTablePropagationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class TransitGatewayRouteTablePropagation
      def self.parse(map)
        data = Types::TransitGatewayRouteTablePropagation.new
        return data
      end
    end

    # Operation Parser for GetVpnConnectionDeviceSampleConfiguration
    class GetVpnConnectionDeviceSampleConfiguration
      def self.parse(http_resp)
        data = Types::GetVpnConnectionDeviceSampleConfigurationOutput.new
        data
      end
    end

    # Operation Parser for GetVpnConnectionDeviceTypes
    class GetVpnConnectionDeviceTypes
      def self.parse(http_resp)
        data = Types::GetVpnConnectionDeviceTypesOutput.new
        data
      end
    end

    class VpnConnectionDeviceTypeList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class VpnConnectionDeviceType
      def self.parse(map)
        data = Types::VpnConnectionDeviceType.new
        return data
      end
    end

    # Operation Parser for ImportClientVpnClientCertificateRevocationList
    class ImportClientVpnClientCertificateRevocationList
      def self.parse(http_resp)
        data = Types::ImportClientVpnClientCertificateRevocationListOutput.new
        data
      end
    end

    # Operation Parser for ImportImage
    class ImportImage
      def self.parse(http_resp)
        data = Types::ImportImageOutput.new
        data
      end
    end

    # Operation Parser for ImportInstance
    class ImportInstance
      def self.parse(http_resp)
        data = Types::ImportInstanceOutput.new
        data
      end
    end

    # Operation Parser for ImportKeyPair
    class ImportKeyPair
      def self.parse(http_resp)
        data = Types::ImportKeyPairOutput.new
        data
      end
    end

    # Operation Parser for ImportSnapshot
    class ImportSnapshot
      def self.parse(http_resp)
        data = Types::ImportSnapshotOutput.new
        data
      end
    end

    # Operation Parser for ImportVolume
    class ImportVolume
      def self.parse(http_resp)
        data = Types::ImportVolumeOutput.new
        data
      end
    end

    # Operation Parser for ListSnapshotsInRecycleBin
    class ListSnapshotsInRecycleBin
      def self.parse(http_resp)
        data = Types::ListSnapshotsInRecycleBinOutput.new
        data
      end
    end

    class SnapshotRecycleBinInfoList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class SnapshotRecycleBinInfo
      def self.parse(map)
        data = Types::SnapshotRecycleBinInfo.new
        return data
      end
    end

    # Operation Parser for ModifyAddressAttribute
    class ModifyAddressAttribute
      def self.parse(http_resp)
        data = Types::ModifyAddressAttributeOutput.new
        data
      end
    end

    # Operation Parser for ModifyAvailabilityZoneGroup
    class ModifyAvailabilityZoneGroup
      def self.parse(http_resp)
        data = Types::ModifyAvailabilityZoneGroupOutput.new
        data
      end
    end

    # Operation Parser for ModifyCapacityReservation
    class ModifyCapacityReservation
      def self.parse(http_resp)
        data = Types::ModifyCapacityReservationOutput.new
        data
      end
    end

    # Operation Parser for ModifyCapacityReservationFleet
    class ModifyCapacityReservationFleet
      def self.parse(http_resp)
        data = Types::ModifyCapacityReservationFleetOutput.new
        data
      end
    end

    # Operation Parser for ModifyClientVpnEndpoint
    class ModifyClientVpnEndpoint
      def self.parse(http_resp)
        data = Types::ModifyClientVpnEndpointOutput.new
        data
      end
    end

    # Operation Parser for ModifyDefaultCreditSpecification
    class ModifyDefaultCreditSpecification
      def self.parse(http_resp)
        data = Types::ModifyDefaultCreditSpecificationOutput.new
        data
      end
    end

    # Operation Parser for ModifyEbsDefaultKmsKeyId
    class ModifyEbsDefaultKmsKeyId
      def self.parse(http_resp)
        data = Types::ModifyEbsDefaultKmsKeyIdOutput.new
        data
      end
    end

    # Operation Parser for ModifyFleet
    class ModifyFleet
      def self.parse(http_resp)
        data = Types::ModifyFleetOutput.new
        data
      end
    end

    # Operation Parser for ModifyFpgaImageAttribute
    class ModifyFpgaImageAttribute
      def self.parse(http_resp)
        data = Types::ModifyFpgaImageAttributeOutput.new
        data
      end
    end

    # Operation Parser for ModifyHosts
    class ModifyHosts
      def self.parse(http_resp)
        data = Types::ModifyHostsOutput.new
        data
      end
    end

    class UnsuccessfulItemList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for ModifyIdFormat
    class ModifyIdFormat
      def self.parse(http_resp)
        data = Types::ModifyIdFormatOutput.new
        data
      end
    end

    # Operation Parser for ModifyIdentityIdFormat
    class ModifyIdentityIdFormat
      def self.parse(http_resp)
        data = Types::ModifyIdentityIdFormatOutput.new
        data
      end
    end

    # Operation Parser for ModifyImageAttribute
    class ModifyImageAttribute
      def self.parse(http_resp)
        data = Types::ModifyImageAttributeOutput.new
        data
      end
    end

    # Operation Parser for ModifyInstanceAttribute
    class ModifyInstanceAttribute
      def self.parse(http_resp)
        data = Types::ModifyInstanceAttributeOutput.new
        data
      end
    end

    # Operation Parser for ModifyInstanceCapacityReservationAttributes
    class ModifyInstanceCapacityReservationAttributes
      def self.parse(http_resp)
        data = Types::ModifyInstanceCapacityReservationAttributesOutput.new
        data
      end
    end

    # Operation Parser for ModifyInstanceCreditSpecification
    class ModifyInstanceCreditSpecification
      def self.parse(http_resp)
        data = Types::ModifyInstanceCreditSpecificationOutput.new
        data
      end
    end

    class UnsuccessfulInstanceCreditSpecificationSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class UnsuccessfulInstanceCreditSpecificationItem
      def self.parse(map)
        data = Types::UnsuccessfulInstanceCreditSpecificationItem.new
        return data
      end
    end

    class UnsuccessfulInstanceCreditSpecificationItemError
      def self.parse(map)
        data = Types::UnsuccessfulInstanceCreditSpecificationItemError.new
        return data
      end
    end

    class SuccessfulInstanceCreditSpecificationSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class SuccessfulInstanceCreditSpecificationItem
      def self.parse(map)
        data = Types::SuccessfulInstanceCreditSpecificationItem.new
        return data
      end
    end

    # Operation Parser for ModifyInstanceEventStartTime
    class ModifyInstanceEventStartTime
      def self.parse(http_resp)
        data = Types::ModifyInstanceEventStartTimeOutput.new
        data
      end
    end

    # Operation Parser for ModifyInstanceEventWindow
    class ModifyInstanceEventWindow
      def self.parse(http_resp)
        data = Types::ModifyInstanceEventWindowOutput.new
        data
      end
    end

    # Operation Parser for ModifyInstanceMetadataOptions
    class ModifyInstanceMetadataOptions
      def self.parse(http_resp)
        data = Types::ModifyInstanceMetadataOptionsOutput.new
        data
      end
    end

    # Operation Parser for ModifyInstancePlacement
    class ModifyInstancePlacement
      def self.parse(http_resp)
        data = Types::ModifyInstancePlacementOutput.new
        data
      end
    end

    # Operation Parser for ModifyIpam
    class ModifyIpam
      def self.parse(http_resp)
        data = Types::ModifyIpamOutput.new
        data
      end
    end

    # Operation Parser for ModifyIpamPool
    class ModifyIpamPool
      def self.parse(http_resp)
        data = Types::ModifyIpamPoolOutput.new
        data
      end
    end

    # Operation Parser for ModifyIpamResourceCidr
    class ModifyIpamResourceCidr
      def self.parse(http_resp)
        data = Types::ModifyIpamResourceCidrOutput.new
        data
      end
    end

    # Operation Parser for ModifyIpamScope
    class ModifyIpamScope
      def self.parse(http_resp)
        data = Types::ModifyIpamScopeOutput.new
        data
      end
    end

    # Operation Parser for ModifyLaunchTemplate
    class ModifyLaunchTemplate
      def self.parse(http_resp)
        data = Types::ModifyLaunchTemplateOutput.new
        data
      end
    end

    # Operation Parser for ModifyManagedPrefixList
    class ModifyManagedPrefixList
      def self.parse(http_resp)
        data = Types::ModifyManagedPrefixListOutput.new
        data
      end
    end

    # Operation Parser for ModifyNetworkInterfaceAttribute
    class ModifyNetworkInterfaceAttribute
      def self.parse(http_resp)
        data = Types::ModifyNetworkInterfaceAttributeOutput.new
        data
      end
    end

    # Operation Parser for ModifyPrivateDnsNameOptions
    class ModifyPrivateDnsNameOptions
      def self.parse(http_resp)
        data = Types::ModifyPrivateDnsNameOptionsOutput.new
        data
      end
    end

    # Operation Parser for ModifyReservedInstances
    class ModifyReservedInstances
      def self.parse(http_resp)
        data = Types::ModifyReservedInstancesOutput.new
        data
      end
    end

    # Operation Parser for ModifySecurityGroupRules
    class ModifySecurityGroupRules
      def self.parse(http_resp)
        data = Types::ModifySecurityGroupRulesOutput.new
        data
      end
    end

    # Operation Parser for ModifySnapshotAttribute
    class ModifySnapshotAttribute
      def self.parse(http_resp)
        data = Types::ModifySnapshotAttributeOutput.new
        data
      end
    end

    # Operation Parser for ModifySnapshotTier
    class ModifySnapshotTier
      def self.parse(http_resp)
        data = Types::ModifySnapshotTierOutput.new
        data
      end
    end

    # Operation Parser for ModifySpotFleetRequest
    class ModifySpotFleetRequest
      def self.parse(http_resp)
        data = Types::ModifySpotFleetRequestOutput.new
        data
      end
    end

    # Operation Parser for ModifySubnetAttribute
    class ModifySubnetAttribute
      def self.parse(http_resp)
        data = Types::ModifySubnetAttributeOutput.new
        data
      end
    end

    # Operation Parser for ModifyTrafficMirrorFilterNetworkServices
    class ModifyTrafficMirrorFilterNetworkServices
      def self.parse(http_resp)
        data = Types::ModifyTrafficMirrorFilterNetworkServicesOutput.new
        data
      end
    end

    # Operation Parser for ModifyTrafficMirrorFilterRule
    class ModifyTrafficMirrorFilterRule
      def self.parse(http_resp)
        data = Types::ModifyTrafficMirrorFilterRuleOutput.new
        data
      end
    end

    # Operation Parser for ModifyTrafficMirrorSession
    class ModifyTrafficMirrorSession
      def self.parse(http_resp)
        data = Types::ModifyTrafficMirrorSessionOutput.new
        data
      end
    end

    # Operation Parser for ModifyTransitGateway
    class ModifyTransitGateway
      def self.parse(http_resp)
        data = Types::ModifyTransitGatewayOutput.new
        data
      end
    end

    # Operation Parser for ModifyTransitGatewayPrefixListReference
    class ModifyTransitGatewayPrefixListReference
      def self.parse(http_resp)
        data = Types::ModifyTransitGatewayPrefixListReferenceOutput.new
        data
      end
    end

    # Operation Parser for ModifyTransitGatewayVpcAttachment
    class ModifyTransitGatewayVpcAttachment
      def self.parse(http_resp)
        data = Types::ModifyTransitGatewayVpcAttachmentOutput.new
        data
      end
    end

    # Operation Parser for ModifyVolume
    class ModifyVolume
      def self.parse(http_resp)
        data = Types::ModifyVolumeOutput.new
        data
      end
    end

    # Operation Parser for ModifyVolumeAttribute
    class ModifyVolumeAttribute
      def self.parse(http_resp)
        data = Types::ModifyVolumeAttributeOutput.new
        data
      end
    end

    # Operation Parser for ModifyVpcAttribute
    class ModifyVpcAttribute
      def self.parse(http_resp)
        data = Types::ModifyVpcAttributeOutput.new
        data
      end
    end

    # Operation Parser for ModifyVpcEndpoint
    class ModifyVpcEndpoint
      def self.parse(http_resp)
        data = Types::ModifyVpcEndpointOutput.new
        data
      end
    end

    # Operation Parser for ModifyVpcEndpointConnectionNotification
    class ModifyVpcEndpointConnectionNotification
      def self.parse(http_resp)
        data = Types::ModifyVpcEndpointConnectionNotificationOutput.new
        data
      end
    end

    # Operation Parser for ModifyVpcEndpointServiceConfiguration
    class ModifyVpcEndpointServiceConfiguration
      def self.parse(http_resp)
        data = Types::ModifyVpcEndpointServiceConfigurationOutput.new
        data
      end
    end

    # Operation Parser for ModifyVpcEndpointServicePayerResponsibility
    class ModifyVpcEndpointServicePayerResponsibility
      def self.parse(http_resp)
        data = Types::ModifyVpcEndpointServicePayerResponsibilityOutput.new
        data
      end
    end

    # Operation Parser for ModifyVpcEndpointServicePermissions
    class ModifyVpcEndpointServicePermissions
      def self.parse(http_resp)
        data = Types::ModifyVpcEndpointServicePermissionsOutput.new
        data
      end
    end

    # Operation Parser for ModifyVpcPeeringConnectionOptions
    class ModifyVpcPeeringConnectionOptions
      def self.parse(http_resp)
        data = Types::ModifyVpcPeeringConnectionOptionsOutput.new
        data
      end
    end

    class PeeringConnectionOptions
      def self.parse(map)
        data = Types::PeeringConnectionOptions.new
        return data
      end
    end

    # Operation Parser for ModifyVpcTenancy
    class ModifyVpcTenancy
      def self.parse(http_resp)
        data = Types::ModifyVpcTenancyOutput.new
        data
      end
    end

    # Operation Parser for ModifyVpnConnection
    class ModifyVpnConnection
      def self.parse(http_resp)
        data = Types::ModifyVpnConnectionOutput.new
        data
      end
    end

    # Operation Parser for ModifyVpnConnectionOptions
    class ModifyVpnConnectionOptions
      def self.parse(http_resp)
        data = Types::ModifyVpnConnectionOptionsOutput.new
        data
      end
    end

    # Operation Parser for ModifyVpnTunnelCertificate
    class ModifyVpnTunnelCertificate
      def self.parse(http_resp)
        data = Types::ModifyVpnTunnelCertificateOutput.new
        data
      end
    end

    # Operation Parser for ModifyVpnTunnelOptions
    class ModifyVpnTunnelOptions
      def self.parse(http_resp)
        data = Types::ModifyVpnTunnelOptionsOutput.new
        data
      end
    end

    # Operation Parser for MonitorInstances
    class MonitorInstances
      def self.parse(http_resp)
        data = Types::MonitorInstancesOutput.new
        data
      end
    end

    class InstanceMonitoringList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceMonitoring
      def self.parse(map)
        data = Types::InstanceMonitoring.new
        return data
      end
    end

    # Operation Parser for MoveAddressToVpc
    class MoveAddressToVpc
      def self.parse(http_resp)
        data = Types::MoveAddressToVpcOutput.new
        data
      end
    end

    # Operation Parser for MoveByoipCidrToIpam
    class MoveByoipCidrToIpam
      def self.parse(http_resp)
        data = Types::MoveByoipCidrToIpamOutput.new
        data
      end
    end

    # Operation Parser for ProvisionByoipCidr
    class ProvisionByoipCidr
      def self.parse(http_resp)
        data = Types::ProvisionByoipCidrOutput.new
        data
      end
    end

    # Operation Parser for ProvisionIpamPoolCidr
    class ProvisionIpamPoolCidr
      def self.parse(http_resp)
        data = Types::ProvisionIpamPoolCidrOutput.new
        data
      end
    end

    # Operation Parser for ProvisionPublicIpv4PoolCidr
    class ProvisionPublicIpv4PoolCidr
      def self.parse(http_resp)
        data = Types::ProvisionPublicIpv4PoolCidrOutput.new
        data
      end
    end

    # Operation Parser for PurchaseHostReservation
    class PurchaseHostReservation
      def self.parse(http_resp)
        data = Types::PurchaseHostReservationOutput.new
        data
      end
    end

    # Operation Parser for PurchaseReservedInstancesOffering
    class PurchaseReservedInstancesOffering
      def self.parse(http_resp)
        data = Types::PurchaseReservedInstancesOfferingOutput.new
        data
      end
    end

    # Operation Parser for PurchaseScheduledInstances
    class PurchaseScheduledInstances
      def self.parse(http_resp)
        data = Types::PurchaseScheduledInstancesOutput.new
        data
      end
    end

    class PurchasedScheduledInstanceSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for RebootInstances
    class RebootInstances
      def self.parse(http_resp)
        data = Types::RebootInstancesOutput.new
        data
      end
    end

    # Operation Parser for RegisterImage
    class RegisterImage
      def self.parse(http_resp)
        data = Types::RegisterImageOutput.new
        data
      end
    end

    # Operation Parser for RegisterInstanceEventNotificationAttributes
    class RegisterInstanceEventNotificationAttributes
      def self.parse(http_resp)
        data = Types::RegisterInstanceEventNotificationAttributesOutput.new
        data
      end
    end

    # Operation Parser for RegisterTransitGatewayMulticastGroupMembers
    class RegisterTransitGatewayMulticastGroupMembers
      def self.parse(http_resp)
        data = Types::RegisterTransitGatewayMulticastGroupMembersOutput.new
        data
      end
    end

    class TransitGatewayMulticastRegisteredGroupMembers
      def self.parse(map)
        data = Types::TransitGatewayMulticastRegisteredGroupMembers.new
        return data
      end
    end

    # Operation Parser for RegisterTransitGatewayMulticastGroupSources
    class RegisterTransitGatewayMulticastGroupSources
      def self.parse(http_resp)
        data = Types::RegisterTransitGatewayMulticastGroupSourcesOutput.new
        data
      end
    end

    class TransitGatewayMulticastRegisteredGroupSources
      def self.parse(map)
        data = Types::TransitGatewayMulticastRegisteredGroupSources.new
        return data
      end
    end

    # Operation Parser for RejectTransitGatewayMulticastDomainAssociations
    class RejectTransitGatewayMulticastDomainAssociations
      def self.parse(http_resp)
        data = Types::RejectTransitGatewayMulticastDomainAssociationsOutput.new
        data
      end
    end

    # Operation Parser for RejectTransitGatewayPeeringAttachment
    class RejectTransitGatewayPeeringAttachment
      def self.parse(http_resp)
        data = Types::RejectTransitGatewayPeeringAttachmentOutput.new
        data
      end
    end

    # Operation Parser for RejectTransitGatewayVpcAttachment
    class RejectTransitGatewayVpcAttachment
      def self.parse(http_resp)
        data = Types::RejectTransitGatewayVpcAttachmentOutput.new
        data
      end
    end

    # Operation Parser for RejectVpcEndpointConnections
    class RejectVpcEndpointConnections
      def self.parse(http_resp)
        data = Types::RejectVpcEndpointConnectionsOutput.new
        data
      end
    end

    # Operation Parser for RejectVpcPeeringConnection
    class RejectVpcPeeringConnection
      def self.parse(http_resp)
        data = Types::RejectVpcPeeringConnectionOutput.new
        data
      end
    end

    # Operation Parser for ReleaseAddress
    class ReleaseAddress
      def self.parse(http_resp)
        data = Types::ReleaseAddressOutput.new
        data
      end
    end

    # Operation Parser for ReleaseHosts
    class ReleaseHosts
      def self.parse(http_resp)
        data = Types::ReleaseHostsOutput.new
        data
      end
    end

    # Operation Parser for ReleaseIpamPoolAllocation
    class ReleaseIpamPoolAllocation
      def self.parse(http_resp)
        data = Types::ReleaseIpamPoolAllocationOutput.new
        data
      end
    end

    # Operation Parser for ReplaceIamInstanceProfileAssociation
    class ReplaceIamInstanceProfileAssociation
      def self.parse(http_resp)
        data = Types::ReplaceIamInstanceProfileAssociationOutput.new
        data
      end
    end

    # Operation Parser for ReplaceNetworkAclAssociation
    class ReplaceNetworkAclAssociation
      def self.parse(http_resp)
        data = Types::ReplaceNetworkAclAssociationOutput.new
        data
      end
    end

    # Operation Parser for ReplaceNetworkAclEntry
    class ReplaceNetworkAclEntry
      def self.parse(http_resp)
        data = Types::ReplaceNetworkAclEntryOutput.new
        data
      end
    end

    # Operation Parser for ReplaceRoute
    class ReplaceRoute
      def self.parse(http_resp)
        data = Types::ReplaceRouteOutput.new
        data
      end
    end

    # Operation Parser for ReplaceRouteTableAssociation
    class ReplaceRouteTableAssociation
      def self.parse(http_resp)
        data = Types::ReplaceRouteTableAssociationOutput.new
        data
      end
    end

    # Operation Parser for ReplaceTransitGatewayRoute
    class ReplaceTransitGatewayRoute
      def self.parse(http_resp)
        data = Types::ReplaceTransitGatewayRouteOutput.new
        data
      end
    end

    # Operation Parser for ReportInstanceStatus
    class ReportInstanceStatus
      def self.parse(http_resp)
        data = Types::ReportInstanceStatusOutput.new
        data
      end
    end

    # Operation Parser for RequestSpotFleet
    class RequestSpotFleet
      def self.parse(http_resp)
        data = Types::RequestSpotFleetOutput.new
        data
      end
    end

    # Operation Parser for RequestSpotInstances
    class RequestSpotInstances
      def self.parse(http_resp)
        data = Types::RequestSpotInstancesOutput.new
        data
      end
    end

    # Operation Parser for ResetAddressAttribute
    class ResetAddressAttribute
      def self.parse(http_resp)
        data = Types::ResetAddressAttributeOutput.new
        data
      end
    end

    # Operation Parser for ResetEbsDefaultKmsKeyId
    class ResetEbsDefaultKmsKeyId
      def self.parse(http_resp)
        data = Types::ResetEbsDefaultKmsKeyIdOutput.new
        data
      end
    end

    # Operation Parser for ResetFpgaImageAttribute
    class ResetFpgaImageAttribute
      def self.parse(http_resp)
        data = Types::ResetFpgaImageAttributeOutput.new
        data
      end
    end

    # Operation Parser for ResetImageAttribute
    class ResetImageAttribute
      def self.parse(http_resp)
        data = Types::ResetImageAttributeOutput.new
        data
      end
    end

    # Operation Parser for ResetInstanceAttribute
    class ResetInstanceAttribute
      def self.parse(http_resp)
        data = Types::ResetInstanceAttributeOutput.new
        data
      end
    end

    # Operation Parser for ResetNetworkInterfaceAttribute
    class ResetNetworkInterfaceAttribute
      def self.parse(http_resp)
        data = Types::ResetNetworkInterfaceAttributeOutput.new
        data
      end
    end

    # Operation Parser for ResetSnapshotAttribute
    class ResetSnapshotAttribute
      def self.parse(http_resp)
        data = Types::ResetSnapshotAttributeOutput.new
        data
      end
    end

    # Operation Parser for RestoreAddressToClassic
    class RestoreAddressToClassic
      def self.parse(http_resp)
        data = Types::RestoreAddressToClassicOutput.new
        data
      end
    end

    # Operation Parser for RestoreManagedPrefixListVersion
    class RestoreManagedPrefixListVersion
      def self.parse(http_resp)
        data = Types::RestoreManagedPrefixListVersionOutput.new
        data
      end
    end

    # Operation Parser for RestoreSnapshotFromRecycleBin
    class RestoreSnapshotFromRecycleBin
      def self.parse(http_resp)
        data = Types::RestoreSnapshotFromRecycleBinOutput.new
        data
      end
    end

    # Operation Parser for RestoreSnapshotTier
    class RestoreSnapshotTier
      def self.parse(http_resp)
        data = Types::RestoreSnapshotTierOutput.new
        data
      end
    end

    # Operation Parser for RevokeClientVpnIngress
    class RevokeClientVpnIngress
      def self.parse(http_resp)
        data = Types::RevokeClientVpnIngressOutput.new
        data
      end
    end

    # Operation Parser for RevokeSecurityGroupEgress
    class RevokeSecurityGroupEgress
      def self.parse(http_resp)
        data = Types::RevokeSecurityGroupEgressOutput.new
        data
      end
    end

    # Operation Parser for RevokeSecurityGroupIngress
    class RevokeSecurityGroupIngress
      def self.parse(http_resp)
        data = Types::RevokeSecurityGroupIngressOutput.new
        data
      end
    end

    # Operation Parser for RunInstances
    class RunInstances
      def self.parse(http_resp)
        data = Types::RunInstancesOutput.new
        data
      end
    end

    # Operation Parser for RunScheduledInstances
    class RunScheduledInstances
      def self.parse(http_resp)
        data = Types::RunScheduledInstancesOutput.new
        data
      end
    end

    class InstanceIdSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for SearchLocalGatewayRoutes
    class SearchLocalGatewayRoutes
      def self.parse(http_resp)
        data = Types::SearchLocalGatewayRoutesOutput.new
        data
      end
    end

    class LocalGatewayRouteList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for SearchTransitGatewayMulticastGroups
    class SearchTransitGatewayMulticastGroups
      def self.parse(http_resp)
        data = Types::SearchTransitGatewayMulticastGroupsOutput.new
        data
      end
    end

    class TransitGatewayMulticastGroupList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class TransitGatewayMulticastGroup
      def self.parse(map)
        data = Types::TransitGatewayMulticastGroup.new
        return data
      end
    end

    # Operation Parser for SearchTransitGatewayRoutes
    class SearchTransitGatewayRoutes
      def self.parse(http_resp)
        data = Types::SearchTransitGatewayRoutesOutput.new
        data
      end
    end

    class TransitGatewayRouteList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for SendDiagnosticInterrupt
    class SendDiagnosticInterrupt
      def self.parse(http_resp)
        data = Types::SendDiagnosticInterruptOutput.new
        data
      end
    end

    # Operation Parser for StartInstances
    class StartInstances
      def self.parse(http_resp)
        data = Types::StartInstancesOutput.new
        data
      end
    end

    class InstanceStateChangeList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InstanceStateChange
      def self.parse(map)
        data = Types::InstanceStateChange.new
        return data
      end
    end

    # Operation Parser for StartNetworkInsightsAccessScopeAnalysis
    class StartNetworkInsightsAccessScopeAnalysis
      def self.parse(http_resp)
        data = Types::StartNetworkInsightsAccessScopeAnalysisOutput.new
        data
      end
    end

    # Operation Parser for StartNetworkInsightsAnalysis
    class StartNetworkInsightsAnalysis
      def self.parse(http_resp)
        data = Types::StartNetworkInsightsAnalysisOutput.new
        data
      end
    end

    # Operation Parser for StartVpcEndpointServicePrivateDnsVerification
    class StartVpcEndpointServicePrivateDnsVerification
      def self.parse(http_resp)
        data = Types::StartVpcEndpointServicePrivateDnsVerificationOutput.new
        data
      end
    end

    # Operation Parser for StopInstances
    class StopInstances
      def self.parse(http_resp)
        data = Types::StopInstancesOutput.new
        data
      end
    end

    # Operation Parser for TerminateClientVpnConnections
    class TerminateClientVpnConnections
      def self.parse(http_resp)
        data = Types::TerminateClientVpnConnectionsOutput.new
        data
      end
    end

    class TerminateConnectionStatusSet
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class TerminateConnectionStatus
      def self.parse(map)
        data = Types::TerminateConnectionStatus.new
        return data
      end
    end

    # Operation Parser for TerminateInstances
    class TerminateInstances
      def self.parse(http_resp)
        data = Types::TerminateInstancesOutput.new
        data
      end
    end

    # Operation Parser for UnassignIpv6Addresses
    class UnassignIpv6Addresses
      def self.parse(http_resp)
        data = Types::UnassignIpv6AddressesOutput.new
        data
      end
    end

    # Operation Parser for UnassignPrivateIpAddresses
    class UnassignPrivateIpAddresses
      def self.parse(http_resp)
        data = Types::UnassignPrivateIpAddressesOutput.new
        data
      end
    end

    # Operation Parser for UnmonitorInstances
    class UnmonitorInstances
      def self.parse(http_resp)
        data = Types::UnmonitorInstancesOutput.new
        data
      end
    end

    # Operation Parser for UpdateSecurityGroupRuleDescriptionsEgress
    class UpdateSecurityGroupRuleDescriptionsEgress
      def self.parse(http_resp)
        data = Types::UpdateSecurityGroupRuleDescriptionsEgressOutput.new
        data
      end
    end

    # Operation Parser for UpdateSecurityGroupRuleDescriptionsIngress
    class UpdateSecurityGroupRuleDescriptionsIngress
      def self.parse(http_resp)
        data = Types::UpdateSecurityGroupRuleDescriptionsIngressOutput.new
        data
      end
    end

    # Operation Parser for WithdrawByoipCidr
    class WithdrawByoipCidr
      def self.parse(http_resp)
        data = Types::WithdrawByoipCidrOutput.new
        data
      end
    end
  end
end
