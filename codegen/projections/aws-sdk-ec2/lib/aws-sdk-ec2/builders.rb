# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::Ec2
  module Builders

    # Operation Builder for AcceptReservedInstancesExchangeQuote
    class AcceptReservedInstancesExchangeQuote
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TargetConfigurationRequestSet
    class TargetConfigurationRequestSet
    end

    # Structure Builder for TargetConfigurationRequest
    class TargetConfigurationRequest
    end

    # List Builder for ReservedInstanceIdSet
    class ReservedInstanceIdSet
    end

    # Operation Builder for AcceptTransitGatewayMulticastDomainAssociations
    class AcceptTransitGatewayMulticastDomainAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ValueStringList
    class ValueStringList
    end

    # Operation Builder for AcceptTransitGatewayPeeringAttachment
    class AcceptTransitGatewayPeeringAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AcceptTransitGatewayVpcAttachment
    class AcceptTransitGatewayVpcAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AcceptVpcEndpointConnections
    class AcceptVpcEndpointConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for VpcEndpointIdList
    class VpcEndpointIdList
    end

    # Operation Builder for AcceptVpcPeeringConnection
    class AcceptVpcPeeringConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AdvertiseByoipCidr
    class AdvertiseByoipCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AllocateAddress
    class AllocateAddress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TagSpecificationList
    class TagSpecificationList
    end

    # Structure Builder for TagSpecification
    class TagSpecification
    end

    # List Builder for TagList
    class TagList
    end

    # Structure Builder for Tag
    class Tag
    end

    # Operation Builder for AllocateHosts
    class AllocateHosts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AllocateIpamPoolCidr
    class AllocateIpamPoolCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for IpamPoolAllocationDisallowedCidrs
    class IpamPoolAllocationDisallowedCidrs
    end

    # Operation Builder for ApplySecurityGroupsToClientVpnTargetNetwork
    class ApplySecurityGroupsToClientVpnTargetNetwork
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ClientVpnSecurityGroupIdSet
    class ClientVpnSecurityGroupIdSet
    end

    # Operation Builder for AssignIpv6Addresses
    class AssignIpv6Addresses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for IpPrefixList
    class IpPrefixList
    end

    # List Builder for Ipv6AddressList
    class Ipv6AddressList
    end

    # Operation Builder for AssignPrivateIpAddresses
    class AssignPrivateIpAddresses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for PrivateIpAddressStringList
    class PrivateIpAddressStringList
    end

    # Operation Builder for AssociateAddress
    class AssociateAddress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AssociateClientVpnTargetNetwork
    class AssociateClientVpnTargetNetwork
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AssociateDhcpOptions
    class AssociateDhcpOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AssociateEnclaveCertificateIamRole
    class AssociateEnclaveCertificateIamRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AssociateIamInstanceProfile
    class AssociateIamInstanceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for IamInstanceProfileSpecification
    class IamInstanceProfileSpecification
    end

    # Operation Builder for AssociateInstanceEventWindow
    class AssociateInstanceEventWindow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for InstanceEventWindowAssociationRequest
    class InstanceEventWindowAssociationRequest
    end

    # List Builder for DedicatedHostIdList
    class DedicatedHostIdList
    end

    # List Builder for InstanceIdList
    class InstanceIdList
    end

    # Operation Builder for AssociateRouteTable
    class AssociateRouteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AssociateSubnetCidrBlock
    class AssociateSubnetCidrBlock
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AssociateTransitGatewayMulticastDomain
    class AssociateTransitGatewayMulticastDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TransitGatewaySubnetIdList
    class TransitGatewaySubnetIdList
    end

    # Operation Builder for AssociateTransitGatewayRouteTable
    class AssociateTransitGatewayRouteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AssociateTrunkInterface
    class AssociateTrunkInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AssociateVpcCidrBlock
    class AssociateVpcCidrBlock
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AttachClassicLinkVpc
    class AttachClassicLinkVpc
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for GroupIdStringList
    class GroupIdStringList
    end

    # Operation Builder for AttachInternetGateway
    class AttachInternetGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AttachNetworkInterface
    class AttachNetworkInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AttachVolume
    class AttachVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AttachVpnGateway
    class AttachVpnGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AuthorizeClientVpnIngress
    class AuthorizeClientVpnIngress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AuthorizeSecurityGroupEgress
    class AuthorizeSecurityGroupEgress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for IpPermissionList
    class IpPermissionList
    end

    # Structure Builder for IpPermission
    class IpPermission
    end

    # List Builder for UserIdGroupPairList
    class UserIdGroupPairList
    end

    # Structure Builder for UserIdGroupPair
    class UserIdGroupPair
    end

    # List Builder for PrefixListIdList
    class PrefixListIdList
    end

    # Structure Builder for PrefixListId
    class PrefixListId
    end

    # List Builder for Ipv6RangeList
    class Ipv6RangeList
    end

    # Structure Builder for Ipv6Range
    class Ipv6Range
    end

    # List Builder for IpRangeList
    class IpRangeList
    end

    # Structure Builder for IpRange
    class IpRange
    end

    # Operation Builder for AuthorizeSecurityGroupIngress
    class AuthorizeSecurityGroupIngress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for BundleInstance
    class BundleInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for Storage
    class Storage
    end

    # Structure Builder for S3Storage
    class S3Storage
    end

    # Operation Builder for CancelBundleTask
    class CancelBundleTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CancelCapacityReservation
    class CancelCapacityReservation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CancelCapacityReservationFleets
    class CancelCapacityReservationFleets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for CapacityReservationFleetIdSet
    class CapacityReservationFleetIdSet
    end

    # Operation Builder for CancelConversionTask
    class CancelConversionTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CancelExportTask
    class CancelExportTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CancelImportTask
    class CancelImportTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CancelReservedInstancesListing
    class CancelReservedInstancesListing
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CancelSpotFleetRequests
    class CancelSpotFleetRequests
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for SpotFleetRequestIdList
    class SpotFleetRequestIdList
    end

    # Operation Builder for CancelSpotInstanceRequests
    class CancelSpotInstanceRequests
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for SpotInstanceRequestIdList
    class SpotInstanceRequestIdList
    end

    # Operation Builder for ConfirmProductInstance
    class ConfirmProductInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CopyFpgaImage
    class CopyFpgaImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CopyImage
    class CopyImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CopySnapshot
    class CopySnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateCapacityReservation
    class CreateCapacityReservation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateCapacityReservationFleet
    class CreateCapacityReservationFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ReservationFleetInstanceSpecificationList
    class ReservationFleetInstanceSpecificationList
    end

    # Structure Builder for ReservationFleetInstanceSpecification
    class ReservationFleetInstanceSpecification
    end

    # Operation Builder for CreateCarrierGateway
    class CreateCarrierGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateClientVpnEndpoint
    class CreateClientVpnEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for ClientConnectOptions
    class ClientConnectOptions
    end

    # Structure Builder for ConnectionLogOptions
    class ConnectionLogOptions
    end

    # List Builder for ClientVpnAuthenticationRequestList
    class ClientVpnAuthenticationRequestList
    end

    # Structure Builder for ClientVpnAuthenticationRequest
    class ClientVpnAuthenticationRequest
    end

    # Structure Builder for FederatedAuthenticationRequest
    class FederatedAuthenticationRequest
    end

    # Structure Builder for CertificateAuthenticationRequest
    class CertificateAuthenticationRequest
    end

    # Structure Builder for DirectoryServiceAuthenticationRequest
    class DirectoryServiceAuthenticationRequest
    end

    # Operation Builder for CreateClientVpnRoute
    class CreateClientVpnRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateCustomerGateway
    class CreateCustomerGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateDefaultSubnet
    class CreateDefaultSubnet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateDefaultVpc
    class CreateDefaultVpc
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateDhcpOptions
    class CreateDhcpOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for NewDhcpConfigurationList
    class NewDhcpConfigurationList
    end

    # Structure Builder for NewDhcpConfiguration
    class NewDhcpConfiguration
    end

    # Operation Builder for CreateEgressOnlyInternetGateway
    class CreateEgressOnlyInternetGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateFleet
    class CreateFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for TargetCapacitySpecificationRequest
    class TargetCapacitySpecificationRequest
    end

    # List Builder for FleetLaunchTemplateConfigListRequest
    class FleetLaunchTemplateConfigListRequest
    end

    # Structure Builder for FleetLaunchTemplateConfigRequest
    class FleetLaunchTemplateConfigRequest
    end

    # List Builder for FleetLaunchTemplateOverridesListRequest
    class FleetLaunchTemplateOverridesListRequest
    end

    # Structure Builder for FleetLaunchTemplateOverridesRequest
    class FleetLaunchTemplateOverridesRequest
    end

    # Structure Builder for InstanceRequirementsRequest
    class InstanceRequirementsRequest
    end

    # Structure Builder for AcceleratorTotalMemoryMiBRequest
    class AcceleratorTotalMemoryMiBRequest
    end

    # List Builder for AcceleratorNameSet
    class AcceleratorNameSet
    end

    # List Builder for AcceleratorManufacturerSet
    class AcceleratorManufacturerSet
    end

    # Structure Builder for AcceleratorCountRequest
    class AcceleratorCountRequest
    end

    # List Builder for AcceleratorTypeSet
    class AcceleratorTypeSet
    end

    # Structure Builder for BaselineEbsBandwidthMbpsRequest
    class BaselineEbsBandwidthMbpsRequest
    end

    # Structure Builder for TotalLocalStorageGBRequest
    class TotalLocalStorageGBRequest
    end

    # List Builder for LocalStorageTypeSet
    class LocalStorageTypeSet
    end

    # Structure Builder for NetworkInterfaceCountRequest
    class NetworkInterfaceCountRequest
    end

    # List Builder for InstanceGenerationSet
    class InstanceGenerationSet
    end

    # List Builder for ExcludedInstanceTypeSet
    class ExcludedInstanceTypeSet
    end

    # Structure Builder for MemoryGiBPerVCpuRequest
    class MemoryGiBPerVCpuRequest
    end

    # List Builder for CpuManufacturerSet
    class CpuManufacturerSet
    end

    # Structure Builder for MemoryMiBRequest
    class MemoryMiBRequest
    end

    # Structure Builder for VCpuCountRangeRequest
    class VCpuCountRangeRequest
    end

    # Structure Builder for Placement
    class Placement
    end

    # Structure Builder for FleetLaunchTemplateSpecificationRequest
    class FleetLaunchTemplateSpecificationRequest
    end

    # Structure Builder for OnDemandOptionsRequest
    class OnDemandOptionsRequest
    end

    # Structure Builder for CapacityReservationOptionsRequest
    class CapacityReservationOptionsRequest
    end

    # Structure Builder for SpotOptionsRequest
    class SpotOptionsRequest
    end

    # Structure Builder for FleetSpotMaintenanceStrategiesRequest
    class FleetSpotMaintenanceStrategiesRequest
    end

    # Structure Builder for FleetSpotCapacityRebalanceRequest
    class FleetSpotCapacityRebalanceRequest
    end

    # Operation Builder for CreateFlowLogs
    class CreateFlowLogs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for DestinationOptionsRequest
    class DestinationOptionsRequest
    end

    # List Builder for FlowLogResourceIds
    class FlowLogResourceIds
    end

    # Operation Builder for CreateFpgaImage
    class CreateFpgaImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for StorageLocation
    class StorageLocation
    end

    # Operation Builder for CreateImage
    class CreateImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for BlockDeviceMappingRequestList
    class BlockDeviceMappingRequestList
    end

    # Structure Builder for BlockDeviceMapping
    class BlockDeviceMapping
    end

    # Structure Builder for EbsBlockDevice
    class EbsBlockDevice
    end

    # Operation Builder for CreateInstanceEventWindow
    class CreateInstanceEventWindow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for InstanceEventWindowTimeRangeRequestSet
    class InstanceEventWindowTimeRangeRequestSet
    end

    # Structure Builder for InstanceEventWindowTimeRangeRequest
    class InstanceEventWindowTimeRangeRequest
    end

    # Operation Builder for CreateInstanceExportTask
    class CreateInstanceExportTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for ExportToS3TaskSpecification
    class ExportToS3TaskSpecification
    end

    # Operation Builder for CreateInternetGateway
    class CreateInternetGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateIpam
    class CreateIpam
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for AddIpamOperatingRegionSet
    class AddIpamOperatingRegionSet
    end

    # Structure Builder for AddIpamOperatingRegion
    class AddIpamOperatingRegion
    end

    # Operation Builder for CreateIpamPool
    class CreateIpamPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for RequestIpamResourceTagList
    class RequestIpamResourceTagList
    end

    # Structure Builder for RequestIpamResourceTag
    class RequestIpamResourceTag
    end

    # Operation Builder for CreateIpamScope
    class CreateIpamScope
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateKeyPair
    class CreateKeyPair
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateLaunchTemplate
    class CreateLaunchTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for RequestLaunchTemplateData
    class RequestLaunchTemplateData
    end

    # Structure Builder for LaunchTemplatePrivateDnsNameOptionsRequest
    class LaunchTemplatePrivateDnsNameOptionsRequest
    end

    # Structure Builder for LaunchTemplateEnclaveOptionsRequest
    class LaunchTemplateEnclaveOptionsRequest
    end

    # Structure Builder for LaunchTemplateInstanceMetadataOptionsRequest
    class LaunchTemplateInstanceMetadataOptionsRequest
    end

    # Structure Builder for LaunchTemplateHibernationOptionsRequest
    class LaunchTemplateHibernationOptionsRequest
    end

    # List Builder for LaunchTemplateLicenseSpecificationListRequest
    class LaunchTemplateLicenseSpecificationListRequest
    end

    # Structure Builder for LaunchTemplateLicenseConfigurationRequest
    class LaunchTemplateLicenseConfigurationRequest
    end

    # Structure Builder for LaunchTemplateCapacityReservationSpecificationRequest
    class LaunchTemplateCapacityReservationSpecificationRequest
    end

    # Structure Builder for CapacityReservationTarget
    class CapacityReservationTarget
    end

    # Structure Builder for LaunchTemplateCpuOptionsRequest
    class LaunchTemplateCpuOptionsRequest
    end

    # Structure Builder for CreditSpecificationRequest
    class CreditSpecificationRequest
    end

    # Structure Builder for LaunchTemplateInstanceMarketOptionsRequest
    class LaunchTemplateInstanceMarketOptionsRequest
    end

    # Structure Builder for LaunchTemplateSpotMarketOptionsRequest
    class LaunchTemplateSpotMarketOptionsRequest
    end

    # List Builder for SecurityGroupStringList
    class SecurityGroupStringList
    end

    # List Builder for SecurityGroupIdStringList
    class SecurityGroupIdStringList
    end

    # List Builder for LaunchTemplateElasticInferenceAcceleratorList
    class LaunchTemplateElasticInferenceAcceleratorList
    end

    # Structure Builder for LaunchTemplateElasticInferenceAccelerator
    class LaunchTemplateElasticInferenceAccelerator
    end

    # List Builder for ElasticGpuSpecificationList
    class ElasticGpuSpecificationList
    end

    # Structure Builder for ElasticGpuSpecification
    class ElasticGpuSpecification
    end

    # List Builder for LaunchTemplateTagSpecificationRequestList
    class LaunchTemplateTagSpecificationRequestList
    end

    # Structure Builder for LaunchTemplateTagSpecificationRequest
    class LaunchTemplateTagSpecificationRequest
    end

    # Structure Builder for LaunchTemplatePlacementRequest
    class LaunchTemplatePlacementRequest
    end

    # Structure Builder for LaunchTemplatesMonitoringRequest
    class LaunchTemplatesMonitoringRequest
    end

    # List Builder for LaunchTemplateInstanceNetworkInterfaceSpecificationRequestList
    class LaunchTemplateInstanceNetworkInterfaceSpecificationRequestList
    end

    # Structure Builder for LaunchTemplateInstanceNetworkInterfaceSpecificationRequest
    class LaunchTemplateInstanceNetworkInterfaceSpecificationRequest
    end

    # List Builder for Ipv6PrefixList
    class Ipv6PrefixList
    end

    # Structure Builder for Ipv6PrefixSpecificationRequest
    class Ipv6PrefixSpecificationRequest
    end

    # List Builder for Ipv4PrefixList
    class Ipv4PrefixList
    end

    # Structure Builder for Ipv4PrefixSpecificationRequest
    class Ipv4PrefixSpecificationRequest
    end

    # List Builder for PrivateIpAddressSpecificationList
    class PrivateIpAddressSpecificationList
    end

    # Structure Builder for PrivateIpAddressSpecification
    class PrivateIpAddressSpecification
    end

    # List Builder for InstanceIpv6AddressListRequest
    class InstanceIpv6AddressListRequest
    end

    # Structure Builder for InstanceIpv6AddressRequest
    class InstanceIpv6AddressRequest
    end

    # List Builder for LaunchTemplateBlockDeviceMappingRequestList
    class LaunchTemplateBlockDeviceMappingRequestList
    end

    # Structure Builder for LaunchTemplateBlockDeviceMappingRequest
    class LaunchTemplateBlockDeviceMappingRequest
    end

    # Structure Builder for LaunchTemplateEbsBlockDeviceRequest
    class LaunchTemplateEbsBlockDeviceRequest
    end

    # Structure Builder for LaunchTemplateIamInstanceProfileSpecificationRequest
    class LaunchTemplateIamInstanceProfileSpecificationRequest
    end

    # Operation Builder for CreateLaunchTemplateVersion
    class CreateLaunchTemplateVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateLocalGatewayRoute
    class CreateLocalGatewayRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateLocalGatewayRouteTableVpcAssociation
    class CreateLocalGatewayRouteTableVpcAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateManagedPrefixList
    class CreateManagedPrefixList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for AddPrefixListEntries
    class AddPrefixListEntries
    end

    # Structure Builder for AddPrefixListEntry
    class AddPrefixListEntry
    end

    # Operation Builder for CreateNatGateway
    class CreateNatGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateNetworkAcl
    class CreateNetworkAcl
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateNetworkAclEntry
    class CreateNetworkAclEntry
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for PortRange
    class PortRange
    end

    # Structure Builder for IcmpTypeCode
    class IcmpTypeCode
    end

    # Operation Builder for CreateNetworkInsightsAccessScope
    class CreateNetworkInsightsAccessScope
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for AccessScopePathListRequest
    class AccessScopePathListRequest
    end

    # Structure Builder for AccessScopePathRequest
    class AccessScopePathRequest
    end

    # List Builder for ThroughResourcesStatementRequestList
    class ThroughResourcesStatementRequestList
    end

    # Structure Builder for ThroughResourcesStatementRequest
    class ThroughResourcesStatementRequest
    end

    # Structure Builder for ResourceStatementRequest
    class ResourceStatementRequest
    end

    # Structure Builder for PathStatementRequest
    class PathStatementRequest
    end

    # Structure Builder for PacketHeaderStatementRequest
    class PacketHeaderStatementRequest
    end

    # List Builder for ProtocolList
    class ProtocolList
    end

    # Operation Builder for CreateNetworkInsightsPath
    class CreateNetworkInsightsPath
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateNetworkInterface
    class CreateNetworkInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for InstanceIpv6AddressList
    class InstanceIpv6AddressList
    end

    # Structure Builder for InstanceIpv6Address
    class InstanceIpv6Address
    end

    # Operation Builder for CreateNetworkInterfacePermission
    class CreateNetworkInterfacePermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreatePlacementGroup
    class CreatePlacementGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreatePublicIpv4Pool
    class CreatePublicIpv4Pool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateReplaceRootVolumeTask
    class CreateReplaceRootVolumeTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateReservedInstancesListing
    class CreateReservedInstancesListing
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for PriceScheduleSpecificationList
    class PriceScheduleSpecificationList
    end

    # Structure Builder for PriceScheduleSpecification
    class PriceScheduleSpecification
    end

    # Operation Builder for CreateRestoreImageTask
    class CreateRestoreImageTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateRoute
    class CreateRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateRouteTable
    class CreateRouteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateSecurityGroup
    class CreateSecurityGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateSnapshot
    class CreateSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateSnapshots
    class CreateSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for InstanceSpecification
    class InstanceSpecification
    end

    # Operation Builder for CreateSpotDatafeedSubscription
    class CreateSpotDatafeedSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateStoreImageTask
    class CreateStoreImageTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for S3ObjectTagList
    class S3ObjectTagList
    end

    # Structure Builder for S3ObjectTag
    class S3ObjectTag
    end

    # Operation Builder for CreateSubnet
    class CreateSubnet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateSubnetCidrReservation
    class CreateSubnetCidrReservation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateTags
    class CreateTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ResourceIdList
    class ResourceIdList
    end

    # Operation Builder for CreateTrafficMirrorFilter
    class CreateTrafficMirrorFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateTrafficMirrorFilterRule
    class CreateTrafficMirrorFilterRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for TrafficMirrorPortRangeRequest
    class TrafficMirrorPortRangeRequest
    end

    # Operation Builder for CreateTrafficMirrorSession
    class CreateTrafficMirrorSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateTrafficMirrorTarget
    class CreateTrafficMirrorTarget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateTransitGateway
    class CreateTransitGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for TransitGatewayRequestOptions
    class TransitGatewayRequestOptions
    end

    # List Builder for TransitGatewayCidrBlockStringList
    class TransitGatewayCidrBlockStringList
    end

    # Operation Builder for CreateTransitGatewayConnect
    class CreateTransitGatewayConnect
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for CreateTransitGatewayConnectRequestOptions
    class CreateTransitGatewayConnectRequestOptions
    end

    # Operation Builder for CreateTransitGatewayConnectPeer
    class CreateTransitGatewayConnectPeer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for InsideCidrBlocksStringList
    class InsideCidrBlocksStringList
    end

    # Structure Builder for TransitGatewayConnectRequestBgpOptions
    class TransitGatewayConnectRequestBgpOptions
    end

    # Operation Builder for CreateTransitGatewayMulticastDomain
    class CreateTransitGatewayMulticastDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for CreateTransitGatewayMulticastDomainRequestOptions
    class CreateTransitGatewayMulticastDomainRequestOptions
    end

    # Operation Builder for CreateTransitGatewayPeeringAttachment
    class CreateTransitGatewayPeeringAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateTransitGatewayPrefixListReference
    class CreateTransitGatewayPrefixListReference
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateTransitGatewayRoute
    class CreateTransitGatewayRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateTransitGatewayRouteTable
    class CreateTransitGatewayRouteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateTransitGatewayVpcAttachment
    class CreateTransitGatewayVpcAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for CreateTransitGatewayVpcAttachmentRequestOptions
    class CreateTransitGatewayVpcAttachmentRequestOptions
    end

    # Operation Builder for CreateVolume
    class CreateVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateVpc
    class CreateVpc
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateVpcEndpoint
    class CreateVpcEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for VpcEndpointSecurityGroupIdList
    class VpcEndpointSecurityGroupIdList
    end

    # List Builder for VpcEndpointSubnetIdList
    class VpcEndpointSubnetIdList
    end

    # List Builder for VpcEndpointRouteTableIdList
    class VpcEndpointRouteTableIdList
    end

    # Operation Builder for CreateVpcEndpointConnectionNotification
    class CreateVpcEndpointConnectionNotification
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateVpcEndpointServiceConfiguration
    class CreateVpcEndpointServiceConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateVpcPeeringConnection
    class CreateVpcPeeringConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateVpnConnection
    class CreateVpnConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for VpnConnectionOptionsSpecification
    class VpnConnectionOptionsSpecification
    end

    # List Builder for VpnTunnelOptionsSpecificationsList
    class VpnTunnelOptionsSpecificationsList
    end

    # Structure Builder for VpnTunnelOptionsSpecification
    class VpnTunnelOptionsSpecification
    end

    # List Builder for IKEVersionsRequestList
    class IKEVersionsRequestList
    end

    # Structure Builder for IKEVersionsRequestListValue
    class IKEVersionsRequestListValue
    end

    # List Builder for Phase2DHGroupNumbersRequestList
    class Phase2DHGroupNumbersRequestList
    end

    # Structure Builder for Phase2DHGroupNumbersRequestListValue
    class Phase2DHGroupNumbersRequestListValue
    end

    # List Builder for Phase1DHGroupNumbersRequestList
    class Phase1DHGroupNumbersRequestList
    end

    # Structure Builder for Phase1DHGroupNumbersRequestListValue
    class Phase1DHGroupNumbersRequestListValue
    end

    # List Builder for Phase2IntegrityAlgorithmsRequestList
    class Phase2IntegrityAlgorithmsRequestList
    end

    # Structure Builder for Phase2IntegrityAlgorithmsRequestListValue
    class Phase2IntegrityAlgorithmsRequestListValue
    end

    # List Builder for Phase1IntegrityAlgorithmsRequestList
    class Phase1IntegrityAlgorithmsRequestList
    end

    # Structure Builder for Phase1IntegrityAlgorithmsRequestListValue
    class Phase1IntegrityAlgorithmsRequestListValue
    end

    # List Builder for Phase2EncryptionAlgorithmsRequestList
    class Phase2EncryptionAlgorithmsRequestList
    end

    # Structure Builder for Phase2EncryptionAlgorithmsRequestListValue
    class Phase2EncryptionAlgorithmsRequestListValue
    end

    # List Builder for Phase1EncryptionAlgorithmsRequestList
    class Phase1EncryptionAlgorithmsRequestList
    end

    # Structure Builder for Phase1EncryptionAlgorithmsRequestListValue
    class Phase1EncryptionAlgorithmsRequestListValue
    end

    # Operation Builder for CreateVpnConnectionRoute
    class CreateVpnConnectionRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateVpnGateway
    class CreateVpnGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteCarrierGateway
    class DeleteCarrierGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteClientVpnEndpoint
    class DeleteClientVpnEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteClientVpnRoute
    class DeleteClientVpnRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteCustomerGateway
    class DeleteCustomerGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteDhcpOptions
    class DeleteDhcpOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteEgressOnlyInternetGateway
    class DeleteEgressOnlyInternetGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteFleets
    class DeleteFleets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for FleetIdSet
    class FleetIdSet
    end

    # Operation Builder for DeleteFlowLogs
    class DeleteFlowLogs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for FlowLogIdList
    class FlowLogIdList
    end

    # Operation Builder for DeleteFpgaImage
    class DeleteFpgaImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteInstanceEventWindow
    class DeleteInstanceEventWindow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteInternetGateway
    class DeleteInternetGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteIpam
    class DeleteIpam
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteIpamPool
    class DeleteIpamPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteIpamScope
    class DeleteIpamScope
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteKeyPair
    class DeleteKeyPair
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteLaunchTemplate
    class DeleteLaunchTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteLaunchTemplateVersions
    class DeleteLaunchTemplateVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for VersionStringList
    class VersionStringList
    end

    # Operation Builder for DeleteLocalGatewayRoute
    class DeleteLocalGatewayRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteLocalGatewayRouteTableVpcAssociation
    class DeleteLocalGatewayRouteTableVpcAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteManagedPrefixList
    class DeleteManagedPrefixList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteNatGateway
    class DeleteNatGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteNetworkAcl
    class DeleteNetworkAcl
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteNetworkAclEntry
    class DeleteNetworkAclEntry
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteNetworkInsightsAccessScope
    class DeleteNetworkInsightsAccessScope
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteNetworkInsightsAccessScopeAnalysis
    class DeleteNetworkInsightsAccessScopeAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteNetworkInsightsAnalysis
    class DeleteNetworkInsightsAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteNetworkInsightsPath
    class DeleteNetworkInsightsPath
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteNetworkInterface
    class DeleteNetworkInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteNetworkInterfacePermission
    class DeleteNetworkInterfacePermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeletePlacementGroup
    class DeletePlacementGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeletePublicIpv4Pool
    class DeletePublicIpv4Pool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteQueuedReservedInstances
    class DeleteQueuedReservedInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for DeleteQueuedReservedInstancesIdList
    class DeleteQueuedReservedInstancesIdList
    end

    # Operation Builder for DeleteRoute
    class DeleteRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteRouteTable
    class DeleteRouteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteSecurityGroup
    class DeleteSecurityGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteSnapshot
    class DeleteSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteSpotDatafeedSubscription
    class DeleteSpotDatafeedSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteSubnet
    class DeleteSubnet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteSubnetCidrReservation
    class DeleteSubnetCidrReservation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteTags
    class DeleteTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteTrafficMirrorFilter
    class DeleteTrafficMirrorFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteTrafficMirrorFilterRule
    class DeleteTrafficMirrorFilterRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteTrafficMirrorSession
    class DeleteTrafficMirrorSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteTrafficMirrorTarget
    class DeleteTrafficMirrorTarget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteTransitGateway
    class DeleteTransitGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteTransitGatewayConnect
    class DeleteTransitGatewayConnect
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteTransitGatewayConnectPeer
    class DeleteTransitGatewayConnectPeer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteTransitGatewayMulticastDomain
    class DeleteTransitGatewayMulticastDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteTransitGatewayPeeringAttachment
    class DeleteTransitGatewayPeeringAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteTransitGatewayPrefixListReference
    class DeleteTransitGatewayPrefixListReference
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteTransitGatewayRoute
    class DeleteTransitGatewayRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteTransitGatewayRouteTable
    class DeleteTransitGatewayRouteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteTransitGatewayVpcAttachment
    class DeleteTransitGatewayVpcAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteVolume
    class DeleteVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteVpc
    class DeleteVpc
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteVpcEndpointConnectionNotifications
    class DeleteVpcEndpointConnectionNotifications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ConnectionNotificationIdsList
    class ConnectionNotificationIdsList
    end

    # Operation Builder for DeleteVpcEndpointServiceConfigurations
    class DeleteVpcEndpointServiceConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for VpcEndpointServiceIdList
    class VpcEndpointServiceIdList
    end

    # Operation Builder for DeleteVpcEndpoints
    class DeleteVpcEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteVpcPeeringConnection
    class DeleteVpcPeeringConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteVpnConnection
    class DeleteVpnConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteVpnConnectionRoute
    class DeleteVpnConnectionRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteVpnGateway
    class DeleteVpnGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeprovisionByoipCidr
    class DeprovisionByoipCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeprovisionIpamPoolCidr
    class DeprovisionIpamPoolCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeprovisionPublicIpv4PoolCidr
    class DeprovisionPublicIpv4PoolCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeregisterImage
    class DeregisterImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeregisterInstanceEventNotificationAttributes
    class DeregisterInstanceEventNotificationAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for DeregisterInstanceTagAttributeRequest
    class DeregisterInstanceTagAttributeRequest
    end

    # List Builder for InstanceTagKeySet
    class InstanceTagKeySet
    end

    # Operation Builder for DeregisterTransitGatewayMulticastGroupMembers
    class DeregisterTransitGatewayMulticastGroupMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TransitGatewayNetworkInterfaceIdList
    class TransitGatewayNetworkInterfaceIdList
    end

    # Operation Builder for DeregisterTransitGatewayMulticastGroupSources
    class DeregisterTransitGatewayMulticastGroupSources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for AccountAttributeNameStringList
    class AccountAttributeNameStringList
    end

    # Operation Builder for DescribeAddresses
    class DescribeAddresses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for AllocationIdList
    class AllocationIdList
    end

    # List Builder for PublicIpStringList
    class PublicIpStringList
    end

    # List Builder for FilterList
    class FilterList
    end

    # Structure Builder for Filter
    class Filter
    end

    # Operation Builder for DescribeAddressesAttribute
    class DescribeAddressesAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for AllocationIds
    class AllocationIds
    end

    # Operation Builder for DescribeAggregateIdFormat
    class DescribeAggregateIdFormat
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeAvailabilityZones
    class DescribeAvailabilityZones
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ZoneIdStringList
    class ZoneIdStringList
    end

    # List Builder for ZoneNameStringList
    class ZoneNameStringList
    end

    # Operation Builder for DescribeBundleTasks
    class DescribeBundleTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for BundleIdStringList
    class BundleIdStringList
    end

    # Operation Builder for DescribeByoipCidrs
    class DescribeByoipCidrs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeCapacityReservationFleets
    class DescribeCapacityReservationFleets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeCapacityReservations
    class DescribeCapacityReservations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for CapacityReservationIdSet
    class CapacityReservationIdSet
    end

    # Operation Builder for DescribeCarrierGateways
    class DescribeCarrierGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for CarrierGatewayIdSet
    class CarrierGatewayIdSet
    end

    # Operation Builder for DescribeClassicLinkInstances
    class DescribeClassicLinkInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for InstanceIdStringList
    class InstanceIdStringList
    end

    # Operation Builder for DescribeClientVpnAuthorizationRules
    class DescribeClientVpnAuthorizationRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeClientVpnConnections
    class DescribeClientVpnConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeClientVpnEndpoints
    class DescribeClientVpnEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ClientVpnEndpointIdList
    class ClientVpnEndpointIdList
    end

    # Operation Builder for DescribeClientVpnRoutes
    class DescribeClientVpnRoutes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeClientVpnTargetNetworks
    class DescribeClientVpnTargetNetworks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeCoipPools
    class DescribeCoipPools
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for CoipPoolIdSet
    class CoipPoolIdSet
    end

    # Operation Builder for DescribeConversionTasks
    class DescribeConversionTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ConversionIdStringList
    class ConversionIdStringList
    end

    # Operation Builder for DescribeCustomerGateways
    class DescribeCustomerGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for CustomerGatewayIdStringList
    class CustomerGatewayIdStringList
    end

    # Operation Builder for DescribeDhcpOptions
    class DescribeDhcpOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for DhcpOptionsIdStringList
    class DhcpOptionsIdStringList
    end

    # Operation Builder for DescribeEgressOnlyInternetGateways
    class DescribeEgressOnlyInternetGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for EgressOnlyInternetGatewayIdList
    class EgressOnlyInternetGatewayIdList
    end

    # Operation Builder for DescribeElasticGpus
    class DescribeElasticGpus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ElasticGpuIdSet
    class ElasticGpuIdSet
    end

    # Operation Builder for DescribeExportImageTasks
    class DescribeExportImageTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ExportImageTaskIdList
    class ExportImageTaskIdList
    end

    # Operation Builder for DescribeExportTasks
    class DescribeExportTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ExportTaskIdStringList
    class ExportTaskIdStringList
    end

    # Operation Builder for DescribeFastSnapshotRestores
    class DescribeFastSnapshotRestores
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeFleetHistory
    class DescribeFleetHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeFleetInstances
    class DescribeFleetInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeFleets
    class DescribeFleets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeFlowLogs
    class DescribeFlowLogs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeFpgaImageAttribute
    class DescribeFpgaImageAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeFpgaImages
    class DescribeFpgaImages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for OwnerStringList
    class OwnerStringList
    end

    # List Builder for FpgaImageIdList
    class FpgaImageIdList
    end

    # Operation Builder for DescribeHostReservationOfferings
    class DescribeHostReservationOfferings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeHostReservations
    class DescribeHostReservations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for HostReservationIdSet
    class HostReservationIdSet
    end

    # Operation Builder for DescribeHosts
    class DescribeHosts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for RequestHostIdList
    class RequestHostIdList
    end

    # Operation Builder for DescribeIamInstanceProfileAssociations
    class DescribeIamInstanceProfileAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for AssociationIdList
    class AssociationIdList
    end

    # Operation Builder for DescribeIdFormat
    class DescribeIdFormat
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeIdentityIdFormat
    class DescribeIdentityIdFormat
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeImageAttribute
    class DescribeImageAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeImages
    class DescribeImages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ImageIdStringList
    class ImageIdStringList
    end

    # List Builder for ExecutableByStringList
    class ExecutableByStringList
    end

    # Operation Builder for DescribeImportImageTasks
    class DescribeImportImageTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ImportTaskIdList
    class ImportTaskIdList
    end

    # Operation Builder for DescribeImportSnapshotTasks
    class DescribeImportSnapshotTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ImportSnapshotTaskIdList
    class ImportSnapshotTaskIdList
    end

    # Operation Builder for DescribeInstanceAttribute
    class DescribeInstanceAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeInstanceCreditSpecifications
    class DescribeInstanceCreditSpecifications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeInstanceEventNotificationAttributes
    class DescribeInstanceEventNotificationAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeInstanceEventWindows
    class DescribeInstanceEventWindows
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for InstanceEventWindowIdSet
    class InstanceEventWindowIdSet
    end

    # Operation Builder for DescribeInstanceStatus
    class DescribeInstanceStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeInstanceTypeOfferings
    class DescribeInstanceTypeOfferings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeInstanceTypes
    class DescribeInstanceTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for RequestInstanceTypeList
    class RequestInstanceTypeList
    end

    # Operation Builder for DescribeInstances
    class DescribeInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeInternetGateways
    class DescribeInternetGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for InternetGatewayIdList
    class InternetGatewayIdList
    end

    # Operation Builder for DescribeIpamPools
    class DescribeIpamPools
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeIpamScopes
    class DescribeIpamScopes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeIpams
    class DescribeIpams
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeIpv6Pools
    class DescribeIpv6Pools
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for Ipv6PoolIdList
    class Ipv6PoolIdList
    end

    # Operation Builder for DescribeKeyPairs
    class DescribeKeyPairs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for KeyPairIdStringList
    class KeyPairIdStringList
    end

    # List Builder for KeyNameStringList
    class KeyNameStringList
    end

    # Operation Builder for DescribeLaunchTemplateVersions
    class DescribeLaunchTemplateVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeLaunchTemplates
    class DescribeLaunchTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for LaunchTemplateNameStringList
    class LaunchTemplateNameStringList
    end

    # List Builder for LaunchTemplateIdStringList
    class LaunchTemplateIdStringList
    end

    # Operation Builder for DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
    class DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for LocalGatewayRouteTableVirtualInterfaceGroupAssociationIdSet
    class LocalGatewayRouteTableVirtualInterfaceGroupAssociationIdSet
    end

    # Operation Builder for DescribeLocalGatewayRouteTableVpcAssociations
    class DescribeLocalGatewayRouteTableVpcAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for LocalGatewayRouteTableVpcAssociationIdSet
    class LocalGatewayRouteTableVpcAssociationIdSet
    end

    # Operation Builder for DescribeLocalGatewayRouteTables
    class DescribeLocalGatewayRouteTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for LocalGatewayRouteTableIdSet
    class LocalGatewayRouteTableIdSet
    end

    # Operation Builder for DescribeLocalGatewayVirtualInterfaceGroups
    class DescribeLocalGatewayVirtualInterfaceGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for LocalGatewayVirtualInterfaceGroupIdSet
    class LocalGatewayVirtualInterfaceGroupIdSet
    end

    # Operation Builder for DescribeLocalGatewayVirtualInterfaces
    class DescribeLocalGatewayVirtualInterfaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for LocalGatewayVirtualInterfaceIdSet
    class LocalGatewayVirtualInterfaceIdSet
    end

    # Operation Builder for DescribeLocalGateways
    class DescribeLocalGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for LocalGatewayIdSet
    class LocalGatewayIdSet
    end

    # Operation Builder for DescribeManagedPrefixLists
    class DescribeManagedPrefixLists
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeMovingAddresses
    class DescribeMovingAddresses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeNatGateways
    class DescribeNatGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for NatGatewayIdStringList
    class NatGatewayIdStringList
    end

    # Operation Builder for DescribeNetworkAcls
    class DescribeNetworkAcls
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for NetworkAclIdStringList
    class NetworkAclIdStringList
    end

    # Operation Builder for DescribeNetworkInsightsAccessScopeAnalyses
    class DescribeNetworkInsightsAccessScopeAnalyses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for NetworkInsightsAccessScopeAnalysisIdList
    class NetworkInsightsAccessScopeAnalysisIdList
    end

    # Operation Builder for DescribeNetworkInsightsAccessScopes
    class DescribeNetworkInsightsAccessScopes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for NetworkInsightsAccessScopeIdList
    class NetworkInsightsAccessScopeIdList
    end

    # Operation Builder for DescribeNetworkInsightsAnalyses
    class DescribeNetworkInsightsAnalyses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for NetworkInsightsAnalysisIdList
    class NetworkInsightsAnalysisIdList
    end

    # Operation Builder for DescribeNetworkInsightsPaths
    class DescribeNetworkInsightsPaths
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for NetworkInsightsPathIdList
    class NetworkInsightsPathIdList
    end

    # Operation Builder for DescribeNetworkInterfaceAttribute
    class DescribeNetworkInterfaceAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeNetworkInterfacePermissions
    class DescribeNetworkInterfacePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for NetworkInterfacePermissionIdList
    class NetworkInterfacePermissionIdList
    end

    # Operation Builder for DescribeNetworkInterfaces
    class DescribeNetworkInterfaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for NetworkInterfaceIdList
    class NetworkInterfaceIdList
    end

    # Operation Builder for DescribePlacementGroups
    class DescribePlacementGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for PlacementGroupIdStringList
    class PlacementGroupIdStringList
    end

    # List Builder for PlacementGroupStringList
    class PlacementGroupStringList
    end

    # Operation Builder for DescribePrefixLists
    class DescribePrefixLists
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for PrefixListResourceIdStringList
    class PrefixListResourceIdStringList
    end

    # Operation Builder for DescribePrincipalIdFormat
    class DescribePrincipalIdFormat
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ResourceList
    class ResourceList
    end

    # Operation Builder for DescribePublicIpv4Pools
    class DescribePublicIpv4Pools
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for PublicIpv4PoolIdStringList
    class PublicIpv4PoolIdStringList
    end

    # Operation Builder for DescribeRegions
    class DescribeRegions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for RegionNameStringList
    class RegionNameStringList
    end

    # Operation Builder for DescribeReplaceRootVolumeTasks
    class DescribeReplaceRootVolumeTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ReplaceRootVolumeTaskIds
    class ReplaceRootVolumeTaskIds
    end

    # Operation Builder for DescribeReservedInstances
    class DescribeReservedInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ReservedInstancesIdStringList
    class ReservedInstancesIdStringList
    end

    # Operation Builder for DescribeReservedInstancesListings
    class DescribeReservedInstancesListings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeReservedInstancesModifications
    class DescribeReservedInstancesModifications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ReservedInstancesModificationIdStringList
    class ReservedInstancesModificationIdStringList
    end

    # Operation Builder for DescribeReservedInstancesOfferings
    class DescribeReservedInstancesOfferings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ReservedInstancesOfferingIdStringList
    class ReservedInstancesOfferingIdStringList
    end

    # Operation Builder for DescribeRouteTables
    class DescribeRouteTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for RouteTableIdStringList
    class RouteTableIdStringList
    end

    # Operation Builder for DescribeScheduledInstanceAvailability
    class DescribeScheduledInstanceAvailability
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for ScheduledInstanceRecurrenceRequest
    class ScheduledInstanceRecurrenceRequest
    end

    # List Builder for OccurrenceDayRequestSet
    class OccurrenceDayRequestSet
    end

    # Structure Builder for SlotDateTimeRangeRequest
    class SlotDateTimeRangeRequest
    end

    # Operation Builder for DescribeScheduledInstances
    class DescribeScheduledInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for SlotStartTimeRangeRequest
    class SlotStartTimeRangeRequest
    end

    # List Builder for ScheduledInstanceIdRequestSet
    class ScheduledInstanceIdRequestSet
    end

    # Operation Builder for DescribeSecurityGroupReferences
    class DescribeSecurityGroupReferences
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for GroupIds
    class GroupIds
    end

    # Operation Builder for DescribeSecurityGroupRules
    class DescribeSecurityGroupRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for SecurityGroupRuleIdList
    class SecurityGroupRuleIdList
    end

    # Operation Builder for DescribeSecurityGroups
    class DescribeSecurityGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for GroupNameStringList
    class GroupNameStringList
    end

    # Operation Builder for DescribeSnapshotAttribute
    class DescribeSnapshotAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeSnapshotTierStatus
    class DescribeSnapshotTierStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeSnapshots
    class DescribeSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for SnapshotIdStringList
    class SnapshotIdStringList
    end

    # List Builder for RestorableByStringList
    class RestorableByStringList
    end

    # Operation Builder for DescribeSpotDatafeedSubscription
    class DescribeSpotDatafeedSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeSpotFleetInstances
    class DescribeSpotFleetInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeSpotFleetRequestHistory
    class DescribeSpotFleetRequestHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeSpotFleetRequests
    class DescribeSpotFleetRequests
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeSpotInstanceRequests
    class DescribeSpotInstanceRequests
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeSpotPriceHistory
    class DescribeSpotPriceHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ProductDescriptionList
    class ProductDescriptionList
    end

    # List Builder for InstanceTypeList
    class InstanceTypeList
    end

    # Operation Builder for DescribeStaleSecurityGroups
    class DescribeStaleSecurityGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeStoreImageTasks
    class DescribeStoreImageTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ImageIdList
    class ImageIdList
    end

    # Operation Builder for DescribeSubnets
    class DescribeSubnets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for SubnetIdStringList
    class SubnetIdStringList
    end

    # Operation Builder for DescribeTags
    class DescribeTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeTrafficMirrorFilters
    class DescribeTrafficMirrorFilters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TrafficMirrorFilterIdList
    class TrafficMirrorFilterIdList
    end

    # Operation Builder for DescribeTrafficMirrorSessions
    class DescribeTrafficMirrorSessions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TrafficMirrorSessionIdList
    class TrafficMirrorSessionIdList
    end

    # Operation Builder for DescribeTrafficMirrorTargets
    class DescribeTrafficMirrorTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TrafficMirrorTargetIdList
    class TrafficMirrorTargetIdList
    end

    # Operation Builder for DescribeTransitGatewayAttachments
    class DescribeTransitGatewayAttachments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TransitGatewayAttachmentIdStringList
    class TransitGatewayAttachmentIdStringList
    end

    # Operation Builder for DescribeTransitGatewayConnectPeers
    class DescribeTransitGatewayConnectPeers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TransitGatewayConnectPeerIdStringList
    class TransitGatewayConnectPeerIdStringList
    end

    # Operation Builder for DescribeTransitGatewayConnects
    class DescribeTransitGatewayConnects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeTransitGatewayMulticastDomains
    class DescribeTransitGatewayMulticastDomains
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TransitGatewayMulticastDomainIdStringList
    class TransitGatewayMulticastDomainIdStringList
    end

    # Operation Builder for DescribeTransitGatewayPeeringAttachments
    class DescribeTransitGatewayPeeringAttachments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeTransitGatewayRouteTables
    class DescribeTransitGatewayRouteTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TransitGatewayRouteTableIdStringList
    class TransitGatewayRouteTableIdStringList
    end

    # Operation Builder for DescribeTransitGatewayVpcAttachments
    class DescribeTransitGatewayVpcAttachments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeTransitGateways
    class DescribeTransitGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TransitGatewayIdStringList
    class TransitGatewayIdStringList
    end

    # Operation Builder for DescribeTrunkInterfaceAssociations
    class DescribeTrunkInterfaceAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TrunkInterfaceAssociationIdList
    class TrunkInterfaceAssociationIdList
    end

    # Operation Builder for DescribeVolumeAttribute
    class DescribeVolumeAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeVolumeStatus
    class DescribeVolumeStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for VolumeIdStringList
    class VolumeIdStringList
    end

    # Operation Builder for DescribeVolumes
    class DescribeVolumes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeVolumesModifications
    class DescribeVolumesModifications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeVpcAttribute
    class DescribeVpcAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeVpcClassicLink
    class DescribeVpcClassicLink
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for VpcClassicLinkIdList
    class VpcClassicLinkIdList
    end

    # Operation Builder for DescribeVpcClassicLinkDnsSupport
    class DescribeVpcClassicLinkDnsSupport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeVpcEndpointConnectionNotifications
    class DescribeVpcEndpointConnectionNotifications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeVpcEndpointConnections
    class DescribeVpcEndpointConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeVpcEndpointServiceConfigurations
    class DescribeVpcEndpointServiceConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeVpcEndpointServicePermissions
    class DescribeVpcEndpointServicePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeVpcEndpointServices
    class DescribeVpcEndpointServices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeVpcEndpoints
    class DescribeVpcEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeVpcPeeringConnections
    class DescribeVpcPeeringConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for VpcPeeringConnectionIdList
    class VpcPeeringConnectionIdList
    end

    # Operation Builder for DescribeVpcs
    class DescribeVpcs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for VpcIdStringList
    class VpcIdStringList
    end

    # Operation Builder for DescribeVpnConnections
    class DescribeVpnConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for VpnConnectionIdStringList
    class VpnConnectionIdStringList
    end

    # Operation Builder for DescribeVpnGateways
    class DescribeVpnGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for VpnGatewayIdStringList
    class VpnGatewayIdStringList
    end

    # Operation Builder for DetachClassicLinkVpc
    class DetachClassicLinkVpc
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DetachInternetGateway
    class DetachInternetGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DetachNetworkInterface
    class DetachNetworkInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DetachVolume
    class DetachVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DetachVpnGateway
    class DetachVpnGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DisableEbsEncryptionByDefault
    class DisableEbsEncryptionByDefault
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DisableFastSnapshotRestores
    class DisableFastSnapshotRestores
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for AvailabilityZoneStringList
    class AvailabilityZoneStringList
    end

    # Operation Builder for DisableImageDeprecation
    class DisableImageDeprecation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DisableIpamOrganizationAdminAccount
    class DisableIpamOrganizationAdminAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DisableSerialConsoleAccess
    class DisableSerialConsoleAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DisableTransitGatewayRouteTablePropagation
    class DisableTransitGatewayRouteTablePropagation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DisableVgwRoutePropagation
    class DisableVgwRoutePropagation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DisableVpcClassicLink
    class DisableVpcClassicLink
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DisableVpcClassicLinkDnsSupport
    class DisableVpcClassicLinkDnsSupport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DisassociateAddress
    class DisassociateAddress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DisassociateClientVpnTargetNetwork
    class DisassociateClientVpnTargetNetwork
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DisassociateEnclaveCertificateIamRole
    class DisassociateEnclaveCertificateIamRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DisassociateIamInstanceProfile
    class DisassociateIamInstanceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DisassociateInstanceEventWindow
    class DisassociateInstanceEventWindow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for InstanceEventWindowDisassociationRequest
    class InstanceEventWindowDisassociationRequest
    end

    # Operation Builder for DisassociateRouteTable
    class DisassociateRouteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DisassociateSubnetCidrBlock
    class DisassociateSubnetCidrBlock
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DisassociateTransitGatewayMulticastDomain
    class DisassociateTransitGatewayMulticastDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DisassociateTransitGatewayRouteTable
    class DisassociateTransitGatewayRouteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DisassociateTrunkInterface
    class DisassociateTrunkInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DisassociateVpcCidrBlock
    class DisassociateVpcCidrBlock
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for EnableEbsEncryptionByDefault
    class EnableEbsEncryptionByDefault
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for EnableFastSnapshotRestores
    class EnableFastSnapshotRestores
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for EnableImageDeprecation
    class EnableImageDeprecation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for EnableIpamOrganizationAdminAccount
    class EnableIpamOrganizationAdminAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for EnableSerialConsoleAccess
    class EnableSerialConsoleAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for EnableTransitGatewayRouteTablePropagation
    class EnableTransitGatewayRouteTablePropagation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for EnableVgwRoutePropagation
    class EnableVgwRoutePropagation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for EnableVolumeIO
    class EnableVolumeIO
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for EnableVpcClassicLink
    class EnableVpcClassicLink
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for EnableVpcClassicLinkDnsSupport
    class EnableVpcClassicLinkDnsSupport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ExportClientVpnClientCertificateRevocationList
    class ExportClientVpnClientCertificateRevocationList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ExportClientVpnClientConfiguration
    class ExportClientVpnClientConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ExportImage
    class ExportImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for ExportTaskS3LocationRequest
    class ExportTaskS3LocationRequest
    end

    # Operation Builder for ExportTransitGatewayRoutes
    class ExportTransitGatewayRoutes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetAssociatedEnclaveCertificateIamRoles
    class GetAssociatedEnclaveCertificateIamRoles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetAssociatedIpv6PoolCidrs
    class GetAssociatedIpv6PoolCidrs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetCapacityReservationUsage
    class GetCapacityReservationUsage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetCoipPoolUsage
    class GetCoipPoolUsage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetConsoleOutput
    class GetConsoleOutput
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetConsoleScreenshot
    class GetConsoleScreenshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetDefaultCreditSpecification
    class GetDefaultCreditSpecification
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetEbsDefaultKmsKeyId
    class GetEbsDefaultKmsKeyId
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetEbsEncryptionByDefault
    class GetEbsEncryptionByDefault
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetFlowLogsIntegrationTemplate
    class GetFlowLogsIntegrationTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for IntegrateServices
    class IntegrateServices
    end

    # List Builder for AthenaIntegrationsSet
    class AthenaIntegrationsSet
    end

    # Structure Builder for AthenaIntegration
    class AthenaIntegration
    end

    # Operation Builder for GetGroupsForCapacityReservation
    class GetGroupsForCapacityReservation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetHostReservationPurchasePreview
    class GetHostReservationPurchasePreview
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for RequestHostIdSet
    class RequestHostIdSet
    end

    # Operation Builder for GetInstanceTypesFromInstanceRequirements
    class GetInstanceTypesFromInstanceRequirements
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for VirtualizationTypeSet
    class VirtualizationTypeSet
    end

    # List Builder for ArchitectureTypeSet
    class ArchitectureTypeSet
    end

    # Operation Builder for GetIpamAddressHistory
    class GetIpamAddressHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetIpamPoolAllocations
    class GetIpamPoolAllocations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetIpamPoolCidrs
    class GetIpamPoolCidrs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetIpamResourceCidrs
    class GetIpamResourceCidrs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetLaunchTemplateData
    class GetLaunchTemplateData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetManagedPrefixListAssociations
    class GetManagedPrefixListAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetManagedPrefixListEntries
    class GetManagedPrefixListEntries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetNetworkInsightsAccessScopeAnalysisFindings
    class GetNetworkInsightsAccessScopeAnalysisFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetNetworkInsightsAccessScopeContent
    class GetNetworkInsightsAccessScopeContent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetPasswordData
    class GetPasswordData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetReservedInstancesExchangeQuote
    class GetReservedInstancesExchangeQuote
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetSerialConsoleAccessStatus
    class GetSerialConsoleAccessStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetSpotPlacementScores
    class GetSpotPlacementScores
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for InstanceRequirementsWithMetadataRequest
    class InstanceRequirementsWithMetadataRequest
    end

    # List Builder for RegionNames
    class RegionNames
    end

    # List Builder for InstanceTypes
    class InstanceTypes
    end

    # Operation Builder for GetSubnetCidrReservations
    class GetSubnetCidrReservations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetTransitGatewayAttachmentPropagations
    class GetTransitGatewayAttachmentPropagations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetTransitGatewayMulticastDomainAssociations
    class GetTransitGatewayMulticastDomainAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetTransitGatewayPrefixListReferences
    class GetTransitGatewayPrefixListReferences
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetTransitGatewayRouteTableAssociations
    class GetTransitGatewayRouteTableAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetTransitGatewayRouteTablePropagations
    class GetTransitGatewayRouteTablePropagations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetVpnConnectionDeviceSampleConfiguration
    class GetVpnConnectionDeviceSampleConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetVpnConnectionDeviceTypes
    class GetVpnConnectionDeviceTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ImportClientVpnClientCertificateRevocationList
    class ImportClientVpnClientCertificateRevocationList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ImportImage
    class ImportImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ImportImageLicenseSpecificationListRequest
    class ImportImageLicenseSpecificationListRequest
    end

    # Structure Builder for ImportImageLicenseConfigurationRequest
    class ImportImageLicenseConfigurationRequest
    end

    # List Builder for ImageDiskContainerList
    class ImageDiskContainerList
    end

    # Structure Builder for ImageDiskContainer
    class ImageDiskContainer
    end

    # Structure Builder for UserBucket
    class UserBucket
    end

    # Structure Builder for ClientData
    class ClientData
    end

    # Operation Builder for ImportInstance
    class ImportInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for ImportInstanceLaunchSpecification
    class ImportInstanceLaunchSpecification
    end

    # Structure Builder for UserData
    class UserData
    end

    # List Builder for DiskImageList
    class DiskImageList
    end

    # Structure Builder for DiskImage
    class DiskImage
    end

    # Structure Builder for VolumeDetail
    class VolumeDetail
    end

    # Structure Builder for DiskImageDetail
    class DiskImageDetail
    end

    # Operation Builder for ImportKeyPair
    class ImportKeyPair
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ImportSnapshot
    class ImportSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for SnapshotDiskContainer
    class SnapshotDiskContainer
    end

    # Operation Builder for ImportVolume
    class ImportVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ListSnapshotsInRecycleBin
    class ListSnapshotsInRecycleBin
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyAddressAttribute
    class ModifyAddressAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyAvailabilityZoneGroup
    class ModifyAvailabilityZoneGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyCapacityReservation
    class ModifyCapacityReservation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyCapacityReservationFleet
    class ModifyCapacityReservationFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyClientVpnEndpoint
    class ModifyClientVpnEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for DnsServersOptionsModifyStructure
    class DnsServersOptionsModifyStructure
    end

    # Operation Builder for ModifyDefaultCreditSpecification
    class ModifyDefaultCreditSpecification
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyEbsDefaultKmsKeyId
    class ModifyEbsDefaultKmsKeyId
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyFleet
    class ModifyFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyFpgaImageAttribute
    class ModifyFpgaImageAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for LoadPermissionModifications
    class LoadPermissionModifications
    end

    # List Builder for LoadPermissionListRequest
    class LoadPermissionListRequest
    end

    # Structure Builder for LoadPermissionRequest
    class LoadPermissionRequest
    end

    # List Builder for ProductCodeStringList
    class ProductCodeStringList
    end

    # List Builder for UserGroupStringList
    class UserGroupStringList
    end

    # List Builder for UserIdStringList
    class UserIdStringList
    end

    # Operation Builder for ModifyHosts
    class ModifyHosts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyIdFormat
    class ModifyIdFormat
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyIdentityIdFormat
    class ModifyIdentityIdFormat
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyImageAttribute
    class ModifyImageAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for OrganizationalUnitArnStringList
    class OrganizationalUnitArnStringList
    end

    # List Builder for OrganizationArnStringList
    class OrganizationArnStringList
    end

    # Structure Builder for LaunchPermissionModifications
    class LaunchPermissionModifications
    end

    # List Builder for LaunchPermissionList
    class LaunchPermissionList
    end

    # Structure Builder for LaunchPermission
    class LaunchPermission
    end

    # Structure Builder for AttributeValue
    class AttributeValue
    end

    # Operation Builder for ModifyInstanceAttribute
    class ModifyInstanceAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for BlobAttributeValue
    class BlobAttributeValue
    end

    # Structure Builder for AttributeBooleanValue
    class AttributeBooleanValue
    end

    # List Builder for InstanceBlockDeviceMappingSpecificationList
    class InstanceBlockDeviceMappingSpecificationList
    end

    # Structure Builder for InstanceBlockDeviceMappingSpecification
    class InstanceBlockDeviceMappingSpecification
    end

    # Structure Builder for EbsInstanceBlockDeviceSpecification
    class EbsInstanceBlockDeviceSpecification
    end

    # Operation Builder for ModifyInstanceCapacityReservationAttributes
    class ModifyInstanceCapacityReservationAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for CapacityReservationSpecification
    class CapacityReservationSpecification
    end

    # Operation Builder for ModifyInstanceCreditSpecification
    class ModifyInstanceCreditSpecification
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for InstanceCreditSpecificationListRequest
    class InstanceCreditSpecificationListRequest
    end

    # Structure Builder for InstanceCreditSpecificationRequest
    class InstanceCreditSpecificationRequest
    end

    # Operation Builder for ModifyInstanceEventStartTime
    class ModifyInstanceEventStartTime
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyInstanceEventWindow
    class ModifyInstanceEventWindow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyInstanceMetadataOptions
    class ModifyInstanceMetadataOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyInstancePlacement
    class ModifyInstancePlacement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyIpam
    class ModifyIpam
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for RemoveIpamOperatingRegionSet
    class RemoveIpamOperatingRegionSet
    end

    # Structure Builder for RemoveIpamOperatingRegion
    class RemoveIpamOperatingRegion
    end

    # Operation Builder for ModifyIpamPool
    class ModifyIpamPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyIpamResourceCidr
    class ModifyIpamResourceCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyIpamScope
    class ModifyIpamScope
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyLaunchTemplate
    class ModifyLaunchTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyManagedPrefixList
    class ModifyManagedPrefixList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for RemovePrefixListEntries
    class RemovePrefixListEntries
    end

    # Structure Builder for RemovePrefixListEntry
    class RemovePrefixListEntry
    end

    # Operation Builder for ModifyNetworkInterfaceAttribute
    class ModifyNetworkInterfaceAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for NetworkInterfaceAttachmentChanges
    class NetworkInterfaceAttachmentChanges
    end

    # Operation Builder for ModifyPrivateDnsNameOptions
    class ModifyPrivateDnsNameOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyReservedInstances
    class ModifyReservedInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ReservedInstancesConfigurationList
    class ReservedInstancesConfigurationList
    end

    # Structure Builder for ReservedInstancesConfiguration
    class ReservedInstancesConfiguration
    end

    # Operation Builder for ModifySecurityGroupRules
    class ModifySecurityGroupRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for SecurityGroupRuleUpdateList
    class SecurityGroupRuleUpdateList
    end

    # Structure Builder for SecurityGroupRuleUpdate
    class SecurityGroupRuleUpdate
    end

    # Structure Builder for SecurityGroupRuleRequest
    class SecurityGroupRuleRequest
    end

    # Operation Builder for ModifySnapshotAttribute
    class ModifySnapshotAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for CreateVolumePermissionModifications
    class CreateVolumePermissionModifications
    end

    # List Builder for CreateVolumePermissionList
    class CreateVolumePermissionList
    end

    # Structure Builder for CreateVolumePermission
    class CreateVolumePermission
    end

    # Operation Builder for ModifySnapshotTier
    class ModifySnapshotTier
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifySpotFleetRequest
    class ModifySpotFleetRequest
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for LaunchTemplateConfigList
    class LaunchTemplateConfigList
    end

    # Structure Builder for LaunchTemplateConfig
    class LaunchTemplateConfig
    end

    # List Builder for LaunchTemplateOverridesList
    class LaunchTemplateOverridesList
    end

    # Structure Builder for LaunchTemplateOverrides
    class LaunchTemplateOverrides
    end

    # Structure Builder for InstanceRequirements
    class InstanceRequirements
    end

    # Structure Builder for AcceleratorTotalMemoryMiB
    class AcceleratorTotalMemoryMiB
    end

    # Structure Builder for AcceleratorCount
    class AcceleratorCount
    end

    # Structure Builder for BaselineEbsBandwidthMbps
    class BaselineEbsBandwidthMbps
    end

    # Structure Builder for TotalLocalStorageGB
    class TotalLocalStorageGB
    end

    # Structure Builder for NetworkInterfaceCount
    class NetworkInterfaceCount
    end

    # Structure Builder for MemoryGiBPerVCpu
    class MemoryGiBPerVCpu
    end

    # Structure Builder for MemoryMiB
    class MemoryMiB
    end

    # Structure Builder for VCpuCountRange
    class VCpuCountRange
    end

    # Structure Builder for FleetLaunchTemplateSpecification
    class FleetLaunchTemplateSpecification
    end

    # Operation Builder for ModifySubnetAttribute
    class ModifySubnetAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyTrafficMirrorFilterNetworkServices
    class ModifyTrafficMirrorFilterNetworkServices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TrafficMirrorNetworkServiceList
    class TrafficMirrorNetworkServiceList
    end

    # Operation Builder for ModifyTrafficMirrorFilterRule
    class ModifyTrafficMirrorFilterRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TrafficMirrorFilterRuleFieldList
    class TrafficMirrorFilterRuleFieldList
    end

    # Operation Builder for ModifyTrafficMirrorSession
    class ModifyTrafficMirrorSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TrafficMirrorSessionFieldList
    class TrafficMirrorSessionFieldList
    end

    # Operation Builder for ModifyTransitGateway
    class ModifyTransitGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for ModifyTransitGatewayOptions
    class ModifyTransitGatewayOptions
    end

    # Operation Builder for ModifyTransitGatewayPrefixListReference
    class ModifyTransitGatewayPrefixListReference
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyTransitGatewayVpcAttachment
    class ModifyTransitGatewayVpcAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for ModifyTransitGatewayVpcAttachmentRequestOptions
    class ModifyTransitGatewayVpcAttachmentRequestOptions
    end

    # Operation Builder for ModifyVolume
    class ModifyVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyVolumeAttribute
    class ModifyVolumeAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyVpcAttribute
    class ModifyVpcAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyVpcEndpoint
    class ModifyVpcEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyVpcEndpointConnectionNotification
    class ModifyVpcEndpointConnectionNotification
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyVpcEndpointServiceConfiguration
    class ModifyVpcEndpointServiceConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyVpcEndpointServicePayerResponsibility
    class ModifyVpcEndpointServicePayerResponsibility
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyVpcEndpointServicePermissions
    class ModifyVpcEndpointServicePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyVpcPeeringConnectionOptions
    class ModifyVpcPeeringConnectionOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for PeeringConnectionOptionsRequest
    class PeeringConnectionOptionsRequest
    end

    # Operation Builder for ModifyVpcTenancy
    class ModifyVpcTenancy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyVpnConnection
    class ModifyVpnConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyVpnConnectionOptions
    class ModifyVpnConnectionOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyVpnTunnelCertificate
    class ModifyVpnTunnelCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ModifyVpnTunnelOptions
    class ModifyVpnTunnelOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for ModifyVpnTunnelOptionsSpecification
    class ModifyVpnTunnelOptionsSpecification
    end

    # Operation Builder for MonitorInstances
    class MonitorInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for MoveAddressToVpc
    class MoveAddressToVpc
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for MoveByoipCidrToIpam
    class MoveByoipCidrToIpam
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ProvisionByoipCidr
    class ProvisionByoipCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for CidrAuthorizationContext
    class CidrAuthorizationContext
    end

    # Operation Builder for ProvisionIpamPoolCidr
    class ProvisionIpamPoolCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for IpamCidrAuthorizationContext
    class IpamCidrAuthorizationContext
    end

    # Operation Builder for ProvisionPublicIpv4PoolCidr
    class ProvisionPublicIpv4PoolCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for PurchaseHostReservation
    class PurchaseHostReservation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for PurchaseReservedInstancesOffering
    class PurchaseReservedInstancesOffering
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for ReservedInstanceLimitPrice
    class ReservedInstanceLimitPrice
    end

    # Operation Builder for PurchaseScheduledInstances
    class PurchaseScheduledInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for PurchaseRequestSet
    class PurchaseRequestSet
    end

    # Structure Builder for PurchaseRequest
    class PurchaseRequest
    end

    # Operation Builder for RebootInstances
    class RebootInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for RegisterImage
    class RegisterImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for BillingProductList
    class BillingProductList
    end

    # Operation Builder for RegisterInstanceEventNotificationAttributes
    class RegisterInstanceEventNotificationAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for RegisterInstanceTagAttributeRequest
    class RegisterInstanceTagAttributeRequest
    end

    # Operation Builder for RegisterTransitGatewayMulticastGroupMembers
    class RegisterTransitGatewayMulticastGroupMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for RegisterTransitGatewayMulticastGroupSources
    class RegisterTransitGatewayMulticastGroupSources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for RejectTransitGatewayMulticastDomainAssociations
    class RejectTransitGatewayMulticastDomainAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for RejectTransitGatewayPeeringAttachment
    class RejectTransitGatewayPeeringAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for RejectTransitGatewayVpcAttachment
    class RejectTransitGatewayVpcAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for RejectVpcEndpointConnections
    class RejectVpcEndpointConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for RejectVpcPeeringConnection
    class RejectVpcPeeringConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ReleaseAddress
    class ReleaseAddress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ReleaseHosts
    class ReleaseHosts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ReleaseIpamPoolAllocation
    class ReleaseIpamPoolAllocation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ReplaceIamInstanceProfileAssociation
    class ReplaceIamInstanceProfileAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ReplaceNetworkAclAssociation
    class ReplaceNetworkAclAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ReplaceNetworkAclEntry
    class ReplaceNetworkAclEntry
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ReplaceRoute
    class ReplaceRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ReplaceRouteTableAssociation
    class ReplaceRouteTableAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ReplaceTransitGatewayRoute
    class ReplaceTransitGatewayRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ReportInstanceStatus
    class ReportInstanceStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ReasonCodesList
    class ReasonCodesList
    end

    # Operation Builder for RequestSpotFleet
    class RequestSpotFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for SpotFleetRequestConfigData
    class SpotFleetRequestConfigData
    end

    # Structure Builder for LoadBalancersConfig
    class LoadBalancersConfig
    end

    # Structure Builder for TargetGroupsConfig
    class TargetGroupsConfig
    end

    # List Builder for TargetGroups
    class TargetGroups
    end

    # Structure Builder for TargetGroup
    class TargetGroup
    end

    # Structure Builder for ClassicLoadBalancersConfig
    class ClassicLoadBalancersConfig
    end

    # List Builder for ClassicLoadBalancers
    class ClassicLoadBalancers
    end

    # Structure Builder for ClassicLoadBalancer
    class ClassicLoadBalancer
    end

    # List Builder for LaunchSpecsList
    class LaunchSpecsList
    end

    # Structure Builder for SpotFleetLaunchSpecification
    class SpotFleetLaunchSpecification
    end

    # List Builder for SpotFleetTagSpecificationList
    class SpotFleetTagSpecificationList
    end

    # Structure Builder for SpotFleetTagSpecification
    class SpotFleetTagSpecification
    end

    # Structure Builder for SpotPlacement
    class SpotPlacement
    end

    # List Builder for InstanceNetworkInterfaceSpecificationList
    class InstanceNetworkInterfaceSpecificationList
    end

    # Structure Builder for InstanceNetworkInterfaceSpecification
    class InstanceNetworkInterfaceSpecification
    end

    # Structure Builder for SpotFleetMonitoring
    class SpotFleetMonitoring
    end

    # List Builder for BlockDeviceMappingList
    class BlockDeviceMappingList
    end

    # List Builder for GroupIdentifierList
    class GroupIdentifierList
    end

    # Structure Builder for GroupIdentifier
    class GroupIdentifier
    end

    # Structure Builder for SpotMaintenanceStrategies
    class SpotMaintenanceStrategies
    end

    # Structure Builder for SpotCapacityRebalance
    class SpotCapacityRebalance
    end

    # Operation Builder for RequestSpotInstances
    class RequestSpotInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for RequestSpotLaunchSpecification
    class RequestSpotLaunchSpecification
    end

    # Structure Builder for RunInstancesMonitoringEnabled
    class RunInstancesMonitoringEnabled
    end

    # List Builder for RequestSpotLaunchSpecificationSecurityGroupList
    class RequestSpotLaunchSpecificationSecurityGroupList
    end

    # List Builder for RequestSpotLaunchSpecificationSecurityGroupIdList
    class RequestSpotLaunchSpecificationSecurityGroupIdList
    end

    # Operation Builder for ResetAddressAttribute
    class ResetAddressAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ResetEbsDefaultKmsKeyId
    class ResetEbsDefaultKmsKeyId
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ResetFpgaImageAttribute
    class ResetFpgaImageAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ResetImageAttribute
    class ResetImageAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ResetInstanceAttribute
    class ResetInstanceAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ResetNetworkInterfaceAttribute
    class ResetNetworkInterfaceAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ResetSnapshotAttribute
    class ResetSnapshotAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for RestoreAddressToClassic
    class RestoreAddressToClassic
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for RestoreManagedPrefixListVersion
    class RestoreManagedPrefixListVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for RestoreSnapshotFromRecycleBin
    class RestoreSnapshotFromRecycleBin
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for RestoreSnapshotTier
    class RestoreSnapshotTier
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for RevokeClientVpnIngress
    class RevokeClientVpnIngress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for RevokeSecurityGroupEgress
    class RevokeSecurityGroupEgress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for RevokeSecurityGroupIngress
    class RevokeSecurityGroupIngress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for RunInstances
    class RunInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for PrivateDnsNameOptionsRequest
    class PrivateDnsNameOptionsRequest
    end

    # Structure Builder for EnclaveOptionsRequest
    class EnclaveOptionsRequest
    end

    # Structure Builder for InstanceMetadataOptionsRequest
    class InstanceMetadataOptionsRequest
    end

    # List Builder for LicenseSpecificationListRequest
    class LicenseSpecificationListRequest
    end

    # Structure Builder for LicenseConfigurationRequest
    class LicenseConfigurationRequest
    end

    # Structure Builder for HibernationOptionsRequest
    class HibernationOptionsRequest
    end

    # Structure Builder for CpuOptionsRequest
    class CpuOptionsRequest
    end

    # Structure Builder for InstanceMarketOptionsRequest
    class InstanceMarketOptionsRequest
    end

    # Structure Builder for SpotMarketOptions
    class SpotMarketOptions
    end

    # Structure Builder for LaunchTemplateSpecification
    class LaunchTemplateSpecification
    end

    # List Builder for ElasticInferenceAccelerators
    class ElasticInferenceAccelerators
    end

    # Structure Builder for ElasticInferenceAccelerator
    class ElasticInferenceAccelerator
    end

    # List Builder for ElasticGpuSpecifications
    class ElasticGpuSpecifications
    end

    # Operation Builder for RunScheduledInstances
    class RunScheduledInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for ScheduledInstancesLaunchSpecification
    class ScheduledInstancesLaunchSpecification
    end

    # List Builder for ScheduledInstancesSecurityGroupIdSet
    class ScheduledInstancesSecurityGroupIdSet
    end

    # Structure Builder for ScheduledInstancesPlacement
    class ScheduledInstancesPlacement
    end

    # List Builder for ScheduledInstancesNetworkInterfaceSet
    class ScheduledInstancesNetworkInterfaceSet
    end

    # Structure Builder for ScheduledInstancesNetworkInterface
    class ScheduledInstancesNetworkInterface
    end

    # List Builder for PrivateIpAddressConfigSet
    class PrivateIpAddressConfigSet
    end

    # Structure Builder for ScheduledInstancesPrivateIpAddressConfig
    class ScheduledInstancesPrivateIpAddressConfig
    end

    # List Builder for ScheduledInstancesIpv6AddressList
    class ScheduledInstancesIpv6AddressList
    end

    # Structure Builder for ScheduledInstancesIpv6Address
    class ScheduledInstancesIpv6Address
    end

    # Structure Builder for ScheduledInstancesMonitoring
    class ScheduledInstancesMonitoring
    end

    # Structure Builder for ScheduledInstancesIamInstanceProfile
    class ScheduledInstancesIamInstanceProfile
    end

    # List Builder for ScheduledInstancesBlockDeviceMappingSet
    class ScheduledInstancesBlockDeviceMappingSet
    end

    # Structure Builder for ScheduledInstancesBlockDeviceMapping
    class ScheduledInstancesBlockDeviceMapping
    end

    # Structure Builder for ScheduledInstancesEbs
    class ScheduledInstancesEbs
    end

    # Operation Builder for SearchLocalGatewayRoutes
    class SearchLocalGatewayRoutes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for SearchTransitGatewayMulticastGroups
    class SearchTransitGatewayMulticastGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for SearchTransitGatewayRoutes
    class SearchTransitGatewayRoutes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for SendDiagnosticInterrupt
    class SendDiagnosticInterrupt
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for StartInstances
    class StartInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for StartNetworkInsightsAccessScopeAnalysis
    class StartNetworkInsightsAccessScopeAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for StartNetworkInsightsAnalysis
    class StartNetworkInsightsAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ArnList
    class ArnList
    end

    # Operation Builder for StartVpcEndpointServicePrivateDnsVerification
    class StartVpcEndpointServicePrivateDnsVerification
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for StopInstances
    class StopInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for TerminateClientVpnConnections
    class TerminateClientVpnConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for TerminateInstances
    class TerminateInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for UnassignIpv6Addresses
    class UnassignIpv6Addresses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for UnassignPrivateIpAddresses
    class UnassignPrivateIpAddresses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for UnmonitorInstances
    class UnmonitorInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for UpdateSecurityGroupRuleDescriptionsEgress
    class UpdateSecurityGroupRuleDescriptionsEgress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for SecurityGroupRuleDescriptionList
    class SecurityGroupRuleDescriptionList
    end

    # Structure Builder for SecurityGroupRuleDescription
    class SecurityGroupRuleDescription
    end

    # Operation Builder for UpdateSecurityGroupRuleDescriptionsIngress
    class UpdateSecurityGroupRuleDescriptionsIngress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for WithdrawByoipCidr
    class WithdrawByoipCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end
  end
end
