# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EC2
  # @api private
  module Telemetry

    class AcceptAddressTransfer
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AcceptAddressTransfer',
          'code.function' => 'accept_address_transfer',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AcceptAddressTransfer', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AcceptReservedInstancesExchangeQuote
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AcceptReservedInstancesExchangeQuote',
          'code.function' => 'accept_reserved_instances_exchange_quote',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AcceptReservedInstancesExchangeQuote', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AcceptTransitGatewayMulticastDomainAssociations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AcceptTransitGatewayMulticastDomainAssociations',
          'code.function' => 'accept_transit_gateway_multicast_domain_associations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AcceptTransitGatewayMulticastDomainAssociations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AcceptTransitGatewayPeeringAttachment
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AcceptTransitGatewayPeeringAttachment',
          'code.function' => 'accept_transit_gateway_peering_attachment',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AcceptTransitGatewayPeeringAttachment', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AcceptTransitGatewayVpcAttachment
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AcceptTransitGatewayVpcAttachment',
          'code.function' => 'accept_transit_gateway_vpc_attachment',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AcceptTransitGatewayVpcAttachment', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AcceptVpcEndpointConnections
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AcceptVpcEndpointConnections',
          'code.function' => 'accept_vpc_endpoint_connections',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AcceptVpcEndpointConnections', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AcceptVpcPeeringConnection
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AcceptVpcPeeringConnection',
          'code.function' => 'accept_vpc_peering_connection',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AcceptVpcPeeringConnection', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AdvertiseByoipCidr
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AdvertiseByoipCidr',
          'code.function' => 'advertise_byoip_cidr',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AdvertiseByoipCidr', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AllocateAddress
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AllocateAddress',
          'code.function' => 'allocate_address',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AllocateAddress', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AllocateHosts
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AllocateHosts',
          'code.function' => 'allocate_hosts',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AllocateHosts', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AllocateIpamPoolCidr
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AllocateIpamPoolCidr',
          'code.function' => 'allocate_ipam_pool_cidr',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AllocateIpamPoolCidr', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ApplySecurityGroupsToClientVpnTargetNetwork
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ApplySecurityGroupsToClientVpnTargetNetwork',
          'code.function' => 'apply_security_groups_to_client_vpn_target_network',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ApplySecurityGroupsToClientVpnTargetNetwork', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AssignIpv6Addresses
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AssignIpv6Addresses',
          'code.function' => 'assign_ipv6_addresses',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AssignIpv6Addresses', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AssignPrivateIpAddresses
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AssignPrivateIpAddresses',
          'code.function' => 'assign_private_ip_addresses',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AssignPrivateIpAddresses', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AssignPrivateNatGatewayAddress
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AssignPrivateNatGatewayAddress',
          'code.function' => 'assign_private_nat_gateway_address',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AssignPrivateNatGatewayAddress', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AssociateAddress
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AssociateAddress',
          'code.function' => 'associate_address',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AssociateAddress', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AssociateClientVpnTargetNetwork
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AssociateClientVpnTargetNetwork',
          'code.function' => 'associate_client_vpn_target_network',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AssociateClientVpnTargetNetwork', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AssociateDhcpOptions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AssociateDhcpOptions',
          'code.function' => 'associate_dhcp_options',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AssociateDhcpOptions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AssociateEnclaveCertificateIamRole
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AssociateEnclaveCertificateIamRole',
          'code.function' => 'associate_enclave_certificate_iam_role',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AssociateEnclaveCertificateIamRole', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AssociateIamInstanceProfile
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AssociateIamInstanceProfile',
          'code.function' => 'associate_iam_instance_profile',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AssociateIamInstanceProfile', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AssociateInstanceEventWindow
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AssociateInstanceEventWindow',
          'code.function' => 'associate_instance_event_window',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AssociateInstanceEventWindow', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AssociateIpamByoasn
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AssociateIpamByoasn',
          'code.function' => 'associate_ipam_byoasn',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AssociateIpamByoasn', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AssociateIpamResourceDiscovery
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AssociateIpamResourceDiscovery',
          'code.function' => 'associate_ipam_resource_discovery',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AssociateIpamResourceDiscovery', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AssociateNatGatewayAddress
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AssociateNatGatewayAddress',
          'code.function' => 'associate_nat_gateway_address',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AssociateNatGatewayAddress', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AssociateRouteTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AssociateRouteTable',
          'code.function' => 'associate_route_table',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AssociateRouteTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AssociateSubnetCidrBlock
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AssociateSubnetCidrBlock',
          'code.function' => 'associate_subnet_cidr_block',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AssociateSubnetCidrBlock', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AssociateTransitGatewayMulticastDomain
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AssociateTransitGatewayMulticastDomain',
          'code.function' => 'associate_transit_gateway_multicast_domain',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AssociateTransitGatewayMulticastDomain', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AssociateTransitGatewayPolicyTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AssociateTransitGatewayPolicyTable',
          'code.function' => 'associate_transit_gateway_policy_table',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AssociateTransitGatewayPolicyTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AssociateTransitGatewayRouteTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AssociateTransitGatewayRouteTable',
          'code.function' => 'associate_transit_gateway_route_table',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AssociateTransitGatewayRouteTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AssociateTrunkInterface
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AssociateTrunkInterface',
          'code.function' => 'associate_trunk_interface',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AssociateTrunkInterface', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AssociateVpcCidrBlock
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AssociateVpcCidrBlock',
          'code.function' => 'associate_vpc_cidr_block',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AssociateVpcCidrBlock', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AttachClassicLinkVpc
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AttachClassicLinkVpc',
          'code.function' => 'attach_classic_link_vpc',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AttachClassicLinkVpc', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AttachInternetGateway
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AttachInternetGateway',
          'code.function' => 'attach_internet_gateway',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AttachInternetGateway', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AttachNetworkInterface
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AttachNetworkInterface',
          'code.function' => 'attach_network_interface',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AttachNetworkInterface', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AttachVerifiedAccessTrustProvider
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AttachVerifiedAccessTrustProvider',
          'code.function' => 'attach_verified_access_trust_provider',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AttachVerifiedAccessTrustProvider', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AttachVolume
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AttachVolume',
          'code.function' => 'attach_volume',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AttachVolume', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AttachVpnGateway
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AttachVpnGateway',
          'code.function' => 'attach_vpn_gateway',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AttachVpnGateway', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AuthorizeClientVpnIngress
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AuthorizeClientVpnIngress',
          'code.function' => 'authorize_client_vpn_ingress',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AuthorizeClientVpnIngress', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AuthorizeSecurityGroupEgress
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AuthorizeSecurityGroupEgress',
          'code.function' => 'authorize_security_group_egress',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AuthorizeSecurityGroupEgress', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class AuthorizeSecurityGroupIngress
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'AuthorizeSecurityGroupIngress',
          'code.function' => 'authorize_security_group_ingress',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.AuthorizeSecurityGroupIngress', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class BundleInstance
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'BundleInstance',
          'code.function' => 'bundle_instance',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.BundleInstance', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CancelBundleTask
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CancelBundleTask',
          'code.function' => 'cancel_bundle_task',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CancelBundleTask', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CancelCapacityReservation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CancelCapacityReservation',
          'code.function' => 'cancel_capacity_reservation',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CancelCapacityReservation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CancelCapacityReservationFleets
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CancelCapacityReservationFleets',
          'code.function' => 'cancel_capacity_reservation_fleets',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CancelCapacityReservationFleets', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CancelConversionTask
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CancelConversionTask',
          'code.function' => 'cancel_conversion_task',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CancelConversionTask', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CancelExportTask
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CancelExportTask',
          'code.function' => 'cancel_export_task',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CancelExportTask', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CancelImageLaunchPermission
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CancelImageLaunchPermission',
          'code.function' => 'cancel_image_launch_permission',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CancelImageLaunchPermission', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CancelImportTask
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CancelImportTask',
          'code.function' => 'cancel_import_task',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CancelImportTask', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CancelReservedInstancesListing
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CancelReservedInstancesListing',
          'code.function' => 'cancel_reserved_instances_listing',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CancelReservedInstancesListing', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CancelSpotFleetRequests
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CancelSpotFleetRequests',
          'code.function' => 'cancel_spot_fleet_requests',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CancelSpotFleetRequests', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CancelSpotInstanceRequests
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CancelSpotInstanceRequests',
          'code.function' => 'cancel_spot_instance_requests',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CancelSpotInstanceRequests', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ConfirmProductInstance
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ConfirmProductInstance',
          'code.function' => 'confirm_product_instance',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ConfirmProductInstance', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CopyFpgaImage
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CopyFpgaImage',
          'code.function' => 'copy_fpga_image',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CopyFpgaImage', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CopyImage
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CopyImage',
          'code.function' => 'copy_image',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CopyImage', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CopySnapshot
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CopySnapshot',
          'code.function' => 'copy_snapshot',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CopySnapshot', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateCapacityReservation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateCapacityReservation',
          'code.function' => 'create_capacity_reservation',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateCapacityReservation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateCapacityReservationFleet
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateCapacityReservationFleet',
          'code.function' => 'create_capacity_reservation_fleet',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateCapacityReservationFleet', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateCarrierGateway
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateCarrierGateway',
          'code.function' => 'create_carrier_gateway',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateCarrierGateway', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateClientVpnEndpoint
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateClientVpnEndpoint',
          'code.function' => 'create_client_vpn_endpoint',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateClientVpnEndpoint', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateClientVpnRoute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateClientVpnRoute',
          'code.function' => 'create_client_vpn_route',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateClientVpnRoute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateCoipCidr
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateCoipCidr',
          'code.function' => 'create_coip_cidr',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateCoipCidr', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateCoipPool
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateCoipPool',
          'code.function' => 'create_coip_pool',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateCoipPool', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateCustomerGateway
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateCustomerGateway',
          'code.function' => 'create_customer_gateway',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateCustomerGateway', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateDefaultSubnet
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateDefaultSubnet',
          'code.function' => 'create_default_subnet',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateDefaultSubnet', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateDefaultVpc
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateDefaultVpc',
          'code.function' => 'create_default_vpc',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateDefaultVpc', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateDhcpOptions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateDhcpOptions',
          'code.function' => 'create_dhcp_options',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateDhcpOptions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateEgressOnlyInternetGateway
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateEgressOnlyInternetGateway',
          'code.function' => 'create_egress_only_internet_gateway',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateEgressOnlyInternetGateway', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateFleet
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateFleet',
          'code.function' => 'create_fleet',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateFleet', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateFlowLogs
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateFlowLogs',
          'code.function' => 'create_flow_logs',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateFlowLogs', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateFpgaImage
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateFpgaImage',
          'code.function' => 'create_fpga_image',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateFpgaImage', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateImage
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateImage',
          'code.function' => 'create_image',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateImage', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateInstanceConnectEndpoint
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateInstanceConnectEndpoint',
          'code.function' => 'create_instance_connect_endpoint',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateInstanceConnectEndpoint', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateInstanceEventWindow
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateInstanceEventWindow',
          'code.function' => 'create_instance_event_window',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateInstanceEventWindow', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateInstanceExportTask
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateInstanceExportTask',
          'code.function' => 'create_instance_export_task',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateInstanceExportTask', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateInternetGateway
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateInternetGateway',
          'code.function' => 'create_internet_gateway',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateInternetGateway', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateIpam
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateIpam',
          'code.function' => 'create_ipam',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateIpam', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateIpamPool
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateIpamPool',
          'code.function' => 'create_ipam_pool',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateIpamPool', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateIpamResourceDiscovery
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateIpamResourceDiscovery',
          'code.function' => 'create_ipam_resource_discovery',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateIpamResourceDiscovery', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateIpamScope
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateIpamScope',
          'code.function' => 'create_ipam_scope',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateIpamScope', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateKeyPair
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateKeyPair',
          'code.function' => 'create_key_pair',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateKeyPair', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateLaunchTemplate
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateLaunchTemplate',
          'code.function' => 'create_launch_template',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateLaunchTemplate', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateLaunchTemplateVersion
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateLaunchTemplateVersion',
          'code.function' => 'create_launch_template_version',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateLaunchTemplateVersion', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateLocalGatewayRoute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateLocalGatewayRoute',
          'code.function' => 'create_local_gateway_route',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateLocalGatewayRoute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateLocalGatewayRouteTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateLocalGatewayRouteTable',
          'code.function' => 'create_local_gateway_route_table',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateLocalGatewayRouteTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociation',
          'code.function' => 'create_local_gateway_route_table_virtual_interface_group_association',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateLocalGatewayRouteTableVpcAssociation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateLocalGatewayRouteTableVpcAssociation',
          'code.function' => 'create_local_gateway_route_table_vpc_association',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateLocalGatewayRouteTableVpcAssociation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateManagedPrefixList
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateManagedPrefixList',
          'code.function' => 'create_managed_prefix_list',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateManagedPrefixList', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateNatGateway
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateNatGateway',
          'code.function' => 'create_nat_gateway',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateNatGateway', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateNetworkAcl
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateNetworkAcl',
          'code.function' => 'create_network_acl',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateNetworkAcl', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateNetworkAclEntry
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateNetworkAclEntry',
          'code.function' => 'create_network_acl_entry',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateNetworkAclEntry', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateNetworkInsightsAccessScope
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateNetworkInsightsAccessScope',
          'code.function' => 'create_network_insights_access_scope',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateNetworkInsightsAccessScope', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateNetworkInsightsPath
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateNetworkInsightsPath',
          'code.function' => 'create_network_insights_path',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateNetworkInsightsPath', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateNetworkInterface
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateNetworkInterface',
          'code.function' => 'create_network_interface',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateNetworkInterface', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateNetworkInterfacePermission
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateNetworkInterfacePermission',
          'code.function' => 'create_network_interface_permission',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateNetworkInterfacePermission', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreatePlacementGroup
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreatePlacementGroup',
          'code.function' => 'create_placement_group',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreatePlacementGroup', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreatePublicIpv4Pool
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreatePublicIpv4Pool',
          'code.function' => 'create_public_ipv4_pool',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreatePublicIpv4Pool', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateReplaceRootVolumeTask
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateReplaceRootVolumeTask',
          'code.function' => 'create_replace_root_volume_task',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateReplaceRootVolumeTask', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateReservedInstancesListing
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateReservedInstancesListing',
          'code.function' => 'create_reserved_instances_listing',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateReservedInstancesListing', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateRestoreImageTask
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateRestoreImageTask',
          'code.function' => 'create_restore_image_task',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateRestoreImageTask', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateRoute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateRoute',
          'code.function' => 'create_route',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateRoute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateRouteTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateRouteTable',
          'code.function' => 'create_route_table',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateRouteTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateSecurityGroup
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateSecurityGroup',
          'code.function' => 'create_security_group',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateSecurityGroup', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateSnapshot
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateSnapshot',
          'code.function' => 'create_snapshot',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateSnapshot', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateSnapshots
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateSnapshots',
          'code.function' => 'create_snapshots',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateSnapshots', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateSpotDatafeedSubscription
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateSpotDatafeedSubscription',
          'code.function' => 'create_spot_datafeed_subscription',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateSpotDatafeedSubscription', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateStoreImageTask
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateStoreImageTask',
          'code.function' => 'create_store_image_task',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateStoreImageTask', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateSubnet
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateSubnet',
          'code.function' => 'create_subnet',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateSubnet', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateSubnetCidrReservation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateSubnetCidrReservation',
          'code.function' => 'create_subnet_cidr_reservation',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateSubnetCidrReservation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateTags
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateTags',
          'code.function' => 'create_tags',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateTags', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateTrafficMirrorFilter
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateTrafficMirrorFilter',
          'code.function' => 'create_traffic_mirror_filter',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateTrafficMirrorFilter', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateTrafficMirrorFilterRule
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateTrafficMirrorFilterRule',
          'code.function' => 'create_traffic_mirror_filter_rule',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateTrafficMirrorFilterRule', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateTrafficMirrorSession
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateTrafficMirrorSession',
          'code.function' => 'create_traffic_mirror_session',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateTrafficMirrorSession', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateTrafficMirrorTarget
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateTrafficMirrorTarget',
          'code.function' => 'create_traffic_mirror_target',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateTrafficMirrorTarget', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateTransitGateway
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateTransitGateway',
          'code.function' => 'create_transit_gateway',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateTransitGateway', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateTransitGatewayConnect
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateTransitGatewayConnect',
          'code.function' => 'create_transit_gateway_connect',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateTransitGatewayConnect', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateTransitGatewayConnectPeer
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateTransitGatewayConnectPeer',
          'code.function' => 'create_transit_gateway_connect_peer',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateTransitGatewayConnectPeer', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateTransitGatewayMulticastDomain
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateTransitGatewayMulticastDomain',
          'code.function' => 'create_transit_gateway_multicast_domain',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateTransitGatewayMulticastDomain', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateTransitGatewayPeeringAttachment
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateTransitGatewayPeeringAttachment',
          'code.function' => 'create_transit_gateway_peering_attachment',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateTransitGatewayPeeringAttachment', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateTransitGatewayPolicyTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateTransitGatewayPolicyTable',
          'code.function' => 'create_transit_gateway_policy_table',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateTransitGatewayPolicyTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateTransitGatewayPrefixListReference
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateTransitGatewayPrefixListReference',
          'code.function' => 'create_transit_gateway_prefix_list_reference',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateTransitGatewayPrefixListReference', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateTransitGatewayRoute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateTransitGatewayRoute',
          'code.function' => 'create_transit_gateway_route',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateTransitGatewayRoute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateTransitGatewayRouteTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateTransitGatewayRouteTable',
          'code.function' => 'create_transit_gateway_route_table',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateTransitGatewayRouteTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateTransitGatewayRouteTableAnnouncement
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateTransitGatewayRouteTableAnnouncement',
          'code.function' => 'create_transit_gateway_route_table_announcement',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateTransitGatewayRouteTableAnnouncement', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateTransitGatewayVpcAttachment
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateTransitGatewayVpcAttachment',
          'code.function' => 'create_transit_gateway_vpc_attachment',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateTransitGatewayVpcAttachment', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateVerifiedAccessEndpoint
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateVerifiedAccessEndpoint',
          'code.function' => 'create_verified_access_endpoint',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateVerifiedAccessEndpoint', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateVerifiedAccessGroup
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateVerifiedAccessGroup',
          'code.function' => 'create_verified_access_group',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateVerifiedAccessGroup', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateVerifiedAccessInstance
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateVerifiedAccessInstance',
          'code.function' => 'create_verified_access_instance',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateVerifiedAccessInstance', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateVerifiedAccessTrustProvider
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateVerifiedAccessTrustProvider',
          'code.function' => 'create_verified_access_trust_provider',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateVerifiedAccessTrustProvider', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateVolume
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateVolume',
          'code.function' => 'create_volume',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateVolume', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateVpc
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateVpc',
          'code.function' => 'create_vpc',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateVpc', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateVpcEndpoint
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateVpcEndpoint',
          'code.function' => 'create_vpc_endpoint',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateVpcEndpoint', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateVpcEndpointConnectionNotification
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateVpcEndpointConnectionNotification',
          'code.function' => 'create_vpc_endpoint_connection_notification',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateVpcEndpointConnectionNotification', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateVpcEndpointServiceConfiguration
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateVpcEndpointServiceConfiguration',
          'code.function' => 'create_vpc_endpoint_service_configuration',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateVpcEndpointServiceConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateVpcPeeringConnection
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateVpcPeeringConnection',
          'code.function' => 'create_vpc_peering_connection',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateVpcPeeringConnection', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateVpnConnection
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateVpnConnection',
          'code.function' => 'create_vpn_connection',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateVpnConnection', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateVpnConnectionRoute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateVpnConnectionRoute',
          'code.function' => 'create_vpn_connection_route',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateVpnConnectionRoute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateVpnGateway
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'CreateVpnGateway',
          'code.function' => 'create_vpn_gateway',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.CreateVpnGateway', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteCarrierGateway
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteCarrierGateway',
          'code.function' => 'delete_carrier_gateway',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteCarrierGateway', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteClientVpnEndpoint
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteClientVpnEndpoint',
          'code.function' => 'delete_client_vpn_endpoint',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteClientVpnEndpoint', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteClientVpnRoute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteClientVpnRoute',
          'code.function' => 'delete_client_vpn_route',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteClientVpnRoute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteCoipCidr
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteCoipCidr',
          'code.function' => 'delete_coip_cidr',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteCoipCidr', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteCoipPool
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteCoipPool',
          'code.function' => 'delete_coip_pool',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteCoipPool', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteCustomerGateway
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteCustomerGateway',
          'code.function' => 'delete_customer_gateway',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteCustomerGateway', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteDhcpOptions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteDhcpOptions',
          'code.function' => 'delete_dhcp_options',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteDhcpOptions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteEgressOnlyInternetGateway
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteEgressOnlyInternetGateway',
          'code.function' => 'delete_egress_only_internet_gateway',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteEgressOnlyInternetGateway', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteFleets
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteFleets',
          'code.function' => 'delete_fleets',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteFleets', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteFlowLogs
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteFlowLogs',
          'code.function' => 'delete_flow_logs',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteFlowLogs', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteFpgaImage
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteFpgaImage',
          'code.function' => 'delete_fpga_image',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteFpgaImage', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteInstanceConnectEndpoint
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteInstanceConnectEndpoint',
          'code.function' => 'delete_instance_connect_endpoint',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteInstanceConnectEndpoint', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteInstanceEventWindow
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteInstanceEventWindow',
          'code.function' => 'delete_instance_event_window',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteInstanceEventWindow', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteInternetGateway
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteInternetGateway',
          'code.function' => 'delete_internet_gateway',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteInternetGateway', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteIpam
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteIpam',
          'code.function' => 'delete_ipam',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteIpam', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteIpamPool
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteIpamPool',
          'code.function' => 'delete_ipam_pool',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteIpamPool', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteIpamResourceDiscovery
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteIpamResourceDiscovery',
          'code.function' => 'delete_ipam_resource_discovery',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteIpamResourceDiscovery', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteIpamScope
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteIpamScope',
          'code.function' => 'delete_ipam_scope',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteIpamScope', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteKeyPair
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteKeyPair',
          'code.function' => 'delete_key_pair',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteKeyPair', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteLaunchTemplate
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteLaunchTemplate',
          'code.function' => 'delete_launch_template',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteLaunchTemplate', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteLaunchTemplateVersions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteLaunchTemplateVersions',
          'code.function' => 'delete_launch_template_versions',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteLaunchTemplateVersions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteLocalGatewayRoute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteLocalGatewayRoute',
          'code.function' => 'delete_local_gateway_route',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteLocalGatewayRoute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteLocalGatewayRouteTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteLocalGatewayRouteTable',
          'code.function' => 'delete_local_gateway_route_table',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteLocalGatewayRouteTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation',
          'code.function' => 'delete_local_gateway_route_table_virtual_interface_group_association',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteLocalGatewayRouteTableVpcAssociation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteLocalGatewayRouteTableVpcAssociation',
          'code.function' => 'delete_local_gateway_route_table_vpc_association',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteLocalGatewayRouteTableVpcAssociation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteManagedPrefixList
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteManagedPrefixList',
          'code.function' => 'delete_managed_prefix_list',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteManagedPrefixList', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteNatGateway
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteNatGateway',
          'code.function' => 'delete_nat_gateway',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteNatGateway', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteNetworkAcl
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteNetworkAcl',
          'code.function' => 'delete_network_acl',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteNetworkAcl', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteNetworkAclEntry
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteNetworkAclEntry',
          'code.function' => 'delete_network_acl_entry',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteNetworkAclEntry', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteNetworkInsightsAccessScope
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteNetworkInsightsAccessScope',
          'code.function' => 'delete_network_insights_access_scope',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteNetworkInsightsAccessScope', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteNetworkInsightsAccessScopeAnalysis
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteNetworkInsightsAccessScopeAnalysis',
          'code.function' => 'delete_network_insights_access_scope_analysis',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteNetworkInsightsAccessScopeAnalysis', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteNetworkInsightsAnalysis
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteNetworkInsightsAnalysis',
          'code.function' => 'delete_network_insights_analysis',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteNetworkInsightsAnalysis', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteNetworkInsightsPath
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteNetworkInsightsPath',
          'code.function' => 'delete_network_insights_path',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteNetworkInsightsPath', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteNetworkInterface
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteNetworkInterface',
          'code.function' => 'delete_network_interface',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteNetworkInterface', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteNetworkInterfacePermission
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteNetworkInterfacePermission',
          'code.function' => 'delete_network_interface_permission',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteNetworkInterfacePermission', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeletePlacementGroup
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeletePlacementGroup',
          'code.function' => 'delete_placement_group',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeletePlacementGroup', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeletePublicIpv4Pool
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeletePublicIpv4Pool',
          'code.function' => 'delete_public_ipv4_pool',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeletePublicIpv4Pool', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteQueuedReservedInstances
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteQueuedReservedInstances',
          'code.function' => 'delete_queued_reserved_instances',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteQueuedReservedInstances', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteRoute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteRoute',
          'code.function' => 'delete_route',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteRoute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteRouteTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteRouteTable',
          'code.function' => 'delete_route_table',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteRouteTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteSecurityGroup
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteSecurityGroup',
          'code.function' => 'delete_security_group',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteSecurityGroup', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteSnapshot
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteSnapshot',
          'code.function' => 'delete_snapshot',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteSnapshot', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteSpotDatafeedSubscription
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteSpotDatafeedSubscription',
          'code.function' => 'delete_spot_datafeed_subscription',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteSpotDatafeedSubscription', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteSubnet
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteSubnet',
          'code.function' => 'delete_subnet',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteSubnet', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteSubnetCidrReservation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteSubnetCidrReservation',
          'code.function' => 'delete_subnet_cidr_reservation',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteSubnetCidrReservation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteTags
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteTags',
          'code.function' => 'delete_tags',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteTags', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteTrafficMirrorFilter
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteTrafficMirrorFilter',
          'code.function' => 'delete_traffic_mirror_filter',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteTrafficMirrorFilter', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteTrafficMirrorFilterRule
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteTrafficMirrorFilterRule',
          'code.function' => 'delete_traffic_mirror_filter_rule',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteTrafficMirrorFilterRule', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteTrafficMirrorSession
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteTrafficMirrorSession',
          'code.function' => 'delete_traffic_mirror_session',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteTrafficMirrorSession', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteTrafficMirrorTarget
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteTrafficMirrorTarget',
          'code.function' => 'delete_traffic_mirror_target',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteTrafficMirrorTarget', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteTransitGateway
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteTransitGateway',
          'code.function' => 'delete_transit_gateway',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteTransitGateway', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteTransitGatewayConnect
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteTransitGatewayConnect',
          'code.function' => 'delete_transit_gateway_connect',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteTransitGatewayConnect', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteTransitGatewayConnectPeer
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteTransitGatewayConnectPeer',
          'code.function' => 'delete_transit_gateway_connect_peer',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteTransitGatewayConnectPeer', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteTransitGatewayMulticastDomain
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteTransitGatewayMulticastDomain',
          'code.function' => 'delete_transit_gateway_multicast_domain',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteTransitGatewayMulticastDomain', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteTransitGatewayPeeringAttachment
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteTransitGatewayPeeringAttachment',
          'code.function' => 'delete_transit_gateway_peering_attachment',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteTransitGatewayPeeringAttachment', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteTransitGatewayPolicyTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteTransitGatewayPolicyTable',
          'code.function' => 'delete_transit_gateway_policy_table',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteTransitGatewayPolicyTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteTransitGatewayPrefixListReference
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteTransitGatewayPrefixListReference',
          'code.function' => 'delete_transit_gateway_prefix_list_reference',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteTransitGatewayPrefixListReference', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteTransitGatewayRoute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteTransitGatewayRoute',
          'code.function' => 'delete_transit_gateway_route',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteTransitGatewayRoute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteTransitGatewayRouteTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteTransitGatewayRouteTable',
          'code.function' => 'delete_transit_gateway_route_table',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteTransitGatewayRouteTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteTransitGatewayRouteTableAnnouncement
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteTransitGatewayRouteTableAnnouncement',
          'code.function' => 'delete_transit_gateway_route_table_announcement',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteTransitGatewayRouteTableAnnouncement', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteTransitGatewayVpcAttachment
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteTransitGatewayVpcAttachment',
          'code.function' => 'delete_transit_gateway_vpc_attachment',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteTransitGatewayVpcAttachment', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteVerifiedAccessEndpoint
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteVerifiedAccessEndpoint',
          'code.function' => 'delete_verified_access_endpoint',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteVerifiedAccessEndpoint', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteVerifiedAccessGroup
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteVerifiedAccessGroup',
          'code.function' => 'delete_verified_access_group',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteVerifiedAccessGroup', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteVerifiedAccessInstance
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteVerifiedAccessInstance',
          'code.function' => 'delete_verified_access_instance',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteVerifiedAccessInstance', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteVerifiedAccessTrustProvider
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteVerifiedAccessTrustProvider',
          'code.function' => 'delete_verified_access_trust_provider',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteVerifiedAccessTrustProvider', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteVolume
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteVolume',
          'code.function' => 'delete_volume',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteVolume', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteVpc
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteVpc',
          'code.function' => 'delete_vpc',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteVpc', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteVpcEndpointConnectionNotifications
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteVpcEndpointConnectionNotifications',
          'code.function' => 'delete_vpc_endpoint_connection_notifications',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteVpcEndpointConnectionNotifications', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteVpcEndpointServiceConfigurations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteVpcEndpointServiceConfigurations',
          'code.function' => 'delete_vpc_endpoint_service_configurations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteVpcEndpointServiceConfigurations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteVpcEndpoints
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteVpcEndpoints',
          'code.function' => 'delete_vpc_endpoints',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteVpcEndpoints', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteVpcPeeringConnection
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteVpcPeeringConnection',
          'code.function' => 'delete_vpc_peering_connection',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteVpcPeeringConnection', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteVpnConnection
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteVpnConnection',
          'code.function' => 'delete_vpn_connection',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteVpnConnection', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteVpnConnectionRoute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteVpnConnectionRoute',
          'code.function' => 'delete_vpn_connection_route',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteVpnConnectionRoute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteVpnGateway
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeleteVpnGateway',
          'code.function' => 'delete_vpn_gateway',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeleteVpnGateway', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeprovisionByoipCidr
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeprovisionByoipCidr',
          'code.function' => 'deprovision_byoip_cidr',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeprovisionByoipCidr', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeprovisionIpamByoasn
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeprovisionIpamByoasn',
          'code.function' => 'deprovision_ipam_byoasn',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeprovisionIpamByoasn', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeprovisionIpamPoolCidr
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeprovisionIpamPoolCidr',
          'code.function' => 'deprovision_ipam_pool_cidr',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeprovisionIpamPoolCidr', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeprovisionPublicIpv4PoolCidr
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeprovisionPublicIpv4PoolCidr',
          'code.function' => 'deprovision_public_ipv4_pool_cidr',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeprovisionPublicIpv4PoolCidr', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeregisterImage
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeregisterImage',
          'code.function' => 'deregister_image',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeregisterImage', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeregisterInstanceEventNotificationAttributes
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeregisterInstanceEventNotificationAttributes',
          'code.function' => 'deregister_instance_event_notification_attributes',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeregisterInstanceEventNotificationAttributes', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeregisterTransitGatewayMulticastGroupMembers
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeregisterTransitGatewayMulticastGroupMembers',
          'code.function' => 'deregister_transit_gateway_multicast_group_members',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeregisterTransitGatewayMulticastGroupMembers', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeregisterTransitGatewayMulticastGroupSources
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DeregisterTransitGatewayMulticastGroupSources',
          'code.function' => 'deregister_transit_gateway_multicast_group_sources',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DeregisterTransitGatewayMulticastGroupSources', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeAccountAttributes
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeAccountAttributes',
          'code.function' => 'describe_account_attributes',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeAccountAttributes', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeAddressTransfers
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeAddressTransfers',
          'code.function' => 'describe_address_transfers',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeAddressTransfers', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeAddresses
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeAddresses',
          'code.function' => 'describe_addresses',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeAddresses', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeAddressesAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeAddressesAttribute',
          'code.function' => 'describe_addresses_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeAddressesAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeAggregateIdFormat
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeAggregateIdFormat',
          'code.function' => 'describe_aggregate_id_format',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeAggregateIdFormat', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeAvailabilityZones
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeAvailabilityZones',
          'code.function' => 'describe_availability_zones',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeAvailabilityZones', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeAwsNetworkPerformanceMetricSubscriptions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeAwsNetworkPerformanceMetricSubscriptions',
          'code.function' => 'describe_aws_network_performance_metric_subscriptions',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeAwsNetworkPerformanceMetricSubscriptions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeBundleTasks
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeBundleTasks',
          'code.function' => 'describe_bundle_tasks',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeBundleTasks', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeByoipCidrs
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeByoipCidrs',
          'code.function' => 'describe_byoip_cidrs',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeByoipCidrs', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeCapacityBlockOfferings
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeCapacityBlockOfferings',
          'code.function' => 'describe_capacity_block_offerings',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeCapacityBlockOfferings', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeCapacityReservationFleets
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeCapacityReservationFleets',
          'code.function' => 'describe_capacity_reservation_fleets',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeCapacityReservationFleets', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeCapacityReservations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeCapacityReservations',
          'code.function' => 'describe_capacity_reservations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeCapacityReservations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeCarrierGateways
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeCarrierGateways',
          'code.function' => 'describe_carrier_gateways',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeCarrierGateways', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeClassicLinkInstances
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeClassicLinkInstances',
          'code.function' => 'describe_classic_link_instances',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeClassicLinkInstances', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeClientVpnAuthorizationRules
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeClientVpnAuthorizationRules',
          'code.function' => 'describe_client_vpn_authorization_rules',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeClientVpnAuthorizationRules', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeClientVpnConnections
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeClientVpnConnections',
          'code.function' => 'describe_client_vpn_connections',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeClientVpnConnections', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeClientVpnEndpoints
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeClientVpnEndpoints',
          'code.function' => 'describe_client_vpn_endpoints',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeClientVpnEndpoints', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeClientVpnRoutes
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeClientVpnRoutes',
          'code.function' => 'describe_client_vpn_routes',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeClientVpnRoutes', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeClientVpnTargetNetworks
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeClientVpnTargetNetworks',
          'code.function' => 'describe_client_vpn_target_networks',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeClientVpnTargetNetworks', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeCoipPools
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeCoipPools',
          'code.function' => 'describe_coip_pools',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeCoipPools', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeConversionTasks
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeConversionTasks',
          'code.function' => 'describe_conversion_tasks',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeConversionTasks', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeCustomerGateways
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeCustomerGateways',
          'code.function' => 'describe_customer_gateways',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeCustomerGateways', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeDhcpOptions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeDhcpOptions',
          'code.function' => 'describe_dhcp_options',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeDhcpOptions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeEgressOnlyInternetGateways
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeEgressOnlyInternetGateways',
          'code.function' => 'describe_egress_only_internet_gateways',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeEgressOnlyInternetGateways', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeElasticGpus
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeElasticGpus',
          'code.function' => 'describe_elastic_gpus',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeElasticGpus', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeExportImageTasks
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeExportImageTasks',
          'code.function' => 'describe_export_image_tasks',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeExportImageTasks', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeExportTasks
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeExportTasks',
          'code.function' => 'describe_export_tasks',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeExportTasks', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeFastLaunchImages
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeFastLaunchImages',
          'code.function' => 'describe_fast_launch_images',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeFastLaunchImages', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeFastSnapshotRestores
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeFastSnapshotRestores',
          'code.function' => 'describe_fast_snapshot_restores',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeFastSnapshotRestores', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeFleetHistory
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeFleetHistory',
          'code.function' => 'describe_fleet_history',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeFleetHistory', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeFleetInstances
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeFleetInstances',
          'code.function' => 'describe_fleet_instances',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeFleetInstances', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeFleets
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeFleets',
          'code.function' => 'describe_fleets',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeFleets', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeFlowLogs
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeFlowLogs',
          'code.function' => 'describe_flow_logs',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeFlowLogs', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeFpgaImageAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeFpgaImageAttribute',
          'code.function' => 'describe_fpga_image_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeFpgaImageAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeFpgaImages
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeFpgaImages',
          'code.function' => 'describe_fpga_images',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeFpgaImages', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeHostReservationOfferings
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeHostReservationOfferings',
          'code.function' => 'describe_host_reservation_offerings',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeHostReservationOfferings', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeHostReservations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeHostReservations',
          'code.function' => 'describe_host_reservations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeHostReservations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeHosts
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeHosts',
          'code.function' => 'describe_hosts',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeHosts', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeIamInstanceProfileAssociations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeIamInstanceProfileAssociations',
          'code.function' => 'describe_iam_instance_profile_associations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeIamInstanceProfileAssociations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeIdFormat
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeIdFormat',
          'code.function' => 'describe_id_format',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeIdFormat', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeIdentityIdFormat
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeIdentityIdFormat',
          'code.function' => 'describe_identity_id_format',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeIdentityIdFormat', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeImageAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeImageAttribute',
          'code.function' => 'describe_image_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeImageAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeImages
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeImages',
          'code.function' => 'describe_images',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeImages', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeImportImageTasks
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeImportImageTasks',
          'code.function' => 'describe_import_image_tasks',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeImportImageTasks', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeImportSnapshotTasks
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeImportSnapshotTasks',
          'code.function' => 'describe_import_snapshot_tasks',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeImportSnapshotTasks', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeInstanceAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeInstanceAttribute',
          'code.function' => 'describe_instance_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeInstanceAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeInstanceConnectEndpoints
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeInstanceConnectEndpoints',
          'code.function' => 'describe_instance_connect_endpoints',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeInstanceConnectEndpoints', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeInstanceCreditSpecifications
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeInstanceCreditSpecifications',
          'code.function' => 'describe_instance_credit_specifications',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeInstanceCreditSpecifications', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeInstanceEventNotificationAttributes
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeInstanceEventNotificationAttributes',
          'code.function' => 'describe_instance_event_notification_attributes',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeInstanceEventNotificationAttributes', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeInstanceEventWindows
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeInstanceEventWindows',
          'code.function' => 'describe_instance_event_windows',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeInstanceEventWindows', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeInstanceStatus
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeInstanceStatus',
          'code.function' => 'describe_instance_status',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeInstanceStatus', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeInstanceTopology
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeInstanceTopology',
          'code.function' => 'describe_instance_topology',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeInstanceTopology', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeInstanceTypeOfferings
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeInstanceTypeOfferings',
          'code.function' => 'describe_instance_type_offerings',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeInstanceTypeOfferings', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeInstanceTypes
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeInstanceTypes',
          'code.function' => 'describe_instance_types',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeInstanceTypes', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeInstances
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeInstances',
          'code.function' => 'describe_instances',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeInstances', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeInternetGateways
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeInternetGateways',
          'code.function' => 'describe_internet_gateways',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeInternetGateways', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeIpamByoasn
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeIpamByoasn',
          'code.function' => 'describe_ipam_byoasn',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeIpamByoasn', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeIpamPools
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeIpamPools',
          'code.function' => 'describe_ipam_pools',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeIpamPools', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeIpamResourceDiscoveries
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeIpamResourceDiscoveries',
          'code.function' => 'describe_ipam_resource_discoveries',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeIpamResourceDiscoveries', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeIpamResourceDiscoveryAssociations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeIpamResourceDiscoveryAssociations',
          'code.function' => 'describe_ipam_resource_discovery_associations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeIpamResourceDiscoveryAssociations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeIpamScopes
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeIpamScopes',
          'code.function' => 'describe_ipam_scopes',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeIpamScopes', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeIpams
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeIpams',
          'code.function' => 'describe_ipams',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeIpams', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeIpv6Pools
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeIpv6Pools',
          'code.function' => 'describe_ipv6_pools',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeIpv6Pools', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeKeyPairs
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeKeyPairs',
          'code.function' => 'describe_key_pairs',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeKeyPairs', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeLaunchTemplateVersions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeLaunchTemplateVersions',
          'code.function' => 'describe_launch_template_versions',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeLaunchTemplateVersions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeLaunchTemplates
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeLaunchTemplates',
          'code.function' => 'describe_launch_templates',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeLaunchTemplates', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations',
          'code.function' => 'describe_local_gateway_route_table_virtual_interface_group_associations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeLocalGatewayRouteTableVpcAssociations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeLocalGatewayRouteTableVpcAssociations',
          'code.function' => 'describe_local_gateway_route_table_vpc_associations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeLocalGatewayRouteTableVpcAssociations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeLocalGatewayRouteTables
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeLocalGatewayRouteTables',
          'code.function' => 'describe_local_gateway_route_tables',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeLocalGatewayRouteTables', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeLocalGatewayVirtualInterfaceGroups
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeLocalGatewayVirtualInterfaceGroups',
          'code.function' => 'describe_local_gateway_virtual_interface_groups',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeLocalGatewayVirtualInterfaceGroups', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeLocalGatewayVirtualInterfaces
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeLocalGatewayVirtualInterfaces',
          'code.function' => 'describe_local_gateway_virtual_interfaces',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeLocalGatewayVirtualInterfaces', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeLocalGateways
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeLocalGateways',
          'code.function' => 'describe_local_gateways',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeLocalGateways', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeLockedSnapshots
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeLockedSnapshots',
          'code.function' => 'describe_locked_snapshots',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeLockedSnapshots', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeManagedPrefixLists
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeManagedPrefixLists',
          'code.function' => 'describe_managed_prefix_lists',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeManagedPrefixLists', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeMovingAddresses
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeMovingAddresses',
          'code.function' => 'describe_moving_addresses',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeMovingAddresses', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeNatGateways
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeNatGateways',
          'code.function' => 'describe_nat_gateways',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeNatGateways', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeNetworkAcls
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeNetworkAcls',
          'code.function' => 'describe_network_acls',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeNetworkAcls', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeNetworkInsightsAccessScopeAnalyses
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeNetworkInsightsAccessScopeAnalyses',
          'code.function' => 'describe_network_insights_access_scope_analyses',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeNetworkInsightsAccessScopeAnalyses', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeNetworkInsightsAccessScopes
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeNetworkInsightsAccessScopes',
          'code.function' => 'describe_network_insights_access_scopes',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeNetworkInsightsAccessScopes', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeNetworkInsightsAnalyses
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeNetworkInsightsAnalyses',
          'code.function' => 'describe_network_insights_analyses',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeNetworkInsightsAnalyses', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeNetworkInsightsPaths
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeNetworkInsightsPaths',
          'code.function' => 'describe_network_insights_paths',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeNetworkInsightsPaths', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeNetworkInterfaceAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeNetworkInterfaceAttribute',
          'code.function' => 'describe_network_interface_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeNetworkInterfaceAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeNetworkInterfacePermissions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeNetworkInterfacePermissions',
          'code.function' => 'describe_network_interface_permissions',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeNetworkInterfacePermissions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeNetworkInterfaces
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeNetworkInterfaces',
          'code.function' => 'describe_network_interfaces',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeNetworkInterfaces', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribePlacementGroups
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribePlacementGroups',
          'code.function' => 'describe_placement_groups',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribePlacementGroups', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribePrefixLists
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribePrefixLists',
          'code.function' => 'describe_prefix_lists',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribePrefixLists', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribePrincipalIdFormat
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribePrincipalIdFormat',
          'code.function' => 'describe_principal_id_format',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribePrincipalIdFormat', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribePublicIpv4Pools
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribePublicIpv4Pools',
          'code.function' => 'describe_public_ipv4_pools',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribePublicIpv4Pools', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeRegions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeRegions',
          'code.function' => 'describe_regions',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeRegions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeReplaceRootVolumeTasks
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeReplaceRootVolumeTasks',
          'code.function' => 'describe_replace_root_volume_tasks',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeReplaceRootVolumeTasks', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeReservedInstances
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeReservedInstances',
          'code.function' => 'describe_reserved_instances',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeReservedInstances', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeReservedInstancesListings
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeReservedInstancesListings',
          'code.function' => 'describe_reserved_instances_listings',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeReservedInstancesListings', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeReservedInstancesModifications
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeReservedInstancesModifications',
          'code.function' => 'describe_reserved_instances_modifications',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeReservedInstancesModifications', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeReservedInstancesOfferings
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeReservedInstancesOfferings',
          'code.function' => 'describe_reserved_instances_offerings',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeReservedInstancesOfferings', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeRouteTables
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeRouteTables',
          'code.function' => 'describe_route_tables',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeRouteTables', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeScheduledInstanceAvailability
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeScheduledInstanceAvailability',
          'code.function' => 'describe_scheduled_instance_availability',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeScheduledInstanceAvailability', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeScheduledInstances
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeScheduledInstances',
          'code.function' => 'describe_scheduled_instances',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeScheduledInstances', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeSecurityGroupReferences
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeSecurityGroupReferences',
          'code.function' => 'describe_security_group_references',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeSecurityGroupReferences', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeSecurityGroupRules
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeSecurityGroupRules',
          'code.function' => 'describe_security_group_rules',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeSecurityGroupRules', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeSecurityGroups
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeSecurityGroups',
          'code.function' => 'describe_security_groups',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeSecurityGroups', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeSnapshotAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeSnapshotAttribute',
          'code.function' => 'describe_snapshot_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeSnapshotAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeSnapshotTierStatus
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeSnapshotTierStatus',
          'code.function' => 'describe_snapshot_tier_status',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeSnapshotTierStatus', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeSnapshots
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeSnapshots',
          'code.function' => 'describe_snapshots',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeSnapshots', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeSpotDatafeedSubscription
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeSpotDatafeedSubscription',
          'code.function' => 'describe_spot_datafeed_subscription',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeSpotDatafeedSubscription', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeSpotFleetInstances
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeSpotFleetInstances',
          'code.function' => 'describe_spot_fleet_instances',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeSpotFleetInstances', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeSpotFleetRequestHistory
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeSpotFleetRequestHistory',
          'code.function' => 'describe_spot_fleet_request_history',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeSpotFleetRequestHistory', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeSpotFleetRequests
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeSpotFleetRequests',
          'code.function' => 'describe_spot_fleet_requests',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeSpotFleetRequests', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeSpotInstanceRequests
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeSpotInstanceRequests',
          'code.function' => 'describe_spot_instance_requests',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeSpotInstanceRequests', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeSpotPriceHistory
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeSpotPriceHistory',
          'code.function' => 'describe_spot_price_history',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeSpotPriceHistory', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeStaleSecurityGroups
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeStaleSecurityGroups',
          'code.function' => 'describe_stale_security_groups',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeStaleSecurityGroups', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeStoreImageTasks
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeStoreImageTasks',
          'code.function' => 'describe_store_image_tasks',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeStoreImageTasks', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeSubnets
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeSubnets',
          'code.function' => 'describe_subnets',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeSubnets', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeTags
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeTags',
          'code.function' => 'describe_tags',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeTags', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeTrafficMirrorFilters
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeTrafficMirrorFilters',
          'code.function' => 'describe_traffic_mirror_filters',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeTrafficMirrorFilters', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeTrafficMirrorSessions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeTrafficMirrorSessions',
          'code.function' => 'describe_traffic_mirror_sessions',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeTrafficMirrorSessions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeTrafficMirrorTargets
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeTrafficMirrorTargets',
          'code.function' => 'describe_traffic_mirror_targets',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeTrafficMirrorTargets', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeTransitGatewayAttachments
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeTransitGatewayAttachments',
          'code.function' => 'describe_transit_gateway_attachments',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeTransitGatewayAttachments', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeTransitGatewayConnectPeers
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeTransitGatewayConnectPeers',
          'code.function' => 'describe_transit_gateway_connect_peers',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeTransitGatewayConnectPeers', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeTransitGatewayConnects
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeTransitGatewayConnects',
          'code.function' => 'describe_transit_gateway_connects',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeTransitGatewayConnects', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeTransitGatewayMulticastDomains
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeTransitGatewayMulticastDomains',
          'code.function' => 'describe_transit_gateway_multicast_domains',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeTransitGatewayMulticastDomains', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeTransitGatewayPeeringAttachments
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeTransitGatewayPeeringAttachments',
          'code.function' => 'describe_transit_gateway_peering_attachments',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeTransitGatewayPeeringAttachments', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeTransitGatewayPolicyTables
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeTransitGatewayPolicyTables',
          'code.function' => 'describe_transit_gateway_policy_tables',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeTransitGatewayPolicyTables', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeTransitGatewayRouteTableAnnouncements
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeTransitGatewayRouteTableAnnouncements',
          'code.function' => 'describe_transit_gateway_route_table_announcements',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeTransitGatewayRouteTableAnnouncements', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeTransitGatewayRouteTables
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeTransitGatewayRouteTables',
          'code.function' => 'describe_transit_gateway_route_tables',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeTransitGatewayRouteTables', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeTransitGatewayVpcAttachments
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeTransitGatewayVpcAttachments',
          'code.function' => 'describe_transit_gateway_vpc_attachments',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeTransitGatewayVpcAttachments', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeTransitGateways
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeTransitGateways',
          'code.function' => 'describe_transit_gateways',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeTransitGateways', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeTrunkInterfaceAssociations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeTrunkInterfaceAssociations',
          'code.function' => 'describe_trunk_interface_associations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeTrunkInterfaceAssociations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVerifiedAccessEndpoints
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVerifiedAccessEndpoints',
          'code.function' => 'describe_verified_access_endpoints',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVerifiedAccessEndpoints', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVerifiedAccessGroups
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVerifiedAccessGroups',
          'code.function' => 'describe_verified_access_groups',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVerifiedAccessGroups', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVerifiedAccessInstanceLoggingConfigurations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVerifiedAccessInstanceLoggingConfigurations',
          'code.function' => 'describe_verified_access_instance_logging_configurations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVerifiedAccessInstanceLoggingConfigurations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVerifiedAccessInstances
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVerifiedAccessInstances',
          'code.function' => 'describe_verified_access_instances',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVerifiedAccessInstances', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVerifiedAccessTrustProviders
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVerifiedAccessTrustProviders',
          'code.function' => 'describe_verified_access_trust_providers',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVerifiedAccessTrustProviders', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVolumeAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVolumeAttribute',
          'code.function' => 'describe_volume_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVolumeAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVolumeStatus
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVolumeStatus',
          'code.function' => 'describe_volume_status',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVolumeStatus', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVolumes
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVolumes',
          'code.function' => 'describe_volumes',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVolumes', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVolumesModifications
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVolumesModifications',
          'code.function' => 'describe_volumes_modifications',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVolumesModifications', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVpcAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVpcAttribute',
          'code.function' => 'describe_vpc_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVpcAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVpcClassicLink
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVpcClassicLink',
          'code.function' => 'describe_vpc_classic_link',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVpcClassicLink', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVpcClassicLinkDnsSupport
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVpcClassicLinkDnsSupport',
          'code.function' => 'describe_vpc_classic_link_dns_support',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVpcClassicLinkDnsSupport', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVpcEndpointConnectionNotifications
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVpcEndpointConnectionNotifications',
          'code.function' => 'describe_vpc_endpoint_connection_notifications',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVpcEndpointConnectionNotifications', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVpcEndpointConnections
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVpcEndpointConnections',
          'code.function' => 'describe_vpc_endpoint_connections',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVpcEndpointConnections', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVpcEndpointServiceConfigurations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVpcEndpointServiceConfigurations',
          'code.function' => 'describe_vpc_endpoint_service_configurations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVpcEndpointServiceConfigurations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVpcEndpointServicePermissions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVpcEndpointServicePermissions',
          'code.function' => 'describe_vpc_endpoint_service_permissions',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVpcEndpointServicePermissions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVpcEndpointServices
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVpcEndpointServices',
          'code.function' => 'describe_vpc_endpoint_services',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVpcEndpointServices', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVpcEndpoints
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVpcEndpoints',
          'code.function' => 'describe_vpc_endpoints',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVpcEndpoints', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVpcPeeringConnections
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVpcPeeringConnections',
          'code.function' => 'describe_vpc_peering_connections',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVpcPeeringConnections', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVpcs
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVpcs',
          'code.function' => 'describe_vpcs',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVpcs', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVpnConnections
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVpnConnections',
          'code.function' => 'describe_vpn_connections',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVpnConnections', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeVpnGateways
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DescribeVpnGateways',
          'code.function' => 'describe_vpn_gateways',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DescribeVpnGateways', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DetachClassicLinkVpc
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DetachClassicLinkVpc',
          'code.function' => 'detach_classic_link_vpc',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DetachClassicLinkVpc', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DetachInternetGateway
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DetachInternetGateway',
          'code.function' => 'detach_internet_gateway',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DetachInternetGateway', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DetachNetworkInterface
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DetachNetworkInterface',
          'code.function' => 'detach_network_interface',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DetachNetworkInterface', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DetachVerifiedAccessTrustProvider
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DetachVerifiedAccessTrustProvider',
          'code.function' => 'detach_verified_access_trust_provider',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DetachVerifiedAccessTrustProvider', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DetachVolume
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DetachVolume',
          'code.function' => 'detach_volume',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DetachVolume', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DetachVpnGateway
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DetachVpnGateway',
          'code.function' => 'detach_vpn_gateway',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DetachVpnGateway', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisableAddressTransfer
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisableAddressTransfer',
          'code.function' => 'disable_address_transfer',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisableAddressTransfer', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisableAwsNetworkPerformanceMetricSubscription
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisableAwsNetworkPerformanceMetricSubscription',
          'code.function' => 'disable_aws_network_performance_metric_subscription',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisableAwsNetworkPerformanceMetricSubscription', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisableEbsEncryptionByDefault
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisableEbsEncryptionByDefault',
          'code.function' => 'disable_ebs_encryption_by_default',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisableEbsEncryptionByDefault', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisableFastLaunch
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisableFastLaunch',
          'code.function' => 'disable_fast_launch',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisableFastLaunch', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisableFastSnapshotRestores
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisableFastSnapshotRestores',
          'code.function' => 'disable_fast_snapshot_restores',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisableFastSnapshotRestores', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisableImage
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisableImage',
          'code.function' => 'disable_image',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisableImage', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisableImageBlockPublicAccess
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisableImageBlockPublicAccess',
          'code.function' => 'disable_image_block_public_access',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisableImageBlockPublicAccess', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisableImageDeprecation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisableImageDeprecation',
          'code.function' => 'disable_image_deprecation',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisableImageDeprecation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisableIpamOrganizationAdminAccount
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisableIpamOrganizationAdminAccount',
          'code.function' => 'disable_ipam_organization_admin_account',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisableIpamOrganizationAdminAccount', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisableSerialConsoleAccess
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisableSerialConsoleAccess',
          'code.function' => 'disable_serial_console_access',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisableSerialConsoleAccess', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisableSnapshotBlockPublicAccess
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisableSnapshotBlockPublicAccess',
          'code.function' => 'disable_snapshot_block_public_access',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisableSnapshotBlockPublicAccess', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisableTransitGatewayRouteTablePropagation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisableTransitGatewayRouteTablePropagation',
          'code.function' => 'disable_transit_gateway_route_table_propagation',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisableTransitGatewayRouteTablePropagation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisableVgwRoutePropagation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisableVgwRoutePropagation',
          'code.function' => 'disable_vgw_route_propagation',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisableVgwRoutePropagation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisableVpcClassicLink
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisableVpcClassicLink',
          'code.function' => 'disable_vpc_classic_link',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisableVpcClassicLink', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisableVpcClassicLinkDnsSupport
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisableVpcClassicLinkDnsSupport',
          'code.function' => 'disable_vpc_classic_link_dns_support',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisableVpcClassicLinkDnsSupport', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisassociateAddress
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisassociateAddress',
          'code.function' => 'disassociate_address',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisassociateAddress', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisassociateClientVpnTargetNetwork
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisassociateClientVpnTargetNetwork',
          'code.function' => 'disassociate_client_vpn_target_network',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisassociateClientVpnTargetNetwork', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisassociateEnclaveCertificateIamRole
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisassociateEnclaveCertificateIamRole',
          'code.function' => 'disassociate_enclave_certificate_iam_role',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisassociateEnclaveCertificateIamRole', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisassociateIamInstanceProfile
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisassociateIamInstanceProfile',
          'code.function' => 'disassociate_iam_instance_profile',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisassociateIamInstanceProfile', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisassociateInstanceEventWindow
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisassociateInstanceEventWindow',
          'code.function' => 'disassociate_instance_event_window',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisassociateInstanceEventWindow', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisassociateIpamByoasn
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisassociateIpamByoasn',
          'code.function' => 'disassociate_ipam_byoasn',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisassociateIpamByoasn', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisassociateIpamResourceDiscovery
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisassociateIpamResourceDiscovery',
          'code.function' => 'disassociate_ipam_resource_discovery',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisassociateIpamResourceDiscovery', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisassociateNatGatewayAddress
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisassociateNatGatewayAddress',
          'code.function' => 'disassociate_nat_gateway_address',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisassociateNatGatewayAddress', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisassociateRouteTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisassociateRouteTable',
          'code.function' => 'disassociate_route_table',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisassociateRouteTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisassociateSubnetCidrBlock
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisassociateSubnetCidrBlock',
          'code.function' => 'disassociate_subnet_cidr_block',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisassociateSubnetCidrBlock', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisassociateTransitGatewayMulticastDomain
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisassociateTransitGatewayMulticastDomain',
          'code.function' => 'disassociate_transit_gateway_multicast_domain',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisassociateTransitGatewayMulticastDomain', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisassociateTransitGatewayPolicyTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisassociateTransitGatewayPolicyTable',
          'code.function' => 'disassociate_transit_gateway_policy_table',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisassociateTransitGatewayPolicyTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisassociateTransitGatewayRouteTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisassociateTransitGatewayRouteTable',
          'code.function' => 'disassociate_transit_gateway_route_table',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisassociateTransitGatewayRouteTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisassociateTrunkInterface
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisassociateTrunkInterface',
          'code.function' => 'disassociate_trunk_interface',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisassociateTrunkInterface', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisassociateVpcCidrBlock
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'DisassociateVpcCidrBlock',
          'code.function' => 'disassociate_vpc_cidr_block',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.DisassociateVpcCidrBlock', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableAddressTransfer
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'EnableAddressTransfer',
          'code.function' => 'enable_address_transfer',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.EnableAddressTransfer', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableAwsNetworkPerformanceMetricSubscription
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'EnableAwsNetworkPerformanceMetricSubscription',
          'code.function' => 'enable_aws_network_performance_metric_subscription',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.EnableAwsNetworkPerformanceMetricSubscription', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableEbsEncryptionByDefault
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'EnableEbsEncryptionByDefault',
          'code.function' => 'enable_ebs_encryption_by_default',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.EnableEbsEncryptionByDefault', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableFastLaunch
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'EnableFastLaunch',
          'code.function' => 'enable_fast_launch',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.EnableFastLaunch', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableFastSnapshotRestores
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'EnableFastSnapshotRestores',
          'code.function' => 'enable_fast_snapshot_restores',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.EnableFastSnapshotRestores', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableImage
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'EnableImage',
          'code.function' => 'enable_image',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.EnableImage', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableImageBlockPublicAccess
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'EnableImageBlockPublicAccess',
          'code.function' => 'enable_image_block_public_access',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.EnableImageBlockPublicAccess', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableImageDeprecation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'EnableImageDeprecation',
          'code.function' => 'enable_image_deprecation',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.EnableImageDeprecation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableIpamOrganizationAdminAccount
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'EnableIpamOrganizationAdminAccount',
          'code.function' => 'enable_ipam_organization_admin_account',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.EnableIpamOrganizationAdminAccount', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableReachabilityAnalyzerOrganizationSharing
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'EnableReachabilityAnalyzerOrganizationSharing',
          'code.function' => 'enable_reachability_analyzer_organization_sharing',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.EnableReachabilityAnalyzerOrganizationSharing', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableSerialConsoleAccess
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'EnableSerialConsoleAccess',
          'code.function' => 'enable_serial_console_access',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.EnableSerialConsoleAccess', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableSnapshotBlockPublicAccess
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'EnableSnapshotBlockPublicAccess',
          'code.function' => 'enable_snapshot_block_public_access',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.EnableSnapshotBlockPublicAccess', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableTransitGatewayRouteTablePropagation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'EnableTransitGatewayRouteTablePropagation',
          'code.function' => 'enable_transit_gateway_route_table_propagation',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.EnableTransitGatewayRouteTablePropagation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableVgwRoutePropagation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'EnableVgwRoutePropagation',
          'code.function' => 'enable_vgw_route_propagation',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.EnableVgwRoutePropagation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableVolumeIO
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'EnableVolumeIO',
          'code.function' => 'enable_volume_io',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.EnableVolumeIO', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableVpcClassicLink
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'EnableVpcClassicLink',
          'code.function' => 'enable_vpc_classic_link',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.EnableVpcClassicLink', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableVpcClassicLinkDnsSupport
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'EnableVpcClassicLinkDnsSupport',
          'code.function' => 'enable_vpc_classic_link_dns_support',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.EnableVpcClassicLinkDnsSupport', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ExportClientVpnClientCertificateRevocationList
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ExportClientVpnClientCertificateRevocationList',
          'code.function' => 'export_client_vpn_client_certificate_revocation_list',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ExportClientVpnClientCertificateRevocationList', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ExportClientVpnClientConfiguration
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ExportClientVpnClientConfiguration',
          'code.function' => 'export_client_vpn_client_configuration',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ExportClientVpnClientConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ExportImage
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ExportImage',
          'code.function' => 'export_image',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ExportImage', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ExportTransitGatewayRoutes
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ExportTransitGatewayRoutes',
          'code.function' => 'export_transit_gateway_routes',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ExportTransitGatewayRoutes', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetAssociatedEnclaveCertificateIamRoles
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetAssociatedEnclaveCertificateIamRoles',
          'code.function' => 'get_associated_enclave_certificate_iam_roles',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetAssociatedEnclaveCertificateIamRoles', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetAssociatedIpv6PoolCidrs
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetAssociatedIpv6PoolCidrs',
          'code.function' => 'get_associated_ipv6_pool_cidrs',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetAssociatedIpv6PoolCidrs', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetAwsNetworkPerformanceData
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetAwsNetworkPerformanceData',
          'code.function' => 'get_aws_network_performance_data',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetAwsNetworkPerformanceData', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetCapacityReservationUsage
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetCapacityReservationUsage',
          'code.function' => 'get_capacity_reservation_usage',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetCapacityReservationUsage', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetCoipPoolUsage
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetCoipPoolUsage',
          'code.function' => 'get_coip_pool_usage',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetCoipPoolUsage', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetConsoleOutput
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetConsoleOutput',
          'code.function' => 'get_console_output',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetConsoleOutput', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetConsoleScreenshot
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetConsoleScreenshot',
          'code.function' => 'get_console_screenshot',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetConsoleScreenshot', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetDefaultCreditSpecification
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetDefaultCreditSpecification',
          'code.function' => 'get_default_credit_specification',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetDefaultCreditSpecification', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetEbsDefaultKmsKeyId
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetEbsDefaultKmsKeyId',
          'code.function' => 'get_ebs_default_kms_key_id',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetEbsDefaultKmsKeyId', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetEbsEncryptionByDefault
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetEbsEncryptionByDefault',
          'code.function' => 'get_ebs_encryption_by_default',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetEbsEncryptionByDefault', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetFlowLogsIntegrationTemplate
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetFlowLogsIntegrationTemplate',
          'code.function' => 'get_flow_logs_integration_template',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetFlowLogsIntegrationTemplate', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetGroupsForCapacityReservation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetGroupsForCapacityReservation',
          'code.function' => 'get_groups_for_capacity_reservation',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetGroupsForCapacityReservation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetHostReservationPurchasePreview
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetHostReservationPurchasePreview',
          'code.function' => 'get_host_reservation_purchase_preview',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetHostReservationPurchasePreview', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetImageBlockPublicAccessState
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetImageBlockPublicAccessState',
          'code.function' => 'get_image_block_public_access_state',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetImageBlockPublicAccessState', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetInstanceTypesFromInstanceRequirements
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetInstanceTypesFromInstanceRequirements',
          'code.function' => 'get_instance_types_from_instance_requirements',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetInstanceTypesFromInstanceRequirements', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetInstanceUefiData
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetInstanceUefiData',
          'code.function' => 'get_instance_uefi_data',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetInstanceUefiData', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetIpamAddressHistory
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetIpamAddressHistory',
          'code.function' => 'get_ipam_address_history',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetIpamAddressHistory', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetIpamDiscoveredAccounts
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetIpamDiscoveredAccounts',
          'code.function' => 'get_ipam_discovered_accounts',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetIpamDiscoveredAccounts', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetIpamDiscoveredPublicAddresses
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetIpamDiscoveredPublicAddresses',
          'code.function' => 'get_ipam_discovered_public_addresses',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetIpamDiscoveredPublicAddresses', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetIpamDiscoveredResourceCidrs
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetIpamDiscoveredResourceCidrs',
          'code.function' => 'get_ipam_discovered_resource_cidrs',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetIpamDiscoveredResourceCidrs', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetIpamPoolAllocations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetIpamPoolAllocations',
          'code.function' => 'get_ipam_pool_allocations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetIpamPoolAllocations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetIpamPoolCidrs
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetIpamPoolCidrs',
          'code.function' => 'get_ipam_pool_cidrs',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetIpamPoolCidrs', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetIpamResourceCidrs
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetIpamResourceCidrs',
          'code.function' => 'get_ipam_resource_cidrs',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetIpamResourceCidrs', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetLaunchTemplateData
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetLaunchTemplateData',
          'code.function' => 'get_launch_template_data',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetLaunchTemplateData', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetManagedPrefixListAssociations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetManagedPrefixListAssociations',
          'code.function' => 'get_managed_prefix_list_associations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetManagedPrefixListAssociations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetManagedPrefixListEntries
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetManagedPrefixListEntries',
          'code.function' => 'get_managed_prefix_list_entries',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetManagedPrefixListEntries', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetNetworkInsightsAccessScopeAnalysisFindings
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetNetworkInsightsAccessScopeAnalysisFindings',
          'code.function' => 'get_network_insights_access_scope_analysis_findings',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetNetworkInsightsAccessScopeAnalysisFindings', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetNetworkInsightsAccessScopeContent
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetNetworkInsightsAccessScopeContent',
          'code.function' => 'get_network_insights_access_scope_content',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetNetworkInsightsAccessScopeContent', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetPasswordData
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetPasswordData',
          'code.function' => 'get_password_data',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetPasswordData', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetReservedInstancesExchangeQuote
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetReservedInstancesExchangeQuote',
          'code.function' => 'get_reserved_instances_exchange_quote',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetReservedInstancesExchangeQuote', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetSecurityGroupsForVpc
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetSecurityGroupsForVpc',
          'code.function' => 'get_security_groups_for_vpc',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetSecurityGroupsForVpc', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetSerialConsoleAccessStatus
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetSerialConsoleAccessStatus',
          'code.function' => 'get_serial_console_access_status',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetSerialConsoleAccessStatus', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetSnapshotBlockPublicAccessState
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetSnapshotBlockPublicAccessState',
          'code.function' => 'get_snapshot_block_public_access_state',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetSnapshotBlockPublicAccessState', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetSpotPlacementScores
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetSpotPlacementScores',
          'code.function' => 'get_spot_placement_scores',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetSpotPlacementScores', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetSubnetCidrReservations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetSubnetCidrReservations',
          'code.function' => 'get_subnet_cidr_reservations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetSubnetCidrReservations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetTransitGatewayAttachmentPropagations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetTransitGatewayAttachmentPropagations',
          'code.function' => 'get_transit_gateway_attachment_propagations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetTransitGatewayAttachmentPropagations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetTransitGatewayMulticastDomainAssociations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetTransitGatewayMulticastDomainAssociations',
          'code.function' => 'get_transit_gateway_multicast_domain_associations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetTransitGatewayMulticastDomainAssociations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetTransitGatewayPolicyTableAssociations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetTransitGatewayPolicyTableAssociations',
          'code.function' => 'get_transit_gateway_policy_table_associations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetTransitGatewayPolicyTableAssociations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetTransitGatewayPolicyTableEntries
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetTransitGatewayPolicyTableEntries',
          'code.function' => 'get_transit_gateway_policy_table_entries',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetTransitGatewayPolicyTableEntries', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetTransitGatewayPrefixListReferences
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetTransitGatewayPrefixListReferences',
          'code.function' => 'get_transit_gateway_prefix_list_references',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetTransitGatewayPrefixListReferences', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetTransitGatewayRouteTableAssociations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetTransitGatewayRouteTableAssociations',
          'code.function' => 'get_transit_gateway_route_table_associations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetTransitGatewayRouteTableAssociations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetTransitGatewayRouteTablePropagations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetTransitGatewayRouteTablePropagations',
          'code.function' => 'get_transit_gateway_route_table_propagations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetTransitGatewayRouteTablePropagations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetVerifiedAccessEndpointPolicy
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetVerifiedAccessEndpointPolicy',
          'code.function' => 'get_verified_access_endpoint_policy',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetVerifiedAccessEndpointPolicy', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetVerifiedAccessGroupPolicy
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetVerifiedAccessGroupPolicy',
          'code.function' => 'get_verified_access_group_policy',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetVerifiedAccessGroupPolicy', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetVpnConnectionDeviceSampleConfiguration
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetVpnConnectionDeviceSampleConfiguration',
          'code.function' => 'get_vpn_connection_device_sample_configuration',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetVpnConnectionDeviceSampleConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetVpnConnectionDeviceTypes
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetVpnConnectionDeviceTypes',
          'code.function' => 'get_vpn_connection_device_types',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetVpnConnectionDeviceTypes', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetVpnTunnelReplacementStatus
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'GetVpnTunnelReplacementStatus',
          'code.function' => 'get_vpn_tunnel_replacement_status',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.GetVpnTunnelReplacementStatus', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ImportClientVpnClientCertificateRevocationList
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ImportClientVpnClientCertificateRevocationList',
          'code.function' => 'import_client_vpn_client_certificate_revocation_list',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ImportClientVpnClientCertificateRevocationList', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ImportImage
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ImportImage',
          'code.function' => 'import_image',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ImportImage', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ImportInstance
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ImportInstance',
          'code.function' => 'import_instance',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ImportInstance', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ImportKeyPair
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ImportKeyPair',
          'code.function' => 'import_key_pair',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ImportKeyPair', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ImportSnapshot
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ImportSnapshot',
          'code.function' => 'import_snapshot',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ImportSnapshot', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ImportVolume
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ImportVolume',
          'code.function' => 'import_volume',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ImportVolume', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ListImagesInRecycleBin
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ListImagesInRecycleBin',
          'code.function' => 'list_images_in_recycle_bin',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ListImagesInRecycleBin', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ListSnapshotsInRecycleBin
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ListSnapshotsInRecycleBin',
          'code.function' => 'list_snapshots_in_recycle_bin',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ListSnapshotsInRecycleBin', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class LockSnapshot
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'LockSnapshot',
          'code.function' => 'lock_snapshot',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.LockSnapshot', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyAddressAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyAddressAttribute',
          'code.function' => 'modify_address_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyAddressAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyAvailabilityZoneGroup
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyAvailabilityZoneGroup',
          'code.function' => 'modify_availability_zone_group',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyAvailabilityZoneGroup', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyCapacityReservation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyCapacityReservation',
          'code.function' => 'modify_capacity_reservation',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyCapacityReservation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyCapacityReservationFleet
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyCapacityReservationFleet',
          'code.function' => 'modify_capacity_reservation_fleet',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyCapacityReservationFleet', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyClientVpnEndpoint
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyClientVpnEndpoint',
          'code.function' => 'modify_client_vpn_endpoint',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyClientVpnEndpoint', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyDefaultCreditSpecification
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyDefaultCreditSpecification',
          'code.function' => 'modify_default_credit_specification',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyDefaultCreditSpecification', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyEbsDefaultKmsKeyId
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyEbsDefaultKmsKeyId',
          'code.function' => 'modify_ebs_default_kms_key_id',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyEbsDefaultKmsKeyId', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyFleet
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyFleet',
          'code.function' => 'modify_fleet',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyFleet', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyFpgaImageAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyFpgaImageAttribute',
          'code.function' => 'modify_fpga_image_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyFpgaImageAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyHosts
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyHosts',
          'code.function' => 'modify_hosts',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyHosts', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyIdFormat
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyIdFormat',
          'code.function' => 'modify_id_format',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyIdFormat', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyIdentityIdFormat
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyIdentityIdFormat',
          'code.function' => 'modify_identity_id_format',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyIdentityIdFormat', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyImageAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyImageAttribute',
          'code.function' => 'modify_image_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyImageAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyInstanceAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyInstanceAttribute',
          'code.function' => 'modify_instance_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyInstanceAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyInstanceCapacityReservationAttributes
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyInstanceCapacityReservationAttributes',
          'code.function' => 'modify_instance_capacity_reservation_attributes',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyInstanceCapacityReservationAttributes', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyInstanceCreditSpecification
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyInstanceCreditSpecification',
          'code.function' => 'modify_instance_credit_specification',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyInstanceCreditSpecification', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyInstanceEventStartTime
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyInstanceEventStartTime',
          'code.function' => 'modify_instance_event_start_time',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyInstanceEventStartTime', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyInstanceEventWindow
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyInstanceEventWindow',
          'code.function' => 'modify_instance_event_window',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyInstanceEventWindow', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyInstanceMaintenanceOptions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyInstanceMaintenanceOptions',
          'code.function' => 'modify_instance_maintenance_options',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyInstanceMaintenanceOptions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyInstanceMetadataOptions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyInstanceMetadataOptions',
          'code.function' => 'modify_instance_metadata_options',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyInstanceMetadataOptions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyInstancePlacement
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyInstancePlacement',
          'code.function' => 'modify_instance_placement',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyInstancePlacement', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyIpam
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyIpam',
          'code.function' => 'modify_ipam',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyIpam', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyIpamPool
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyIpamPool',
          'code.function' => 'modify_ipam_pool',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyIpamPool', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyIpamResourceCidr
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyIpamResourceCidr',
          'code.function' => 'modify_ipam_resource_cidr',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyIpamResourceCidr', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyIpamResourceDiscovery
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyIpamResourceDiscovery',
          'code.function' => 'modify_ipam_resource_discovery',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyIpamResourceDiscovery', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyIpamScope
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyIpamScope',
          'code.function' => 'modify_ipam_scope',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyIpamScope', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyLaunchTemplate
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyLaunchTemplate',
          'code.function' => 'modify_launch_template',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyLaunchTemplate', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyLocalGatewayRoute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyLocalGatewayRoute',
          'code.function' => 'modify_local_gateway_route',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyLocalGatewayRoute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyManagedPrefixList
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyManagedPrefixList',
          'code.function' => 'modify_managed_prefix_list',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyManagedPrefixList', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyNetworkInterfaceAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyNetworkInterfaceAttribute',
          'code.function' => 'modify_network_interface_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyNetworkInterfaceAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyPrivateDnsNameOptions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyPrivateDnsNameOptions',
          'code.function' => 'modify_private_dns_name_options',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyPrivateDnsNameOptions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyReservedInstances
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyReservedInstances',
          'code.function' => 'modify_reserved_instances',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyReservedInstances', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifySecurityGroupRules
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifySecurityGroupRules',
          'code.function' => 'modify_security_group_rules',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifySecurityGroupRules', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifySnapshotAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifySnapshotAttribute',
          'code.function' => 'modify_snapshot_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifySnapshotAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifySnapshotTier
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifySnapshotTier',
          'code.function' => 'modify_snapshot_tier',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifySnapshotTier', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifySpotFleetRequest
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifySpotFleetRequest',
          'code.function' => 'modify_spot_fleet_request',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifySpotFleetRequest', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifySubnetAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifySubnetAttribute',
          'code.function' => 'modify_subnet_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifySubnetAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyTrafficMirrorFilterNetworkServices
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyTrafficMirrorFilterNetworkServices',
          'code.function' => 'modify_traffic_mirror_filter_network_services',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyTrafficMirrorFilterNetworkServices', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyTrafficMirrorFilterRule
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyTrafficMirrorFilterRule',
          'code.function' => 'modify_traffic_mirror_filter_rule',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyTrafficMirrorFilterRule', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyTrafficMirrorSession
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyTrafficMirrorSession',
          'code.function' => 'modify_traffic_mirror_session',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyTrafficMirrorSession', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyTransitGateway
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyTransitGateway',
          'code.function' => 'modify_transit_gateway',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyTransitGateway', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyTransitGatewayPrefixListReference
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyTransitGatewayPrefixListReference',
          'code.function' => 'modify_transit_gateway_prefix_list_reference',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyTransitGatewayPrefixListReference', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyTransitGatewayVpcAttachment
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyTransitGatewayVpcAttachment',
          'code.function' => 'modify_transit_gateway_vpc_attachment',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyTransitGatewayVpcAttachment', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVerifiedAccessEndpoint
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVerifiedAccessEndpoint',
          'code.function' => 'modify_verified_access_endpoint',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVerifiedAccessEndpoint', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVerifiedAccessEndpointPolicy
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVerifiedAccessEndpointPolicy',
          'code.function' => 'modify_verified_access_endpoint_policy',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVerifiedAccessEndpointPolicy', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVerifiedAccessGroup
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVerifiedAccessGroup',
          'code.function' => 'modify_verified_access_group',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVerifiedAccessGroup', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVerifiedAccessGroupPolicy
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVerifiedAccessGroupPolicy',
          'code.function' => 'modify_verified_access_group_policy',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVerifiedAccessGroupPolicy', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVerifiedAccessInstance
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVerifiedAccessInstance',
          'code.function' => 'modify_verified_access_instance',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVerifiedAccessInstance', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVerifiedAccessInstanceLoggingConfiguration
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVerifiedAccessInstanceLoggingConfiguration',
          'code.function' => 'modify_verified_access_instance_logging_configuration',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVerifiedAccessInstanceLoggingConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVerifiedAccessTrustProvider
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVerifiedAccessTrustProvider',
          'code.function' => 'modify_verified_access_trust_provider',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVerifiedAccessTrustProvider', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVolume
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVolume',
          'code.function' => 'modify_volume',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVolume', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVolumeAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVolumeAttribute',
          'code.function' => 'modify_volume_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVolumeAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVpcAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVpcAttribute',
          'code.function' => 'modify_vpc_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVpcAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVpcEndpoint
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVpcEndpoint',
          'code.function' => 'modify_vpc_endpoint',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVpcEndpoint', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVpcEndpointConnectionNotification
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVpcEndpointConnectionNotification',
          'code.function' => 'modify_vpc_endpoint_connection_notification',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVpcEndpointConnectionNotification', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVpcEndpointServiceConfiguration
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVpcEndpointServiceConfiguration',
          'code.function' => 'modify_vpc_endpoint_service_configuration',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVpcEndpointServiceConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVpcEndpointServicePayerResponsibility
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVpcEndpointServicePayerResponsibility',
          'code.function' => 'modify_vpc_endpoint_service_payer_responsibility',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVpcEndpointServicePayerResponsibility', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVpcEndpointServicePermissions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVpcEndpointServicePermissions',
          'code.function' => 'modify_vpc_endpoint_service_permissions',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVpcEndpointServicePermissions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVpcPeeringConnectionOptions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVpcPeeringConnectionOptions',
          'code.function' => 'modify_vpc_peering_connection_options',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVpcPeeringConnectionOptions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVpcTenancy
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVpcTenancy',
          'code.function' => 'modify_vpc_tenancy',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVpcTenancy', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVpnConnection
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVpnConnection',
          'code.function' => 'modify_vpn_connection',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVpnConnection', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVpnConnectionOptions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVpnConnectionOptions',
          'code.function' => 'modify_vpn_connection_options',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVpnConnectionOptions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVpnTunnelCertificate
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVpnTunnelCertificate',
          'code.function' => 'modify_vpn_tunnel_certificate',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVpnTunnelCertificate', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ModifyVpnTunnelOptions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ModifyVpnTunnelOptions',
          'code.function' => 'modify_vpn_tunnel_options',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ModifyVpnTunnelOptions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class MonitorInstances
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'MonitorInstances',
          'code.function' => 'monitor_instances',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.MonitorInstances', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class MoveAddressToVpc
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'MoveAddressToVpc',
          'code.function' => 'move_address_to_vpc',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.MoveAddressToVpc', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class MoveByoipCidrToIpam
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'MoveByoipCidrToIpam',
          'code.function' => 'move_byoip_cidr_to_ipam',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.MoveByoipCidrToIpam', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ProvisionByoipCidr
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ProvisionByoipCidr',
          'code.function' => 'provision_byoip_cidr',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ProvisionByoipCidr', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ProvisionIpamByoasn
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ProvisionIpamByoasn',
          'code.function' => 'provision_ipam_byoasn',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ProvisionIpamByoasn', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ProvisionIpamPoolCidr
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ProvisionIpamPoolCidr',
          'code.function' => 'provision_ipam_pool_cidr',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ProvisionIpamPoolCidr', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ProvisionPublicIpv4PoolCidr
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ProvisionPublicIpv4PoolCidr',
          'code.function' => 'provision_public_ipv4_pool_cidr',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ProvisionPublicIpv4PoolCidr', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class PurchaseCapacityBlock
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'PurchaseCapacityBlock',
          'code.function' => 'purchase_capacity_block',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.PurchaseCapacityBlock', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class PurchaseHostReservation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'PurchaseHostReservation',
          'code.function' => 'purchase_host_reservation',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.PurchaseHostReservation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class PurchaseReservedInstancesOffering
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'PurchaseReservedInstancesOffering',
          'code.function' => 'purchase_reserved_instances_offering',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.PurchaseReservedInstancesOffering', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class PurchaseScheduledInstances
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'PurchaseScheduledInstances',
          'code.function' => 'purchase_scheduled_instances',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.PurchaseScheduledInstances', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RebootInstances
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RebootInstances',
          'code.function' => 'reboot_instances',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RebootInstances', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RegisterImage
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RegisterImage',
          'code.function' => 'register_image',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RegisterImage', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RegisterInstanceEventNotificationAttributes
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RegisterInstanceEventNotificationAttributes',
          'code.function' => 'register_instance_event_notification_attributes',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RegisterInstanceEventNotificationAttributes', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RegisterTransitGatewayMulticastGroupMembers
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RegisterTransitGatewayMulticastGroupMembers',
          'code.function' => 'register_transit_gateway_multicast_group_members',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RegisterTransitGatewayMulticastGroupMembers', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RegisterTransitGatewayMulticastGroupSources
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RegisterTransitGatewayMulticastGroupSources',
          'code.function' => 'register_transit_gateway_multicast_group_sources',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RegisterTransitGatewayMulticastGroupSources', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RejectTransitGatewayMulticastDomainAssociations
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RejectTransitGatewayMulticastDomainAssociations',
          'code.function' => 'reject_transit_gateway_multicast_domain_associations',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RejectTransitGatewayMulticastDomainAssociations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RejectTransitGatewayPeeringAttachment
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RejectTransitGatewayPeeringAttachment',
          'code.function' => 'reject_transit_gateway_peering_attachment',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RejectTransitGatewayPeeringAttachment', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RejectTransitGatewayVpcAttachment
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RejectTransitGatewayVpcAttachment',
          'code.function' => 'reject_transit_gateway_vpc_attachment',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RejectTransitGatewayVpcAttachment', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RejectVpcEndpointConnections
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RejectVpcEndpointConnections',
          'code.function' => 'reject_vpc_endpoint_connections',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RejectVpcEndpointConnections', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RejectVpcPeeringConnection
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RejectVpcPeeringConnection',
          'code.function' => 'reject_vpc_peering_connection',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RejectVpcPeeringConnection', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ReleaseAddress
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ReleaseAddress',
          'code.function' => 'release_address',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ReleaseAddress', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ReleaseHosts
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ReleaseHosts',
          'code.function' => 'release_hosts',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ReleaseHosts', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ReleaseIpamPoolAllocation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ReleaseIpamPoolAllocation',
          'code.function' => 'release_ipam_pool_allocation',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ReleaseIpamPoolAllocation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ReplaceIamInstanceProfileAssociation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ReplaceIamInstanceProfileAssociation',
          'code.function' => 'replace_iam_instance_profile_association',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ReplaceIamInstanceProfileAssociation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ReplaceNetworkAclAssociation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ReplaceNetworkAclAssociation',
          'code.function' => 'replace_network_acl_association',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ReplaceNetworkAclAssociation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ReplaceNetworkAclEntry
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ReplaceNetworkAclEntry',
          'code.function' => 'replace_network_acl_entry',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ReplaceNetworkAclEntry', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ReplaceRoute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ReplaceRoute',
          'code.function' => 'replace_route',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ReplaceRoute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ReplaceRouteTableAssociation
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ReplaceRouteTableAssociation',
          'code.function' => 'replace_route_table_association',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ReplaceRouteTableAssociation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ReplaceTransitGatewayRoute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ReplaceTransitGatewayRoute',
          'code.function' => 'replace_transit_gateway_route',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ReplaceTransitGatewayRoute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ReplaceVpnTunnel
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ReplaceVpnTunnel',
          'code.function' => 'replace_vpn_tunnel',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ReplaceVpnTunnel', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ReportInstanceStatus
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ReportInstanceStatus',
          'code.function' => 'report_instance_status',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ReportInstanceStatus', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RequestSpotFleet
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RequestSpotFleet',
          'code.function' => 'request_spot_fleet',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RequestSpotFleet', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RequestSpotInstances
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RequestSpotInstances',
          'code.function' => 'request_spot_instances',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RequestSpotInstances', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ResetAddressAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ResetAddressAttribute',
          'code.function' => 'reset_address_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ResetAddressAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ResetEbsDefaultKmsKeyId
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ResetEbsDefaultKmsKeyId',
          'code.function' => 'reset_ebs_default_kms_key_id',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ResetEbsDefaultKmsKeyId', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ResetFpgaImageAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ResetFpgaImageAttribute',
          'code.function' => 'reset_fpga_image_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ResetFpgaImageAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ResetImageAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ResetImageAttribute',
          'code.function' => 'reset_image_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ResetImageAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ResetInstanceAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ResetInstanceAttribute',
          'code.function' => 'reset_instance_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ResetInstanceAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ResetNetworkInterfaceAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ResetNetworkInterfaceAttribute',
          'code.function' => 'reset_network_interface_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ResetNetworkInterfaceAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ResetSnapshotAttribute
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'ResetSnapshotAttribute',
          'code.function' => 'reset_snapshot_attribute',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.ResetSnapshotAttribute', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RestoreAddressToClassic
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RestoreAddressToClassic',
          'code.function' => 'restore_address_to_classic',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RestoreAddressToClassic', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RestoreImageFromRecycleBin
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RestoreImageFromRecycleBin',
          'code.function' => 'restore_image_from_recycle_bin',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RestoreImageFromRecycleBin', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RestoreManagedPrefixListVersion
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RestoreManagedPrefixListVersion',
          'code.function' => 'restore_managed_prefix_list_version',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RestoreManagedPrefixListVersion', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RestoreSnapshotFromRecycleBin
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RestoreSnapshotFromRecycleBin',
          'code.function' => 'restore_snapshot_from_recycle_bin',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RestoreSnapshotFromRecycleBin', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RestoreSnapshotTier
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RestoreSnapshotTier',
          'code.function' => 'restore_snapshot_tier',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RestoreSnapshotTier', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RevokeClientVpnIngress
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RevokeClientVpnIngress',
          'code.function' => 'revoke_client_vpn_ingress',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RevokeClientVpnIngress', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RevokeSecurityGroupEgress
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RevokeSecurityGroupEgress',
          'code.function' => 'revoke_security_group_egress',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RevokeSecurityGroupEgress', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RevokeSecurityGroupIngress
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RevokeSecurityGroupIngress',
          'code.function' => 'revoke_security_group_ingress',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RevokeSecurityGroupIngress', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RunInstances
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RunInstances',
          'code.function' => 'run_instances',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RunInstances', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RunScheduledInstances
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'RunScheduledInstances',
          'code.function' => 'run_scheduled_instances',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.RunScheduledInstances', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class SearchLocalGatewayRoutes
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'SearchLocalGatewayRoutes',
          'code.function' => 'search_local_gateway_routes',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.SearchLocalGatewayRoutes', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class SearchTransitGatewayMulticastGroups
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'SearchTransitGatewayMulticastGroups',
          'code.function' => 'search_transit_gateway_multicast_groups',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.SearchTransitGatewayMulticastGroups', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class SearchTransitGatewayRoutes
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'SearchTransitGatewayRoutes',
          'code.function' => 'search_transit_gateway_routes',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.SearchTransitGatewayRoutes', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class SendDiagnosticInterrupt
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'SendDiagnosticInterrupt',
          'code.function' => 'send_diagnostic_interrupt',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.SendDiagnosticInterrupt', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class StartInstances
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'StartInstances',
          'code.function' => 'start_instances',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.StartInstances', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class StartNetworkInsightsAccessScopeAnalysis
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'StartNetworkInsightsAccessScopeAnalysis',
          'code.function' => 'start_network_insights_access_scope_analysis',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.StartNetworkInsightsAccessScopeAnalysis', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class StartNetworkInsightsAnalysis
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'StartNetworkInsightsAnalysis',
          'code.function' => 'start_network_insights_analysis',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.StartNetworkInsightsAnalysis', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class StartVpcEndpointServicePrivateDnsVerification
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'StartVpcEndpointServicePrivateDnsVerification',
          'code.function' => 'start_vpc_endpoint_service_private_dns_verification',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.StartVpcEndpointServicePrivateDnsVerification', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class StopInstances
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'StopInstances',
          'code.function' => 'stop_instances',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.StopInstances', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class TerminateClientVpnConnections
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'TerminateClientVpnConnections',
          'code.function' => 'terminate_client_vpn_connections',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.TerminateClientVpnConnections', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class TerminateInstances
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'TerminateInstances',
          'code.function' => 'terminate_instances',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.TerminateInstances', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class UnassignIpv6Addresses
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'UnassignIpv6Addresses',
          'code.function' => 'unassign_ipv6_addresses',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.UnassignIpv6Addresses', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class UnassignPrivateIpAddresses
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'UnassignPrivateIpAddresses',
          'code.function' => 'unassign_private_ip_addresses',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.UnassignPrivateIpAddresses', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class UnassignPrivateNatGatewayAddress
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'UnassignPrivateNatGatewayAddress',
          'code.function' => 'unassign_private_nat_gateway_address',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.UnassignPrivateNatGatewayAddress', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class UnlockSnapshot
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'UnlockSnapshot',
          'code.function' => 'unlock_snapshot',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.UnlockSnapshot', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class UnmonitorInstances
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'UnmonitorInstances',
          'code.function' => 'unmonitor_instances',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.UnmonitorInstances', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class UpdateSecurityGroupRuleDescriptionsEgress
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'UpdateSecurityGroupRuleDescriptionsEgress',
          'code.function' => 'update_security_group_rule_descriptions_egress',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.UpdateSecurityGroupRuleDescriptionsEgress', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class UpdateSecurityGroupRuleDescriptionsIngress
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'UpdateSecurityGroupRuleDescriptionsIngress',
          'code.function' => 'update_security_group_rule_descriptions_ingress',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.UpdateSecurityGroupRuleDescriptionsIngress', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class WithdrawByoipCidr
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'EC2',
          'rpc.method' => 'WithdrawByoipCidr',
          'code.function' => 'withdraw_byoip_cidr',
          'code.namespace' => 'AWS::SDK::EC2::Telemetry'
        }
        context.tracer.in_span('EC2.WithdrawByoipCidr', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

  end
end
