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
    end

    # List Builder for ValueStringList
    class ValueStringList
    end

    # Operation Builder for AcceptTransitGatewayPeeringAttachment
    class AcceptTransitGatewayPeeringAttachment
    end

    # Operation Builder for AcceptTransitGatewayVpcAttachment
    class AcceptTransitGatewayVpcAttachment
    end

    # Operation Builder for AcceptVpcEndpointConnections
    class AcceptVpcEndpointConnections
    end

    # List Builder for VpcEndpointIdList
    class VpcEndpointIdList
    end

    # Operation Builder for AcceptVpcPeeringConnection
    class AcceptVpcPeeringConnection
    end

    # Operation Builder for AdvertiseByoipCidr
    class AdvertiseByoipCidr
    end

    # Operation Builder for AllocateAddress
    class AllocateAddress
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
    end

    # Operation Builder for AllocateIpamPoolCidr
    class AllocateIpamPoolCidr
    end

    # List Builder for IpamPoolAllocationDisallowedCidrs
    class IpamPoolAllocationDisallowedCidrs
    end

    # Operation Builder for ApplySecurityGroupsToClientVpnTargetNetwork
    class ApplySecurityGroupsToClientVpnTargetNetwork
    end

    # List Builder for ClientVpnSecurityGroupIdSet
    class ClientVpnSecurityGroupIdSet
    end

    # Operation Builder for AssignIpv6Addresses
    class AssignIpv6Addresses
    end

    # List Builder for IpPrefixList
    class IpPrefixList
    end

    # List Builder for Ipv6AddressList
    class Ipv6AddressList
    end

    # Operation Builder for AssignPrivateIpAddresses
    class AssignPrivateIpAddresses
    end

    # List Builder for PrivateIpAddressStringList
    class PrivateIpAddressStringList
    end

    # Operation Builder for AssociateAddress
    class AssociateAddress
    end

    # Operation Builder for AssociateClientVpnTargetNetwork
    class AssociateClientVpnTargetNetwork
    end

    # Operation Builder for AssociateDhcpOptions
    class AssociateDhcpOptions
    end

    # Operation Builder for AssociateEnclaveCertificateIamRole
    class AssociateEnclaveCertificateIamRole
    end

    # Operation Builder for AssociateIamInstanceProfile
    class AssociateIamInstanceProfile
    end

    # Structure Builder for IamInstanceProfileSpecification
    class IamInstanceProfileSpecification
    end

    # Operation Builder for AssociateInstanceEventWindow
    class AssociateInstanceEventWindow
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
    end

    # Operation Builder for AssociateSubnetCidrBlock
    class AssociateSubnetCidrBlock
    end

    # Operation Builder for AssociateTransitGatewayMulticastDomain
    class AssociateTransitGatewayMulticastDomain
    end

    # List Builder for TransitGatewaySubnetIdList
    class TransitGatewaySubnetIdList
    end

    # Operation Builder for AssociateTransitGatewayRouteTable
    class AssociateTransitGatewayRouteTable
    end

    # Operation Builder for AssociateTrunkInterface
    class AssociateTrunkInterface
    end

    # Operation Builder for AssociateVpcCidrBlock
    class AssociateVpcCidrBlock
    end

    # Operation Builder for AttachClassicLinkVpc
    class AttachClassicLinkVpc
    end

    # List Builder for GroupIdStringList
    class GroupIdStringList
    end

    # Operation Builder for AttachInternetGateway
    class AttachInternetGateway
    end

    # Operation Builder for AttachNetworkInterface
    class AttachNetworkInterface
    end

    # Operation Builder for AttachVolume
    class AttachVolume
    end

    # Operation Builder for AttachVpnGateway
    class AttachVpnGateway
    end

    # Operation Builder for AuthorizeClientVpnIngress
    class AuthorizeClientVpnIngress
    end

    # Operation Builder for AuthorizeSecurityGroupEgress
    class AuthorizeSecurityGroupEgress
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
    end

    # Operation Builder for BundleInstance
    class BundleInstance
    end

    # Structure Builder for Storage
    class Storage
    end

    # Structure Builder for S3Storage
    class S3Storage
    end

    # Operation Builder for CancelBundleTask
    class CancelBundleTask
    end

    # Operation Builder for CancelCapacityReservation
    class CancelCapacityReservation
    end

    # Operation Builder for CancelCapacityReservationFleets
    class CancelCapacityReservationFleets
    end

    # List Builder for CapacityReservationFleetIdSet
    class CapacityReservationFleetIdSet
    end

    # Operation Builder for CancelConversionTask
    class CancelConversionTask
    end

    # Operation Builder for CancelExportTask
    class CancelExportTask
    end

    # Operation Builder for CancelImportTask
    class CancelImportTask
    end

    # Operation Builder for CancelReservedInstancesListing
    class CancelReservedInstancesListing
    end

    # Operation Builder for CancelSpotFleetRequests
    class CancelSpotFleetRequests
    end

    # List Builder for SpotFleetRequestIdList
    class SpotFleetRequestIdList
    end

    # Operation Builder for CancelSpotInstanceRequests
    class CancelSpotInstanceRequests
    end

    # List Builder for SpotInstanceRequestIdList
    class SpotInstanceRequestIdList
    end

    # Operation Builder for ConfirmProductInstance
    class ConfirmProductInstance
    end

    # Operation Builder for CopyFpgaImage
    class CopyFpgaImage
    end

    # Operation Builder for CopyImage
    class CopyImage
    end

    # Operation Builder for CopySnapshot
    class CopySnapshot
    end

    # Operation Builder for CreateCapacityReservation
    class CreateCapacityReservation
    end

    # Operation Builder for CreateCapacityReservationFleet
    class CreateCapacityReservationFleet
    end

    # List Builder for ReservationFleetInstanceSpecificationList
    class ReservationFleetInstanceSpecificationList
    end

    # Structure Builder for ReservationFleetInstanceSpecification
    class ReservationFleetInstanceSpecification
    end

    # Operation Builder for CreateCarrierGateway
    class CreateCarrierGateway
    end

    # Operation Builder for CreateClientVpnEndpoint
    class CreateClientVpnEndpoint
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
    end

    # Operation Builder for CreateCustomerGateway
    class CreateCustomerGateway
    end

    # Operation Builder for CreateDefaultSubnet
    class CreateDefaultSubnet
    end

    # Operation Builder for CreateDefaultVpc
    class CreateDefaultVpc
    end

    # Operation Builder for CreateDhcpOptions
    class CreateDhcpOptions
    end

    # List Builder for NewDhcpConfigurationList
    class NewDhcpConfigurationList
    end

    # Structure Builder for NewDhcpConfiguration
    class NewDhcpConfiguration
    end

    # Operation Builder for CreateEgressOnlyInternetGateway
    class CreateEgressOnlyInternetGateway
    end

    # Operation Builder for CreateFleet
    class CreateFleet
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
    end

    # Structure Builder for DestinationOptionsRequest
    class DestinationOptionsRequest
    end

    # List Builder for FlowLogResourceIds
    class FlowLogResourceIds
    end

    # Operation Builder for CreateFpgaImage
    class CreateFpgaImage
    end

    # Structure Builder for StorageLocation
    class StorageLocation
    end

    # Operation Builder for CreateImage
    class CreateImage
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
    end

    # List Builder for InstanceEventWindowTimeRangeRequestSet
    class InstanceEventWindowTimeRangeRequestSet
    end

    # Structure Builder for InstanceEventWindowTimeRangeRequest
    class InstanceEventWindowTimeRangeRequest
    end

    # Operation Builder for CreateInstanceExportTask
    class CreateInstanceExportTask
    end

    # Structure Builder for ExportToS3TaskSpecification
    class ExportToS3TaskSpecification
    end

    # Operation Builder for CreateInternetGateway
    class CreateInternetGateway
    end

    # Operation Builder for CreateIpam
    class CreateIpam
    end

    # List Builder for AddIpamOperatingRegionSet
    class AddIpamOperatingRegionSet
    end

    # Structure Builder for AddIpamOperatingRegion
    class AddIpamOperatingRegion
    end

    # Operation Builder for CreateIpamPool
    class CreateIpamPool
    end

    # List Builder for RequestIpamResourceTagList
    class RequestIpamResourceTagList
    end

    # Structure Builder for RequestIpamResourceTag
    class RequestIpamResourceTag
    end

    # Operation Builder for CreateIpamScope
    class CreateIpamScope
    end

    # Operation Builder for CreateKeyPair
    class CreateKeyPair
    end

    # Operation Builder for CreateLaunchTemplate
    class CreateLaunchTemplate
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
    end

    # Operation Builder for CreateLocalGatewayRoute
    class CreateLocalGatewayRoute
    end

    # Operation Builder for CreateLocalGatewayRouteTableVpcAssociation
    class CreateLocalGatewayRouteTableVpcAssociation
    end

    # Operation Builder for CreateManagedPrefixList
    class CreateManagedPrefixList
    end

    # List Builder for AddPrefixListEntries
    class AddPrefixListEntries
    end

    # Structure Builder for AddPrefixListEntry
    class AddPrefixListEntry
    end

    # Operation Builder for CreateNatGateway
    class CreateNatGateway
    end

    # Operation Builder for CreateNetworkAcl
    class CreateNetworkAcl
    end

    # Operation Builder for CreateNetworkAclEntry
    class CreateNetworkAclEntry
    end

    # Structure Builder for PortRange
    class PortRange
    end

    # Structure Builder for IcmpTypeCode
    class IcmpTypeCode
    end

    # Operation Builder for CreateNetworkInsightsAccessScope
    class CreateNetworkInsightsAccessScope
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
    end

    # Operation Builder for CreateNetworkInterface
    class CreateNetworkInterface
    end

    # List Builder for InstanceIpv6AddressList
    class InstanceIpv6AddressList
    end

    # Structure Builder for InstanceIpv6Address
    class InstanceIpv6Address
    end

    # Operation Builder for CreateNetworkInterfacePermission
    class CreateNetworkInterfacePermission
    end

    # Operation Builder for CreatePlacementGroup
    class CreatePlacementGroup
    end

    # Operation Builder for CreatePublicIpv4Pool
    class CreatePublicIpv4Pool
    end

    # Operation Builder for CreateReplaceRootVolumeTask
    class CreateReplaceRootVolumeTask
    end

    # Operation Builder for CreateReservedInstancesListing
    class CreateReservedInstancesListing
    end

    # List Builder for PriceScheduleSpecificationList
    class PriceScheduleSpecificationList
    end

    # Structure Builder for PriceScheduleSpecification
    class PriceScheduleSpecification
    end

    # Operation Builder for CreateRestoreImageTask
    class CreateRestoreImageTask
    end

    # Operation Builder for CreateRoute
    class CreateRoute
    end

    # Operation Builder for CreateRouteTable
    class CreateRouteTable
    end

    # Operation Builder for CreateSecurityGroup
    class CreateSecurityGroup
    end

    # Operation Builder for CreateSnapshot
    class CreateSnapshot
    end

    # Operation Builder for CreateSnapshots
    class CreateSnapshots
    end

    # Structure Builder for InstanceSpecification
    class InstanceSpecification
    end

    # Operation Builder for CreateSpotDatafeedSubscription
    class CreateSpotDatafeedSubscription
    end

    # Operation Builder for CreateStoreImageTask
    class CreateStoreImageTask
    end

    # List Builder for S3ObjectTagList
    class S3ObjectTagList
    end

    # Structure Builder for S3ObjectTag
    class S3ObjectTag
    end

    # Operation Builder for CreateSubnet
    class CreateSubnet
    end

    # Operation Builder for CreateSubnetCidrReservation
    class CreateSubnetCidrReservation
    end

    # Operation Builder for CreateTags
    class CreateTags
    end

    # List Builder for ResourceIdList
    class ResourceIdList
    end

    # Operation Builder for CreateTrafficMirrorFilter
    class CreateTrafficMirrorFilter
    end

    # Operation Builder for CreateTrafficMirrorFilterRule
    class CreateTrafficMirrorFilterRule
    end

    # Structure Builder for TrafficMirrorPortRangeRequest
    class TrafficMirrorPortRangeRequest
    end

    # Operation Builder for CreateTrafficMirrorSession
    class CreateTrafficMirrorSession
    end

    # Operation Builder for CreateTrafficMirrorTarget
    class CreateTrafficMirrorTarget
    end

    # Operation Builder for CreateTransitGateway
    class CreateTransitGateway
    end

    # Structure Builder for TransitGatewayRequestOptions
    class TransitGatewayRequestOptions
    end

    # List Builder for TransitGatewayCidrBlockStringList
    class TransitGatewayCidrBlockStringList
    end

    # Operation Builder for CreateTransitGatewayConnect
    class CreateTransitGatewayConnect
    end

    # Structure Builder for CreateTransitGatewayConnectRequestOptions
    class CreateTransitGatewayConnectRequestOptions
    end

    # Operation Builder for CreateTransitGatewayConnectPeer
    class CreateTransitGatewayConnectPeer
    end

    # List Builder for InsideCidrBlocksStringList
    class InsideCidrBlocksStringList
    end

    # Structure Builder for TransitGatewayConnectRequestBgpOptions
    class TransitGatewayConnectRequestBgpOptions
    end

    # Operation Builder for CreateTransitGatewayMulticastDomain
    class CreateTransitGatewayMulticastDomain
    end

    # Structure Builder for CreateTransitGatewayMulticastDomainRequestOptions
    class CreateTransitGatewayMulticastDomainRequestOptions
    end

    # Operation Builder for CreateTransitGatewayPeeringAttachment
    class CreateTransitGatewayPeeringAttachment
    end

    # Operation Builder for CreateTransitGatewayPrefixListReference
    class CreateTransitGatewayPrefixListReference
    end

    # Operation Builder for CreateTransitGatewayRoute
    class CreateTransitGatewayRoute
    end

    # Operation Builder for CreateTransitGatewayRouteTable
    class CreateTransitGatewayRouteTable
    end

    # Operation Builder for CreateTransitGatewayVpcAttachment
    class CreateTransitGatewayVpcAttachment
    end

    # Structure Builder for CreateTransitGatewayVpcAttachmentRequestOptions
    class CreateTransitGatewayVpcAttachmentRequestOptions
    end

    # Operation Builder for CreateVolume
    class CreateVolume
    end

    # Operation Builder for CreateVpc
    class CreateVpc
    end

    # Operation Builder for CreateVpcEndpoint
    class CreateVpcEndpoint
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
    end

    # Operation Builder for CreateVpcEndpointServiceConfiguration
    class CreateVpcEndpointServiceConfiguration
    end

    # Operation Builder for CreateVpcPeeringConnection
    class CreateVpcPeeringConnection
    end

    # Operation Builder for CreateVpnConnection
    class CreateVpnConnection
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
    end

    # Operation Builder for CreateVpnGateway
    class CreateVpnGateway
    end

    # Operation Builder for DeleteCarrierGateway
    class DeleteCarrierGateway
    end

    # Operation Builder for DeleteClientVpnEndpoint
    class DeleteClientVpnEndpoint
    end

    # Operation Builder for DeleteClientVpnRoute
    class DeleteClientVpnRoute
    end

    # Operation Builder for DeleteCustomerGateway
    class DeleteCustomerGateway
    end

    # Operation Builder for DeleteDhcpOptions
    class DeleteDhcpOptions
    end

    # Operation Builder for DeleteEgressOnlyInternetGateway
    class DeleteEgressOnlyInternetGateway
    end

    # Operation Builder for DeleteFleets
    class DeleteFleets
    end

    # List Builder for FleetIdSet
    class FleetIdSet
    end

    # Operation Builder for DeleteFlowLogs
    class DeleteFlowLogs
    end

    # List Builder for FlowLogIdList
    class FlowLogIdList
    end

    # Operation Builder for DeleteFpgaImage
    class DeleteFpgaImage
    end

    # Operation Builder for DeleteInstanceEventWindow
    class DeleteInstanceEventWindow
    end

    # Operation Builder for DeleteInternetGateway
    class DeleteInternetGateway
    end

    # Operation Builder for DeleteIpam
    class DeleteIpam
    end

    # Operation Builder for DeleteIpamPool
    class DeleteIpamPool
    end

    # Operation Builder for DeleteIpamScope
    class DeleteIpamScope
    end

    # Operation Builder for DeleteKeyPair
    class DeleteKeyPair
    end

    # Operation Builder for DeleteLaunchTemplate
    class DeleteLaunchTemplate
    end

    # Operation Builder for DeleteLaunchTemplateVersions
    class DeleteLaunchTemplateVersions
    end

    # List Builder for VersionStringList
    class VersionStringList
    end

    # Operation Builder for DeleteLocalGatewayRoute
    class DeleteLocalGatewayRoute
    end

    # Operation Builder for DeleteLocalGatewayRouteTableVpcAssociation
    class DeleteLocalGatewayRouteTableVpcAssociation
    end

    # Operation Builder for DeleteManagedPrefixList
    class DeleteManagedPrefixList
    end

    # Operation Builder for DeleteNatGateway
    class DeleteNatGateway
    end

    # Operation Builder for DeleteNetworkAcl
    class DeleteNetworkAcl
    end

    # Operation Builder for DeleteNetworkAclEntry
    class DeleteNetworkAclEntry
    end

    # Operation Builder for DeleteNetworkInsightsAccessScope
    class DeleteNetworkInsightsAccessScope
    end

    # Operation Builder for DeleteNetworkInsightsAccessScopeAnalysis
    class DeleteNetworkInsightsAccessScopeAnalysis
    end

    # Operation Builder for DeleteNetworkInsightsAnalysis
    class DeleteNetworkInsightsAnalysis
    end

    # Operation Builder for DeleteNetworkInsightsPath
    class DeleteNetworkInsightsPath
    end

    # Operation Builder for DeleteNetworkInterface
    class DeleteNetworkInterface
    end

    # Operation Builder for DeleteNetworkInterfacePermission
    class DeleteNetworkInterfacePermission
    end

    # Operation Builder for DeletePlacementGroup
    class DeletePlacementGroup
    end

    # Operation Builder for DeletePublicIpv4Pool
    class DeletePublicIpv4Pool
    end

    # Operation Builder for DeleteQueuedReservedInstances
    class DeleteQueuedReservedInstances
    end

    # List Builder for DeleteQueuedReservedInstancesIdList
    class DeleteQueuedReservedInstancesIdList
    end

    # Operation Builder for DeleteRoute
    class DeleteRoute
    end

    # Operation Builder for DeleteRouteTable
    class DeleteRouteTable
    end

    # Operation Builder for DeleteSecurityGroup
    class DeleteSecurityGroup
    end

    # Operation Builder for DeleteSnapshot
    class DeleteSnapshot
    end

    # Operation Builder for DeleteSpotDatafeedSubscription
    class DeleteSpotDatafeedSubscription
    end

    # Operation Builder for DeleteSubnet
    class DeleteSubnet
    end

    # Operation Builder for DeleteSubnetCidrReservation
    class DeleteSubnetCidrReservation
    end

    # Operation Builder for DeleteTags
    class DeleteTags
    end

    # Operation Builder for DeleteTrafficMirrorFilter
    class DeleteTrafficMirrorFilter
    end

    # Operation Builder for DeleteTrafficMirrorFilterRule
    class DeleteTrafficMirrorFilterRule
    end

    # Operation Builder for DeleteTrafficMirrorSession
    class DeleteTrafficMirrorSession
    end

    # Operation Builder for DeleteTrafficMirrorTarget
    class DeleteTrafficMirrorTarget
    end

    # Operation Builder for DeleteTransitGateway
    class DeleteTransitGateway
    end

    # Operation Builder for DeleteTransitGatewayConnect
    class DeleteTransitGatewayConnect
    end

    # Operation Builder for DeleteTransitGatewayConnectPeer
    class DeleteTransitGatewayConnectPeer
    end

    # Operation Builder for DeleteTransitGatewayMulticastDomain
    class DeleteTransitGatewayMulticastDomain
    end

    # Operation Builder for DeleteTransitGatewayPeeringAttachment
    class DeleteTransitGatewayPeeringAttachment
    end

    # Operation Builder for DeleteTransitGatewayPrefixListReference
    class DeleteTransitGatewayPrefixListReference
    end

    # Operation Builder for DeleteTransitGatewayRoute
    class DeleteTransitGatewayRoute
    end

    # Operation Builder for DeleteTransitGatewayRouteTable
    class DeleteTransitGatewayRouteTable
    end

    # Operation Builder for DeleteTransitGatewayVpcAttachment
    class DeleteTransitGatewayVpcAttachment
    end

    # Operation Builder for DeleteVolume
    class DeleteVolume
    end

    # Operation Builder for DeleteVpc
    class DeleteVpc
    end

    # Operation Builder for DeleteVpcEndpointConnectionNotifications
    class DeleteVpcEndpointConnectionNotifications
    end

    # List Builder for ConnectionNotificationIdsList
    class ConnectionNotificationIdsList
    end

    # Operation Builder for DeleteVpcEndpointServiceConfigurations
    class DeleteVpcEndpointServiceConfigurations
    end

    # List Builder for VpcEndpointServiceIdList
    class VpcEndpointServiceIdList
    end

    # Operation Builder for DeleteVpcEndpoints
    class DeleteVpcEndpoints
    end

    # Operation Builder for DeleteVpcPeeringConnection
    class DeleteVpcPeeringConnection
    end

    # Operation Builder for DeleteVpnConnection
    class DeleteVpnConnection
    end

    # Operation Builder for DeleteVpnConnectionRoute
    class DeleteVpnConnectionRoute
    end

    # Operation Builder for DeleteVpnGateway
    class DeleteVpnGateway
    end

    # Operation Builder for DeprovisionByoipCidr
    class DeprovisionByoipCidr
    end

    # Operation Builder for DeprovisionIpamPoolCidr
    class DeprovisionIpamPoolCidr
    end

    # Operation Builder for DeprovisionPublicIpv4PoolCidr
    class DeprovisionPublicIpv4PoolCidr
    end

    # Operation Builder for DeregisterImage
    class DeregisterImage
    end

    # Operation Builder for DeregisterInstanceEventNotificationAttributes
    class DeregisterInstanceEventNotificationAttributes
    end

    # Structure Builder for DeregisterInstanceTagAttributeRequest
    class DeregisterInstanceTagAttributeRequest
    end

    # List Builder for InstanceTagKeySet
    class InstanceTagKeySet
    end

    # Operation Builder for DeregisterTransitGatewayMulticastGroupMembers
    class DeregisterTransitGatewayMulticastGroupMembers
    end

    # List Builder for TransitGatewayNetworkInterfaceIdList
    class TransitGatewayNetworkInterfaceIdList
    end

    # Operation Builder for DeregisterTransitGatewayMulticastGroupSources
    class DeregisterTransitGatewayMulticastGroupSources
    end

    # Operation Builder for DescribeAccountAttributes
    class DescribeAccountAttributes
    end

    # List Builder for AccountAttributeNameStringList
    class AccountAttributeNameStringList
    end

    # Operation Builder for DescribeAddresses
    class DescribeAddresses
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
    end

    # List Builder for AllocationIds
    class AllocationIds
    end

    # Operation Builder for DescribeAggregateIdFormat
    class DescribeAggregateIdFormat
    end

    # Operation Builder for DescribeAvailabilityZones
    class DescribeAvailabilityZones
    end

    # List Builder for ZoneIdStringList
    class ZoneIdStringList
    end

    # List Builder for ZoneNameStringList
    class ZoneNameStringList
    end

    # Operation Builder for DescribeBundleTasks
    class DescribeBundleTasks
    end

    # List Builder for BundleIdStringList
    class BundleIdStringList
    end

    # Operation Builder for DescribeByoipCidrs
    class DescribeByoipCidrs
    end

    # Operation Builder for DescribeCapacityReservationFleets
    class DescribeCapacityReservationFleets
    end

    # Operation Builder for DescribeCapacityReservations
    class DescribeCapacityReservations
    end

    # List Builder for CapacityReservationIdSet
    class CapacityReservationIdSet
    end

    # Operation Builder for DescribeCarrierGateways
    class DescribeCarrierGateways
    end

    # List Builder for CarrierGatewayIdSet
    class CarrierGatewayIdSet
    end

    # Operation Builder for DescribeClassicLinkInstances
    class DescribeClassicLinkInstances
    end

    # List Builder for InstanceIdStringList
    class InstanceIdStringList
    end

    # Operation Builder for DescribeClientVpnAuthorizationRules
    class DescribeClientVpnAuthorizationRules
    end

    # Operation Builder for DescribeClientVpnConnections
    class DescribeClientVpnConnections
    end

    # Operation Builder for DescribeClientVpnEndpoints
    class DescribeClientVpnEndpoints
    end

    # List Builder for ClientVpnEndpointIdList
    class ClientVpnEndpointIdList
    end

    # Operation Builder for DescribeClientVpnRoutes
    class DescribeClientVpnRoutes
    end

    # Operation Builder for DescribeClientVpnTargetNetworks
    class DescribeClientVpnTargetNetworks
    end

    # Operation Builder for DescribeCoipPools
    class DescribeCoipPools
    end

    # List Builder for CoipPoolIdSet
    class CoipPoolIdSet
    end

    # Operation Builder for DescribeConversionTasks
    class DescribeConversionTasks
    end

    # List Builder for ConversionIdStringList
    class ConversionIdStringList
    end

    # Operation Builder for DescribeCustomerGateways
    class DescribeCustomerGateways
    end

    # List Builder for CustomerGatewayIdStringList
    class CustomerGatewayIdStringList
    end

    # Operation Builder for DescribeDhcpOptions
    class DescribeDhcpOptions
    end

    # List Builder for DhcpOptionsIdStringList
    class DhcpOptionsIdStringList
    end

    # Operation Builder for DescribeEgressOnlyInternetGateways
    class DescribeEgressOnlyInternetGateways
    end

    # List Builder for EgressOnlyInternetGatewayIdList
    class EgressOnlyInternetGatewayIdList
    end

    # Operation Builder for DescribeElasticGpus
    class DescribeElasticGpus
    end

    # List Builder for ElasticGpuIdSet
    class ElasticGpuIdSet
    end

    # Operation Builder for DescribeExportImageTasks
    class DescribeExportImageTasks
    end

    # List Builder for ExportImageTaskIdList
    class ExportImageTaskIdList
    end

    # Operation Builder for DescribeExportTasks
    class DescribeExportTasks
    end

    # List Builder for ExportTaskIdStringList
    class ExportTaskIdStringList
    end

    # Operation Builder for DescribeFastSnapshotRestores
    class DescribeFastSnapshotRestores
    end

    # Operation Builder for DescribeFleetHistory
    class DescribeFleetHistory
    end

    # Operation Builder for DescribeFleetInstances
    class DescribeFleetInstances
    end

    # Operation Builder for DescribeFleets
    class DescribeFleets
    end

    # Operation Builder for DescribeFlowLogs
    class DescribeFlowLogs
    end

    # Operation Builder for DescribeFpgaImageAttribute
    class DescribeFpgaImageAttribute
    end

    # Operation Builder for DescribeFpgaImages
    class DescribeFpgaImages
    end

    # List Builder for OwnerStringList
    class OwnerStringList
    end

    # List Builder for FpgaImageIdList
    class FpgaImageIdList
    end

    # Operation Builder for DescribeHostReservationOfferings
    class DescribeHostReservationOfferings
    end

    # Operation Builder for DescribeHostReservations
    class DescribeHostReservations
    end

    # List Builder for HostReservationIdSet
    class HostReservationIdSet
    end

    # Operation Builder for DescribeHosts
    class DescribeHosts
    end

    # List Builder for RequestHostIdList
    class RequestHostIdList
    end

    # Operation Builder for DescribeIamInstanceProfileAssociations
    class DescribeIamInstanceProfileAssociations
    end

    # List Builder for AssociationIdList
    class AssociationIdList
    end

    # Operation Builder for DescribeIdFormat
    class DescribeIdFormat
    end

    # Operation Builder for DescribeIdentityIdFormat
    class DescribeIdentityIdFormat
    end

    # Operation Builder for DescribeImageAttribute
    class DescribeImageAttribute
    end

    # Operation Builder for DescribeImages
    class DescribeImages
    end

    # List Builder for ImageIdStringList
    class ImageIdStringList
    end

    # List Builder for ExecutableByStringList
    class ExecutableByStringList
    end

    # Operation Builder for DescribeImportImageTasks
    class DescribeImportImageTasks
    end

    # List Builder for ImportTaskIdList
    class ImportTaskIdList
    end

    # Operation Builder for DescribeImportSnapshotTasks
    class DescribeImportSnapshotTasks
    end

    # List Builder for ImportSnapshotTaskIdList
    class ImportSnapshotTaskIdList
    end

    # Operation Builder for DescribeInstanceAttribute
    class DescribeInstanceAttribute
    end

    # Operation Builder for DescribeInstanceCreditSpecifications
    class DescribeInstanceCreditSpecifications
    end

    # Operation Builder for DescribeInstanceEventNotificationAttributes
    class DescribeInstanceEventNotificationAttributes
    end

    # Operation Builder for DescribeInstanceEventWindows
    class DescribeInstanceEventWindows
    end

    # List Builder for InstanceEventWindowIdSet
    class InstanceEventWindowIdSet
    end

    # Operation Builder for DescribeInstanceStatus
    class DescribeInstanceStatus
    end

    # Operation Builder for DescribeInstanceTypeOfferings
    class DescribeInstanceTypeOfferings
    end

    # Operation Builder for DescribeInstanceTypes
    class DescribeInstanceTypes
    end

    # List Builder for RequestInstanceTypeList
    class RequestInstanceTypeList
    end

    # Operation Builder for DescribeInstances
    class DescribeInstances
    end

    # Operation Builder for DescribeInternetGateways
    class DescribeInternetGateways
    end

    # List Builder for InternetGatewayIdList
    class InternetGatewayIdList
    end

    # Operation Builder for DescribeIpamPools
    class DescribeIpamPools
    end

    # Operation Builder for DescribeIpamScopes
    class DescribeIpamScopes
    end

    # Operation Builder for DescribeIpams
    class DescribeIpams
    end

    # Operation Builder for DescribeIpv6Pools
    class DescribeIpv6Pools
    end

    # List Builder for Ipv6PoolIdList
    class Ipv6PoolIdList
    end

    # Operation Builder for DescribeKeyPairs
    class DescribeKeyPairs
    end

    # List Builder for KeyPairIdStringList
    class KeyPairIdStringList
    end

    # List Builder for KeyNameStringList
    class KeyNameStringList
    end

    # Operation Builder for DescribeLaunchTemplateVersions
    class DescribeLaunchTemplateVersions
    end

    # Operation Builder for DescribeLaunchTemplates
    class DescribeLaunchTemplates
    end

    # List Builder for LaunchTemplateNameStringList
    class LaunchTemplateNameStringList
    end

    # List Builder for LaunchTemplateIdStringList
    class LaunchTemplateIdStringList
    end

    # Operation Builder for DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
    class DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
    end

    # List Builder for LocalGatewayRouteTableVirtualInterfaceGroupAssociationIdSet
    class LocalGatewayRouteTableVirtualInterfaceGroupAssociationIdSet
    end

    # Operation Builder for DescribeLocalGatewayRouteTableVpcAssociations
    class DescribeLocalGatewayRouteTableVpcAssociations
    end

    # List Builder for LocalGatewayRouteTableVpcAssociationIdSet
    class LocalGatewayRouteTableVpcAssociationIdSet
    end

    # Operation Builder for DescribeLocalGatewayRouteTables
    class DescribeLocalGatewayRouteTables
    end

    # List Builder for LocalGatewayRouteTableIdSet
    class LocalGatewayRouteTableIdSet
    end

    # Operation Builder for DescribeLocalGatewayVirtualInterfaceGroups
    class DescribeLocalGatewayVirtualInterfaceGroups
    end

    # List Builder for LocalGatewayVirtualInterfaceGroupIdSet
    class LocalGatewayVirtualInterfaceGroupIdSet
    end

    # Operation Builder for DescribeLocalGatewayVirtualInterfaces
    class DescribeLocalGatewayVirtualInterfaces
    end

    # List Builder for LocalGatewayVirtualInterfaceIdSet
    class LocalGatewayVirtualInterfaceIdSet
    end

    # Operation Builder for DescribeLocalGateways
    class DescribeLocalGateways
    end

    # List Builder for LocalGatewayIdSet
    class LocalGatewayIdSet
    end

    # Operation Builder for DescribeManagedPrefixLists
    class DescribeManagedPrefixLists
    end

    # Operation Builder for DescribeMovingAddresses
    class DescribeMovingAddresses
    end

    # Operation Builder for DescribeNatGateways
    class DescribeNatGateways
    end

    # List Builder for NatGatewayIdStringList
    class NatGatewayIdStringList
    end

    # Operation Builder for DescribeNetworkAcls
    class DescribeNetworkAcls
    end

    # List Builder for NetworkAclIdStringList
    class NetworkAclIdStringList
    end

    # Operation Builder for DescribeNetworkInsightsAccessScopeAnalyses
    class DescribeNetworkInsightsAccessScopeAnalyses
    end

    # List Builder for NetworkInsightsAccessScopeAnalysisIdList
    class NetworkInsightsAccessScopeAnalysisIdList
    end

    # Operation Builder for DescribeNetworkInsightsAccessScopes
    class DescribeNetworkInsightsAccessScopes
    end

    # List Builder for NetworkInsightsAccessScopeIdList
    class NetworkInsightsAccessScopeIdList
    end

    # Operation Builder for DescribeNetworkInsightsAnalyses
    class DescribeNetworkInsightsAnalyses
    end

    # List Builder for NetworkInsightsAnalysisIdList
    class NetworkInsightsAnalysisIdList
    end

    # Operation Builder for DescribeNetworkInsightsPaths
    class DescribeNetworkInsightsPaths
    end

    # List Builder for NetworkInsightsPathIdList
    class NetworkInsightsPathIdList
    end

    # Operation Builder for DescribeNetworkInterfaceAttribute
    class DescribeNetworkInterfaceAttribute
    end

    # Operation Builder for DescribeNetworkInterfacePermissions
    class DescribeNetworkInterfacePermissions
    end

    # List Builder for NetworkInterfacePermissionIdList
    class NetworkInterfacePermissionIdList
    end

    # Operation Builder for DescribeNetworkInterfaces
    class DescribeNetworkInterfaces
    end

    # List Builder for NetworkInterfaceIdList
    class NetworkInterfaceIdList
    end

    # Operation Builder for DescribePlacementGroups
    class DescribePlacementGroups
    end

    # List Builder for PlacementGroupIdStringList
    class PlacementGroupIdStringList
    end

    # List Builder for PlacementGroupStringList
    class PlacementGroupStringList
    end

    # Operation Builder for DescribePrefixLists
    class DescribePrefixLists
    end

    # List Builder for PrefixListResourceIdStringList
    class PrefixListResourceIdStringList
    end

    # Operation Builder for DescribePrincipalIdFormat
    class DescribePrincipalIdFormat
    end

    # List Builder for ResourceList
    class ResourceList
    end

    # Operation Builder for DescribePublicIpv4Pools
    class DescribePublicIpv4Pools
    end

    # List Builder for PublicIpv4PoolIdStringList
    class PublicIpv4PoolIdStringList
    end

    # Operation Builder for DescribeRegions
    class DescribeRegions
    end

    # List Builder for RegionNameStringList
    class RegionNameStringList
    end

    # Operation Builder for DescribeReplaceRootVolumeTasks
    class DescribeReplaceRootVolumeTasks
    end

    # List Builder for ReplaceRootVolumeTaskIds
    class ReplaceRootVolumeTaskIds
    end

    # Operation Builder for DescribeReservedInstances
    class DescribeReservedInstances
    end

    # List Builder for ReservedInstancesIdStringList
    class ReservedInstancesIdStringList
    end

    # Operation Builder for DescribeReservedInstancesListings
    class DescribeReservedInstancesListings
    end

    # Operation Builder for DescribeReservedInstancesModifications
    class DescribeReservedInstancesModifications
    end

    # List Builder for ReservedInstancesModificationIdStringList
    class ReservedInstancesModificationIdStringList
    end

    # Operation Builder for DescribeReservedInstancesOfferings
    class DescribeReservedInstancesOfferings
    end

    # List Builder for ReservedInstancesOfferingIdStringList
    class ReservedInstancesOfferingIdStringList
    end

    # Operation Builder for DescribeRouteTables
    class DescribeRouteTables
    end

    # List Builder for RouteTableIdStringList
    class RouteTableIdStringList
    end

    # Operation Builder for DescribeScheduledInstanceAvailability
    class DescribeScheduledInstanceAvailability
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
    end

    # Structure Builder for SlotStartTimeRangeRequest
    class SlotStartTimeRangeRequest
    end

    # List Builder for ScheduledInstanceIdRequestSet
    class ScheduledInstanceIdRequestSet
    end

    # Operation Builder for DescribeSecurityGroupReferences
    class DescribeSecurityGroupReferences
    end

    # List Builder for GroupIds
    class GroupIds
    end

    # Operation Builder for DescribeSecurityGroupRules
    class DescribeSecurityGroupRules
    end

    # List Builder for SecurityGroupRuleIdList
    class SecurityGroupRuleIdList
    end

    # Operation Builder for DescribeSecurityGroups
    class DescribeSecurityGroups
    end

    # List Builder for GroupNameStringList
    class GroupNameStringList
    end

    # Operation Builder for DescribeSnapshotAttribute
    class DescribeSnapshotAttribute
    end

    # Operation Builder for DescribeSnapshotTierStatus
    class DescribeSnapshotTierStatus
    end

    # Operation Builder for DescribeSnapshots
    class DescribeSnapshots
    end

    # List Builder for SnapshotIdStringList
    class SnapshotIdStringList
    end

    # List Builder for RestorableByStringList
    class RestorableByStringList
    end

    # Operation Builder for DescribeSpotDatafeedSubscription
    class DescribeSpotDatafeedSubscription
    end

    # Operation Builder for DescribeSpotFleetInstances
    class DescribeSpotFleetInstances
    end

    # Operation Builder for DescribeSpotFleetRequestHistory
    class DescribeSpotFleetRequestHistory
    end

    # Operation Builder for DescribeSpotFleetRequests
    class DescribeSpotFleetRequests
    end

    # Operation Builder for DescribeSpotInstanceRequests
    class DescribeSpotInstanceRequests
    end

    # Operation Builder for DescribeSpotPriceHistory
    class DescribeSpotPriceHistory
    end

    # List Builder for ProductDescriptionList
    class ProductDescriptionList
    end

    # List Builder for InstanceTypeList
    class InstanceTypeList
    end

    # Operation Builder for DescribeStaleSecurityGroups
    class DescribeStaleSecurityGroups
    end

    # Operation Builder for DescribeStoreImageTasks
    class DescribeStoreImageTasks
    end

    # List Builder for ImageIdList
    class ImageIdList
    end

    # Operation Builder for DescribeSubnets
    class DescribeSubnets
    end

    # List Builder for SubnetIdStringList
    class SubnetIdStringList
    end

    # Operation Builder for DescribeTags
    class DescribeTags
    end

    # Operation Builder for DescribeTrafficMirrorFilters
    class DescribeTrafficMirrorFilters
    end

    # List Builder for TrafficMirrorFilterIdList
    class TrafficMirrorFilterIdList
    end

    # Operation Builder for DescribeTrafficMirrorSessions
    class DescribeTrafficMirrorSessions
    end

    # List Builder for TrafficMirrorSessionIdList
    class TrafficMirrorSessionIdList
    end

    # Operation Builder for DescribeTrafficMirrorTargets
    class DescribeTrafficMirrorTargets
    end

    # List Builder for TrafficMirrorTargetIdList
    class TrafficMirrorTargetIdList
    end

    # Operation Builder for DescribeTransitGatewayAttachments
    class DescribeTransitGatewayAttachments
    end

    # List Builder for TransitGatewayAttachmentIdStringList
    class TransitGatewayAttachmentIdStringList
    end

    # Operation Builder for DescribeTransitGatewayConnectPeers
    class DescribeTransitGatewayConnectPeers
    end

    # List Builder for TransitGatewayConnectPeerIdStringList
    class TransitGatewayConnectPeerIdStringList
    end

    # Operation Builder for DescribeTransitGatewayConnects
    class DescribeTransitGatewayConnects
    end

    # Operation Builder for DescribeTransitGatewayMulticastDomains
    class DescribeTransitGatewayMulticastDomains
    end

    # List Builder for TransitGatewayMulticastDomainIdStringList
    class TransitGatewayMulticastDomainIdStringList
    end

    # Operation Builder for DescribeTransitGatewayPeeringAttachments
    class DescribeTransitGatewayPeeringAttachments
    end

    # Operation Builder for DescribeTransitGatewayRouteTables
    class DescribeTransitGatewayRouteTables
    end

    # List Builder for TransitGatewayRouteTableIdStringList
    class TransitGatewayRouteTableIdStringList
    end

    # Operation Builder for DescribeTransitGatewayVpcAttachments
    class DescribeTransitGatewayVpcAttachments
    end

    # Operation Builder for DescribeTransitGateways
    class DescribeTransitGateways
    end

    # List Builder for TransitGatewayIdStringList
    class TransitGatewayIdStringList
    end

    # Operation Builder for DescribeTrunkInterfaceAssociations
    class DescribeTrunkInterfaceAssociations
    end

    # List Builder for TrunkInterfaceAssociationIdList
    class TrunkInterfaceAssociationIdList
    end

    # Operation Builder for DescribeVolumeAttribute
    class DescribeVolumeAttribute
    end

    # Operation Builder for DescribeVolumeStatus
    class DescribeVolumeStatus
    end

    # List Builder for VolumeIdStringList
    class VolumeIdStringList
    end

    # Operation Builder for DescribeVolumes
    class DescribeVolumes
    end

    # Operation Builder for DescribeVolumesModifications
    class DescribeVolumesModifications
    end

    # Operation Builder for DescribeVpcAttribute
    class DescribeVpcAttribute
    end

    # Operation Builder for DescribeVpcClassicLink
    class DescribeVpcClassicLink
    end

    # List Builder for VpcClassicLinkIdList
    class VpcClassicLinkIdList
    end

    # Operation Builder for DescribeVpcClassicLinkDnsSupport
    class DescribeVpcClassicLinkDnsSupport
    end

    # Operation Builder for DescribeVpcEndpointConnectionNotifications
    class DescribeVpcEndpointConnectionNotifications
    end

    # Operation Builder for DescribeVpcEndpointConnections
    class DescribeVpcEndpointConnections
    end

    # Operation Builder for DescribeVpcEndpointServiceConfigurations
    class DescribeVpcEndpointServiceConfigurations
    end

    # Operation Builder for DescribeVpcEndpointServicePermissions
    class DescribeVpcEndpointServicePermissions
    end

    # Operation Builder for DescribeVpcEndpointServices
    class DescribeVpcEndpointServices
    end

    # Operation Builder for DescribeVpcEndpoints
    class DescribeVpcEndpoints
    end

    # Operation Builder for DescribeVpcPeeringConnections
    class DescribeVpcPeeringConnections
    end

    # List Builder for VpcPeeringConnectionIdList
    class VpcPeeringConnectionIdList
    end

    # Operation Builder for DescribeVpcs
    class DescribeVpcs
    end

    # List Builder for VpcIdStringList
    class VpcIdStringList
    end

    # Operation Builder for DescribeVpnConnections
    class DescribeVpnConnections
    end

    # List Builder for VpnConnectionIdStringList
    class VpnConnectionIdStringList
    end

    # Operation Builder for DescribeVpnGateways
    class DescribeVpnGateways
    end

    # List Builder for VpnGatewayIdStringList
    class VpnGatewayIdStringList
    end

    # Operation Builder for DetachClassicLinkVpc
    class DetachClassicLinkVpc
    end

    # Operation Builder for DetachInternetGateway
    class DetachInternetGateway
    end

    # Operation Builder for DetachNetworkInterface
    class DetachNetworkInterface
    end

    # Operation Builder for DetachVolume
    class DetachVolume
    end

    # Operation Builder for DetachVpnGateway
    class DetachVpnGateway
    end

    # Operation Builder for DisableEbsEncryptionByDefault
    class DisableEbsEncryptionByDefault
    end

    # Operation Builder for DisableFastSnapshotRestores
    class DisableFastSnapshotRestores
    end

    # List Builder for AvailabilityZoneStringList
    class AvailabilityZoneStringList
    end

    # Operation Builder for DisableImageDeprecation
    class DisableImageDeprecation
    end

    # Operation Builder for DisableIpamOrganizationAdminAccount
    class DisableIpamOrganizationAdminAccount
    end

    # Operation Builder for DisableSerialConsoleAccess
    class DisableSerialConsoleAccess
    end

    # Operation Builder for DisableTransitGatewayRouteTablePropagation
    class DisableTransitGatewayRouteTablePropagation
    end

    # Operation Builder for DisableVgwRoutePropagation
    class DisableVgwRoutePropagation
    end

    # Operation Builder for DisableVpcClassicLink
    class DisableVpcClassicLink
    end

    # Operation Builder for DisableVpcClassicLinkDnsSupport
    class DisableVpcClassicLinkDnsSupport
    end

    # Operation Builder for DisassociateAddress
    class DisassociateAddress
    end

    # Operation Builder for DisassociateClientVpnTargetNetwork
    class DisassociateClientVpnTargetNetwork
    end

    # Operation Builder for DisassociateEnclaveCertificateIamRole
    class DisassociateEnclaveCertificateIamRole
    end

    # Operation Builder for DisassociateIamInstanceProfile
    class DisassociateIamInstanceProfile
    end

    # Operation Builder for DisassociateInstanceEventWindow
    class DisassociateInstanceEventWindow
    end

    # Structure Builder for InstanceEventWindowDisassociationRequest
    class InstanceEventWindowDisassociationRequest
    end

    # Operation Builder for DisassociateRouteTable
    class DisassociateRouteTable
    end

    # Operation Builder for DisassociateSubnetCidrBlock
    class DisassociateSubnetCidrBlock
    end

    # Operation Builder for DisassociateTransitGatewayMulticastDomain
    class DisassociateTransitGatewayMulticastDomain
    end

    # Operation Builder for DisassociateTransitGatewayRouteTable
    class DisassociateTransitGatewayRouteTable
    end

    # Operation Builder for DisassociateTrunkInterface
    class DisassociateTrunkInterface
    end

    # Operation Builder for DisassociateVpcCidrBlock
    class DisassociateVpcCidrBlock
    end

    # Operation Builder for EnableEbsEncryptionByDefault
    class EnableEbsEncryptionByDefault
    end

    # Operation Builder for EnableFastSnapshotRestores
    class EnableFastSnapshotRestores
    end

    # Operation Builder for EnableImageDeprecation
    class EnableImageDeprecation
    end

    # Operation Builder for EnableIpamOrganizationAdminAccount
    class EnableIpamOrganizationAdminAccount
    end

    # Operation Builder for EnableSerialConsoleAccess
    class EnableSerialConsoleAccess
    end

    # Operation Builder for EnableTransitGatewayRouteTablePropagation
    class EnableTransitGatewayRouteTablePropagation
    end

    # Operation Builder for EnableVgwRoutePropagation
    class EnableVgwRoutePropagation
    end

    # Operation Builder for EnableVolumeIO
    class EnableVolumeIO
    end

    # Operation Builder for EnableVpcClassicLink
    class EnableVpcClassicLink
    end

    # Operation Builder for EnableVpcClassicLinkDnsSupport
    class EnableVpcClassicLinkDnsSupport
    end

    # Operation Builder for ExportClientVpnClientCertificateRevocationList
    class ExportClientVpnClientCertificateRevocationList
    end

    # Operation Builder for ExportClientVpnClientConfiguration
    class ExportClientVpnClientConfiguration
    end

    # Operation Builder for ExportImage
    class ExportImage
    end

    # Structure Builder for ExportTaskS3LocationRequest
    class ExportTaskS3LocationRequest
    end

    # Operation Builder for ExportTransitGatewayRoutes
    class ExportTransitGatewayRoutes
    end

    # Operation Builder for GetAssociatedEnclaveCertificateIamRoles
    class GetAssociatedEnclaveCertificateIamRoles
    end

    # Operation Builder for GetAssociatedIpv6PoolCidrs
    class GetAssociatedIpv6PoolCidrs
    end

    # Operation Builder for GetCapacityReservationUsage
    class GetCapacityReservationUsage
    end

    # Operation Builder for GetCoipPoolUsage
    class GetCoipPoolUsage
    end

    # Operation Builder for GetConsoleOutput
    class GetConsoleOutput
    end

    # Operation Builder for GetConsoleScreenshot
    class GetConsoleScreenshot
    end

    # Operation Builder for GetDefaultCreditSpecification
    class GetDefaultCreditSpecification
    end

    # Operation Builder for GetEbsDefaultKmsKeyId
    class GetEbsDefaultKmsKeyId
    end

    # Operation Builder for GetEbsEncryptionByDefault
    class GetEbsEncryptionByDefault
    end

    # Operation Builder for GetFlowLogsIntegrationTemplate
    class GetFlowLogsIntegrationTemplate
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
    end

    # Operation Builder for GetHostReservationPurchasePreview
    class GetHostReservationPurchasePreview
    end

    # List Builder for RequestHostIdSet
    class RequestHostIdSet
    end

    # Operation Builder for GetInstanceTypesFromInstanceRequirements
    class GetInstanceTypesFromInstanceRequirements
    end

    # List Builder for VirtualizationTypeSet
    class VirtualizationTypeSet
    end

    # List Builder for ArchitectureTypeSet
    class ArchitectureTypeSet
    end

    # Operation Builder for GetIpamAddressHistory
    class GetIpamAddressHistory
    end

    # Operation Builder for GetIpamPoolAllocations
    class GetIpamPoolAllocations
    end

    # Operation Builder for GetIpamPoolCidrs
    class GetIpamPoolCidrs
    end

    # Operation Builder for GetIpamResourceCidrs
    class GetIpamResourceCidrs
    end

    # Operation Builder for GetLaunchTemplateData
    class GetLaunchTemplateData
    end

    # Operation Builder for GetManagedPrefixListAssociations
    class GetManagedPrefixListAssociations
    end

    # Operation Builder for GetManagedPrefixListEntries
    class GetManagedPrefixListEntries
    end

    # Operation Builder for GetNetworkInsightsAccessScopeAnalysisFindings
    class GetNetworkInsightsAccessScopeAnalysisFindings
    end

    # Operation Builder for GetNetworkInsightsAccessScopeContent
    class GetNetworkInsightsAccessScopeContent
    end

    # Operation Builder for GetPasswordData
    class GetPasswordData
    end

    # Operation Builder for GetReservedInstancesExchangeQuote
    class GetReservedInstancesExchangeQuote
    end

    # Operation Builder for GetSerialConsoleAccessStatus
    class GetSerialConsoleAccessStatus
    end

    # Operation Builder for GetSpotPlacementScores
    class GetSpotPlacementScores
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
    end

    # Operation Builder for GetTransitGatewayAttachmentPropagations
    class GetTransitGatewayAttachmentPropagations
    end

    # Operation Builder for GetTransitGatewayMulticastDomainAssociations
    class GetTransitGatewayMulticastDomainAssociations
    end

    # Operation Builder for GetTransitGatewayPrefixListReferences
    class GetTransitGatewayPrefixListReferences
    end

    # Operation Builder for GetTransitGatewayRouteTableAssociations
    class GetTransitGatewayRouteTableAssociations
    end

    # Operation Builder for GetTransitGatewayRouteTablePropagations
    class GetTransitGatewayRouteTablePropagations
    end

    # Operation Builder for GetVpnConnectionDeviceSampleConfiguration
    class GetVpnConnectionDeviceSampleConfiguration
    end

    # Operation Builder for GetVpnConnectionDeviceTypes
    class GetVpnConnectionDeviceTypes
    end

    # Operation Builder for ImportClientVpnClientCertificateRevocationList
    class ImportClientVpnClientCertificateRevocationList
    end

    # Operation Builder for ImportImage
    class ImportImage
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
    end

    # Operation Builder for ImportSnapshot
    class ImportSnapshot
    end

    # Structure Builder for SnapshotDiskContainer
    class SnapshotDiskContainer
    end

    # Operation Builder for ImportVolume
    class ImportVolume
    end

    # Operation Builder for ListSnapshotsInRecycleBin
    class ListSnapshotsInRecycleBin
    end

    # Operation Builder for ModifyAddressAttribute
    class ModifyAddressAttribute
    end

    # Operation Builder for ModifyAvailabilityZoneGroup
    class ModifyAvailabilityZoneGroup
    end

    # Operation Builder for ModifyCapacityReservation
    class ModifyCapacityReservation
    end

    # Operation Builder for ModifyCapacityReservationFleet
    class ModifyCapacityReservationFleet
    end

    # Operation Builder for ModifyClientVpnEndpoint
    class ModifyClientVpnEndpoint
    end

    # Structure Builder for DnsServersOptionsModifyStructure
    class DnsServersOptionsModifyStructure
    end

    # Operation Builder for ModifyDefaultCreditSpecification
    class ModifyDefaultCreditSpecification
    end

    # Operation Builder for ModifyEbsDefaultKmsKeyId
    class ModifyEbsDefaultKmsKeyId
    end

    # Operation Builder for ModifyFleet
    class ModifyFleet
    end

    # Operation Builder for ModifyFpgaImageAttribute
    class ModifyFpgaImageAttribute
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
    end

    # Operation Builder for ModifyIdFormat
    class ModifyIdFormat
    end

    # Operation Builder for ModifyIdentityIdFormat
    class ModifyIdentityIdFormat
    end

    # Operation Builder for ModifyImageAttribute
    class ModifyImageAttribute
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
    end

    # Structure Builder for CapacityReservationSpecification
    class CapacityReservationSpecification
    end

    # Operation Builder for ModifyInstanceCreditSpecification
    class ModifyInstanceCreditSpecification
    end

    # List Builder for InstanceCreditSpecificationListRequest
    class InstanceCreditSpecificationListRequest
    end

    # Structure Builder for InstanceCreditSpecificationRequest
    class InstanceCreditSpecificationRequest
    end

    # Operation Builder for ModifyInstanceEventStartTime
    class ModifyInstanceEventStartTime
    end

    # Operation Builder for ModifyInstanceEventWindow
    class ModifyInstanceEventWindow
    end

    # Operation Builder for ModifyInstanceMetadataOptions
    class ModifyInstanceMetadataOptions
    end

    # Operation Builder for ModifyInstancePlacement
    class ModifyInstancePlacement
    end

    # Operation Builder for ModifyIpam
    class ModifyIpam
    end

    # List Builder for RemoveIpamOperatingRegionSet
    class RemoveIpamOperatingRegionSet
    end

    # Structure Builder for RemoveIpamOperatingRegion
    class RemoveIpamOperatingRegion
    end

    # Operation Builder for ModifyIpamPool
    class ModifyIpamPool
    end

    # Operation Builder for ModifyIpamResourceCidr
    class ModifyIpamResourceCidr
    end

    # Operation Builder for ModifyIpamScope
    class ModifyIpamScope
    end

    # Operation Builder for ModifyLaunchTemplate
    class ModifyLaunchTemplate
    end

    # Operation Builder for ModifyManagedPrefixList
    class ModifyManagedPrefixList
    end

    # List Builder for RemovePrefixListEntries
    class RemovePrefixListEntries
    end

    # Structure Builder for RemovePrefixListEntry
    class RemovePrefixListEntry
    end

    # Operation Builder for ModifyNetworkInterfaceAttribute
    class ModifyNetworkInterfaceAttribute
    end

    # Structure Builder for NetworkInterfaceAttachmentChanges
    class NetworkInterfaceAttachmentChanges
    end

    # Operation Builder for ModifyPrivateDnsNameOptions
    class ModifyPrivateDnsNameOptions
    end

    # Operation Builder for ModifyReservedInstances
    class ModifyReservedInstances
    end

    # List Builder for ReservedInstancesConfigurationList
    class ReservedInstancesConfigurationList
    end

    # Structure Builder for ReservedInstancesConfiguration
    class ReservedInstancesConfiguration
    end

    # Operation Builder for ModifySecurityGroupRules
    class ModifySecurityGroupRules
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
    end

    # Operation Builder for ModifySpotFleetRequest
    class ModifySpotFleetRequest
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
    end

    # Operation Builder for ModifyTrafficMirrorFilterNetworkServices
    class ModifyTrafficMirrorFilterNetworkServices
    end

    # List Builder for TrafficMirrorNetworkServiceList
    class TrafficMirrorNetworkServiceList
    end

    # Operation Builder for ModifyTrafficMirrorFilterRule
    class ModifyTrafficMirrorFilterRule
    end

    # List Builder for TrafficMirrorFilterRuleFieldList
    class TrafficMirrorFilterRuleFieldList
    end

    # Operation Builder for ModifyTrafficMirrorSession
    class ModifyTrafficMirrorSession
    end

    # List Builder for TrafficMirrorSessionFieldList
    class TrafficMirrorSessionFieldList
    end

    # Operation Builder for ModifyTransitGateway
    class ModifyTransitGateway
    end

    # Structure Builder for ModifyTransitGatewayOptions
    class ModifyTransitGatewayOptions
    end

    # Operation Builder for ModifyTransitGatewayPrefixListReference
    class ModifyTransitGatewayPrefixListReference
    end

    # Operation Builder for ModifyTransitGatewayVpcAttachment
    class ModifyTransitGatewayVpcAttachment
    end

    # Structure Builder for ModifyTransitGatewayVpcAttachmentRequestOptions
    class ModifyTransitGatewayVpcAttachmentRequestOptions
    end

    # Operation Builder for ModifyVolume
    class ModifyVolume
    end

    # Operation Builder for ModifyVolumeAttribute
    class ModifyVolumeAttribute
    end

    # Operation Builder for ModifyVpcAttribute
    class ModifyVpcAttribute
    end

    # Operation Builder for ModifyVpcEndpoint
    class ModifyVpcEndpoint
    end

    # Operation Builder for ModifyVpcEndpointConnectionNotification
    class ModifyVpcEndpointConnectionNotification
    end

    # Operation Builder for ModifyVpcEndpointServiceConfiguration
    class ModifyVpcEndpointServiceConfiguration
    end

    # Operation Builder for ModifyVpcEndpointServicePayerResponsibility
    class ModifyVpcEndpointServicePayerResponsibility
    end

    # Operation Builder for ModifyVpcEndpointServicePermissions
    class ModifyVpcEndpointServicePermissions
    end

    # Operation Builder for ModifyVpcPeeringConnectionOptions
    class ModifyVpcPeeringConnectionOptions
    end

    # Structure Builder for PeeringConnectionOptionsRequest
    class PeeringConnectionOptionsRequest
    end

    # Operation Builder for ModifyVpcTenancy
    class ModifyVpcTenancy
    end

    # Operation Builder for ModifyVpnConnection
    class ModifyVpnConnection
    end

    # Operation Builder for ModifyVpnConnectionOptions
    class ModifyVpnConnectionOptions
    end

    # Operation Builder for ModifyVpnTunnelCertificate
    class ModifyVpnTunnelCertificate
    end

    # Operation Builder for ModifyVpnTunnelOptions
    class ModifyVpnTunnelOptions
    end

    # Structure Builder for ModifyVpnTunnelOptionsSpecification
    class ModifyVpnTunnelOptionsSpecification
    end

    # Operation Builder for MonitorInstances
    class MonitorInstances
    end

    # Operation Builder for MoveAddressToVpc
    class MoveAddressToVpc
    end

    # Operation Builder for MoveByoipCidrToIpam
    class MoveByoipCidrToIpam
    end

    # Operation Builder for ProvisionByoipCidr
    class ProvisionByoipCidr
    end

    # Structure Builder for CidrAuthorizationContext
    class CidrAuthorizationContext
    end

    # Operation Builder for ProvisionIpamPoolCidr
    class ProvisionIpamPoolCidr
    end

    # Structure Builder for IpamCidrAuthorizationContext
    class IpamCidrAuthorizationContext
    end

    # Operation Builder for ProvisionPublicIpv4PoolCidr
    class ProvisionPublicIpv4PoolCidr
    end

    # Operation Builder for PurchaseHostReservation
    class PurchaseHostReservation
    end

    # Operation Builder for PurchaseReservedInstancesOffering
    class PurchaseReservedInstancesOffering
    end

    # Structure Builder for ReservedInstanceLimitPrice
    class ReservedInstanceLimitPrice
    end

    # Operation Builder for PurchaseScheduledInstances
    class PurchaseScheduledInstances
    end

    # List Builder for PurchaseRequestSet
    class PurchaseRequestSet
    end

    # Structure Builder for PurchaseRequest
    class PurchaseRequest
    end

    # Operation Builder for RebootInstances
    class RebootInstances
    end

    # Operation Builder for RegisterImage
    class RegisterImage
    end

    # List Builder for BillingProductList
    class BillingProductList
    end

    # Operation Builder for RegisterInstanceEventNotificationAttributes
    class RegisterInstanceEventNotificationAttributes
    end

    # Structure Builder for RegisterInstanceTagAttributeRequest
    class RegisterInstanceTagAttributeRequest
    end

    # Operation Builder for RegisterTransitGatewayMulticastGroupMembers
    class RegisterTransitGatewayMulticastGroupMembers
    end

    # Operation Builder for RegisterTransitGatewayMulticastGroupSources
    class RegisterTransitGatewayMulticastGroupSources
    end

    # Operation Builder for RejectTransitGatewayMulticastDomainAssociations
    class RejectTransitGatewayMulticastDomainAssociations
    end

    # Operation Builder for RejectTransitGatewayPeeringAttachment
    class RejectTransitGatewayPeeringAttachment
    end

    # Operation Builder for RejectTransitGatewayVpcAttachment
    class RejectTransitGatewayVpcAttachment
    end

    # Operation Builder for RejectVpcEndpointConnections
    class RejectVpcEndpointConnections
    end

    # Operation Builder for RejectVpcPeeringConnection
    class RejectVpcPeeringConnection
    end

    # Operation Builder for ReleaseAddress
    class ReleaseAddress
    end

    # Operation Builder for ReleaseHosts
    class ReleaseHosts
    end

    # Operation Builder for ReleaseIpamPoolAllocation
    class ReleaseIpamPoolAllocation
    end

    # Operation Builder for ReplaceIamInstanceProfileAssociation
    class ReplaceIamInstanceProfileAssociation
    end

    # Operation Builder for ReplaceNetworkAclAssociation
    class ReplaceNetworkAclAssociation
    end

    # Operation Builder for ReplaceNetworkAclEntry
    class ReplaceNetworkAclEntry
    end

    # Operation Builder for ReplaceRoute
    class ReplaceRoute
    end

    # Operation Builder for ReplaceRouteTableAssociation
    class ReplaceRouteTableAssociation
    end

    # Operation Builder for ReplaceTransitGatewayRoute
    class ReplaceTransitGatewayRoute
    end

    # Operation Builder for ReportInstanceStatus
    class ReportInstanceStatus
    end

    # List Builder for ReasonCodesList
    class ReasonCodesList
    end

    # Operation Builder for RequestSpotFleet
    class RequestSpotFleet
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
    end

    # Operation Builder for ResetEbsDefaultKmsKeyId
    class ResetEbsDefaultKmsKeyId
    end

    # Operation Builder for ResetFpgaImageAttribute
    class ResetFpgaImageAttribute
    end

    # Operation Builder for ResetImageAttribute
    class ResetImageAttribute
    end

    # Operation Builder for ResetInstanceAttribute
    class ResetInstanceAttribute
    end

    # Operation Builder for ResetNetworkInterfaceAttribute
    class ResetNetworkInterfaceAttribute
    end

    # Operation Builder for ResetSnapshotAttribute
    class ResetSnapshotAttribute
    end

    # Operation Builder for RestoreAddressToClassic
    class RestoreAddressToClassic
    end

    # Operation Builder for RestoreManagedPrefixListVersion
    class RestoreManagedPrefixListVersion
    end

    # Operation Builder for RestoreSnapshotFromRecycleBin
    class RestoreSnapshotFromRecycleBin
    end

    # Operation Builder for RestoreSnapshotTier
    class RestoreSnapshotTier
    end

    # Operation Builder for RevokeClientVpnIngress
    class RevokeClientVpnIngress
    end

    # Operation Builder for RevokeSecurityGroupEgress
    class RevokeSecurityGroupEgress
    end

    # Operation Builder for RevokeSecurityGroupIngress
    class RevokeSecurityGroupIngress
    end

    # Operation Builder for RunInstances
    class RunInstances
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
    end

    # Operation Builder for SearchTransitGatewayMulticastGroups
    class SearchTransitGatewayMulticastGroups
    end

    # Operation Builder for SearchTransitGatewayRoutes
    class SearchTransitGatewayRoutes
    end

    # Operation Builder for SendDiagnosticInterrupt
    class SendDiagnosticInterrupt
    end

    # Operation Builder for StartInstances
    class StartInstances
    end

    # Operation Builder for StartNetworkInsightsAccessScopeAnalysis
    class StartNetworkInsightsAccessScopeAnalysis
    end

    # Operation Builder for StartNetworkInsightsAnalysis
    class StartNetworkInsightsAnalysis
    end

    # List Builder for ArnList
    class ArnList
    end

    # Operation Builder for StartVpcEndpointServicePrivateDnsVerification
    class StartVpcEndpointServicePrivateDnsVerification
    end

    # Operation Builder for StopInstances
    class StopInstances
    end

    # Operation Builder for TerminateClientVpnConnections
    class TerminateClientVpnConnections
    end

    # Operation Builder for TerminateInstances
    class TerminateInstances
    end

    # Operation Builder for UnassignIpv6Addresses
    class UnassignIpv6Addresses
    end

    # Operation Builder for UnassignPrivateIpAddresses
    class UnassignPrivateIpAddresses
    end

    # Operation Builder for UnmonitorInstances
    class UnmonitorInstances
    end

    # Operation Builder for UpdateSecurityGroupRuleDescriptionsEgress
    class UpdateSecurityGroupRuleDescriptionsEgress
    end

    # List Builder for SecurityGroupRuleDescriptionList
    class SecurityGroupRuleDescriptionList
    end

    # Structure Builder for SecurityGroupRuleDescription
    class SecurityGroupRuleDescription
    end

    # Operation Builder for UpdateSecurityGroupRuleDescriptionsIngress
    class UpdateSecurityGroupRuleDescriptionsIngress
    end

    # Operation Builder for WithdrawByoipCidr
    class WithdrawByoipCidr
    end
  end
end
