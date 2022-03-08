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
    end

    # Operation Parser for AcceptTransitGatewayMulticastDomainAssociations
    class AcceptTransitGatewayMulticastDomainAssociations
    end

    class TransitGatewayMulticastDomainAssociations
    end

    class SubnetAssociationList
    end

    class SubnetAssociation
    end

    # Operation Parser for AcceptTransitGatewayPeeringAttachment
    class AcceptTransitGatewayPeeringAttachment
    end

    class TransitGatewayPeeringAttachment
    end

    class TagList
    end

    class Tag
    end

    class PeeringAttachmentStatus
    end

    class PeeringTgwInfo
    end

    # Operation Parser for AcceptTransitGatewayVpcAttachment
    class AcceptTransitGatewayVpcAttachment
    end

    class TransitGatewayVpcAttachment
    end

    class TransitGatewayVpcAttachmentOptions
    end

    class ValueStringList
    end

    # Operation Parser for AcceptVpcEndpointConnections
    class AcceptVpcEndpointConnections
    end

    class UnsuccessfulItemSet
    end

    class UnsuccessfulItem
    end

    class UnsuccessfulItemError
    end

    # Operation Parser for AcceptVpcPeeringConnection
    class AcceptVpcPeeringConnection
    end

    class VpcPeeringConnection
    end

    class VpcPeeringConnectionStateReason
    end

    class VpcPeeringConnectionVpcInfo
    end

    class VpcPeeringConnectionOptionsDescription
    end

    class CidrBlockSet
    end

    class CidrBlock
    end

    class Ipv6CidrBlockSet
    end

    class Ipv6CidrBlock
    end

    # Operation Parser for AdvertiseByoipCidr
    class AdvertiseByoipCidr
    end

    class ByoipCidr
    end

    # Operation Parser for AllocateAddress
    class AllocateAddress
    end

    # Operation Parser for AllocateHosts
    class AllocateHosts
    end

    class ResponseHostIdList
    end

    # Operation Parser for AllocateIpamPoolCidr
    class AllocateIpamPoolCidr
    end

    class IpamPoolAllocation
    end

    # Operation Parser for ApplySecurityGroupsToClientVpnTargetNetwork
    class ApplySecurityGroupsToClientVpnTargetNetwork
    end

    class ClientVpnSecurityGroupIdSet
    end

    # Operation Parser for AssignIpv6Addresses
    class AssignIpv6Addresses
    end

    class IpPrefixList
    end

    class Ipv6AddressList
    end

    # Operation Parser for AssignPrivateIpAddresses
    class AssignPrivateIpAddresses
    end

    class Ipv4PrefixesList
    end

    class Ipv4PrefixSpecification
    end

    class AssignedPrivateIpAddressList
    end

    class AssignedPrivateIpAddress
    end

    # Operation Parser for AssociateAddress
    class AssociateAddress
    end

    # Operation Parser for AssociateClientVpnTargetNetwork
    class AssociateClientVpnTargetNetwork
    end

    class AssociationStatus
    end

    # Operation Parser for AssociateDhcpOptions
    class AssociateDhcpOptions
    end

    # Operation Parser for AssociateEnclaveCertificateIamRole
    class AssociateEnclaveCertificateIamRole
    end

    # Operation Parser for AssociateIamInstanceProfile
    class AssociateIamInstanceProfile
    end

    class IamInstanceProfileAssociation
    end

    class IamInstanceProfile
    end

    # Operation Parser for AssociateInstanceEventWindow
    class AssociateInstanceEventWindow
    end

    class InstanceEventWindow
    end

    class InstanceEventWindowAssociationTarget
    end

    class DedicatedHostIdList
    end

    class InstanceIdList
    end

    class InstanceEventWindowTimeRangeList
    end

    class InstanceEventWindowTimeRange
    end

    # Operation Parser for AssociateRouteTable
    class AssociateRouteTable
    end

    class RouteTableAssociationState
    end

    # Operation Parser for AssociateSubnetCidrBlock
    class AssociateSubnetCidrBlock
    end

    class SubnetIpv6CidrBlockAssociation
    end

    class SubnetCidrBlockState
    end

    # Operation Parser for AssociateTransitGatewayMulticastDomain
    class AssociateTransitGatewayMulticastDomain
    end

    # Operation Parser for AssociateTransitGatewayRouteTable
    class AssociateTransitGatewayRouteTable
    end

    class TransitGatewayAssociation
    end

    # Operation Parser for AssociateTrunkInterface
    class AssociateTrunkInterface
    end

    class TrunkInterfaceAssociation
    end

    # Operation Parser for AssociateVpcCidrBlock
    class AssociateVpcCidrBlock
    end

    class VpcCidrBlockAssociation
    end

    class VpcCidrBlockState
    end

    class VpcIpv6CidrBlockAssociation
    end

    # Operation Parser for AttachClassicLinkVpc
    class AttachClassicLinkVpc
    end

    # Operation Parser for AttachInternetGateway
    class AttachInternetGateway
    end

    # Operation Parser for AttachNetworkInterface
    class AttachNetworkInterface
    end

    # Operation Parser for AttachVolume
    class AttachVolume
    end

    # Operation Parser for AttachVpnGateway
    class AttachVpnGateway
    end

    class VpcAttachment
    end

    # Operation Parser for AuthorizeClientVpnIngress
    class AuthorizeClientVpnIngress
    end

    class ClientVpnAuthorizationRuleStatus
    end

    # Operation Parser for AuthorizeSecurityGroupEgress
    class AuthorizeSecurityGroupEgress
    end

    class SecurityGroupRuleList
    end

    class SecurityGroupRule
    end

    class ReferencedSecurityGroup
    end

    # Operation Parser for AuthorizeSecurityGroupIngress
    class AuthorizeSecurityGroupIngress
    end

    # Operation Parser for BundleInstance
    class BundleInstance
    end

    class BundleTask
    end

    class Storage
    end

    class S3Storage
    end

    class BundleTaskError
    end

    # Operation Parser for CancelBundleTask
    class CancelBundleTask
    end

    # Operation Parser for CancelCapacityReservation
    class CancelCapacityReservation
    end

    # Operation Parser for CancelCapacityReservationFleets
    class CancelCapacityReservationFleets
    end

    class FailedCapacityReservationFleetCancellationResultSet
    end

    class FailedCapacityReservationFleetCancellationResult
    end

    class CancelCapacityReservationFleetError
    end

    class CapacityReservationFleetCancellationStateSet
    end

    class CapacityReservationFleetCancellationState
    end

    # Operation Parser for CancelConversionTask
    class CancelConversionTask
    end

    # Operation Parser for CancelExportTask
    class CancelExportTask
    end

    # Operation Parser for CancelImportTask
    class CancelImportTask
    end

    # Operation Parser for CancelReservedInstancesListing
    class CancelReservedInstancesListing
    end

    class ReservedInstancesListingList
    end

    class ReservedInstancesListing
    end

    class PriceScheduleList
    end

    class PriceSchedule
    end

    class InstanceCountList
    end

    class InstanceCount
    end

    # Operation Parser for CancelSpotFleetRequests
    class CancelSpotFleetRequests
    end

    class CancelSpotFleetRequestsErrorSet
    end

    class CancelSpotFleetRequestsErrorItem
    end

    class CancelSpotFleetRequestsError
    end

    class CancelSpotFleetRequestsSuccessSet
    end

    class CancelSpotFleetRequestsSuccessItem
    end

    # Operation Parser for CancelSpotInstanceRequests
    class CancelSpotInstanceRequests
    end

    class CancelledSpotInstanceRequestList
    end

    class CancelledSpotInstanceRequest
    end

    # Operation Parser for ConfirmProductInstance
    class ConfirmProductInstance
    end

    # Operation Parser for CopyFpgaImage
    class CopyFpgaImage
    end

    # Operation Parser for CopyImage
    class CopyImage
    end

    # Operation Parser for CopySnapshot
    class CopySnapshot
    end

    # Operation Parser for CreateCapacityReservation
    class CreateCapacityReservation
    end

    class CapacityReservation
    end

    # Operation Parser for CreateCapacityReservationFleet
    class CreateCapacityReservationFleet
    end

    class FleetCapacityReservationSet
    end

    class FleetCapacityReservation
    end

    # Operation Parser for CreateCarrierGateway
    class CreateCarrierGateway
    end

    class CarrierGateway
    end

    # Operation Parser for CreateClientVpnEndpoint
    class CreateClientVpnEndpoint
    end

    class ClientVpnEndpointStatus
    end

    # Operation Parser for CreateClientVpnRoute
    class CreateClientVpnRoute
    end

    class ClientVpnRouteStatus
    end

    # Operation Parser for CreateCustomerGateway
    class CreateCustomerGateway
    end

    class CustomerGateway
    end

    # Operation Parser for CreateDefaultSubnet
    class CreateDefaultSubnet
    end

    class Subnet
    end

    class PrivateDnsNameOptionsOnLaunch
    end

    class SubnetIpv6CidrBlockAssociationSet
    end

    # Operation Parser for CreateDefaultVpc
    class CreateDefaultVpc
    end

    class Vpc
    end

    class VpcCidrBlockAssociationSet
    end

    class VpcIpv6CidrBlockAssociationSet
    end

    # Operation Parser for CreateDhcpOptions
    class CreateDhcpOptions
    end

    class DhcpOptions
    end

    class DhcpConfigurationList
    end

    class DhcpConfiguration
    end

    class DhcpConfigurationValueList
    end

    class AttributeValue
    end

    # Operation Parser for CreateEgressOnlyInternetGateway
    class CreateEgressOnlyInternetGateway
    end

    class EgressOnlyInternetGateway
    end

    class InternetGatewayAttachmentList
    end

    class InternetGatewayAttachment
    end

    # Operation Parser for CreateFleet
    class CreateFleet
    end

    class CreateFleetInstancesSet
    end

    class CreateFleetInstance
    end

    class InstanceIdsSet
    end

    class LaunchTemplateAndOverridesResponse
    end

    class FleetLaunchTemplateOverrides
    end

    class InstanceRequirements
    end

    class AcceleratorTotalMemoryMiB
    end

    class AcceleratorNameSet
    end

    class AcceleratorManufacturerSet
    end

    class AcceleratorCount
    end

    class AcceleratorTypeSet
    end

    class BaselineEbsBandwidthMbps
    end

    class TotalLocalStorageGB
    end

    class LocalStorageTypeSet
    end

    class NetworkInterfaceCount
    end

    class InstanceGenerationSet
    end

    class ExcludedInstanceTypeSet
    end

    class MemoryGiBPerVCpu
    end

    class CpuManufacturerSet
    end

    class MemoryMiB
    end

    class VCpuCountRange
    end

    class PlacementResponse
    end

    class FleetLaunchTemplateSpecification
    end

    class CreateFleetErrorsSet
    end

    class CreateFleetError
    end

    # Operation Parser for CreateFlowLogs
    class CreateFlowLogs
    end

    # Operation Parser for CreateFpgaImage
    class CreateFpgaImage
    end

    # Operation Parser for CreateImage
    class CreateImage
    end

    # Operation Parser for CreateInstanceEventWindow
    class CreateInstanceEventWindow
    end

    # Operation Parser for CreateInstanceExportTask
    class CreateInstanceExportTask
    end

    class ExportTask
    end

    class InstanceExportDetails
    end

    class ExportToS3Task
    end

    # Operation Parser for CreateInternetGateway
    class CreateInternetGateway
    end

    class InternetGateway
    end

    # Operation Parser for CreateIpam
    class CreateIpam
    end

    class Ipam
    end

    class IpamOperatingRegionSet
    end

    class IpamOperatingRegion
    end

    # Operation Parser for CreateIpamPool
    class CreateIpamPool
    end

    class IpamPool
    end

    class IpamResourceTagList
    end

    class IpamResourceTag
    end

    # Operation Parser for CreateIpamScope
    class CreateIpamScope
    end

    class IpamScope
    end

    # Operation Parser for CreateKeyPair
    class CreateKeyPair
    end

    # Operation Parser for CreateLaunchTemplate
    class CreateLaunchTemplate
    end

    class ValidationWarning
    end

    class ErrorSet
    end

    class ValidationError
    end

    class LaunchTemplate
    end

    # Operation Parser for CreateLaunchTemplateVersion
    class CreateLaunchTemplateVersion
    end

    class LaunchTemplateVersion
    end

    class ResponseLaunchTemplateData
    end

    class LaunchTemplatePrivateDnsNameOptions
    end

    class LaunchTemplateEnclaveOptions
    end

    class LaunchTemplateInstanceMetadataOptions
    end

    class LaunchTemplateHibernationOptions
    end

    class LaunchTemplateLicenseList
    end

    class LaunchTemplateLicenseConfiguration
    end

    class LaunchTemplateCapacityReservationSpecificationResponse
    end

    class CapacityReservationTargetResponse
    end

    class LaunchTemplateCpuOptions
    end

    class CreditSpecification
    end

    class LaunchTemplateInstanceMarketOptions
    end

    class LaunchTemplateSpotMarketOptions
    end

    class LaunchTemplateElasticInferenceAcceleratorResponseList
    end

    class LaunchTemplateElasticInferenceAcceleratorResponse
    end

    class ElasticGpuSpecificationResponseList
    end

    class ElasticGpuSpecificationResponse
    end

    class LaunchTemplateTagSpecificationList
    end

    class LaunchTemplateTagSpecification
    end

    class LaunchTemplatePlacement
    end

    class LaunchTemplatesMonitoring
    end

    class LaunchTemplateInstanceNetworkInterfaceSpecificationList
    end

    class LaunchTemplateInstanceNetworkInterfaceSpecification
    end

    class Ipv6PrefixListResponse
    end

    class Ipv6PrefixSpecificationResponse
    end

    class Ipv4PrefixListResponse
    end

    class Ipv4PrefixSpecificationResponse
    end

    class PrivateIpAddressSpecificationList
    end

    class PrivateIpAddressSpecification
    end

    class InstanceIpv6AddressList
    end

    class InstanceIpv6Address
    end

    class GroupIdStringList
    end

    class LaunchTemplateBlockDeviceMappingList
    end

    class LaunchTemplateBlockDeviceMapping
    end

    class LaunchTemplateEbsBlockDevice
    end

    class LaunchTemplateIamInstanceProfileSpecification
    end

    # Operation Parser for CreateLocalGatewayRoute
    class CreateLocalGatewayRoute
    end

    class LocalGatewayRoute
    end

    # Operation Parser for CreateLocalGatewayRouteTableVpcAssociation
    class CreateLocalGatewayRouteTableVpcAssociation
    end

    class LocalGatewayRouteTableVpcAssociation
    end

    # Operation Parser for CreateManagedPrefixList
    class CreateManagedPrefixList
    end

    class ManagedPrefixList
    end

    # Operation Parser for CreateNatGateway
    class CreateNatGateway
    end

    class NatGateway
    end

    class ProvisionedBandwidth
    end

    class NatGatewayAddressList
    end

    class NatGatewayAddress
    end

    # Operation Parser for CreateNetworkAcl
    class CreateNetworkAcl
    end

    class NetworkAcl
    end

    class NetworkAclEntryList
    end

    class NetworkAclEntry
    end

    class PortRange
    end

    class IcmpTypeCode
    end

    class NetworkAclAssociationList
    end

    class NetworkAclAssociation
    end

    # Operation Parser for CreateNetworkAclEntry
    class CreateNetworkAclEntry
    end

    # Operation Parser for CreateNetworkInsightsAccessScope
    class CreateNetworkInsightsAccessScope
    end

    class NetworkInsightsAccessScopeContent
    end

    class AccessScopePathList
    end

    class AccessScopePath
    end

    class ThroughResourcesStatementList
    end

    class ThroughResourcesStatement
    end

    class ResourceStatement
    end

    class PathStatement
    end

    class PacketHeaderStatement
    end

    class ProtocolList
    end

    class NetworkInsightsAccessScope
    end

    # Operation Parser for CreateNetworkInsightsPath
    class CreateNetworkInsightsPath
    end

    class NetworkInsightsPath
    end

    # Operation Parser for CreateNetworkInterface
    class CreateNetworkInterface
    end

    class NetworkInterface
    end

    class Ipv6PrefixesList
    end

    class Ipv6PrefixSpecification
    end

    class NetworkInterfacePrivateIpAddressList
    end

    class NetworkInterfacePrivateIpAddress
    end

    class NetworkInterfaceAssociation
    end

    class NetworkInterfaceIpv6AddressesList
    end

    class NetworkInterfaceIpv6Address
    end

    class GroupIdentifierList
    end

    class GroupIdentifier
    end

    class NetworkInterfaceAttachment
    end

    # Operation Parser for CreateNetworkInterfacePermission
    class CreateNetworkInterfacePermission
    end

    class NetworkInterfacePermission
    end

    class NetworkInterfacePermissionState
    end

    # Operation Parser for CreatePlacementGroup
    class CreatePlacementGroup
    end

    class PlacementGroup
    end

    # Operation Parser for CreatePublicIpv4Pool
    class CreatePublicIpv4Pool
    end

    # Operation Parser for CreateReplaceRootVolumeTask
    class CreateReplaceRootVolumeTask
    end

    class ReplaceRootVolumeTask
    end

    # Operation Parser for CreateReservedInstancesListing
    class CreateReservedInstancesListing
    end

    # Operation Parser for CreateRestoreImageTask
    class CreateRestoreImageTask
    end

    # Operation Parser for CreateRoute
    class CreateRoute
    end

    # Operation Parser for CreateRouteTable
    class CreateRouteTable
    end

    class RouteTable
    end

    class RouteList
    end

    class Route
    end

    class PropagatingVgwList
    end

    class PropagatingVgw
    end

    class RouteTableAssociationList
    end

    class RouteTableAssociation
    end

    # Operation Parser for CreateSecurityGroup
    class CreateSecurityGroup
    end

    # Operation Parser for CreateSnapshot
    class CreateSnapshot
    end

    # Operation Parser for CreateSnapshots
    class CreateSnapshots
    end

    class SnapshotSet
    end

    class SnapshotInfo
    end

    # Operation Parser for CreateSpotDatafeedSubscription
    class CreateSpotDatafeedSubscription
    end

    class SpotDatafeedSubscription
    end

    class SpotInstanceStateFault
    end

    # Operation Parser for CreateStoreImageTask
    class CreateStoreImageTask
    end

    # Operation Parser for CreateSubnet
    class CreateSubnet
    end

    # Operation Parser for CreateSubnetCidrReservation
    class CreateSubnetCidrReservation
    end

    class SubnetCidrReservation
    end

    # Operation Parser for CreateTags
    class CreateTags
    end

    # Operation Parser for CreateTrafficMirrorFilter
    class CreateTrafficMirrorFilter
    end

    class TrafficMirrorFilter
    end

    class TrafficMirrorNetworkServiceList
    end

    class TrafficMirrorFilterRuleList
    end

    class TrafficMirrorFilterRule
    end

    class TrafficMirrorPortRange
    end

    # Operation Parser for CreateTrafficMirrorFilterRule
    class CreateTrafficMirrorFilterRule
    end

    # Operation Parser for CreateTrafficMirrorSession
    class CreateTrafficMirrorSession
    end

    class TrafficMirrorSession
    end

    # Operation Parser for CreateTrafficMirrorTarget
    class CreateTrafficMirrorTarget
    end

    class TrafficMirrorTarget
    end

    # Operation Parser for CreateTransitGateway
    class CreateTransitGateway
    end

    class TransitGateway
    end

    class TransitGatewayOptions
    end

    # Operation Parser for CreateTransitGatewayConnect
    class CreateTransitGatewayConnect
    end

    class TransitGatewayConnect
    end

    class TransitGatewayConnectOptions
    end

    # Operation Parser for CreateTransitGatewayConnectPeer
    class CreateTransitGatewayConnectPeer
    end

    class TransitGatewayConnectPeer
    end

    class TransitGatewayConnectPeerConfiguration
    end

    class TransitGatewayAttachmentBgpConfigurationList
    end

    class TransitGatewayAttachmentBgpConfiguration
    end

    class InsideCidrBlocksStringList
    end

    # Operation Parser for CreateTransitGatewayMulticastDomain
    class CreateTransitGatewayMulticastDomain
    end

    class TransitGatewayMulticastDomain
    end

    class TransitGatewayMulticastDomainOptions
    end

    # Operation Parser for CreateTransitGatewayPeeringAttachment
    class CreateTransitGatewayPeeringAttachment
    end

    # Operation Parser for CreateTransitGatewayPrefixListReference
    class CreateTransitGatewayPrefixListReference
    end

    class TransitGatewayPrefixListReference
    end

    class TransitGatewayPrefixListAttachment
    end

    # Operation Parser for CreateTransitGatewayRoute
    class CreateTransitGatewayRoute
    end

    class TransitGatewayRoute
    end

    class TransitGatewayRouteAttachmentList
    end

    class TransitGatewayRouteAttachment
    end

    # Operation Parser for CreateTransitGatewayRouteTable
    class CreateTransitGatewayRouteTable
    end

    class TransitGatewayRouteTable
    end

    # Operation Parser for CreateTransitGatewayVpcAttachment
    class CreateTransitGatewayVpcAttachment
    end

    # Operation Parser for CreateVolume
    class CreateVolume
    end

    class VolumeAttachmentList
    end

    class VolumeAttachment
    end

    # Operation Parser for CreateVpc
    class CreateVpc
    end

    # Operation Parser for CreateVpcEndpoint
    class CreateVpcEndpoint
    end

    class VpcEndpoint
    end

    class LastError
    end

    class DnsEntrySet
    end

    class DnsEntry
    end

    class GroupIdentifierSet
    end

    class SecurityGroupIdentifier
    end

    # Operation Parser for CreateVpcEndpointConnectionNotification
    class CreateVpcEndpointConnectionNotification
    end

    class ConnectionNotification
    end

    # Operation Parser for CreateVpcEndpointServiceConfiguration
    class CreateVpcEndpointServiceConfiguration
    end

    class ServiceConfiguration
    end

    class PrivateDnsNameConfiguration
    end

    class ServiceTypeDetailSet
    end

    class ServiceTypeDetail
    end

    # Operation Parser for CreateVpcPeeringConnection
    class CreateVpcPeeringConnection
    end

    # Operation Parser for CreateVpnConnection
    class CreateVpnConnection
    end

    class VpnConnection
    end

    class VgwTelemetryList
    end

    class VgwTelemetry
    end

    class VpnStaticRouteList
    end

    class VpnStaticRoute
    end

    class VpnConnectionOptions
    end

    class TunnelOptionsList
    end

    class TunnelOption
    end

    class IKEVersionsList
    end

    class IKEVersionsListValue
    end

    class Phase2DHGroupNumbersList
    end

    class Phase2DHGroupNumbersListValue
    end

    class Phase1DHGroupNumbersList
    end

    class Phase1DHGroupNumbersListValue
    end

    class Phase2IntegrityAlgorithmsList
    end

    class Phase2IntegrityAlgorithmsListValue
    end

    class Phase1IntegrityAlgorithmsList
    end

    class Phase1IntegrityAlgorithmsListValue
    end

    class Phase2EncryptionAlgorithmsList
    end

    class Phase2EncryptionAlgorithmsListValue
    end

    class Phase1EncryptionAlgorithmsList
    end

    class Phase1EncryptionAlgorithmsListValue
    end

    # Operation Parser for CreateVpnConnectionRoute
    class CreateVpnConnectionRoute
    end

    # Operation Parser for CreateVpnGateway
    class CreateVpnGateway
    end

    class VpnGateway
    end

    class VpcAttachmentList
    end

    # Operation Parser for DeleteCarrierGateway
    class DeleteCarrierGateway
    end

    # Operation Parser for DeleteClientVpnEndpoint
    class DeleteClientVpnEndpoint
    end

    # Operation Parser for DeleteClientVpnRoute
    class DeleteClientVpnRoute
    end

    # Operation Parser for DeleteCustomerGateway
    class DeleteCustomerGateway
    end

    # Operation Parser for DeleteDhcpOptions
    class DeleteDhcpOptions
    end

    # Operation Parser for DeleteEgressOnlyInternetGateway
    class DeleteEgressOnlyInternetGateway
    end

    # Operation Parser for DeleteFleets
    class DeleteFleets
    end

    class DeleteFleetErrorSet
    end

    class DeleteFleetErrorItem
    end

    class DeleteFleetError
    end

    class DeleteFleetSuccessSet
    end

    class DeleteFleetSuccessItem
    end

    # Operation Parser for DeleteFlowLogs
    class DeleteFlowLogs
    end

    # Operation Parser for DeleteFpgaImage
    class DeleteFpgaImage
    end

    # Operation Parser for DeleteInstanceEventWindow
    class DeleteInstanceEventWindow
    end

    class InstanceEventWindowStateChange
    end

    # Operation Parser for DeleteInternetGateway
    class DeleteInternetGateway
    end

    # Operation Parser for DeleteIpam
    class DeleteIpam
    end

    # Operation Parser for DeleteIpamPool
    class DeleteIpamPool
    end

    # Operation Parser for DeleteIpamScope
    class DeleteIpamScope
    end

    # Operation Parser for DeleteKeyPair
    class DeleteKeyPair
    end

    # Operation Parser for DeleteLaunchTemplate
    class DeleteLaunchTemplate
    end

    # Operation Parser for DeleteLaunchTemplateVersions
    class DeleteLaunchTemplateVersions
    end

    class DeleteLaunchTemplateVersionsResponseErrorSet
    end

    class DeleteLaunchTemplateVersionsResponseErrorItem
    end

    class ResponseError
    end

    class DeleteLaunchTemplateVersionsResponseSuccessSet
    end

    class DeleteLaunchTemplateVersionsResponseSuccessItem
    end

    # Operation Parser for DeleteLocalGatewayRoute
    class DeleteLocalGatewayRoute
    end

    # Operation Parser for DeleteLocalGatewayRouteTableVpcAssociation
    class DeleteLocalGatewayRouteTableVpcAssociation
    end

    # Operation Parser for DeleteManagedPrefixList
    class DeleteManagedPrefixList
    end

    # Operation Parser for DeleteNatGateway
    class DeleteNatGateway
    end

    # Operation Parser for DeleteNetworkAcl
    class DeleteNetworkAcl
    end

    # Operation Parser for DeleteNetworkAclEntry
    class DeleteNetworkAclEntry
    end

    # Operation Parser for DeleteNetworkInsightsAccessScope
    class DeleteNetworkInsightsAccessScope
    end

    # Operation Parser for DeleteNetworkInsightsAccessScopeAnalysis
    class DeleteNetworkInsightsAccessScopeAnalysis
    end

    # Operation Parser for DeleteNetworkInsightsAnalysis
    class DeleteNetworkInsightsAnalysis
    end

    # Operation Parser for DeleteNetworkInsightsPath
    class DeleteNetworkInsightsPath
    end

    # Operation Parser for DeleteNetworkInterface
    class DeleteNetworkInterface
    end

    # Operation Parser for DeleteNetworkInterfacePermission
    class DeleteNetworkInterfacePermission
    end

    # Operation Parser for DeletePlacementGroup
    class DeletePlacementGroup
    end

    # Operation Parser for DeletePublicIpv4Pool
    class DeletePublicIpv4Pool
    end

    # Operation Parser for DeleteQueuedReservedInstances
    class DeleteQueuedReservedInstances
    end

    class FailedQueuedPurchaseDeletionSet
    end

    class FailedQueuedPurchaseDeletion
    end

    class DeleteQueuedReservedInstancesError
    end

    class SuccessfulQueuedPurchaseDeletionSet
    end

    class SuccessfulQueuedPurchaseDeletion
    end

    # Operation Parser for DeleteRoute
    class DeleteRoute
    end

    # Operation Parser for DeleteRouteTable
    class DeleteRouteTable
    end

    # Operation Parser for DeleteSecurityGroup
    class DeleteSecurityGroup
    end

    # Operation Parser for DeleteSnapshot
    class DeleteSnapshot
    end

    # Operation Parser for DeleteSpotDatafeedSubscription
    class DeleteSpotDatafeedSubscription
    end

    # Operation Parser for DeleteSubnet
    class DeleteSubnet
    end

    # Operation Parser for DeleteSubnetCidrReservation
    class DeleteSubnetCidrReservation
    end

    # Operation Parser for DeleteTags
    class DeleteTags
    end

    # Operation Parser for DeleteTrafficMirrorFilter
    class DeleteTrafficMirrorFilter
    end

    # Operation Parser for DeleteTrafficMirrorFilterRule
    class DeleteTrafficMirrorFilterRule
    end

    # Operation Parser for DeleteTrafficMirrorSession
    class DeleteTrafficMirrorSession
    end

    # Operation Parser for DeleteTrafficMirrorTarget
    class DeleteTrafficMirrorTarget
    end

    # Operation Parser for DeleteTransitGateway
    class DeleteTransitGateway
    end

    # Operation Parser for DeleteTransitGatewayConnect
    class DeleteTransitGatewayConnect
    end

    # Operation Parser for DeleteTransitGatewayConnectPeer
    class DeleteTransitGatewayConnectPeer
    end

    # Operation Parser for DeleteTransitGatewayMulticastDomain
    class DeleteTransitGatewayMulticastDomain
    end

    # Operation Parser for DeleteTransitGatewayPeeringAttachment
    class DeleteTransitGatewayPeeringAttachment
    end

    # Operation Parser for DeleteTransitGatewayPrefixListReference
    class DeleteTransitGatewayPrefixListReference
    end

    # Operation Parser for DeleteTransitGatewayRoute
    class DeleteTransitGatewayRoute
    end

    # Operation Parser for DeleteTransitGatewayRouteTable
    class DeleteTransitGatewayRouteTable
    end

    # Operation Parser for DeleteTransitGatewayVpcAttachment
    class DeleteTransitGatewayVpcAttachment
    end

    # Operation Parser for DeleteVolume
    class DeleteVolume
    end

    # Operation Parser for DeleteVpc
    class DeleteVpc
    end

    # Operation Parser for DeleteVpcEndpointConnectionNotifications
    class DeleteVpcEndpointConnectionNotifications
    end

    # Operation Parser for DeleteVpcEndpointServiceConfigurations
    class DeleteVpcEndpointServiceConfigurations
    end

    # Operation Parser for DeleteVpcEndpoints
    class DeleteVpcEndpoints
    end

    # Operation Parser for DeleteVpcPeeringConnection
    class DeleteVpcPeeringConnection
    end

    # Operation Parser for DeleteVpnConnection
    class DeleteVpnConnection
    end

    # Operation Parser for DeleteVpnConnectionRoute
    class DeleteVpnConnectionRoute
    end

    # Operation Parser for DeleteVpnGateway
    class DeleteVpnGateway
    end

    # Operation Parser for DeprovisionByoipCidr
    class DeprovisionByoipCidr
    end

    # Operation Parser for DeprovisionIpamPoolCidr
    class DeprovisionIpamPoolCidr
    end

    class IpamPoolCidr
    end

    class IpamPoolCidrFailureReason
    end

    # Operation Parser for DeprovisionPublicIpv4PoolCidr
    class DeprovisionPublicIpv4PoolCidr
    end

    class DeprovisionedAddressSet
    end

    # Operation Parser for DeregisterImage
    class DeregisterImage
    end

    # Operation Parser for DeregisterInstanceEventNotificationAttributes
    class DeregisterInstanceEventNotificationAttributes
    end

    class InstanceTagNotificationAttribute
    end

    class InstanceTagKeySet
    end

    # Operation Parser for DeregisterTransitGatewayMulticastGroupMembers
    class DeregisterTransitGatewayMulticastGroupMembers
    end

    class TransitGatewayMulticastDeregisteredGroupMembers
    end

    # Operation Parser for DeregisterTransitGatewayMulticastGroupSources
    class DeregisterTransitGatewayMulticastGroupSources
    end

    class TransitGatewayMulticastDeregisteredGroupSources
    end

    # Operation Parser for DescribeAccountAttributes
    class DescribeAccountAttributes
    end

    class AccountAttributeList
    end

    class AccountAttribute
    end

    class AccountAttributeValueList
    end

    class AccountAttributeValue
    end

    # Operation Parser for DescribeAddresses
    class DescribeAddresses
    end

    class AddressList
    end

    class Address
    end

    # Operation Parser for DescribeAddressesAttribute
    class DescribeAddressesAttribute
    end

    class AddressSet
    end

    class AddressAttribute
    end

    class PtrUpdateStatus
    end

    # Operation Parser for DescribeAggregateIdFormat
    class DescribeAggregateIdFormat
    end

    class IdFormatList
    end

    class IdFormat
    end

    # Operation Parser for DescribeAvailabilityZones
    class DescribeAvailabilityZones
    end

    class AvailabilityZoneList
    end

    class AvailabilityZone
    end

    class AvailabilityZoneMessageList
    end

    class AvailabilityZoneMessage
    end

    # Operation Parser for DescribeBundleTasks
    class DescribeBundleTasks
    end

    class BundleTaskList
    end

    # Operation Parser for DescribeByoipCidrs
    class DescribeByoipCidrs
    end

    class ByoipCidrSet
    end

    # Operation Parser for DescribeCapacityReservationFleets
    class DescribeCapacityReservationFleets
    end

    class CapacityReservationFleetSet
    end

    class CapacityReservationFleet
    end

    # Operation Parser for DescribeCapacityReservations
    class DescribeCapacityReservations
    end

    class CapacityReservationSet
    end

    # Operation Parser for DescribeCarrierGateways
    class DescribeCarrierGateways
    end

    class CarrierGatewaySet
    end

    # Operation Parser for DescribeClassicLinkInstances
    class DescribeClassicLinkInstances
    end

    class ClassicLinkInstanceList
    end

    class ClassicLinkInstance
    end

    # Operation Parser for DescribeClientVpnAuthorizationRules
    class DescribeClientVpnAuthorizationRules
    end

    class AuthorizationRuleSet
    end

    class AuthorizationRule
    end

    # Operation Parser for DescribeClientVpnConnections
    class DescribeClientVpnConnections
    end

    class ClientVpnConnectionSet
    end

    class ClientVpnConnection
    end

    class ClientVpnConnectionStatus
    end

    # Operation Parser for DescribeClientVpnEndpoints
    class DescribeClientVpnEndpoints
    end

    class EndpointSet
    end

    class ClientVpnEndpoint
    end

    class ClientConnectResponseOptions
    end

    class ClientVpnEndpointAttributeStatus
    end

    class ConnectionLogResponseOptions
    end

    class ClientVpnAuthenticationList
    end

    class ClientVpnAuthentication
    end

    class FederatedAuthentication
    end

    class CertificateAuthentication
    end

    class DirectoryServiceAuthentication
    end

    class AssociatedTargetNetworkSet
    end

    class AssociatedTargetNetwork
    end

    # Operation Parser for DescribeClientVpnRoutes
    class DescribeClientVpnRoutes
    end

    class ClientVpnRouteSet
    end

    class ClientVpnRoute
    end

    # Operation Parser for DescribeClientVpnTargetNetworks
    class DescribeClientVpnTargetNetworks
    end

    class TargetNetworkSet
    end

    class TargetNetwork
    end

    # Operation Parser for DescribeCoipPools
    class DescribeCoipPools
    end

    class CoipPoolSet
    end

    class CoipPool
    end

    # Operation Parser for DescribeConversionTasks
    class DescribeConversionTasks
    end

    class DescribeConversionTaskList
    end

    class ConversionTask
    end

    class ImportVolumeTaskDetails
    end

    class DiskImageVolumeDescription
    end

    class DiskImageDescription
    end

    class ImportInstanceTaskDetails
    end

    class ImportInstanceVolumeDetailSet
    end

    class ImportInstanceVolumeDetailItem
    end

    # Operation Parser for DescribeCustomerGateways
    class DescribeCustomerGateways
    end

    class CustomerGatewayList
    end

    # Operation Parser for DescribeDhcpOptions
    class DescribeDhcpOptions
    end

    class DhcpOptionsList
    end

    # Operation Parser for DescribeEgressOnlyInternetGateways
    class DescribeEgressOnlyInternetGateways
    end

    class EgressOnlyInternetGatewayList
    end

    # Operation Parser for DescribeElasticGpus
    class DescribeElasticGpus
    end

    class ElasticGpuSet
    end

    class ElasticGpus
    end

    class ElasticGpuHealth
    end

    # Operation Parser for DescribeExportImageTasks
    class DescribeExportImageTasks
    end

    class ExportImageTaskList
    end

    class ExportImageTask
    end

    class ExportTaskS3Location
    end

    # Operation Parser for DescribeExportTasks
    class DescribeExportTasks
    end

    class ExportTaskList
    end

    # Operation Parser for DescribeFastSnapshotRestores
    class DescribeFastSnapshotRestores
    end

    class DescribeFastSnapshotRestoreSuccessSet
    end

    class DescribeFastSnapshotRestoreSuccessItem
    end

    # Operation Parser for DescribeFleetHistory
    class DescribeFleetHistory
    end

    class HistoryRecordSet
    end

    class HistoryRecordEntry
    end

    class EventInformation
    end

    # Operation Parser for DescribeFleetInstances
    class DescribeFleetInstances
    end

    class ActiveInstanceSet
    end

    class ActiveInstance
    end

    # Operation Parser for DescribeFleets
    class DescribeFleets
    end

    class FleetSet
    end

    class FleetData
    end

    class DescribeFleetsInstancesSet
    end

    class DescribeFleetsInstances
    end

    class DescribeFleetsErrorSet
    end

    class DescribeFleetError
    end

    class OnDemandOptions
    end

    class CapacityReservationOptions
    end

    class SpotOptions
    end

    class FleetSpotMaintenanceStrategies
    end

    class FleetSpotCapacityRebalance
    end

    class TargetCapacitySpecification
    end

    class FleetLaunchTemplateConfigList
    end

    class FleetLaunchTemplateConfig
    end

    class FleetLaunchTemplateOverridesList
    end

    # Operation Parser for DescribeFlowLogs
    class DescribeFlowLogs
    end

    class FlowLogSet
    end

    class FlowLog
    end

    class DestinationOptionsResponse
    end

    # Operation Parser for DescribeFpgaImageAttribute
    class DescribeFpgaImageAttribute
    end

    class FpgaImageAttribute
    end

    class ProductCodeList
    end

    class ProductCode
    end

    class LoadPermissionList
    end

    class LoadPermission
    end

    # Operation Parser for DescribeFpgaImages
    class DescribeFpgaImages
    end

    class FpgaImageList
    end

    class FpgaImage
    end

    class FpgaImageState
    end

    class PciId
    end

    # Operation Parser for DescribeHostReservationOfferings
    class DescribeHostReservationOfferings
    end

    class HostOfferingSet
    end

    class HostOffering
    end

    # Operation Parser for DescribeHostReservations
    class DescribeHostReservations
    end

    class HostReservationSet
    end

    class HostReservation
    end

    class ResponseHostIdSet
    end

    # Operation Parser for DescribeHosts
    class DescribeHosts
    end

    class HostList
    end

    class Host
    end

    class HostInstanceList
    end

    class HostInstance
    end

    class HostProperties
    end

    class AvailableCapacity
    end

    class AvailableInstanceCapacityList
    end

    class InstanceCapacity
    end

    # Operation Parser for DescribeIamInstanceProfileAssociations
    class DescribeIamInstanceProfileAssociations
    end

    class IamInstanceProfileAssociationSet
    end

    # Operation Parser for DescribeIdFormat
    class DescribeIdFormat
    end

    # Operation Parser for DescribeIdentityIdFormat
    class DescribeIdentityIdFormat
    end

    # Operation Parser for DescribeImageAttribute
    class DescribeImageAttribute
    end

    class LaunchPermissionList
    end

    class LaunchPermission
    end

    class BlockDeviceMappingList
    end

    class BlockDeviceMapping
    end

    class EbsBlockDevice
    end

    # Operation Parser for DescribeImages
    class DescribeImages
    end

    class ImageList
    end

    class Image
    end

    class StateReason
    end

    # Operation Parser for DescribeImportImageTasks
    class DescribeImportImageTasks
    end

    class ImportImageTaskList
    end

    class ImportImageTask
    end

    class ImportImageLicenseSpecificationListResponse
    end

    class ImportImageLicenseConfigurationResponse
    end

    class SnapshotDetailList
    end

    class SnapshotDetail
    end

    class UserBucketDetails
    end

    # Operation Parser for DescribeImportSnapshotTasks
    class DescribeImportSnapshotTasks
    end

    class ImportSnapshotTaskList
    end

    class ImportSnapshotTask
    end

    class SnapshotTaskDetail
    end

    # Operation Parser for DescribeInstanceAttribute
    class DescribeInstanceAttribute
    end

    class AttributeBooleanValue
    end

    class EnclaveOptions
    end

    class InstanceBlockDeviceMappingList
    end

    class InstanceBlockDeviceMapping
    end

    class EbsInstanceBlockDevice
    end

    # Operation Parser for DescribeInstanceCreditSpecifications
    class DescribeInstanceCreditSpecifications
    end

    class InstanceCreditSpecificationList
    end

    class InstanceCreditSpecification
    end

    # Operation Parser for DescribeInstanceEventNotificationAttributes
    class DescribeInstanceEventNotificationAttributes
    end

    # Operation Parser for DescribeInstanceEventWindows
    class DescribeInstanceEventWindows
    end

    class InstanceEventWindowSet
    end

    # Operation Parser for DescribeInstanceStatus
    class DescribeInstanceStatus
    end

    class InstanceStatusList
    end

    class InstanceStatus
    end

    class InstanceStatusSummary
    end

    class InstanceStatusDetailsList
    end

    class InstanceStatusDetails
    end

    class InstanceState
    end

    class InstanceStatusEventList
    end

    class InstanceStatusEvent
    end

    # Operation Parser for DescribeInstanceTypeOfferings
    class DescribeInstanceTypeOfferings
    end

    class InstanceTypeOfferingsList
    end

    class InstanceTypeOffering
    end

    # Operation Parser for DescribeInstanceTypes
    class DescribeInstanceTypes
    end

    class InstanceTypeInfoList
    end

    class InstanceTypeInfo
    end

    class BootModeTypeList
    end

    class InferenceAcceleratorInfo
    end

    class InferenceDeviceInfoList
    end

    class InferenceDeviceInfo
    end

    class PlacementGroupInfo
    end

    class PlacementGroupStrategyList
    end

    class FpgaInfo
    end

    class FpgaDeviceInfoList
    end

    class FpgaDeviceInfo
    end

    class FpgaDeviceMemoryInfo
    end

    class GpuInfo
    end

    class GpuDeviceInfoList
    end

    class GpuDeviceInfo
    end

    class GpuDeviceMemoryInfo
    end

    class NetworkInfo
    end

    class EfaInfo
    end

    class NetworkCardInfoList
    end

    class NetworkCardInfo
    end

    class EbsInfo
    end

    class EbsOptimizedInfo
    end

    class InstanceStorageInfo
    end

    class DiskInfoList
    end

    class DiskInfo
    end

    class MemoryInfo
    end

    class VCpuInfo
    end

    class ThreadsPerCoreList
    end

    class CoreCountList
    end

    class ProcessorInfo
    end

    class ArchitectureTypeList
    end

    class VirtualizationTypeList
    end

    class RootDeviceTypeList
    end

    class UsageClassTypeList
    end

    # Operation Parser for DescribeInstances
    class DescribeInstances
    end

    class ReservationList
    end

    class Reservation
    end

    class InstanceList
    end

    class Instance
    end

    class PrivateDnsNameOptionsResponse
    end

    class InstanceMetadataOptionsResponse
    end

    class LicenseList
    end

    class LicenseConfiguration
    end

    class HibernationOptions
    end

    class CapacityReservationSpecificationResponse
    end

    class CpuOptions
    end

    class InstanceNetworkInterfaceList
    end

    class InstanceNetworkInterface
    end

    class InstanceIpv6PrefixList
    end

    class InstanceIpv6Prefix
    end

    class InstanceIpv4PrefixList
    end

    class InstanceIpv4Prefix
    end

    class InstancePrivateIpAddressList
    end

    class InstancePrivateIpAddress
    end

    class InstanceNetworkInterfaceAssociation
    end

    class InstanceNetworkInterfaceAttachment
    end

    class ElasticInferenceAcceleratorAssociationList
    end

    class ElasticInferenceAcceleratorAssociation
    end

    class ElasticGpuAssociationList
    end

    class ElasticGpuAssociation
    end

    class Placement
    end

    class Monitoring
    end

    # Operation Parser for DescribeInternetGateways
    class DescribeInternetGateways
    end

    class InternetGatewayList
    end

    # Operation Parser for DescribeIpamPools
    class DescribeIpamPools
    end

    class IpamPoolSet
    end

    # Operation Parser for DescribeIpamScopes
    class DescribeIpamScopes
    end

    class IpamScopeSet
    end

    # Operation Parser for DescribeIpams
    class DescribeIpams
    end

    class IpamSet
    end

    # Operation Parser for DescribeIpv6Pools
    class DescribeIpv6Pools
    end

    class Ipv6PoolSet
    end

    class Ipv6Pool
    end

    class PoolCidrBlocksSet
    end

    class PoolCidrBlock
    end

    # Operation Parser for DescribeKeyPairs
    class DescribeKeyPairs
    end

    class KeyPairList
    end

    class KeyPairInfo
    end

    # Operation Parser for DescribeLaunchTemplateVersions
    class DescribeLaunchTemplateVersions
    end

    class LaunchTemplateVersionSet
    end

    # Operation Parser for DescribeLaunchTemplates
    class DescribeLaunchTemplates
    end

    class LaunchTemplateSet
    end

    # Operation Parser for DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
    class DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
    end

    class LocalGatewayRouteTableVirtualInterfaceGroupAssociationSet
    end

    class LocalGatewayRouteTableVirtualInterfaceGroupAssociation
    end

    # Operation Parser for DescribeLocalGatewayRouteTableVpcAssociations
    class DescribeLocalGatewayRouteTableVpcAssociations
    end

    class LocalGatewayRouteTableVpcAssociationSet
    end

    # Operation Parser for DescribeLocalGatewayRouteTables
    class DescribeLocalGatewayRouteTables
    end

    class LocalGatewayRouteTableSet
    end

    class LocalGatewayRouteTable
    end

    # Operation Parser for DescribeLocalGatewayVirtualInterfaceGroups
    class DescribeLocalGatewayVirtualInterfaceGroups
    end

    class LocalGatewayVirtualInterfaceGroupSet
    end

    class LocalGatewayVirtualInterfaceGroup
    end

    class LocalGatewayVirtualInterfaceIdSet
    end

    # Operation Parser for DescribeLocalGatewayVirtualInterfaces
    class DescribeLocalGatewayVirtualInterfaces
    end

    class LocalGatewayVirtualInterfaceSet
    end

    class LocalGatewayVirtualInterface
    end

    # Operation Parser for DescribeLocalGateways
    class DescribeLocalGateways
    end

    class LocalGatewaySet
    end

    class LocalGateway
    end

    # Operation Parser for DescribeManagedPrefixLists
    class DescribeManagedPrefixLists
    end

    class ManagedPrefixListSet
    end

    # Operation Parser for DescribeMovingAddresses
    class DescribeMovingAddresses
    end

    class MovingAddressStatusSet
    end

    class MovingAddressStatus
    end

    # Operation Parser for DescribeNatGateways
    class DescribeNatGateways
    end

    class NatGatewayList
    end

    # Operation Parser for DescribeNetworkAcls
    class DescribeNetworkAcls
    end

    class NetworkAclList
    end

    # Operation Parser for DescribeNetworkInsightsAccessScopeAnalyses
    class DescribeNetworkInsightsAccessScopeAnalyses
    end

    class NetworkInsightsAccessScopeAnalysisList
    end

    class NetworkInsightsAccessScopeAnalysis
    end

    # Operation Parser for DescribeNetworkInsightsAccessScopes
    class DescribeNetworkInsightsAccessScopes
    end

    class NetworkInsightsAccessScopeList
    end

    # Operation Parser for DescribeNetworkInsightsAnalyses
    class DescribeNetworkInsightsAnalyses
    end

    class NetworkInsightsAnalysisList
    end

    class NetworkInsightsAnalysis
    end

    class AlternatePathHintList
    end

    class AlternatePathHint
    end

    class ExplanationList
    end

    class Explanation
    end

    class AnalysisComponent
    end

    class AnalysisComponentList
    end

    class AnalysisSecurityGroupRule
    end

    class AnalysisRouteTableRoute
    end

    class StringList
    end

    class PortRangeList
    end

    class AnalysisLoadBalancerTarget
    end

    class AnalysisLoadBalancerListener
    end

    class IpAddressList
    end

    class AnalysisAclRule
    end

    class PathComponentList
    end

    class PathComponent
    end

    class AnalysisPacketHeader
    end

    class ArnList
    end

    # Operation Parser for DescribeNetworkInsightsPaths
    class DescribeNetworkInsightsPaths
    end

    class NetworkInsightsPathList
    end

    # Operation Parser for DescribeNetworkInterfaceAttribute
    class DescribeNetworkInterfaceAttribute
    end

    # Operation Parser for DescribeNetworkInterfacePermissions
    class DescribeNetworkInterfacePermissions
    end

    class NetworkInterfacePermissionList
    end

    # Operation Parser for DescribeNetworkInterfaces
    class DescribeNetworkInterfaces
    end

    class NetworkInterfaceList
    end

    # Operation Parser for DescribePlacementGroups
    class DescribePlacementGroups
    end

    class PlacementGroupList
    end

    # Operation Parser for DescribePrefixLists
    class DescribePrefixLists
    end

    class PrefixListSet
    end

    class PrefixList
    end

    # Operation Parser for DescribePrincipalIdFormat
    class DescribePrincipalIdFormat
    end

    class PrincipalIdFormatList
    end

    class PrincipalIdFormat
    end

    # Operation Parser for DescribePublicIpv4Pools
    class DescribePublicIpv4Pools
    end

    class PublicIpv4PoolSet
    end

    class PublicIpv4Pool
    end

    class PublicIpv4PoolRangeSet
    end

    class PublicIpv4PoolRange
    end

    # Operation Parser for DescribeRegions
    class DescribeRegions
    end

    class RegionList
    end

    class Region
    end

    # Operation Parser for DescribeReplaceRootVolumeTasks
    class DescribeReplaceRootVolumeTasks
    end

    class ReplaceRootVolumeTasks
    end

    # Operation Parser for DescribeReservedInstances
    class DescribeReservedInstances
    end

    class ReservedInstancesList
    end

    class ReservedInstances
    end

    class RecurringChargesList
    end

    class RecurringCharge
    end

    # Operation Parser for DescribeReservedInstancesListings
    class DescribeReservedInstancesListings
    end

    # Operation Parser for DescribeReservedInstancesModifications
    class DescribeReservedInstancesModifications
    end

    class ReservedInstancesModificationList
    end

    class ReservedInstancesModification
    end

    class ReservedIntancesIds
    end

    class ReservedInstancesId
    end

    class ReservedInstancesModificationResultList
    end

    class ReservedInstancesModificationResult
    end

    class ReservedInstancesConfiguration
    end

    # Operation Parser for DescribeReservedInstancesOfferings
    class DescribeReservedInstancesOfferings
    end

    class ReservedInstancesOfferingList
    end

    class ReservedInstancesOffering
    end

    class PricingDetailsList
    end

    class PricingDetail
    end

    # Operation Parser for DescribeRouteTables
    class DescribeRouteTables
    end

    class RouteTableList
    end

    # Operation Parser for DescribeScheduledInstanceAvailability
    class DescribeScheduledInstanceAvailability
    end

    class ScheduledInstanceAvailabilitySet
    end

    class ScheduledInstanceAvailability
    end

    class ScheduledInstanceRecurrence
    end

    class OccurrenceDaySet
    end

    # Operation Parser for DescribeScheduledInstances
    class DescribeScheduledInstances
    end

    class ScheduledInstanceSet
    end

    class ScheduledInstance
    end

    # Operation Parser for DescribeSecurityGroupReferences
    class DescribeSecurityGroupReferences
    end

    class SecurityGroupReferences
    end

    class SecurityGroupReference
    end

    # Operation Parser for DescribeSecurityGroupRules
    class DescribeSecurityGroupRules
    end

    # Operation Parser for DescribeSecurityGroups
    class DescribeSecurityGroups
    end

    class SecurityGroupList
    end

    class SecurityGroup
    end

    class IpPermissionList
    end

    class IpPermission
    end

    class UserIdGroupPairList
    end

    class UserIdGroupPair
    end

    class PrefixListIdList
    end

    class PrefixListId
    end

    class Ipv6RangeList
    end

    class Ipv6Range
    end

    class IpRangeList
    end

    class IpRange
    end

    # Operation Parser for DescribeSnapshotAttribute
    class DescribeSnapshotAttribute
    end

    class CreateVolumePermissionList
    end

    class CreateVolumePermission
    end

    # Operation Parser for DescribeSnapshotTierStatus
    class DescribeSnapshotTierStatus
    end

    class SnapshotTierStatusSet
    end

    class SnapshotTierStatus
    end

    # Operation Parser for DescribeSnapshots
    class DescribeSnapshots
    end

    class SnapshotList
    end

    class Snapshot
    end

    # Operation Parser for DescribeSpotDatafeedSubscription
    class DescribeSpotDatafeedSubscription
    end

    # Operation Parser for DescribeSpotFleetInstances
    class DescribeSpotFleetInstances
    end

    # Operation Parser for DescribeSpotFleetRequestHistory
    class DescribeSpotFleetRequestHistory
    end

    class HistoryRecords
    end

    class HistoryRecord
    end

    # Operation Parser for DescribeSpotFleetRequests
    class DescribeSpotFleetRequests
    end

    class SpotFleetRequestConfigSet
    end

    class SpotFleetRequestConfig
    end

    class SpotFleetRequestConfigData
    end

    class TagSpecificationList
    end

    class TagSpecification
    end

    class LoadBalancersConfig
    end

    class TargetGroupsConfig
    end

    class TargetGroups
    end

    class TargetGroup
    end

    class ClassicLoadBalancersConfig
    end

    class ClassicLoadBalancers
    end

    class ClassicLoadBalancer
    end

    class LaunchTemplateConfigList
    end

    class LaunchTemplateConfig
    end

    class LaunchTemplateOverridesList
    end

    class LaunchTemplateOverrides
    end

    class LaunchSpecsList
    end

    class SpotFleetLaunchSpecification
    end

    class SpotFleetTagSpecificationList
    end

    class SpotFleetTagSpecification
    end

    class SpotPlacement
    end

    class InstanceNetworkInterfaceSpecificationList
    end

    class InstanceNetworkInterfaceSpecification
    end

    class Ipv6PrefixList
    end

    class Ipv6PrefixSpecificationRequest
    end

    class Ipv4PrefixList
    end

    class Ipv4PrefixSpecificationRequest
    end

    class SecurityGroupIdStringList
    end

    class SpotFleetMonitoring
    end

    class IamInstanceProfileSpecification
    end

    class SpotMaintenanceStrategies
    end

    class SpotCapacityRebalance
    end

    # Operation Parser for DescribeSpotInstanceRequests
    class DescribeSpotInstanceRequests
    end

    class SpotInstanceRequestList
    end

    class SpotInstanceRequest
    end

    class SpotInstanceStatus
    end

    class LaunchSpecification
    end

    class RunInstancesMonitoringEnabled
    end

    # Operation Parser for DescribeSpotPriceHistory
    class DescribeSpotPriceHistory
    end

    class SpotPriceHistoryList
    end

    class SpotPrice
    end

    # Operation Parser for DescribeStaleSecurityGroups
    class DescribeStaleSecurityGroups
    end

    class StaleSecurityGroupSet
    end

    class StaleSecurityGroup
    end

    class StaleIpPermissionSet
    end

    class StaleIpPermission
    end

    class UserIdGroupPairSet
    end

    class PrefixListIdSet
    end

    class IpRanges
    end

    # Operation Parser for DescribeStoreImageTasks
    class DescribeStoreImageTasks
    end

    class StoreImageTaskResultSet
    end

    class StoreImageTaskResult
    end

    # Operation Parser for DescribeSubnets
    class DescribeSubnets
    end

    class SubnetList
    end

    # Operation Parser for DescribeTags
    class DescribeTags
    end

    class TagDescriptionList
    end

    class TagDescription
    end

    # Operation Parser for DescribeTrafficMirrorFilters
    class DescribeTrafficMirrorFilters
    end

    class TrafficMirrorFilterSet
    end

    # Operation Parser for DescribeTrafficMirrorSessions
    class DescribeTrafficMirrorSessions
    end

    class TrafficMirrorSessionSet
    end

    # Operation Parser for DescribeTrafficMirrorTargets
    class DescribeTrafficMirrorTargets
    end

    class TrafficMirrorTargetSet
    end

    # Operation Parser for DescribeTransitGatewayAttachments
    class DescribeTransitGatewayAttachments
    end

    class TransitGatewayAttachmentList
    end

    class TransitGatewayAttachment
    end

    class TransitGatewayAttachmentAssociation
    end

    # Operation Parser for DescribeTransitGatewayConnectPeers
    class DescribeTransitGatewayConnectPeers
    end

    class TransitGatewayConnectPeerList
    end

    # Operation Parser for DescribeTransitGatewayConnects
    class DescribeTransitGatewayConnects
    end

    class TransitGatewayConnectList
    end

    # Operation Parser for DescribeTransitGatewayMulticastDomains
    class DescribeTransitGatewayMulticastDomains
    end

    class TransitGatewayMulticastDomainList
    end

    # Operation Parser for DescribeTransitGatewayPeeringAttachments
    class DescribeTransitGatewayPeeringAttachments
    end

    class TransitGatewayPeeringAttachmentList
    end

    # Operation Parser for DescribeTransitGatewayRouteTables
    class DescribeTransitGatewayRouteTables
    end

    class TransitGatewayRouteTableList
    end

    # Operation Parser for DescribeTransitGatewayVpcAttachments
    class DescribeTransitGatewayVpcAttachments
    end

    class TransitGatewayVpcAttachmentList
    end

    # Operation Parser for DescribeTransitGateways
    class DescribeTransitGateways
    end

    class TransitGatewayList
    end

    # Operation Parser for DescribeTrunkInterfaceAssociations
    class DescribeTrunkInterfaceAssociations
    end

    class TrunkInterfaceAssociationList
    end

    # Operation Parser for DescribeVolumeAttribute
    class DescribeVolumeAttribute
    end

    # Operation Parser for DescribeVolumeStatus
    class DescribeVolumeStatus
    end

    class VolumeStatusList
    end

    class VolumeStatusItem
    end

    class VolumeStatusAttachmentStatusList
    end

    class VolumeStatusAttachmentStatus
    end

    class VolumeStatusInfo
    end

    class VolumeStatusDetailsList
    end

    class VolumeStatusDetails
    end

    class VolumeStatusEventsList
    end

    class VolumeStatusEvent
    end

    class VolumeStatusActionsList
    end

    class VolumeStatusAction
    end

    # Operation Parser for DescribeVolumes
    class DescribeVolumes
    end

    class VolumeList
    end

    class Volume
    end

    # Operation Parser for DescribeVolumesModifications
    class DescribeVolumesModifications
    end

    class VolumeModificationList
    end

    class VolumeModification
    end

    # Operation Parser for DescribeVpcAttribute
    class DescribeVpcAttribute
    end

    # Operation Parser for DescribeVpcClassicLink
    class DescribeVpcClassicLink
    end

    class VpcClassicLinkList
    end

    class VpcClassicLink
    end

    # Operation Parser for DescribeVpcClassicLinkDnsSupport
    class DescribeVpcClassicLinkDnsSupport
    end

    class ClassicLinkDnsSupportList
    end

    class ClassicLinkDnsSupport
    end

    # Operation Parser for DescribeVpcEndpointConnectionNotifications
    class DescribeVpcEndpointConnectionNotifications
    end

    class ConnectionNotificationSet
    end

    # Operation Parser for DescribeVpcEndpointConnections
    class DescribeVpcEndpointConnections
    end

    class VpcEndpointConnectionSet
    end

    class VpcEndpointConnection
    end

    # Operation Parser for DescribeVpcEndpointServiceConfigurations
    class DescribeVpcEndpointServiceConfigurations
    end

    class ServiceConfigurationSet
    end

    # Operation Parser for DescribeVpcEndpointServicePermissions
    class DescribeVpcEndpointServicePermissions
    end

    class AllowedPrincipalSet
    end

    class AllowedPrincipal
    end

    # Operation Parser for DescribeVpcEndpointServices
    class DescribeVpcEndpointServices
    end

    class ServiceDetailSet
    end

    class ServiceDetail
    end

    class PrivateDnsDetailsSet
    end

    class PrivateDnsDetails
    end

    # Operation Parser for DescribeVpcEndpoints
    class DescribeVpcEndpoints
    end

    class VpcEndpointSet
    end

    # Operation Parser for DescribeVpcPeeringConnections
    class DescribeVpcPeeringConnections
    end

    class VpcPeeringConnectionList
    end

    # Operation Parser for DescribeVpcs
    class DescribeVpcs
    end

    class VpcList
    end

    # Operation Parser for DescribeVpnConnections
    class DescribeVpnConnections
    end

    class VpnConnectionList
    end

    # Operation Parser for DescribeVpnGateways
    class DescribeVpnGateways
    end

    class VpnGatewayList
    end

    # Operation Parser for DetachClassicLinkVpc
    class DetachClassicLinkVpc
    end

    # Operation Parser for DetachInternetGateway
    class DetachInternetGateway
    end

    # Operation Parser for DetachNetworkInterface
    class DetachNetworkInterface
    end

    # Operation Parser for DetachVolume
    class DetachVolume
    end

    # Operation Parser for DetachVpnGateway
    class DetachVpnGateway
    end

    # Operation Parser for DisableEbsEncryptionByDefault
    class DisableEbsEncryptionByDefault
    end

    # Operation Parser for DisableFastSnapshotRestores
    class DisableFastSnapshotRestores
    end

    class DisableFastSnapshotRestoreErrorSet
    end

    class DisableFastSnapshotRestoreErrorItem
    end

    class DisableFastSnapshotRestoreStateErrorSet
    end

    class DisableFastSnapshotRestoreStateErrorItem
    end

    class DisableFastSnapshotRestoreStateError
    end

    class DisableFastSnapshotRestoreSuccessSet
    end

    class DisableFastSnapshotRestoreSuccessItem
    end

    # Operation Parser for DisableImageDeprecation
    class DisableImageDeprecation
    end

    # Operation Parser for DisableIpamOrganizationAdminAccount
    class DisableIpamOrganizationAdminAccount
    end

    # Operation Parser for DisableSerialConsoleAccess
    class DisableSerialConsoleAccess
    end

    # Operation Parser for DisableTransitGatewayRouteTablePropagation
    class DisableTransitGatewayRouteTablePropagation
    end

    class TransitGatewayPropagation
    end

    # Operation Parser for DisableVgwRoutePropagation
    class DisableVgwRoutePropagation
    end

    # Operation Parser for DisableVpcClassicLink
    class DisableVpcClassicLink
    end

    # Operation Parser for DisableVpcClassicLinkDnsSupport
    class DisableVpcClassicLinkDnsSupport
    end

    # Operation Parser for DisassociateAddress
    class DisassociateAddress
    end

    # Operation Parser for DisassociateClientVpnTargetNetwork
    class DisassociateClientVpnTargetNetwork
    end

    # Operation Parser for DisassociateEnclaveCertificateIamRole
    class DisassociateEnclaveCertificateIamRole
    end

    # Operation Parser for DisassociateIamInstanceProfile
    class DisassociateIamInstanceProfile
    end

    # Operation Parser for DisassociateInstanceEventWindow
    class DisassociateInstanceEventWindow
    end

    # Operation Parser for DisassociateRouteTable
    class DisassociateRouteTable
    end

    # Operation Parser for DisassociateSubnetCidrBlock
    class DisassociateSubnetCidrBlock
    end

    # Operation Parser for DisassociateTransitGatewayMulticastDomain
    class DisassociateTransitGatewayMulticastDomain
    end

    # Operation Parser for DisassociateTransitGatewayRouteTable
    class DisassociateTransitGatewayRouteTable
    end

    # Operation Parser for DisassociateTrunkInterface
    class DisassociateTrunkInterface
    end

    # Operation Parser for DisassociateVpcCidrBlock
    class DisassociateVpcCidrBlock
    end

    # Operation Parser for EnableEbsEncryptionByDefault
    class EnableEbsEncryptionByDefault
    end

    # Operation Parser for EnableFastSnapshotRestores
    class EnableFastSnapshotRestores
    end

    class EnableFastSnapshotRestoreErrorSet
    end

    class EnableFastSnapshotRestoreErrorItem
    end

    class EnableFastSnapshotRestoreStateErrorSet
    end

    class EnableFastSnapshotRestoreStateErrorItem
    end

    class EnableFastSnapshotRestoreStateError
    end

    class EnableFastSnapshotRestoreSuccessSet
    end

    class EnableFastSnapshotRestoreSuccessItem
    end

    # Operation Parser for EnableImageDeprecation
    class EnableImageDeprecation
    end

    # Operation Parser for EnableIpamOrganizationAdminAccount
    class EnableIpamOrganizationAdminAccount
    end

    # Operation Parser for EnableSerialConsoleAccess
    class EnableSerialConsoleAccess
    end

    # Operation Parser for EnableTransitGatewayRouteTablePropagation
    class EnableTransitGatewayRouteTablePropagation
    end

    # Operation Parser for EnableVgwRoutePropagation
    class EnableVgwRoutePropagation
    end

    # Operation Parser for EnableVolumeIO
    class EnableVolumeIO
    end

    # Operation Parser for EnableVpcClassicLink
    class EnableVpcClassicLink
    end

    # Operation Parser for EnableVpcClassicLinkDnsSupport
    class EnableVpcClassicLinkDnsSupport
    end

    # Operation Parser for ExportClientVpnClientCertificateRevocationList
    class ExportClientVpnClientCertificateRevocationList
    end

    class ClientCertificateRevocationListStatus
    end

    # Operation Parser for ExportClientVpnClientConfiguration
    class ExportClientVpnClientConfiguration
    end

    # Operation Parser for ExportImage
    class ExportImage
    end

    # Operation Parser for ExportTransitGatewayRoutes
    class ExportTransitGatewayRoutes
    end

    # Operation Parser for GetAssociatedEnclaveCertificateIamRoles
    class GetAssociatedEnclaveCertificateIamRoles
    end

    class AssociatedRolesList
    end

    class AssociatedRole
    end

    # Operation Parser for GetAssociatedIpv6PoolCidrs
    class GetAssociatedIpv6PoolCidrs
    end

    class Ipv6CidrAssociationSet
    end

    class Ipv6CidrAssociation
    end

    # Operation Parser for GetCapacityReservationUsage
    class GetCapacityReservationUsage
    end

    class InstanceUsageSet
    end

    class InstanceUsage
    end

    # Operation Parser for GetCoipPoolUsage
    class GetCoipPoolUsage
    end

    class CoipAddressUsageSet
    end

    class CoipAddressUsage
    end

    # Operation Parser for GetConsoleOutput
    class GetConsoleOutput
    end

    # Operation Parser for GetConsoleScreenshot
    class GetConsoleScreenshot
    end

    # Operation Parser for GetDefaultCreditSpecification
    class GetDefaultCreditSpecification
    end

    class InstanceFamilyCreditSpecification
    end

    # Operation Parser for GetEbsDefaultKmsKeyId
    class GetEbsDefaultKmsKeyId
    end

    # Operation Parser for GetEbsEncryptionByDefault
    class GetEbsEncryptionByDefault
    end

    # Operation Parser for GetFlowLogsIntegrationTemplate
    class GetFlowLogsIntegrationTemplate
    end

    # Operation Parser for GetGroupsForCapacityReservation
    class GetGroupsForCapacityReservation
    end

    class CapacityReservationGroupSet
    end

    class CapacityReservationGroup
    end

    # Operation Parser for GetHostReservationPurchasePreview
    class GetHostReservationPurchasePreview
    end

    class PurchaseSet
    end

    class Purchase
    end

    # Operation Parser for GetInstanceTypesFromInstanceRequirements
    class GetInstanceTypesFromInstanceRequirements
    end

    class InstanceTypeInfoFromInstanceRequirementsSet
    end

    class InstanceTypeInfoFromInstanceRequirements
    end

    # Operation Parser for GetIpamAddressHistory
    class GetIpamAddressHistory
    end

    class IpamAddressHistoryRecordSet
    end

    class IpamAddressHistoryRecord
    end

    # Operation Parser for GetIpamPoolAllocations
    class GetIpamPoolAllocations
    end

    class IpamPoolAllocationSet
    end

    # Operation Parser for GetIpamPoolCidrs
    class GetIpamPoolCidrs
    end

    class IpamPoolCidrSet
    end

    # Operation Parser for GetIpamResourceCidrs
    class GetIpamResourceCidrs
    end

    class IpamResourceCidrSet
    end

    class IpamResourceCidr
    end

    # Operation Parser for GetLaunchTemplateData
    class GetLaunchTemplateData
    end

    # Operation Parser for GetManagedPrefixListAssociations
    class GetManagedPrefixListAssociations
    end

    class PrefixListAssociationSet
    end

    class PrefixListAssociation
    end

    # Operation Parser for GetManagedPrefixListEntries
    class GetManagedPrefixListEntries
    end

    class PrefixListEntrySet
    end

    class PrefixListEntry
    end

    # Operation Parser for GetNetworkInsightsAccessScopeAnalysisFindings
    class GetNetworkInsightsAccessScopeAnalysisFindings
    end

    class AccessScopeAnalysisFindingList
    end

    class AccessScopeAnalysisFinding
    end

    # Operation Parser for GetNetworkInsightsAccessScopeContent
    class GetNetworkInsightsAccessScopeContent
    end

    # Operation Parser for GetPasswordData
    class GetPasswordData
    end

    # Operation Parser for GetReservedInstancesExchangeQuote
    class GetReservedInstancesExchangeQuote
    end

    class TargetReservationValueSet
    end

    class TargetReservationValue
    end

    class TargetConfiguration
    end

    class ReservationValue
    end

    class ReservedInstanceReservationValueSet
    end

    class ReservedInstanceReservationValue
    end

    # Operation Parser for GetSerialConsoleAccessStatus
    class GetSerialConsoleAccessStatus
    end

    # Operation Parser for GetSpotPlacementScores
    class GetSpotPlacementScores
    end

    class SpotPlacementScores
    end

    class SpotPlacementScore
    end

    # Operation Parser for GetSubnetCidrReservations
    class GetSubnetCidrReservations
    end

    class SubnetCidrReservationList
    end

    # Operation Parser for GetTransitGatewayAttachmentPropagations
    class GetTransitGatewayAttachmentPropagations
    end

    class TransitGatewayAttachmentPropagationList
    end

    class TransitGatewayAttachmentPropagation
    end

    # Operation Parser for GetTransitGatewayMulticastDomainAssociations
    class GetTransitGatewayMulticastDomainAssociations
    end

    class TransitGatewayMulticastDomainAssociationList
    end

    class TransitGatewayMulticastDomainAssociation
    end

    # Operation Parser for GetTransitGatewayPrefixListReferences
    class GetTransitGatewayPrefixListReferences
    end

    class TransitGatewayPrefixListReferenceSet
    end

    # Operation Parser for GetTransitGatewayRouteTableAssociations
    class GetTransitGatewayRouteTableAssociations
    end

    class TransitGatewayRouteTableAssociationList
    end

    class TransitGatewayRouteTableAssociation
    end

    # Operation Parser for GetTransitGatewayRouteTablePropagations
    class GetTransitGatewayRouteTablePropagations
    end

    class TransitGatewayRouteTablePropagationList
    end

    class TransitGatewayRouteTablePropagation
    end

    # Operation Parser for GetVpnConnectionDeviceSampleConfiguration
    class GetVpnConnectionDeviceSampleConfiguration
    end

    # Operation Parser for GetVpnConnectionDeviceTypes
    class GetVpnConnectionDeviceTypes
    end

    class VpnConnectionDeviceTypeList
    end

    class VpnConnectionDeviceType
    end

    # Operation Parser for ImportClientVpnClientCertificateRevocationList
    class ImportClientVpnClientCertificateRevocationList
    end

    # Operation Parser for ImportImage
    class ImportImage
    end

    # Operation Parser for ImportInstance
    class ImportInstance
    end

    # Operation Parser for ImportKeyPair
    class ImportKeyPair
    end

    # Operation Parser for ImportSnapshot
    class ImportSnapshot
    end

    # Operation Parser for ImportVolume
    class ImportVolume
    end

    # Operation Parser for ListSnapshotsInRecycleBin
    class ListSnapshotsInRecycleBin
    end

    class SnapshotRecycleBinInfoList
    end

    class SnapshotRecycleBinInfo
    end

    # Operation Parser for ModifyAddressAttribute
    class ModifyAddressAttribute
    end

    # Operation Parser for ModifyAvailabilityZoneGroup
    class ModifyAvailabilityZoneGroup
    end

    # Operation Parser for ModifyCapacityReservation
    class ModifyCapacityReservation
    end

    # Operation Parser for ModifyCapacityReservationFleet
    class ModifyCapacityReservationFleet
    end

    # Operation Parser for ModifyClientVpnEndpoint
    class ModifyClientVpnEndpoint
    end

    # Operation Parser for ModifyDefaultCreditSpecification
    class ModifyDefaultCreditSpecification
    end

    # Operation Parser for ModifyEbsDefaultKmsKeyId
    class ModifyEbsDefaultKmsKeyId
    end

    # Operation Parser for ModifyFleet
    class ModifyFleet
    end

    # Operation Parser for ModifyFpgaImageAttribute
    class ModifyFpgaImageAttribute
    end

    # Operation Parser for ModifyHosts
    class ModifyHosts
    end

    class UnsuccessfulItemList
    end

    # Operation Parser for ModifyIdFormat
    class ModifyIdFormat
    end

    # Operation Parser for ModifyIdentityIdFormat
    class ModifyIdentityIdFormat
    end

    # Operation Parser for ModifyImageAttribute
    class ModifyImageAttribute
    end

    # Operation Parser for ModifyInstanceAttribute
    class ModifyInstanceAttribute
    end

    # Operation Parser for ModifyInstanceCapacityReservationAttributes
    class ModifyInstanceCapacityReservationAttributes
    end

    # Operation Parser for ModifyInstanceCreditSpecification
    class ModifyInstanceCreditSpecification
    end

    class UnsuccessfulInstanceCreditSpecificationSet
    end

    class UnsuccessfulInstanceCreditSpecificationItem
    end

    class UnsuccessfulInstanceCreditSpecificationItemError
    end

    class SuccessfulInstanceCreditSpecificationSet
    end

    class SuccessfulInstanceCreditSpecificationItem
    end

    # Operation Parser for ModifyInstanceEventStartTime
    class ModifyInstanceEventStartTime
    end

    # Operation Parser for ModifyInstanceEventWindow
    class ModifyInstanceEventWindow
    end

    # Operation Parser for ModifyInstanceMetadataOptions
    class ModifyInstanceMetadataOptions
    end

    # Operation Parser for ModifyInstancePlacement
    class ModifyInstancePlacement
    end

    # Operation Parser for ModifyIpam
    class ModifyIpam
    end

    # Operation Parser for ModifyIpamPool
    class ModifyIpamPool
    end

    # Operation Parser for ModifyIpamResourceCidr
    class ModifyIpamResourceCidr
    end

    # Operation Parser for ModifyIpamScope
    class ModifyIpamScope
    end

    # Operation Parser for ModifyLaunchTemplate
    class ModifyLaunchTemplate
    end

    # Operation Parser for ModifyManagedPrefixList
    class ModifyManagedPrefixList
    end

    # Operation Parser for ModifyNetworkInterfaceAttribute
    class ModifyNetworkInterfaceAttribute
    end

    # Operation Parser for ModifyPrivateDnsNameOptions
    class ModifyPrivateDnsNameOptions
    end

    # Operation Parser for ModifyReservedInstances
    class ModifyReservedInstances
    end

    # Operation Parser for ModifySecurityGroupRules
    class ModifySecurityGroupRules
    end

    # Operation Parser for ModifySnapshotAttribute
    class ModifySnapshotAttribute
    end

    # Operation Parser for ModifySnapshotTier
    class ModifySnapshotTier
    end

    # Operation Parser for ModifySpotFleetRequest
    class ModifySpotFleetRequest
    end

    # Operation Parser for ModifySubnetAttribute
    class ModifySubnetAttribute
    end

    # Operation Parser for ModifyTrafficMirrorFilterNetworkServices
    class ModifyTrafficMirrorFilterNetworkServices
    end

    # Operation Parser for ModifyTrafficMirrorFilterRule
    class ModifyTrafficMirrorFilterRule
    end

    # Operation Parser for ModifyTrafficMirrorSession
    class ModifyTrafficMirrorSession
    end

    # Operation Parser for ModifyTransitGateway
    class ModifyTransitGateway
    end

    # Operation Parser for ModifyTransitGatewayPrefixListReference
    class ModifyTransitGatewayPrefixListReference
    end

    # Operation Parser for ModifyTransitGatewayVpcAttachment
    class ModifyTransitGatewayVpcAttachment
    end

    # Operation Parser for ModifyVolume
    class ModifyVolume
    end

    # Operation Parser for ModifyVolumeAttribute
    class ModifyVolumeAttribute
    end

    # Operation Parser for ModifyVpcAttribute
    class ModifyVpcAttribute
    end

    # Operation Parser for ModifyVpcEndpoint
    class ModifyVpcEndpoint
    end

    # Operation Parser for ModifyVpcEndpointConnectionNotification
    class ModifyVpcEndpointConnectionNotification
    end

    # Operation Parser for ModifyVpcEndpointServiceConfiguration
    class ModifyVpcEndpointServiceConfiguration
    end

    # Operation Parser for ModifyVpcEndpointServicePayerResponsibility
    class ModifyVpcEndpointServicePayerResponsibility
    end

    # Operation Parser for ModifyVpcEndpointServicePermissions
    class ModifyVpcEndpointServicePermissions
    end

    # Operation Parser for ModifyVpcPeeringConnectionOptions
    class ModifyVpcPeeringConnectionOptions
    end

    class PeeringConnectionOptions
    end

    # Operation Parser for ModifyVpcTenancy
    class ModifyVpcTenancy
    end

    # Operation Parser for ModifyVpnConnection
    class ModifyVpnConnection
    end

    # Operation Parser for ModifyVpnConnectionOptions
    class ModifyVpnConnectionOptions
    end

    # Operation Parser for ModifyVpnTunnelCertificate
    class ModifyVpnTunnelCertificate
    end

    # Operation Parser for ModifyVpnTunnelOptions
    class ModifyVpnTunnelOptions
    end

    # Operation Parser for MonitorInstances
    class MonitorInstances
    end

    class InstanceMonitoringList
    end

    class InstanceMonitoring
    end

    # Operation Parser for MoveAddressToVpc
    class MoveAddressToVpc
    end

    # Operation Parser for MoveByoipCidrToIpam
    class MoveByoipCidrToIpam
    end

    # Operation Parser for ProvisionByoipCidr
    class ProvisionByoipCidr
    end

    # Operation Parser for ProvisionIpamPoolCidr
    class ProvisionIpamPoolCidr
    end

    # Operation Parser for ProvisionPublicIpv4PoolCidr
    class ProvisionPublicIpv4PoolCidr
    end

    # Operation Parser for PurchaseHostReservation
    class PurchaseHostReservation
    end

    # Operation Parser for PurchaseReservedInstancesOffering
    class PurchaseReservedInstancesOffering
    end

    # Operation Parser for PurchaseScheduledInstances
    class PurchaseScheduledInstances
    end

    class PurchasedScheduledInstanceSet
    end

    # Operation Parser for RebootInstances
    class RebootInstances
    end

    # Operation Parser for RegisterImage
    class RegisterImage
    end

    # Operation Parser for RegisterInstanceEventNotificationAttributes
    class RegisterInstanceEventNotificationAttributes
    end

    # Operation Parser for RegisterTransitGatewayMulticastGroupMembers
    class RegisterTransitGatewayMulticastGroupMembers
    end

    class TransitGatewayMulticastRegisteredGroupMembers
    end

    # Operation Parser for RegisterTransitGatewayMulticastGroupSources
    class RegisterTransitGatewayMulticastGroupSources
    end

    class TransitGatewayMulticastRegisteredGroupSources
    end

    # Operation Parser for RejectTransitGatewayMulticastDomainAssociations
    class RejectTransitGatewayMulticastDomainAssociations
    end

    # Operation Parser for RejectTransitGatewayPeeringAttachment
    class RejectTransitGatewayPeeringAttachment
    end

    # Operation Parser for RejectTransitGatewayVpcAttachment
    class RejectTransitGatewayVpcAttachment
    end

    # Operation Parser for RejectVpcEndpointConnections
    class RejectVpcEndpointConnections
    end

    # Operation Parser for RejectVpcPeeringConnection
    class RejectVpcPeeringConnection
    end

    # Operation Parser for ReleaseAddress
    class ReleaseAddress
    end

    # Operation Parser for ReleaseHosts
    class ReleaseHosts
    end

    # Operation Parser for ReleaseIpamPoolAllocation
    class ReleaseIpamPoolAllocation
    end

    # Operation Parser for ReplaceIamInstanceProfileAssociation
    class ReplaceIamInstanceProfileAssociation
    end

    # Operation Parser for ReplaceNetworkAclAssociation
    class ReplaceNetworkAclAssociation
    end

    # Operation Parser for ReplaceNetworkAclEntry
    class ReplaceNetworkAclEntry
    end

    # Operation Parser for ReplaceRoute
    class ReplaceRoute
    end

    # Operation Parser for ReplaceRouteTableAssociation
    class ReplaceRouteTableAssociation
    end

    # Operation Parser for ReplaceTransitGatewayRoute
    class ReplaceTransitGatewayRoute
    end

    # Operation Parser for ReportInstanceStatus
    class ReportInstanceStatus
    end

    # Operation Parser for RequestSpotFleet
    class RequestSpotFleet
    end

    # Operation Parser for RequestSpotInstances
    class RequestSpotInstances
    end

    # Operation Parser for ResetAddressAttribute
    class ResetAddressAttribute
    end

    # Operation Parser for ResetEbsDefaultKmsKeyId
    class ResetEbsDefaultKmsKeyId
    end

    # Operation Parser for ResetFpgaImageAttribute
    class ResetFpgaImageAttribute
    end

    # Operation Parser for ResetImageAttribute
    class ResetImageAttribute
    end

    # Operation Parser for ResetInstanceAttribute
    class ResetInstanceAttribute
    end

    # Operation Parser for ResetNetworkInterfaceAttribute
    class ResetNetworkInterfaceAttribute
    end

    # Operation Parser for ResetSnapshotAttribute
    class ResetSnapshotAttribute
    end

    # Operation Parser for RestoreAddressToClassic
    class RestoreAddressToClassic
    end

    # Operation Parser for RestoreManagedPrefixListVersion
    class RestoreManagedPrefixListVersion
    end

    # Operation Parser for RestoreSnapshotFromRecycleBin
    class RestoreSnapshotFromRecycleBin
    end

    # Operation Parser for RestoreSnapshotTier
    class RestoreSnapshotTier
    end

    # Operation Parser for RevokeClientVpnIngress
    class RevokeClientVpnIngress
    end

    # Operation Parser for RevokeSecurityGroupEgress
    class RevokeSecurityGroupEgress
    end

    # Operation Parser for RevokeSecurityGroupIngress
    class RevokeSecurityGroupIngress
    end

    # Operation Parser for RunInstances
    class RunInstances
    end

    # Operation Parser for RunScheduledInstances
    class RunScheduledInstances
    end

    class InstanceIdSet
    end

    # Operation Parser for SearchLocalGatewayRoutes
    class SearchLocalGatewayRoutes
    end

    class LocalGatewayRouteList
    end

    # Operation Parser for SearchTransitGatewayMulticastGroups
    class SearchTransitGatewayMulticastGroups
    end

    class TransitGatewayMulticastGroupList
    end

    class TransitGatewayMulticastGroup
    end

    # Operation Parser for SearchTransitGatewayRoutes
    class SearchTransitGatewayRoutes
    end

    class TransitGatewayRouteList
    end

    # Operation Parser for SendDiagnosticInterrupt
    class SendDiagnosticInterrupt
    end

    # Operation Parser for StartInstances
    class StartInstances
    end

    class InstanceStateChangeList
    end

    class InstanceStateChange
    end

    # Operation Parser for StartNetworkInsightsAccessScopeAnalysis
    class StartNetworkInsightsAccessScopeAnalysis
    end

    # Operation Parser for StartNetworkInsightsAnalysis
    class StartNetworkInsightsAnalysis
    end

    # Operation Parser for StartVpcEndpointServicePrivateDnsVerification
    class StartVpcEndpointServicePrivateDnsVerification
    end

    # Operation Parser for StopInstances
    class StopInstances
    end

    # Operation Parser for TerminateClientVpnConnections
    class TerminateClientVpnConnections
    end

    class TerminateConnectionStatusSet
    end

    class TerminateConnectionStatus
    end

    # Operation Parser for TerminateInstances
    class TerminateInstances
    end

    # Operation Parser for UnassignIpv6Addresses
    class UnassignIpv6Addresses
    end

    # Operation Parser for UnassignPrivateIpAddresses
    class UnassignPrivateIpAddresses
    end

    # Operation Parser for UnmonitorInstances
    class UnmonitorInstances
    end

    # Operation Parser for UpdateSecurityGroupRuleDescriptionsEgress
    class UpdateSecurityGroupRuleDescriptionsEgress
    end

    # Operation Parser for UpdateSecurityGroupRuleDescriptionsIngress
    class UpdateSecurityGroupRuleDescriptionsIngress
    end

    # Operation Parser for WithdrawByoipCidr
    class WithdrawByoipCidr
    end
  end
end
