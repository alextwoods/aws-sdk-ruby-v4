# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Ec2
  module Validators

    class AcceleratorCount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceleratorCount, context: context)
        Hearth::Validator.validate!(input[:min], ::Integer, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class AcceleratorCountRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceleratorCountRequest, context: context)
        Hearth::Validator.validate!(input[:min], ::Integer, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class AcceleratorManufacturerSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AcceleratorNameSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AcceleratorTotalMemoryMiB
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceleratorTotalMemoryMiB, context: context)
        Hearth::Validator.validate!(input[:min], ::Integer, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class AcceleratorTotalMemoryMiBRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceleratorTotalMemoryMiBRequest, context: context)
        Hearth::Validator.validate!(input[:min], ::Integer, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class AcceleratorTypeSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AcceptReservedInstancesExchangeQuoteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptReservedInstancesExchangeQuoteInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::ReservedInstanceIdSet.validate!(input[:reserved_instance_ids], context: "#{context}[:reserved_instance_ids]") unless input[:reserved_instance_ids].nil?
        Validators::TargetConfigurationRequestSet.validate!(input[:target_configurations], context: "#{context}[:target_configurations]") unless input[:target_configurations].nil?
      end
    end

    class AcceptTransitGatewayMulticastDomainAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptTransitGatewayMulticastDomainAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_multicast_domain_id], ::String, context: "#{context}[:transit_gateway_multicast_domain_id]")
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Validators::ValueStringList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class AcceptTransitGatewayPeeringAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptTransitGatewayPeeringAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class AcceptTransitGatewayVpcAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptTransitGatewayVpcAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class AcceptVpcEndpointConnectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptVpcEndpointConnectionsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Validators::VpcEndpointIdList.validate!(input[:vpc_endpoint_ids], context: "#{context}[:vpc_endpoint_ids]") unless input[:vpc_endpoint_ids].nil?
      end
    end

    class AcceptVpcPeeringConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptVpcPeeringConnectionInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:vpc_peering_connection_id], ::String, context: "#{context}[:vpc_peering_connection_id]")
      end
    end

    class AccessScopePathListRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccessScopePathRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccessScopePathRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessScopePathRequest, context: context)
        Validators::PathStatementRequest.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Validators::PathStatementRequest.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Validators::ThroughResourcesStatementRequestList.validate!(input[:through_resources], context: "#{context}[:through_resources]") unless input[:through_resources].nil?
      end
    end

    class AccountAttributeNameStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AddIpamOperatingRegion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddIpamOperatingRegion, context: context)
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
      end
    end

    class AddIpamOperatingRegionSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AddIpamOperatingRegion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AddPrefixListEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AddPrefixListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AddPrefixListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddPrefixListEntry, context: context)
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class AdvertiseByoipCidrInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdvertiseByoipCidrInput, context: context)
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class AllocateAddressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllocateAddressInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:public_ipv4_pool], ::String, context: "#{context}[:public_ipv4_pool]")
        Hearth::Validator.validate!(input[:network_border_group], ::String, context: "#{context}[:network_border_group]")
        Hearth::Validator.validate!(input[:customer_owned_ipv4_pool], ::String, context: "#{context}[:customer_owned_ipv4_pool]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class AllocateHostsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllocateHostsInput, context: context)
        Hearth::Validator.validate!(input[:auto_placement], ::String, context: "#{context}[:auto_placement]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:instance_family], ::String, context: "#{context}[:instance_family]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:host_recovery], ::String, context: "#{context}[:host_recovery]")
      end
    end

    class AllocateIpamPoolCidrInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllocateIpamPoolCidrInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:ipam_pool_id], ::String, context: "#{context}[:ipam_pool_id]")
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
        Hearth::Validator.validate!(input[:netmask_length], ::Integer, context: "#{context}[:netmask_length]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:preview_next_cidr], ::TrueClass, ::FalseClass, context: "#{context}[:preview_next_cidr]")
        Validators::IpamPoolAllocationDisallowedCidrs.validate!(input[:disallowed_cidrs], context: "#{context}[:disallowed_cidrs]") unless input[:disallowed_cidrs].nil?
      end
    end

    class AllocationIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AllocationIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ApplySecurityGroupsToClientVpnTargetNetworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplySecurityGroupsToClientVpnTargetNetworkInput, context: context)
        Hearth::Validator.validate!(input[:client_vpn_endpoint_id], ::String, context: "#{context}[:client_vpn_endpoint_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::ClientVpnSecurityGroupIdSet.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ArchitectureTypeSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AssignIpv6AddressesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssignIpv6AddressesInput, context: context)
        Hearth::Validator.validate!(input[:ipv6_address_count], ::Integer, context: "#{context}[:ipv6_address_count]")
        Validators::Ipv6AddressList.validate!(input[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless input[:ipv6_addresses].nil?
        Hearth::Validator.validate!(input[:ipv6_prefix_count], ::Integer, context: "#{context}[:ipv6_prefix_count]")
        Validators::IpPrefixList.validate!(input[:ipv6_prefixes], context: "#{context}[:ipv6_prefixes]") unless input[:ipv6_prefixes].nil?
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
      end
    end

    class AssignPrivateIpAddressesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssignPrivateIpAddressesInput, context: context)
        Hearth::Validator.validate!(input[:allow_reassignment], ::TrueClass, ::FalseClass, context: "#{context}[:allow_reassignment]")
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Validators::PrivateIpAddressStringList.validate!(input[:private_ip_addresses], context: "#{context}[:private_ip_addresses]") unless input[:private_ip_addresses].nil?
        Hearth::Validator.validate!(input[:secondary_private_ip_address_count], ::Integer, context: "#{context}[:secondary_private_ip_address_count]")
        Validators::IpPrefixList.validate!(input[:ipv4_prefixes], context: "#{context}[:ipv4_prefixes]") unless input[:ipv4_prefixes].nil?
        Hearth::Validator.validate!(input[:ipv4_prefix_count], ::Integer, context: "#{context}[:ipv4_prefix_count]")
      end
    end

    class AssociateAddressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateAddressInput, context: context)
        Hearth::Validator.validate!(input[:allocation_id], ::String, context: "#{context}[:allocation_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:public_ip], ::String, context: "#{context}[:public_ip]")
        Hearth::Validator.validate!(input[:allow_reassociation], ::TrueClass, ::FalseClass, context: "#{context}[:allow_reassociation]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
      end
    end

    class AssociateClientVpnTargetNetworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateClientVpnTargetNetworkInput, context: context)
        Hearth::Validator.validate!(input[:client_vpn_endpoint_id], ::String, context: "#{context}[:client_vpn_endpoint_id]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class AssociateDhcpOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDhcpOptionsInput, context: context)
        Hearth::Validator.validate!(input[:dhcp_options_id], ::String, context: "#{context}[:dhcp_options_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class AssociateEnclaveCertificateIamRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateEnclaveCertificateIamRoleInput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class AssociateIamInstanceProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateIamInstanceProfileInput, context: context)
        Validators::IamInstanceProfileSpecification.validate!(input[:iam_instance_profile], context: "#{context}[:iam_instance_profile]") unless input[:iam_instance_profile].nil?
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class AssociateInstanceEventWindowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateInstanceEventWindowInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:instance_event_window_id], ::String, context: "#{context}[:instance_event_window_id]")
        Validators::InstanceEventWindowAssociationRequest.validate!(input[:association_target], context: "#{context}[:association_target]") unless input[:association_target].nil?
      end
    end

    class AssociateRouteTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateRouteTableInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:route_table_id], ::String, context: "#{context}[:route_table_id]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
      end
    end

    class AssociateSubnetCidrBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateSubnetCidrBlockInput, context: context)
        Hearth::Validator.validate!(input[:ipv6_cidr_block], ::String, context: "#{context}[:ipv6_cidr_block]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
      end
    end

    class AssociateTransitGatewayMulticastDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateTransitGatewayMulticastDomainInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_multicast_domain_id], ::String, context: "#{context}[:transit_gateway_multicast_domain_id]")
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Validators::TransitGatewaySubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class AssociateTransitGatewayRouteTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateTransitGatewayRouteTableInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_route_table_id], ::String, context: "#{context}[:transit_gateway_route_table_id]")
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class AssociateTrunkInterfaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateTrunkInterfaceInput, context: context)
        Hearth::Validator.validate!(input[:branch_interface_id], ::String, context: "#{context}[:branch_interface_id]")
        Hearth::Validator.validate!(input[:trunk_interface_id], ::String, context: "#{context}[:trunk_interface_id]")
        Hearth::Validator.validate!(input[:vlan_id], ::Integer, context: "#{context}[:vlan_id]")
        Hearth::Validator.validate!(input[:gre_key], ::Integer, context: "#{context}[:gre_key]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class AssociateVpcCidrBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateVpcCidrBlockInput, context: context)
        Hearth::Validator.validate!(input[:amazon_provided_ipv6_cidr_block], ::TrueClass, ::FalseClass, context: "#{context}[:amazon_provided_ipv6_cidr_block]")
        Hearth::Validator.validate!(input[:cidr_block], ::String, context: "#{context}[:cidr_block]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:ipv6_cidr_block_network_border_group], ::String, context: "#{context}[:ipv6_cidr_block_network_border_group]")
        Hearth::Validator.validate!(input[:ipv6_pool], ::String, context: "#{context}[:ipv6_pool]")
        Hearth::Validator.validate!(input[:ipv6_cidr_block], ::String, context: "#{context}[:ipv6_cidr_block]")
        Hearth::Validator.validate!(input[:ipv4_ipam_pool_id], ::String, context: "#{context}[:ipv4_ipam_pool_id]")
        Hearth::Validator.validate!(input[:ipv4_netmask_length], ::Integer, context: "#{context}[:ipv4_netmask_length]")
        Hearth::Validator.validate!(input[:ipv6_ipam_pool_id], ::String, context: "#{context}[:ipv6_ipam_pool_id]")
        Hearth::Validator.validate!(input[:ipv6_netmask_length], ::Integer, context: "#{context}[:ipv6_netmask_length]")
      end
    end

    class AssociationIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AthenaIntegration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AthenaIntegration, context: context)
        Hearth::Validator.validate!(input[:integration_result_s3_destination_arn], ::String, context: "#{context}[:integration_result_s3_destination_arn]")
        Hearth::Validator.validate!(input[:partition_load_frequency], ::String, context: "#{context}[:partition_load_frequency]")
        Hearth::Validator.validate!(input[:partition_start_date], ::Time, context: "#{context}[:partition_start_date]")
        Hearth::Validator.validate!(input[:partition_end_date], ::Time, context: "#{context}[:partition_end_date]")
      end
    end

    class AthenaIntegrationsSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AthenaIntegration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttachClassicLinkVpcInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachClassicLinkVpcInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::GroupIdStringList.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class AttachInternetGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachInternetGatewayInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:internet_gateway_id], ::String, context: "#{context}[:internet_gateway_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class AttachNetworkInterfaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachNetworkInterfaceInput, context: context)
        Hearth::Validator.validate!(input[:device_index], ::Integer, context: "#{context}[:device_index]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:network_card_index], ::Integer, context: "#{context}[:network_card_index]")
      end
    end

    class AttachVolumeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachVolumeInput, context: context)
        Hearth::Validator.validate!(input[:device], ::String, context: "#{context}[:device]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class AttachVpnGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachVpnGatewayInput, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:vpn_gateway_id], ::String, context: "#{context}[:vpn_gateway_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class AttributeBooleanValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributeBooleanValue, context: context)
        Hearth::Validator.validate!(input[:value], ::TrueClass, ::FalseClass, context: "#{context}[:value]")
      end
    end

    class AttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributeValue, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AuthorizeClientVpnIngressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizeClientVpnIngressInput, context: context)
        Hearth::Validator.validate!(input[:client_vpn_endpoint_id], ::String, context: "#{context}[:client_vpn_endpoint_id]")
        Hearth::Validator.validate!(input[:target_network_cidr], ::String, context: "#{context}[:target_network_cidr]")
        Hearth::Validator.validate!(input[:access_group_id], ::String, context: "#{context}[:access_group_id]")
        Hearth::Validator.validate!(input[:authorize_all_groups], ::TrueClass, ::FalseClass, context: "#{context}[:authorize_all_groups]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class AuthorizeSecurityGroupEgressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizeSecurityGroupEgressInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Validators::IpPermissionList.validate!(input[:ip_permissions], context: "#{context}[:ip_permissions]") unless input[:ip_permissions].nil?
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:cidr_ip], ::String, context: "#{context}[:cidr_ip]")
        Hearth::Validator.validate!(input[:from_port], ::Integer, context: "#{context}[:from_port]")
        Hearth::Validator.validate!(input[:ip_protocol], ::String, context: "#{context}[:ip_protocol]")
        Hearth::Validator.validate!(input[:to_port], ::Integer, context: "#{context}[:to_port]")
        Hearth::Validator.validate!(input[:source_security_group_name], ::String, context: "#{context}[:source_security_group_name]")
        Hearth::Validator.validate!(input[:source_security_group_owner_id], ::String, context: "#{context}[:source_security_group_owner_id]")
      end
    end

    class AuthorizeSecurityGroupIngressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizeSecurityGroupIngressInput, context: context)
        Hearth::Validator.validate!(input[:cidr_ip], ::String, context: "#{context}[:cidr_ip]")
        Hearth::Validator.validate!(input[:from_port], ::Integer, context: "#{context}[:from_port]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Validators::IpPermissionList.validate!(input[:ip_permissions], context: "#{context}[:ip_permissions]") unless input[:ip_permissions].nil?
        Hearth::Validator.validate!(input[:ip_protocol], ::String, context: "#{context}[:ip_protocol]")
        Hearth::Validator.validate!(input[:source_security_group_name], ::String, context: "#{context}[:source_security_group_name]")
        Hearth::Validator.validate!(input[:source_security_group_owner_id], ::String, context: "#{context}[:source_security_group_owner_id]")
        Hearth::Validator.validate!(input[:to_port], ::Integer, context: "#{context}[:to_port]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class AvailabilityZoneStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BaselineEbsBandwidthMbps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BaselineEbsBandwidthMbps, context: context)
        Hearth::Validator.validate!(input[:min], ::Integer, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class BaselineEbsBandwidthMbpsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BaselineEbsBandwidthMbpsRequest, context: context)
        Hearth::Validator.validate!(input[:min], ::Integer, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class BillingProductList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BlobAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlobAttributeValue, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class BlockDeviceMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlockDeviceMapping, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:virtual_name], ::String, context: "#{context}[:virtual_name]")
        Validators::EbsBlockDevice.validate!(input[:ebs], context: "#{context}[:ebs]") unless input[:ebs].nil?
        Hearth::Validator.validate!(input[:no_device], ::String, context: "#{context}[:no_device]")
      end
    end

    class BlockDeviceMappingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BlockDeviceMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BlockDeviceMappingRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BlockDeviceMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BundleIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BundleInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BundleInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Validators::Storage.validate!(input[:storage], context: "#{context}[:storage]") unless input[:storage].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CancelBundleTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelBundleTaskInput, context: context)
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CancelCapacityReservationFleetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelCapacityReservationFleetsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::CapacityReservationFleetIdSet.validate!(input[:capacity_reservation_fleet_ids], context: "#{context}[:capacity_reservation_fleet_ids]") unless input[:capacity_reservation_fleet_ids].nil?
      end
    end

    class CancelCapacityReservationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelCapacityReservationInput, context: context)
        Hearth::Validator.validate!(input[:capacity_reservation_id], ::String, context: "#{context}[:capacity_reservation_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CancelConversionTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelConversionTaskInput, context: context)
        Hearth::Validator.validate!(input[:conversion_task_id], ::String, context: "#{context}[:conversion_task_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:reason_message], ::String, context: "#{context}[:reason_message]")
      end
    end

    class CancelExportTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelExportTaskInput, context: context)
        Hearth::Validator.validate!(input[:export_task_id], ::String, context: "#{context}[:export_task_id]")
      end
    end

    class CancelImportTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelImportTaskInput, context: context)
        Hearth::Validator.validate!(input[:cancel_reason], ::String, context: "#{context}[:cancel_reason]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:import_task_id], ::String, context: "#{context}[:import_task_id]")
      end
    end

    class CancelReservedInstancesListingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelReservedInstancesListingInput, context: context)
        Hearth::Validator.validate!(input[:reserved_instances_listing_id], ::String, context: "#{context}[:reserved_instances_listing_id]")
      end
    end

    class CancelSpotFleetRequestsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelSpotFleetRequestsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::SpotFleetRequestIdList.validate!(input[:spot_fleet_request_ids], context: "#{context}[:spot_fleet_request_ids]") unless input[:spot_fleet_request_ids].nil?
        Hearth::Validator.validate!(input[:terminate_instances], ::TrueClass, ::FalseClass, context: "#{context}[:terminate_instances]")
      end
    end

    class CancelSpotInstanceRequestsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelSpotInstanceRequestsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::SpotInstanceRequestIdList.validate!(input[:spot_instance_request_ids], context: "#{context}[:spot_instance_request_ids]") unless input[:spot_instance_request_ids].nil?
      end
    end

    class CapacityReservationFleetIdSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CapacityReservationIdSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CapacityReservationOptionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CapacityReservationOptionsRequest, context: context)
        Hearth::Validator.validate!(input[:usage_strategy], ::String, context: "#{context}[:usage_strategy]")
      end
    end

    class CapacityReservationSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CapacityReservationSpecification, context: context)
        Hearth::Validator.validate!(input[:capacity_reservation_preference], ::String, context: "#{context}[:capacity_reservation_preference]")
        Validators::CapacityReservationTarget.validate!(input[:capacity_reservation_target], context: "#{context}[:capacity_reservation_target]") unless input[:capacity_reservation_target].nil?
      end
    end

    class CapacityReservationTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CapacityReservationTarget, context: context)
        Hearth::Validator.validate!(input[:capacity_reservation_id], ::String, context: "#{context}[:capacity_reservation_id]")
        Hearth::Validator.validate!(input[:capacity_reservation_resource_group_arn], ::String, context: "#{context}[:capacity_reservation_resource_group_arn]")
      end
    end

    class CarrierGatewayIdSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CertificateAuthenticationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateAuthenticationRequest, context: context)
        Hearth::Validator.validate!(input[:client_root_certificate_chain_arn], ::String, context: "#{context}[:client_root_certificate_chain_arn]")
      end
    end

    class CidrAuthorizationContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CidrAuthorizationContext, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:signature], ::String, context: "#{context}[:signature]")
      end
    end

    class ClassicLoadBalancer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClassicLoadBalancer, context: context)
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
      end
    end

    class ClassicLoadBalancers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ClassicLoadBalancer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClassicLoadBalancersConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClassicLoadBalancersConfig, context: context)
        Validators::ClassicLoadBalancers.validate!(input[:classic_load_balancers], context: "#{context}[:classic_load_balancers]") unless input[:classic_load_balancers].nil?
      end
    end

    class ClientConnectOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientConnectOptions, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:lambda_function_arn], ::String, context: "#{context}[:lambda_function_arn]")
      end
    end

    class ClientData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientData, context: context)
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:upload_end], ::Time, context: "#{context}[:upload_end]")
        Hearth::Validator.validate!(input[:upload_size], ::Float, context: "#{context}[:upload_size]")
        Hearth::Validator.validate!(input[:upload_start], ::Time, context: "#{context}[:upload_start]")
      end
    end

    class ClientVpnAuthenticationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientVpnAuthenticationRequest, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::DirectoryServiceAuthenticationRequest.validate!(input[:active_directory], context: "#{context}[:active_directory]") unless input[:active_directory].nil?
        Validators::CertificateAuthenticationRequest.validate!(input[:mutual_authentication], context: "#{context}[:mutual_authentication]") unless input[:mutual_authentication].nil?
        Validators::FederatedAuthenticationRequest.validate!(input[:federated_authentication], context: "#{context}[:federated_authentication]") unless input[:federated_authentication].nil?
      end
    end

    class ClientVpnAuthenticationRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ClientVpnAuthenticationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClientVpnEndpointIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ClientVpnSecurityGroupIdSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CoipPoolIdSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConfirmProductInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmProductInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:product_code], ::String, context: "#{context}[:product_code]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ConnectionLogOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionLogOptions, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:cloudwatch_log_group], ::String, context: "#{context}[:cloudwatch_log_group]")
        Hearth::Validator.validate!(input[:cloudwatch_log_stream], ::String, context: "#{context}[:cloudwatch_log_stream]")
      end
    end

    class ConnectionNotificationIdsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConversionIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CopyFpgaImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyFpgaImageInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:source_fpga_image_id], ::String, context: "#{context}[:source_fpga_image_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:source_region], ::String, context: "#{context}[:source_region]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CopyImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyImageInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:source_image_id], ::String, context: "#{context}[:source_image_id]")
        Hearth::Validator.validate!(input[:source_region], ::String, context: "#{context}[:source_region]")
        Hearth::Validator.validate!(input[:destination_outpost_arn], ::String, context: "#{context}[:destination_outpost_arn]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CopySnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopySnapshotInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:destination_outpost_arn], ::String, context: "#{context}[:destination_outpost_arn]")
        Hearth::Validator.validate!(input[:destination_region], ::String, context: "#{context}[:destination_region]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:presigned_url], ::String, context: "#{context}[:presigned_url]")
        Hearth::Validator.validate!(input[:source_region], ::String, context: "#{context}[:source_region]")
        Hearth::Validator.validate!(input[:source_snapshot_id], ::String, context: "#{context}[:source_snapshot_id]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CpuManufacturerSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CpuOptionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CpuOptionsRequest, context: context)
        Hearth::Validator.validate!(input[:core_count], ::Integer, context: "#{context}[:core_count]")
        Hearth::Validator.validate!(input[:threads_per_core], ::Integer, context: "#{context}[:threads_per_core]")
      end
    end

    class CreateCapacityReservationFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCapacityReservationFleetInput, context: context)
        Hearth::Validator.validate!(input[:allocation_strategy], ::String, context: "#{context}[:allocation_strategy]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::ReservationFleetInstanceSpecificationList.validate!(input[:instance_type_specifications], context: "#{context}[:instance_type_specifications]") unless input[:instance_type_specifications].nil?
        Hearth::Validator.validate!(input[:tenancy], ::String, context: "#{context}[:tenancy]")
        Hearth::Validator.validate!(input[:total_target_capacity], ::Integer, context: "#{context}[:total_target_capacity]")
        Hearth::Validator.validate!(input[:end_date], ::Time, context: "#{context}[:end_date]")
        Hearth::Validator.validate!(input[:instance_match_criteria], ::String, context: "#{context}[:instance_match_criteria]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateCapacityReservationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCapacityReservationInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:instance_platform], ::String, context: "#{context}[:instance_platform]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:availability_zone_id], ::String, context: "#{context}[:availability_zone_id]")
        Hearth::Validator.validate!(input[:tenancy], ::String, context: "#{context}[:tenancy]")
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        Hearth::Validator.validate!(input[:ebs_optimized], ::TrueClass, ::FalseClass, context: "#{context}[:ebs_optimized]")
        Hearth::Validator.validate!(input[:ephemeral_storage], ::TrueClass, ::FalseClass, context: "#{context}[:ephemeral_storage]")
        Hearth::Validator.validate!(input[:end_date], ::Time, context: "#{context}[:end_date]")
        Hearth::Validator.validate!(input[:end_date_type], ::String, context: "#{context}[:end_date_type]")
        Hearth::Validator.validate!(input[:instance_match_criteria], ::String, context: "#{context}[:instance_match_criteria]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:outpost_arn], ::String, context: "#{context}[:outpost_arn]")
        Hearth::Validator.validate!(input[:placement_group_arn], ::String, context: "#{context}[:placement_group_arn]")
      end
    end

    class CreateCarrierGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCarrierGatewayInput, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateClientVpnEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClientVpnEndpointInput, context: context)
        Hearth::Validator.validate!(input[:client_cidr_block], ::String, context: "#{context}[:client_cidr_block]")
        Hearth::Validator.validate!(input[:server_certificate_arn], ::String, context: "#{context}[:server_certificate_arn]")
        Validators::ClientVpnAuthenticationRequestList.validate!(input[:authentication_options], context: "#{context}[:authentication_options]") unless input[:authentication_options].nil?
        Validators::ConnectionLogOptions.validate!(input[:connection_log_options], context: "#{context}[:connection_log_options]") unless input[:connection_log_options].nil?
        Validators::ValueStringList.validate!(input[:dns_servers], context: "#{context}[:dns_servers]") unless input[:dns_servers].nil?
        Hearth::Validator.validate!(input[:transport_protocol], ::String, context: "#{context}[:transport_protocol]")
        Hearth::Validator.validate!(input[:vpn_port], ::Integer, context: "#{context}[:vpn_port]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:split_tunnel], ::TrueClass, ::FalseClass, context: "#{context}[:split_tunnel]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Validators::ClientVpnSecurityGroupIdSet.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:self_service_portal], ::String, context: "#{context}[:self_service_portal]")
        Validators::ClientConnectOptions.validate!(input[:client_connect_options], context: "#{context}[:client_connect_options]") unless input[:client_connect_options].nil?
      end
    end

    class CreateClientVpnRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClientVpnRouteInput, context: context)
        Hearth::Validator.validate!(input[:client_vpn_endpoint_id], ::String, context: "#{context}[:client_vpn_endpoint_id]")
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
        Hearth::Validator.validate!(input[:target_vpc_subnet_id], ::String, context: "#{context}[:target_vpc_subnet_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateCustomerGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomerGatewayInput, context: context)
        Hearth::Validator.validate!(input[:bgp_asn], ::Integer, context: "#{context}[:bgp_asn]")
        Hearth::Validator.validate!(input[:public_ip], ::String, context: "#{context}[:public_ip]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateDefaultSubnetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDefaultSubnetInput, context: context)
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:ipv6_native], ::TrueClass, ::FalseClass, context: "#{context}[:ipv6_native]")
      end
    end

    class CreateDefaultVpcInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDefaultVpcInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateDhcpOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDhcpOptionsInput, context: context)
        Validators::NewDhcpConfigurationList.validate!(input[:dhcp_configurations], context: "#{context}[:dhcp_configurations]") unless input[:dhcp_configurations].nil?
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateEgressOnlyInternetGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEgressOnlyInternetGatewayInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class CreateFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFleetInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::SpotOptionsRequest.validate!(input[:spot_options], context: "#{context}[:spot_options]") unless input[:spot_options].nil?
        Validators::OnDemandOptionsRequest.validate!(input[:on_demand_options], context: "#{context}[:on_demand_options]") unless input[:on_demand_options].nil?
        Hearth::Validator.validate!(input[:excess_capacity_termination_policy], ::String, context: "#{context}[:excess_capacity_termination_policy]")
        Validators::FleetLaunchTemplateConfigListRequest.validate!(input[:launch_template_configs], context: "#{context}[:launch_template_configs]") unless input[:launch_template_configs].nil?
        Validators::TargetCapacitySpecificationRequest.validate!(input[:target_capacity_specification], context: "#{context}[:target_capacity_specification]") unless input[:target_capacity_specification].nil?
        Hearth::Validator.validate!(input[:terminate_instances_with_expiration], ::TrueClass, ::FalseClass, context: "#{context}[:terminate_instances_with_expiration]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:valid_from], ::Time, context: "#{context}[:valid_from]")
        Hearth::Validator.validate!(input[:valid_until], ::Time, context: "#{context}[:valid_until]")
        Hearth::Validator.validate!(input[:replace_unhealthy_instances], ::TrueClass, ::FalseClass, context: "#{context}[:replace_unhealthy_instances]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
      end
    end

    class CreateFlowLogsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFlowLogsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:deliver_logs_permission_arn], ::String, context: "#{context}[:deliver_logs_permission_arn]")
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Validators::FlowLogResourceIds.validate!(input[:resource_ids], context: "#{context}[:resource_ids]") unless input[:resource_ids].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:traffic_type], ::String, context: "#{context}[:traffic_type]")
        Hearth::Validator.validate!(input[:log_destination_type], ::String, context: "#{context}[:log_destination_type]")
        Hearth::Validator.validate!(input[:log_destination], ::String, context: "#{context}[:log_destination]")
        Hearth::Validator.validate!(input[:log_format], ::String, context: "#{context}[:log_format]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:max_aggregation_interval], ::Integer, context: "#{context}[:max_aggregation_interval]")
        Validators::DestinationOptionsRequest.validate!(input[:destination_options], context: "#{context}[:destination_options]") unless input[:destination_options].nil?
      end
    end

    class CreateFpgaImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFpgaImageInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::StorageLocation.validate!(input[:input_storage_location], context: "#{context}[:input_storage_location]") unless input[:input_storage_location].nil?
        Validators::StorageLocation.validate!(input[:logs_storage_location], context: "#{context}[:logs_storage_location]") unless input[:logs_storage_location].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class CreateImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateImageInput, context: context)
        Validators::BlockDeviceMappingRequestList.validate!(input[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless input[:block_device_mappings].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:no_reboot], ::TrueClass, ::FalseClass, context: "#{context}[:no_reboot]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class CreateInstanceEventWindowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInstanceEventWindowInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Validators::InstanceEventWindowTimeRangeRequestSet.validate!(input[:time_ranges], context: "#{context}[:time_ranges]") unless input[:time_ranges].nil?
        Hearth::Validator.validate!(input[:cron_expression], ::String, context: "#{context}[:cron_expression]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class CreateInstanceExportTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInstanceExportTaskInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ExportToS3TaskSpecification.validate!(input[:export_to_s3_task], context: "#{context}[:export_to_s3_task]") unless input[:export_to_s3_task].nil?
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:target_environment], ::String, context: "#{context}[:target_environment]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class CreateInternetGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInternetGatewayInput, context: context)
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateIpamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIpamInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::AddIpamOperatingRegionSet.validate!(input[:operating_regions], context: "#{context}[:operating_regions]") unless input[:operating_regions].nil?
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateIpamPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIpamPoolInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:ipam_scope_id], ::String, context: "#{context}[:ipam_scope_id]")
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:source_ipam_pool_id], ::String, context: "#{context}[:source_ipam_pool_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:address_family], ::String, context: "#{context}[:address_family]")
        Hearth::Validator.validate!(input[:auto_import], ::TrueClass, ::FalseClass, context: "#{context}[:auto_import]")
        Hearth::Validator.validate!(input[:publicly_advertisable], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_advertisable]")
        Hearth::Validator.validate!(input[:allocation_min_netmask_length], ::Integer, context: "#{context}[:allocation_min_netmask_length]")
        Hearth::Validator.validate!(input[:allocation_max_netmask_length], ::Integer, context: "#{context}[:allocation_max_netmask_length]")
        Hearth::Validator.validate!(input[:allocation_default_netmask_length], ::Integer, context: "#{context}[:allocation_default_netmask_length]")
        Validators::RequestIpamResourceTagList.validate!(input[:allocation_resource_tags], context: "#{context}[:allocation_resource_tags]") unless input[:allocation_resource_tags].nil?
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:aws_service], ::String, context: "#{context}[:aws_service]")
      end
    end

    class CreateIpamScopeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIpamScopeInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:ipam_id], ::String, context: "#{context}[:ipam_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateKeyPairInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateKeyPairInput, context: context)
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:key_type], ::String, context: "#{context}[:key_type]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class CreateLaunchTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLaunchTemplateInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:launch_template_name], ::String, context: "#{context}[:launch_template_name]")
        Hearth::Validator.validate!(input[:version_description], ::String, context: "#{context}[:version_description]")
        Validators::RequestLaunchTemplateData.validate!(input[:launch_template_data], context: "#{context}[:launch_template_data]") unless input[:launch_template_data].nil?
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class CreateLaunchTemplateVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLaunchTemplateVersionInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:launch_template_id], ::String, context: "#{context}[:launch_template_id]")
        Hearth::Validator.validate!(input[:launch_template_name], ::String, context: "#{context}[:launch_template_name]")
        Hearth::Validator.validate!(input[:source_version], ::String, context: "#{context}[:source_version]")
        Hearth::Validator.validate!(input[:version_description], ::String, context: "#{context}[:version_description]")
        Validators::RequestLaunchTemplateData.validate!(input[:launch_template_data], context: "#{context}[:launch_template_data]") unless input[:launch_template_data].nil?
      end
    end

    class CreateLocalGatewayRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocalGatewayRouteInput, context: context)
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
        Hearth::Validator.validate!(input[:local_gateway_route_table_id], ::String, context: "#{context}[:local_gateway_route_table_id]")
        Hearth::Validator.validate!(input[:local_gateway_virtual_interface_group_id], ::String, context: "#{context}[:local_gateway_virtual_interface_group_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateLocalGatewayRouteTableVpcAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocalGatewayRouteTableVpcAssociationInput, context: context)
        Hearth::Validator.validate!(input[:local_gateway_route_table_id], ::String, context: "#{context}[:local_gateway_route_table_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateManagedPrefixListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateManagedPrefixListInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:prefix_list_name], ::String, context: "#{context}[:prefix_list_name]")
        Validators::AddPrefixListEntries.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
        Hearth::Validator.validate!(input[:max_entries], ::Integer, context: "#{context}[:max_entries]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:address_family], ::String, context: "#{context}[:address_family]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateNatGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNatGatewayInput, context: context)
        Hearth::Validator.validate!(input[:allocation_id], ::String, context: "#{context}[:allocation_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:connectivity_type], ::String, context: "#{context}[:connectivity_type]")
      end
    end

    class CreateNetworkAclEntryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNetworkAclEntryInput, context: context)
        Hearth::Validator.validate!(input[:cidr_block], ::String, context: "#{context}[:cidr_block]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:egress], ::TrueClass, ::FalseClass, context: "#{context}[:egress]")
        Validators::IcmpTypeCode.validate!(input[:icmp_type_code], context: "#{context}[:icmp_type_code]") unless input[:icmp_type_code].nil?
        Hearth::Validator.validate!(input[:ipv6_cidr_block], ::String, context: "#{context}[:ipv6_cidr_block]")
        Hearth::Validator.validate!(input[:network_acl_id], ::String, context: "#{context}[:network_acl_id]")
        Validators::PortRange.validate!(input[:port_range], context: "#{context}[:port_range]") unless input[:port_range].nil?
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:rule_action], ::String, context: "#{context}[:rule_action]")
        Hearth::Validator.validate!(input[:rule_number], ::Integer, context: "#{context}[:rule_number]")
      end
    end

    class CreateNetworkAclInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNetworkAclInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class CreateNetworkInsightsAccessScopeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNetworkInsightsAccessScopeInput, context: context)
        Validators::AccessScopePathListRequest.validate!(input[:match_paths], context: "#{context}[:match_paths]") unless input[:match_paths].nil?
        Validators::AccessScopePathListRequest.validate!(input[:exclude_paths], context: "#{context}[:exclude_paths]") unless input[:exclude_paths].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateNetworkInsightsPathInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNetworkInsightsPathInput, context: context)
        Hearth::Validator.validate!(input[:source_ip], ::String, context: "#{context}[:source_ip]")
        Hearth::Validator.validate!(input[:destination_ip], ::String, context: "#{context}[:destination_ip]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:destination_port], ::Integer, context: "#{context}[:destination_port]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateNetworkInterfaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNetworkInterfaceInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::SecurityGroupIdStringList.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:ipv6_address_count], ::Integer, context: "#{context}[:ipv6_address_count]")
        Validators::InstanceIpv6AddressList.validate!(input[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless input[:ipv6_addresses].nil?
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
        Validators::PrivateIpAddressSpecificationList.validate!(input[:private_ip_addresses], context: "#{context}[:private_ip_addresses]") unless input[:private_ip_addresses].nil?
        Hearth::Validator.validate!(input[:secondary_private_ip_address_count], ::Integer, context: "#{context}[:secondary_private_ip_address_count]")
        Validators::Ipv4PrefixList.validate!(input[:ipv4_prefixes], context: "#{context}[:ipv4_prefixes]") unless input[:ipv4_prefixes].nil?
        Hearth::Validator.validate!(input[:ipv4_prefix_count], ::Integer, context: "#{context}[:ipv4_prefix_count]")
        Validators::Ipv6PrefixList.validate!(input[:ipv6_prefixes], context: "#{context}[:ipv6_prefixes]") unless input[:ipv6_prefixes].nil?
        Hearth::Validator.validate!(input[:ipv6_prefix_count], ::Integer, context: "#{context}[:ipv6_prefix_count]")
        Hearth::Validator.validate!(input[:interface_type], ::String, context: "#{context}[:interface_type]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateNetworkInterfacePermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNetworkInterfacePermissionInput, context: context)
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:aws_service], ::String, context: "#{context}[:aws_service]")
        Hearth::Validator.validate!(input[:permission], ::String, context: "#{context}[:permission]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreatePlacementGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePlacementGroupInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:strategy], ::String, context: "#{context}[:strategy]")
        Hearth::Validator.validate!(input[:partition_count], ::Integer, context: "#{context}[:partition_count]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class CreatePublicIpv4PoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePublicIpv4PoolInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class CreateReplaceRootVolumeTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplaceRootVolumeTaskInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class CreateReservedInstancesListingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReservedInstancesListingInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        Validators::PriceScheduleSpecificationList.validate!(input[:price_schedules], context: "#{context}[:price_schedules]") unless input[:price_schedules].nil?
        Hearth::Validator.validate!(input[:reserved_instances_id], ::String, context: "#{context}[:reserved_instances_id]")
      end
    end

    class CreateRestoreImageTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRestoreImageTaskInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:object_key], ::String, context: "#{context}[:object_key]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRouteInput, context: context)
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
        Hearth::Validator.validate!(input[:destination_ipv6_cidr_block], ::String, context: "#{context}[:destination_ipv6_cidr_block]")
        Hearth::Validator.validate!(input[:destination_prefix_list_id], ::String, context: "#{context}[:destination_prefix_list_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:vpc_endpoint_id], ::String, context: "#{context}[:vpc_endpoint_id]")
        Hearth::Validator.validate!(input[:egress_only_internet_gateway_id], ::String, context: "#{context}[:egress_only_internet_gateway_id]")
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:nat_gateway_id], ::String, context: "#{context}[:nat_gateway_id]")
        Hearth::Validator.validate!(input[:transit_gateway_id], ::String, context: "#{context}[:transit_gateway_id]")
        Hearth::Validator.validate!(input[:local_gateway_id], ::String, context: "#{context}[:local_gateway_id]")
        Hearth::Validator.validate!(input[:carrier_gateway_id], ::String, context: "#{context}[:carrier_gateway_id]")
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:route_table_id], ::String, context: "#{context}[:route_table_id]")
        Hearth::Validator.validate!(input[:vpc_peering_connection_id], ::String, context: "#{context}[:vpc_peering_connection_id]")
        Hearth::Validator.validate!(input[:core_network_arn], ::String, context: "#{context}[:core_network_arn]")
      end
    end

    class CreateRouteTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRouteTableInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class CreateSecurityGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSecurityGroupInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:outpost_arn], ::String, context: "#{context}[:outpost_arn]")
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotsInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::InstanceSpecification.validate!(input[:instance_specification], context: "#{context}[:instance_specification]") unless input[:instance_specification].nil?
        Hearth::Validator.validate!(input[:outpost_arn], ::String, context: "#{context}[:outpost_arn]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:copy_tags_from_source], ::String, context: "#{context}[:copy_tags_from_source]")
      end
    end

    class CreateSpotDatafeedSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSpotDatafeedSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class CreateStoreImageTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStoreImageTaskInput, context: context)
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Validators::S3ObjectTagList.validate!(input[:s3_object_tags], context: "#{context}[:s3_object_tags]") unless input[:s3_object_tags].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateSubnetCidrReservationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSubnetCidrReservationInput, context: context)
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
        Hearth::Validator.validate!(input[:reservation_type], ::String, context: "#{context}[:reservation_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateSubnetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSubnetInput, context: context)
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:availability_zone_id], ::String, context: "#{context}[:availability_zone_id]")
        Hearth::Validator.validate!(input[:cidr_block], ::String, context: "#{context}[:cidr_block]")
        Hearth::Validator.validate!(input[:ipv6_cidr_block], ::String, context: "#{context}[:ipv6_cidr_block]")
        Hearth::Validator.validate!(input[:outpost_arn], ::String, context: "#{context}[:outpost_arn]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:ipv6_native], ::TrueClass, ::FalseClass, context: "#{context}[:ipv6_native]")
      end
    end

    class CreateTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTagsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::ResourceIdList.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateTrafficMirrorFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrafficMirrorFilterInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateTrafficMirrorFilterRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrafficMirrorFilterRuleInput, context: context)
        Hearth::Validator.validate!(input[:traffic_mirror_filter_id], ::String, context: "#{context}[:traffic_mirror_filter_id]")
        Hearth::Validator.validate!(input[:traffic_direction], ::String, context: "#{context}[:traffic_direction]")
        Hearth::Validator.validate!(input[:rule_number], ::Integer, context: "#{context}[:rule_number]")
        Hearth::Validator.validate!(input[:rule_action], ::String, context: "#{context}[:rule_action]")
        Validators::TrafficMirrorPortRangeRequest.validate!(input[:destination_port_range], context: "#{context}[:destination_port_range]") unless input[:destination_port_range].nil?
        Validators::TrafficMirrorPortRangeRequest.validate!(input[:source_port_range], context: "#{context}[:source_port_range]") unless input[:source_port_range].nil?
        Hearth::Validator.validate!(input[:protocol], ::Integer, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
        Hearth::Validator.validate!(input[:source_cidr_block], ::String, context: "#{context}[:source_cidr_block]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateTrafficMirrorSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrafficMirrorSessionInput, context: context)
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:traffic_mirror_target_id], ::String, context: "#{context}[:traffic_mirror_target_id]")
        Hearth::Validator.validate!(input[:traffic_mirror_filter_id], ::String, context: "#{context}[:traffic_mirror_filter_id]")
        Hearth::Validator.validate!(input[:packet_length], ::Integer, context: "#{context}[:packet_length]")
        Hearth::Validator.validate!(input[:session_number], ::Integer, context: "#{context}[:session_number]")
        Hearth::Validator.validate!(input[:virtual_network_id], ::Integer, context: "#{context}[:virtual_network_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateTrafficMirrorTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrafficMirrorTargetInput, context: context)
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:network_load_balancer_arn], ::String, context: "#{context}[:network_load_balancer_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateTransitGatewayConnectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTransitGatewayConnectInput, context: context)
        Hearth::Validator.validate!(input[:transport_transit_gateway_attachment_id], ::String, context: "#{context}[:transport_transit_gateway_attachment_id]")
        Validators::CreateTransitGatewayConnectRequestOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateTransitGatewayConnectPeerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTransitGatewayConnectPeerInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Hearth::Validator.validate!(input[:transit_gateway_address], ::String, context: "#{context}[:transit_gateway_address]")
        Hearth::Validator.validate!(input[:peer_address], ::String, context: "#{context}[:peer_address]")
        Validators::TransitGatewayConnectRequestBgpOptions.validate!(input[:bgp_options], context: "#{context}[:bgp_options]") unless input[:bgp_options].nil?
        Validators::InsideCidrBlocksStringList.validate!(input[:inside_cidr_blocks], context: "#{context}[:inside_cidr_blocks]") unless input[:inside_cidr_blocks].nil?
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateTransitGatewayConnectRequestOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTransitGatewayConnectRequestOptions, context: context)
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
      end
    end

    class CreateTransitGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTransitGatewayInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TransitGatewayRequestOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateTransitGatewayMulticastDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTransitGatewayMulticastDomainInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_id], ::String, context: "#{context}[:transit_gateway_id]")
        Validators::CreateTransitGatewayMulticastDomainRequestOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateTransitGatewayMulticastDomainRequestOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTransitGatewayMulticastDomainRequestOptions, context: context)
        Hearth::Validator.validate!(input[:igmpv2_support], ::String, context: "#{context}[:igmpv2_support]")
        Hearth::Validator.validate!(input[:static_sources_support], ::String, context: "#{context}[:static_sources_support]")
        Hearth::Validator.validate!(input[:auto_accept_shared_associations], ::String, context: "#{context}[:auto_accept_shared_associations]")
      end
    end

    class CreateTransitGatewayPeeringAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTransitGatewayPeeringAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_id], ::String, context: "#{context}[:transit_gateway_id]")
        Hearth::Validator.validate!(input[:peer_transit_gateway_id], ::String, context: "#{context}[:peer_transit_gateway_id]")
        Hearth::Validator.validate!(input[:peer_account_id], ::String, context: "#{context}[:peer_account_id]")
        Hearth::Validator.validate!(input[:peer_region], ::String, context: "#{context}[:peer_region]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateTransitGatewayPrefixListReferenceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTransitGatewayPrefixListReferenceInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_route_table_id], ::String, context: "#{context}[:transit_gateway_route_table_id]")
        Hearth::Validator.validate!(input[:prefix_list_id], ::String, context: "#{context}[:prefix_list_id]")
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Hearth::Validator.validate!(input[:blackhole], ::TrueClass, ::FalseClass, context: "#{context}[:blackhole]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateTransitGatewayRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTransitGatewayRouteInput, context: context)
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
        Hearth::Validator.validate!(input[:transit_gateway_route_table_id], ::String, context: "#{context}[:transit_gateway_route_table_id]")
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Hearth::Validator.validate!(input[:blackhole], ::TrueClass, ::FalseClass, context: "#{context}[:blackhole]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateTransitGatewayRouteTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTransitGatewayRouteTableInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_id], ::String, context: "#{context}[:transit_gateway_id]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateTransitGatewayVpcAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTransitGatewayVpcAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_id], ::String, context: "#{context}[:transit_gateway_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::TransitGatewaySubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::CreateTransitGatewayVpcAttachmentRequestOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateTransitGatewayVpcAttachmentRequestOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTransitGatewayVpcAttachmentRequestOptions, context: context)
        Hearth::Validator.validate!(input[:dns_support], ::String, context: "#{context}[:dns_support]")
        Hearth::Validator.validate!(input[:ipv6_support], ::String, context: "#{context}[:ipv6_support]")
        Hearth::Validator.validate!(input[:appliance_mode_support], ::String, context: "#{context}[:appliance_mode_support]")
      end
    end

    class CreateVolumeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVolumeInput, context: context)
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:outpost_arn], ::String, context: "#{context}[:outpost_arn]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:multi_attach_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:multi_attach_enabled]")
        Hearth::Validator.validate!(input[:throughput], ::Integer, context: "#{context}[:throughput]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateVolumePermission
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVolumePermission, context: context)
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class CreateVolumePermissionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CreateVolumePermission.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateVolumePermissionModifications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVolumePermissionModifications, context: context)
        Validators::CreateVolumePermissionList.validate!(input[:add], context: "#{context}[:add]") unless input[:add].nil?
        Validators::CreateVolumePermissionList.validate!(input[:remove], context: "#{context}[:remove]") unless input[:remove].nil?
      end
    end

    class CreateVpcEndpointConnectionNotificationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpcEndpointConnectionNotificationInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Hearth::Validator.validate!(input[:vpc_endpoint_id], ::String, context: "#{context}[:vpc_endpoint_id]")
        Hearth::Validator.validate!(input[:connection_notification_arn], ::String, context: "#{context}[:connection_notification_arn]")
        Validators::ValueStringList.validate!(input[:connection_events], context: "#{context}[:connection_events]") unless input[:connection_events].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateVpcEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpcEndpointInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:vpc_endpoint_type], ::String, context: "#{context}[:vpc_endpoint_type]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
        Validators::VpcEndpointRouteTableIdList.validate!(input[:route_table_ids], context: "#{context}[:route_table_ids]") unless input[:route_table_ids].nil?
        Validators::VpcEndpointSubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::VpcEndpointSecurityGroupIdList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:private_dns_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:private_dns_enabled]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class CreateVpcEndpointServiceConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpcEndpointServiceConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:acceptance_required], ::TrueClass, ::FalseClass, context: "#{context}[:acceptance_required]")
        Hearth::Validator.validate!(input[:private_dns_name], ::String, context: "#{context}[:private_dns_name]")
        Validators::ValueStringList.validate!(input[:network_load_balancer_arns], context: "#{context}[:network_load_balancer_arns]") unless input[:network_load_balancer_arns].nil?
        Validators::ValueStringList.validate!(input[:gateway_load_balancer_arns], context: "#{context}[:gateway_load_balancer_arns]") unless input[:gateway_load_balancer_arns].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class CreateVpcInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpcInput, context: context)
        Hearth::Validator.validate!(input[:cidr_block], ::String, context: "#{context}[:cidr_block]")
        Hearth::Validator.validate!(input[:amazon_provided_ipv6_cidr_block], ::TrueClass, ::FalseClass, context: "#{context}[:amazon_provided_ipv6_cidr_block]")
        Hearth::Validator.validate!(input[:ipv6_pool], ::String, context: "#{context}[:ipv6_pool]")
        Hearth::Validator.validate!(input[:ipv6_cidr_block], ::String, context: "#{context}[:ipv6_cidr_block]")
        Hearth::Validator.validate!(input[:ipv4_ipam_pool_id], ::String, context: "#{context}[:ipv4_ipam_pool_id]")
        Hearth::Validator.validate!(input[:ipv4_netmask_length], ::Integer, context: "#{context}[:ipv4_netmask_length]")
        Hearth::Validator.validate!(input[:ipv6_ipam_pool_id], ::String, context: "#{context}[:ipv6_ipam_pool_id]")
        Hearth::Validator.validate!(input[:ipv6_netmask_length], ::Integer, context: "#{context}[:ipv6_netmask_length]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:instance_tenancy], ::String, context: "#{context}[:instance_tenancy]")
        Hearth::Validator.validate!(input[:ipv6_cidr_block_network_border_group], ::String, context: "#{context}[:ipv6_cidr_block_network_border_group]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class CreateVpcPeeringConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpcPeeringConnectionInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:peer_owner_id], ::String, context: "#{context}[:peer_owner_id]")
        Hearth::Validator.validate!(input[:peer_vpc_id], ::String, context: "#{context}[:peer_vpc_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:peer_region], ::String, context: "#{context}[:peer_region]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class CreateVpnConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpnConnectionInput, context: context)
        Hearth::Validator.validate!(input[:customer_gateway_id], ::String, context: "#{context}[:customer_gateway_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:vpn_gateway_id], ::String, context: "#{context}[:vpn_gateway_id]")
        Hearth::Validator.validate!(input[:transit_gateway_id], ::String, context: "#{context}[:transit_gateway_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::VpnConnectionOptionsSpecification.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class CreateVpnConnectionRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpnConnectionRouteInput, context: context)
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
        Hearth::Validator.validate!(input[:vpn_connection_id], ::String, context: "#{context}[:vpn_connection_id]")
      end
    end

    class CreateVpnGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpnGatewayInput, context: context)
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:amazon_side_asn], ::Integer, context: "#{context}[:amazon_side_asn]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreditSpecificationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreditSpecificationRequest, context: context)
        Hearth::Validator.validate!(input[:cpu_credits], ::String, context: "#{context}[:cpu_credits]")
      end
    end

    class CustomerGatewayIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DedicatedHostIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeleteCarrierGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCarrierGatewayInput, context: context)
        Hearth::Validator.validate!(input[:carrier_gateway_id], ::String, context: "#{context}[:carrier_gateway_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteClientVpnEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClientVpnEndpointInput, context: context)
        Hearth::Validator.validate!(input[:client_vpn_endpoint_id], ::String, context: "#{context}[:client_vpn_endpoint_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteClientVpnRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClientVpnRouteInput, context: context)
        Hearth::Validator.validate!(input[:client_vpn_endpoint_id], ::String, context: "#{context}[:client_vpn_endpoint_id]")
        Hearth::Validator.validate!(input[:target_vpc_subnet_id], ::String, context: "#{context}[:target_vpc_subnet_id]")
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteCustomerGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomerGatewayInput, context: context)
        Hearth::Validator.validate!(input[:customer_gateway_id], ::String, context: "#{context}[:customer_gateway_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteDhcpOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDhcpOptionsInput, context: context)
        Hearth::Validator.validate!(input[:dhcp_options_id], ::String, context: "#{context}[:dhcp_options_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteEgressOnlyInternetGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEgressOnlyInternetGatewayInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:egress_only_internet_gateway_id], ::String, context: "#{context}[:egress_only_internet_gateway_id]")
      end
    end

    class DeleteFleetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFleetsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FleetIdSet.validate!(input[:fleet_ids], context: "#{context}[:fleet_ids]") unless input[:fleet_ids].nil?
        Hearth::Validator.validate!(input[:terminate_instances], ::TrueClass, ::FalseClass, context: "#{context}[:terminate_instances]")
      end
    end

    class DeleteFlowLogsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFlowLogsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FlowLogIdList.validate!(input[:flow_log_ids], context: "#{context}[:flow_log_ids]") unless input[:flow_log_ids].nil?
      end
    end

    class DeleteFpgaImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFpgaImageInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:fpga_image_id], ::String, context: "#{context}[:fpga_image_id]")
      end
    end

    class DeleteInstanceEventWindowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInstanceEventWindowInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:force_delete], ::TrueClass, ::FalseClass, context: "#{context}[:force_delete]")
        Hearth::Validator.validate!(input[:instance_event_window_id], ::String, context: "#{context}[:instance_event_window_id]")
      end
    end

    class DeleteInternetGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInternetGatewayInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:internet_gateway_id], ::String, context: "#{context}[:internet_gateway_id]")
      end
    end

    class DeleteIpamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIpamInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:ipam_id], ::String, context: "#{context}[:ipam_id]")
      end
    end

    class DeleteIpamPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIpamPoolInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:ipam_pool_id], ::String, context: "#{context}[:ipam_pool_id]")
      end
    end

    class DeleteIpamScopeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIpamScopeInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:ipam_scope_id], ::String, context: "#{context}[:ipam_scope_id]")
      end
    end

    class DeleteKeyPairInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteKeyPairInput, context: context)
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Hearth::Validator.validate!(input[:key_pair_id], ::String, context: "#{context}[:key_pair_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteLaunchTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLaunchTemplateInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:launch_template_id], ::String, context: "#{context}[:launch_template_id]")
        Hearth::Validator.validate!(input[:launch_template_name], ::String, context: "#{context}[:launch_template_name]")
      end
    end

    class DeleteLaunchTemplateVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLaunchTemplateVersionsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:launch_template_id], ::String, context: "#{context}[:launch_template_id]")
        Hearth::Validator.validate!(input[:launch_template_name], ::String, context: "#{context}[:launch_template_name]")
        Validators::VersionStringList.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
      end
    end

    class DeleteLocalGatewayRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLocalGatewayRouteInput, context: context)
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
        Hearth::Validator.validate!(input[:local_gateway_route_table_id], ::String, context: "#{context}[:local_gateway_route_table_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteLocalGatewayRouteTableVpcAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLocalGatewayRouteTableVpcAssociationInput, context: context)
        Hearth::Validator.validate!(input[:local_gateway_route_table_vpc_association_id], ::String, context: "#{context}[:local_gateway_route_table_vpc_association_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteManagedPrefixListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteManagedPrefixListInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:prefix_list_id], ::String, context: "#{context}[:prefix_list_id]")
      end
    end

    class DeleteNatGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNatGatewayInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:nat_gateway_id], ::String, context: "#{context}[:nat_gateway_id]")
      end
    end

    class DeleteNetworkAclEntryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNetworkAclEntryInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:egress], ::TrueClass, ::FalseClass, context: "#{context}[:egress]")
        Hearth::Validator.validate!(input[:network_acl_id], ::String, context: "#{context}[:network_acl_id]")
        Hearth::Validator.validate!(input[:rule_number], ::Integer, context: "#{context}[:rule_number]")
      end
    end

    class DeleteNetworkAclInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNetworkAclInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:network_acl_id], ::String, context: "#{context}[:network_acl_id]")
      end
    end

    class DeleteNetworkInsightsAccessScopeAnalysisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNetworkInsightsAccessScopeAnalysisInput, context: context)
        Hearth::Validator.validate!(input[:network_insights_access_scope_analysis_id], ::String, context: "#{context}[:network_insights_access_scope_analysis_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteNetworkInsightsAccessScopeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNetworkInsightsAccessScopeInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:network_insights_access_scope_id], ::String, context: "#{context}[:network_insights_access_scope_id]")
      end
    end

    class DeleteNetworkInsightsAnalysisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNetworkInsightsAnalysisInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:network_insights_analysis_id], ::String, context: "#{context}[:network_insights_analysis_id]")
      end
    end

    class DeleteNetworkInsightsPathInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNetworkInsightsPathInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:network_insights_path_id], ::String, context: "#{context}[:network_insights_path_id]")
      end
    end

    class DeleteNetworkInterfaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNetworkInterfaceInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
      end
    end

    class DeleteNetworkInterfacePermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNetworkInterfacePermissionInput, context: context)
        Hearth::Validator.validate!(input[:network_interface_permission_id], ::String, context: "#{context}[:network_interface_permission_id]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeletePlacementGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePlacementGroupInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
      end
    end

    class DeletePublicIpv4PoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePublicIpv4PoolInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
      end
    end

    class DeleteQueuedReservedInstancesIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeleteQueuedReservedInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteQueuedReservedInstancesInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::DeleteQueuedReservedInstancesIdList.validate!(input[:reserved_instances_ids], context: "#{context}[:reserved_instances_ids]") unless input[:reserved_instances_ids].nil?
      end
    end

    class DeleteRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRouteInput, context: context)
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
        Hearth::Validator.validate!(input[:destination_ipv6_cidr_block], ::String, context: "#{context}[:destination_ipv6_cidr_block]")
        Hearth::Validator.validate!(input[:destination_prefix_list_id], ::String, context: "#{context}[:destination_prefix_list_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:route_table_id], ::String, context: "#{context}[:route_table_id]")
      end
    end

    class DeleteRouteTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRouteTableInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:route_table_id], ::String, context: "#{context}[:route_table_id]")
      end
    end

    class DeleteSecurityGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSecurityGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteSpotDatafeedSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSpotDatafeedSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteSubnetCidrReservationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSubnetCidrReservationInput, context: context)
        Hearth::Validator.validate!(input[:subnet_cidr_reservation_id], ::String, context: "#{context}[:subnet_cidr_reservation_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteSubnetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSubnetInput, context: context)
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::ResourceIdList.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DeleteTrafficMirrorFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrafficMirrorFilterInput, context: context)
        Hearth::Validator.validate!(input[:traffic_mirror_filter_id], ::String, context: "#{context}[:traffic_mirror_filter_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteTrafficMirrorFilterRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrafficMirrorFilterRuleInput, context: context)
        Hearth::Validator.validate!(input[:traffic_mirror_filter_rule_id], ::String, context: "#{context}[:traffic_mirror_filter_rule_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteTrafficMirrorSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrafficMirrorSessionInput, context: context)
        Hearth::Validator.validate!(input[:traffic_mirror_session_id], ::String, context: "#{context}[:traffic_mirror_session_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteTrafficMirrorTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrafficMirrorTargetInput, context: context)
        Hearth::Validator.validate!(input[:traffic_mirror_target_id], ::String, context: "#{context}[:traffic_mirror_target_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteTransitGatewayConnectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTransitGatewayConnectInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteTransitGatewayConnectPeerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTransitGatewayConnectPeerInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_connect_peer_id], ::String, context: "#{context}[:transit_gateway_connect_peer_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteTransitGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTransitGatewayInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_id], ::String, context: "#{context}[:transit_gateway_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteTransitGatewayMulticastDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTransitGatewayMulticastDomainInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_multicast_domain_id], ::String, context: "#{context}[:transit_gateway_multicast_domain_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteTransitGatewayPeeringAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTransitGatewayPeeringAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteTransitGatewayPrefixListReferenceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTransitGatewayPrefixListReferenceInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_route_table_id], ::String, context: "#{context}[:transit_gateway_route_table_id]")
        Hearth::Validator.validate!(input[:prefix_list_id], ::String, context: "#{context}[:prefix_list_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteTransitGatewayRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTransitGatewayRouteInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_route_table_id], ::String, context: "#{context}[:transit_gateway_route_table_id]")
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteTransitGatewayRouteTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTransitGatewayRouteTableInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_route_table_id], ::String, context: "#{context}[:transit_gateway_route_table_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteTransitGatewayVpcAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTransitGatewayVpcAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteVolumeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVolumeInput, context: context)
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteVpcEndpointConnectionNotificationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVpcEndpointConnectionNotificationsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::ConnectionNotificationIdsList.validate!(input[:connection_notification_ids], context: "#{context}[:connection_notification_ids]") unless input[:connection_notification_ids].nil?
      end
    end

    class DeleteVpcEndpointServiceConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVpcEndpointServiceConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::VpcEndpointServiceIdList.validate!(input[:service_ids], context: "#{context}[:service_ids]") unless input[:service_ids].nil?
      end
    end

    class DeleteVpcEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVpcEndpointsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::VpcEndpointIdList.validate!(input[:vpc_endpoint_ids], context: "#{context}[:vpc_endpoint_ids]") unless input[:vpc_endpoint_ids].nil?
      end
    end

    class DeleteVpcInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVpcInput, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteVpcPeeringConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVpcPeeringConnectionInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:vpc_peering_connection_id], ::String, context: "#{context}[:vpc_peering_connection_id]")
      end
    end

    class DeleteVpnConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVpnConnectionInput, context: context)
        Hearth::Validator.validate!(input[:vpn_connection_id], ::String, context: "#{context}[:vpn_connection_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteVpnConnectionRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVpnConnectionRouteInput, context: context)
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
        Hearth::Validator.validate!(input[:vpn_connection_id], ::String, context: "#{context}[:vpn_connection_id]")
      end
    end

    class DeleteVpnGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVpnGatewayInput, context: context)
        Hearth::Validator.validate!(input[:vpn_gateway_id], ::String, context: "#{context}[:vpn_gateway_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeprovisionByoipCidrInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeprovisionByoipCidrInput, context: context)
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeprovisionIpamPoolCidrInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeprovisionIpamPoolCidrInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:ipam_pool_id], ::String, context: "#{context}[:ipam_pool_id]")
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
      end
    end

    class DeprovisionPublicIpv4PoolCidrInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeprovisionPublicIpv4PoolCidrInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
      end
    end

    class DeregisterImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterImageInput, context: context)
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeregisterInstanceEventNotificationAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterInstanceEventNotificationAttributesInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::DeregisterInstanceTagAttributeRequest.validate!(input[:instance_tag_attribute], context: "#{context}[:instance_tag_attribute]") unless input[:instance_tag_attribute].nil?
      end
    end

    class DeregisterInstanceTagAttributeRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterInstanceTagAttributeRequest, context: context)
        Hearth::Validator.validate!(input[:include_all_tags_of_instance], ::TrueClass, ::FalseClass, context: "#{context}[:include_all_tags_of_instance]")
        Validators::InstanceTagKeySet.validate!(input[:instance_tag_keys], context: "#{context}[:instance_tag_keys]") unless input[:instance_tag_keys].nil?
      end
    end

    class DeregisterTransitGatewayMulticastGroupMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterTransitGatewayMulticastGroupMembersInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_multicast_domain_id], ::String, context: "#{context}[:transit_gateway_multicast_domain_id]")
        Hearth::Validator.validate!(input[:group_ip_address], ::String, context: "#{context}[:group_ip_address]")
        Validators::TransitGatewayNetworkInterfaceIdList.validate!(input[:network_interface_ids], context: "#{context}[:network_interface_ids]") unless input[:network_interface_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeregisterTransitGatewayMulticastGroupSourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterTransitGatewayMulticastGroupSourcesInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_multicast_domain_id], ::String, context: "#{context}[:transit_gateway_multicast_domain_id]")
        Hearth::Validator.validate!(input[:group_ip_address], ::String, context: "#{context}[:group_ip_address]")
        Validators::TransitGatewayNetworkInterfaceIdList.validate!(input[:network_interface_ids], context: "#{context}[:network_interface_ids]") unless input[:network_interface_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeAccountAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountAttributesInput, context: context)
        Validators::AccountAttributeNameStringList.validate!(input[:attribute_names], context: "#{context}[:attribute_names]") unless input[:attribute_names].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeAddressesAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAddressesAttributeInput, context: context)
        Validators::AllocationIds.validate!(input[:allocation_ids], context: "#{context}[:allocation_ids]") unless input[:allocation_ids].nil?
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeAddressesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAddressesInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::PublicIpStringList.validate!(input[:public_ips], context: "#{context}[:public_ips]") unless input[:public_ips].nil?
        Validators::AllocationIdList.validate!(input[:allocation_ids], context: "#{context}[:allocation_ids]") unless input[:allocation_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeAggregateIdFormatInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAggregateIdFormatInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeAvailabilityZonesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAvailabilityZonesInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::ZoneNameStringList.validate!(input[:zone_names], context: "#{context}[:zone_names]") unless input[:zone_names].nil?
        Validators::ZoneIdStringList.validate!(input[:zone_ids], context: "#{context}[:zone_ids]") unless input[:zone_ids].nil?
        Hearth::Validator.validate!(input[:all_availability_zones], ::TrueClass, ::FalseClass, context: "#{context}[:all_availability_zones]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeBundleTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBundleTasksInput, context: context)
        Validators::BundleIdStringList.validate!(input[:bundle_ids], context: "#{context}[:bundle_ids]") unless input[:bundle_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeByoipCidrsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeByoipCidrsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeCapacityReservationFleetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCapacityReservationFleetsInput, context: context)
        Validators::CapacityReservationFleetIdSet.validate!(input[:capacity_reservation_fleet_ids], context: "#{context}[:capacity_reservation_fleet_ids]") unless input[:capacity_reservation_fleet_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeCapacityReservationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCapacityReservationsInput, context: context)
        Validators::CapacityReservationIdSet.validate!(input[:capacity_reservation_ids], context: "#{context}[:capacity_reservation_ids]") unless input[:capacity_reservation_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeCarrierGatewaysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCarrierGatewaysInput, context: context)
        Validators::CarrierGatewayIdSet.validate!(input[:carrier_gateway_ids], context: "#{context}[:carrier_gateway_ids]") unless input[:carrier_gateway_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeClassicLinkInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClassicLinkInstancesInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::InstanceIdStringList.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeClientVpnAuthorizationRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClientVpnAuthorizationRulesInput, context: context)
        Hearth::Validator.validate!(input[:client_vpn_endpoint_id], ::String, context: "#{context}[:client_vpn_endpoint_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeClientVpnConnectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClientVpnConnectionsInput, context: context)
        Hearth::Validator.validate!(input[:client_vpn_endpoint_id], ::String, context: "#{context}[:client_vpn_endpoint_id]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeClientVpnEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClientVpnEndpointsInput, context: context)
        Validators::ClientVpnEndpointIdList.validate!(input[:client_vpn_endpoint_ids], context: "#{context}[:client_vpn_endpoint_ids]") unless input[:client_vpn_endpoint_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeClientVpnRoutesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClientVpnRoutesInput, context: context)
        Hearth::Validator.validate!(input[:client_vpn_endpoint_id], ::String, context: "#{context}[:client_vpn_endpoint_id]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeClientVpnTargetNetworksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClientVpnTargetNetworksInput, context: context)
        Hearth::Validator.validate!(input[:client_vpn_endpoint_id], ::String, context: "#{context}[:client_vpn_endpoint_id]")
        Validators::ValueStringList.validate!(input[:association_ids], context: "#{context}[:association_ids]") unless input[:association_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeCoipPoolsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCoipPoolsInput, context: context)
        Validators::CoipPoolIdSet.validate!(input[:pool_ids], context: "#{context}[:pool_ids]") unless input[:pool_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeConversionTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConversionTasksInput, context: context)
        Validators::ConversionIdStringList.validate!(input[:conversion_task_ids], context: "#{context}[:conversion_task_ids]") unless input[:conversion_task_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeCustomerGatewaysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomerGatewaysInput, context: context)
        Validators::CustomerGatewayIdStringList.validate!(input[:customer_gateway_ids], context: "#{context}[:customer_gateway_ids]") unless input[:customer_gateway_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeDhcpOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDhcpOptionsInput, context: context)
        Validators::DhcpOptionsIdStringList.validate!(input[:dhcp_options_ids], context: "#{context}[:dhcp_options_ids]") unless input[:dhcp_options_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeEgressOnlyInternetGatewaysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEgressOnlyInternetGatewaysInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::EgressOnlyInternetGatewayIdList.validate!(input[:egress_only_internet_gateway_ids], context: "#{context}[:egress_only_internet_gateway_ids]") unless input[:egress_only_internet_gateway_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class DescribeElasticGpusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeElasticGpusInput, context: context)
        Validators::ElasticGpuIdSet.validate!(input[:elastic_gpu_ids], context: "#{context}[:elastic_gpu_ids]") unless input[:elastic_gpu_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeExportImageTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExportImageTasksInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::ExportImageTaskIdList.validate!(input[:export_image_task_ids], context: "#{context}[:export_image_task_ids]") unless input[:export_image_task_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeExportTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExportTasksInput, context: context)
        Validators::ExportTaskIdStringList.validate!(input[:export_task_ids], context: "#{context}[:export_task_ids]") unless input[:export_task_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class DescribeFastSnapshotRestoresInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFastSnapshotRestoresInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeFleetHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetHistoryInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
      end
    end

    class DescribeFleetInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetInstancesInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class DescribeFleetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::FleetIdSet.validate!(input[:fleet_ids], context: "#{context}[:fleet_ids]") unless input[:fleet_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class DescribeFlowLogsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFlowLogsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Validators::FlowLogIdList.validate!(input[:flow_log_ids], context: "#{context}[:flow_log_ids]") unless input[:flow_log_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFpgaImageAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFpgaImageAttributeInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:fpga_image_id], ::String, context: "#{context}[:fpga_image_id]")
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
      end
    end

    class DescribeFpgaImagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFpgaImagesInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FpgaImageIdList.validate!(input[:fpga_image_ids], context: "#{context}[:fpga_image_ids]") unless input[:fpga_image_ids].nil?
        Validators::OwnerStringList.validate!(input[:owners], context: "#{context}[:owners]") unless input[:owners].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeHostReservationOfferingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHostReservationOfferingsInput, context: context)
        Validators::FilterList.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:max_duration], ::Integer, context: "#{context}[:max_duration]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:min_duration], ::Integer, context: "#{context}[:min_duration]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:offering_id], ::String, context: "#{context}[:offering_id]")
      end
    end

    class DescribeHostReservationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHostReservationsInput, context: context)
        Validators::FilterList.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Validators::HostReservationIdSet.validate!(input[:host_reservation_id_set], context: "#{context}[:host_reservation_id_set]") unless input[:host_reservation_id_set].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeHostsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHostsInput, context: context)
        Validators::FilterList.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Validators::RequestHostIdList.validate!(input[:host_ids], context: "#{context}[:host_ids]") unless input[:host_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeIamInstanceProfileAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIamInstanceProfileAssociationsInput, context: context)
        Validators::AssociationIdList.validate!(input[:association_ids], context: "#{context}[:association_ids]") unless input[:association_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeIdFormatInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIdFormatInput, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
      end
    end

    class DescribeIdentityIdFormatInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIdentityIdFormatInput, context: context)
        Hearth::Validator.validate!(input[:principal_arn], ::String, context: "#{context}[:principal_arn]")
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
      end
    end

    class DescribeImageAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImageAttributeInput, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeImagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImagesInput, context: context)
        Validators::ExecutableByStringList.validate!(input[:executable_users], context: "#{context}[:executable_users]") unless input[:executable_users].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::ImageIdStringList.validate!(input[:image_ids], context: "#{context}[:image_ids]") unless input[:image_ids].nil?
        Validators::OwnerStringList.validate!(input[:owners], context: "#{context}[:owners]") unless input[:owners].nil?
        Hearth::Validator.validate!(input[:include_deprecated], ::TrueClass, ::FalseClass, context: "#{context}[:include_deprecated]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeImportImageTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImportImageTasksInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::ImportTaskIdList.validate!(input[:import_task_ids], context: "#{context}[:import_task_ids]") unless input[:import_task_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeImportSnapshotTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImportSnapshotTasksInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::ImportSnapshotTaskIdList.validate!(input[:import_task_ids], context: "#{context}[:import_task_ids]") unless input[:import_task_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInstanceAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceAttributeInput, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class DescribeInstanceCreditSpecificationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceCreditSpecificationsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::InstanceIdStringList.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInstanceEventNotificationAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceEventNotificationAttributesInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeInstanceEventWindowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceEventWindowsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::InstanceEventWindowIdSet.validate!(input[:instance_event_window_ids], context: "#{context}[:instance_event_window_ids]") unless input[:instance_event_window_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInstanceStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceStatusInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::InstanceIdStringList.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:include_all_instances], ::TrueClass, ::FalseClass, context: "#{context}[:include_all_instances]")
      end
    end

    class DescribeInstanceTypeOfferingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceTypeOfferingsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:location_type], ::String, context: "#{context}[:location_type]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInstanceTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceTypesInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::RequestInstanceTypeList.validate!(input[:instance_types], context: "#{context}[:instance_types]") unless input[:instance_types].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstancesInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::InstanceIdStringList.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInternetGatewaysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInternetGatewaysInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::InternetGatewayIdList.validate!(input[:internet_gateway_ids], context: "#{context}[:internet_gateway_ids]") unless input[:internet_gateway_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeIpamPoolsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIpamPoolsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ValueStringList.validate!(input[:ipam_pool_ids], context: "#{context}[:ipam_pool_ids]") unless input[:ipam_pool_ids].nil?
      end
    end

    class DescribeIpamScopesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIpamScopesInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ValueStringList.validate!(input[:ipam_scope_ids], context: "#{context}[:ipam_scope_ids]") unless input[:ipam_scope_ids].nil?
      end
    end

    class DescribeIpamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIpamsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ValueStringList.validate!(input[:ipam_ids], context: "#{context}[:ipam_ids]") unless input[:ipam_ids].nil?
      end
    end

    class DescribeIpv6PoolsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIpv6PoolsInput, context: context)
        Validators::Ipv6PoolIdList.validate!(input[:pool_ids], context: "#{context}[:pool_ids]") unless input[:pool_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class DescribeKeyPairsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeKeyPairsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::KeyNameStringList.validate!(input[:key_names], context: "#{context}[:key_names]") unless input[:key_names].nil?
        Validators::KeyPairIdStringList.validate!(input[:key_pair_ids], context: "#{context}[:key_pair_ids]") unless input[:key_pair_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeLaunchTemplateVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLaunchTemplateVersionsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:launch_template_id], ::String, context: "#{context}[:launch_template_id]")
        Hearth::Validator.validate!(input[:launch_template_name], ::String, context: "#{context}[:launch_template_name]")
        Validators::VersionStringList.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
        Hearth::Validator.validate!(input[:min_version], ::String, context: "#{context}[:min_version]")
        Hearth::Validator.validate!(input[:max_version], ::String, context: "#{context}[:max_version]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class DescribeLaunchTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLaunchTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::LaunchTemplateIdStringList.validate!(input[:launch_template_ids], context: "#{context}[:launch_template_ids]") unless input[:launch_template_ids].nil?
        Validators::LaunchTemplateNameStringList.validate!(input[:launch_template_names], context: "#{context}[:launch_template_names]") unless input[:launch_template_names].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsInput, context: context)
        Validators::LocalGatewayRouteTableVirtualInterfaceGroupAssociationIdSet.validate!(input[:local_gateway_route_table_virtual_interface_group_association_ids], context: "#{context}[:local_gateway_route_table_virtual_interface_group_association_ids]") unless input[:local_gateway_route_table_virtual_interface_group_association_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeLocalGatewayRouteTableVpcAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocalGatewayRouteTableVpcAssociationsInput, context: context)
        Validators::LocalGatewayRouteTableVpcAssociationIdSet.validate!(input[:local_gateway_route_table_vpc_association_ids], context: "#{context}[:local_gateway_route_table_vpc_association_ids]") unless input[:local_gateway_route_table_vpc_association_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeLocalGatewayRouteTablesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocalGatewayRouteTablesInput, context: context)
        Validators::LocalGatewayRouteTableIdSet.validate!(input[:local_gateway_route_table_ids], context: "#{context}[:local_gateway_route_table_ids]") unless input[:local_gateway_route_table_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeLocalGatewayVirtualInterfaceGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocalGatewayVirtualInterfaceGroupsInput, context: context)
        Validators::LocalGatewayVirtualInterfaceGroupIdSet.validate!(input[:local_gateway_virtual_interface_group_ids], context: "#{context}[:local_gateway_virtual_interface_group_ids]") unless input[:local_gateway_virtual_interface_group_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeLocalGatewayVirtualInterfacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocalGatewayVirtualInterfacesInput, context: context)
        Validators::LocalGatewayVirtualInterfaceIdSet.validate!(input[:local_gateway_virtual_interface_ids], context: "#{context}[:local_gateway_virtual_interface_ids]") unless input[:local_gateway_virtual_interface_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeLocalGatewaysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocalGatewaysInput, context: context)
        Validators::LocalGatewayIdSet.validate!(input[:local_gateway_ids], context: "#{context}[:local_gateway_ids]") unless input[:local_gateway_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeManagedPrefixListsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeManagedPrefixListsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ValueStringList.validate!(input[:prefix_list_ids], context: "#{context}[:prefix_list_ids]") unless input[:prefix_list_ids].nil?
      end
    end

    class DescribeMovingAddressesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMovingAddressesInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ValueStringList.validate!(input[:public_ips], context: "#{context}[:public_ips]") unless input[:public_ips].nil?
      end
    end

    class DescribeNatGatewaysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNatGatewaysInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::NatGatewayIdStringList.validate!(input[:nat_gateway_ids], context: "#{context}[:nat_gateway_ids]") unless input[:nat_gateway_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeNetworkAclsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNetworkAclsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::NetworkAclIdStringList.validate!(input[:network_acl_ids], context: "#{context}[:network_acl_ids]") unless input[:network_acl_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeNetworkInsightsAccessScopeAnalysesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNetworkInsightsAccessScopeAnalysesInput, context: context)
        Validators::NetworkInsightsAccessScopeAnalysisIdList.validate!(input[:network_insights_access_scope_analysis_ids], context: "#{context}[:network_insights_access_scope_analysis_ids]") unless input[:network_insights_access_scope_analysis_ids].nil?
        Hearth::Validator.validate!(input[:network_insights_access_scope_id], ::String, context: "#{context}[:network_insights_access_scope_id]")
        Hearth::Validator.validate!(input[:analysis_start_time_begin], ::Time, context: "#{context}[:analysis_start_time_begin]")
        Hearth::Validator.validate!(input[:analysis_start_time_end], ::Time, context: "#{context}[:analysis_start_time_end]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeNetworkInsightsAccessScopesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNetworkInsightsAccessScopesInput, context: context)
        Validators::NetworkInsightsAccessScopeIdList.validate!(input[:network_insights_access_scope_ids], context: "#{context}[:network_insights_access_scope_ids]") unless input[:network_insights_access_scope_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeNetworkInsightsAnalysesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNetworkInsightsAnalysesInput, context: context)
        Validators::NetworkInsightsAnalysisIdList.validate!(input[:network_insights_analysis_ids], context: "#{context}[:network_insights_analysis_ids]") unless input[:network_insights_analysis_ids].nil?
        Hearth::Validator.validate!(input[:network_insights_path_id], ::String, context: "#{context}[:network_insights_path_id]")
        Hearth::Validator.validate!(input[:analysis_start_time], ::Time, context: "#{context}[:analysis_start_time]")
        Hearth::Validator.validate!(input[:analysis_end_time], ::Time, context: "#{context}[:analysis_end_time]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeNetworkInsightsPathsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNetworkInsightsPathsInput, context: context)
        Validators::NetworkInsightsPathIdList.validate!(input[:network_insights_path_ids], context: "#{context}[:network_insights_path_ids]") unless input[:network_insights_path_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeNetworkInterfaceAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNetworkInterfaceAttributeInput, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
      end
    end

    class DescribeNetworkInterfacePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNetworkInterfacePermissionsInput, context: context)
        Validators::NetworkInterfacePermissionIdList.validate!(input[:network_interface_permission_ids], context: "#{context}[:network_interface_permission_ids]") unless input[:network_interface_permission_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeNetworkInterfacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNetworkInterfacesInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::NetworkInterfaceIdList.validate!(input[:network_interface_ids], context: "#{context}[:network_interface_ids]") unless input[:network_interface_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribePlacementGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePlacementGroupsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::PlacementGroupStringList.validate!(input[:group_names], context: "#{context}[:group_names]") unless input[:group_names].nil?
        Validators::PlacementGroupIdStringList.validate!(input[:group_ids], context: "#{context}[:group_ids]") unless input[:group_ids].nil?
      end
    end

    class DescribePrefixListsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePrefixListsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::PrefixListResourceIdStringList.validate!(input[:prefix_list_ids], context: "#{context}[:prefix_list_ids]") unless input[:prefix_list_ids].nil?
      end
    end

    class DescribePrincipalIdFormatInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePrincipalIdFormatInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::ResourceList.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribePublicIpv4PoolsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePublicIpv4PoolsInput, context: context)
        Validators::PublicIpv4PoolIdStringList.validate!(input[:pool_ids], context: "#{context}[:pool_ids]") unless input[:pool_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class DescribeRegionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRegionsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::RegionNameStringList.validate!(input[:region_names], context: "#{context}[:region_names]") unless input[:region_names].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:all_regions], ::TrueClass, ::FalseClass, context: "#{context}[:all_regions]")
      end
    end

    class DescribeReplaceRootVolumeTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplaceRootVolumeTasksInput, context: context)
        Validators::ReplaceRootVolumeTaskIds.validate!(input[:replace_root_volume_task_ids], context: "#{context}[:replace_root_volume_task_ids]") unless input[:replace_root_volume_task_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeReservedInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedInstancesInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:offering_class], ::String, context: "#{context}[:offering_class]")
        Validators::ReservedInstancesIdStringList.validate!(input[:reserved_instances_ids], context: "#{context}[:reserved_instances_ids]") unless input[:reserved_instances_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:offering_type], ::String, context: "#{context}[:offering_type]")
      end
    end

    class DescribeReservedInstancesListingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedInstancesListingsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:reserved_instances_id], ::String, context: "#{context}[:reserved_instances_id]")
        Hearth::Validator.validate!(input[:reserved_instances_listing_id], ::String, context: "#{context}[:reserved_instances_listing_id]")
      end
    end

    class DescribeReservedInstancesModificationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedInstancesModificationsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::ReservedInstancesModificationIdStringList.validate!(input[:reserved_instances_modification_ids], context: "#{context}[:reserved_instances_modification_ids]") unless input[:reserved_instances_modification_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeReservedInstancesOfferingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedInstancesOfferingsInput, context: context)
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:include_marketplace], ::TrueClass, ::FalseClass, context: "#{context}[:include_marketplace]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:max_duration], ::Integer, context: "#{context}[:max_duration]")
        Hearth::Validator.validate!(input[:max_instance_count], ::Integer, context: "#{context}[:max_instance_count]")
        Hearth::Validator.validate!(input[:min_duration], ::Integer, context: "#{context}[:min_duration]")
        Hearth::Validator.validate!(input[:offering_class], ::String, context: "#{context}[:offering_class]")
        Hearth::Validator.validate!(input[:product_description], ::String, context: "#{context}[:product_description]")
        Validators::ReservedInstancesOfferingIdStringList.validate!(input[:reserved_instances_offering_ids], context: "#{context}[:reserved_instances_offering_ids]") unless input[:reserved_instances_offering_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:instance_tenancy], ::String, context: "#{context}[:instance_tenancy]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:offering_type], ::String, context: "#{context}[:offering_type]")
      end
    end

    class DescribeRouteTablesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRouteTablesInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::RouteTableIdStringList.validate!(input[:route_table_ids], context: "#{context}[:route_table_ids]") unless input[:route_table_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeScheduledInstanceAvailabilityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScheduledInstanceAvailabilityInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::SlotDateTimeRangeRequest.validate!(input[:first_slot_start_time_range], context: "#{context}[:first_slot_start_time_range]") unless input[:first_slot_start_time_range].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:max_slot_duration_in_hours], ::Integer, context: "#{context}[:max_slot_duration_in_hours]")
        Hearth::Validator.validate!(input[:min_slot_duration_in_hours], ::Integer, context: "#{context}[:min_slot_duration_in_hours]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ScheduledInstanceRecurrenceRequest.validate!(input[:recurrence], context: "#{context}[:recurrence]") unless input[:recurrence].nil?
      end
    end

    class DescribeScheduledInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScheduledInstancesInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ScheduledInstanceIdRequestSet.validate!(input[:scheduled_instance_ids], context: "#{context}[:scheduled_instance_ids]") unless input[:scheduled_instance_ids].nil?
        Validators::SlotStartTimeRangeRequest.validate!(input[:slot_start_time_range], context: "#{context}[:slot_start_time_range]") unless input[:slot_start_time_range].nil?
      end
    end

    class DescribeSecurityGroupReferencesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSecurityGroupReferencesInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::GroupIds.validate!(input[:group_id], context: "#{context}[:group_id]") unless input[:group_id].nil?
      end
    end

    class DescribeSecurityGroupRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSecurityGroupRulesInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::SecurityGroupRuleIdList.validate!(input[:security_group_rule_ids], context: "#{context}[:security_group_rule_ids]") unless input[:security_group_rule_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeSecurityGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSecurityGroupsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::GroupIdStringList.validate!(input[:group_ids], context: "#{context}[:group_ids]") unless input[:group_ids].nil?
        Validators::GroupNameStringList.validate!(input[:group_names], context: "#{context}[:group_names]") unless input[:group_names].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeSnapshotAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSnapshotAttributeInput, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeSnapshotTierStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSnapshotTierStatusInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSnapshotsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::OwnerStringList.validate!(input[:owner_ids], context: "#{context}[:owner_ids]") unless input[:owner_ids].nil?
        Validators::RestorableByStringList.validate!(input[:restorable_by_user_ids], context: "#{context}[:restorable_by_user_ids]") unless input[:restorable_by_user_ids].nil?
        Validators::SnapshotIdStringList.validate!(input[:snapshot_ids], context: "#{context}[:snapshot_ids]") unless input[:snapshot_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeSpotDatafeedSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSpotDatafeedSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeSpotFleetInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSpotFleetInstancesInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:spot_fleet_request_id], ::String, context: "#{context}[:spot_fleet_request_id]")
      end
    end

    class DescribeSpotFleetRequestHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSpotFleetRequestHistoryInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:spot_fleet_request_id], ::String, context: "#{context}[:spot_fleet_request_id]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
      end
    end

    class DescribeSpotFleetRequestsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSpotFleetRequestsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::SpotFleetRequestIdList.validate!(input[:spot_fleet_request_ids], context: "#{context}[:spot_fleet_request_ids]") unless input[:spot_fleet_request_ids].nil?
      end
    end

    class DescribeSpotInstanceRequestsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSpotInstanceRequestsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::SpotInstanceRequestIdList.validate!(input[:spot_instance_request_ids], context: "#{context}[:spot_instance_request_ids]") unless input[:spot_instance_request_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeSpotPriceHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSpotPriceHistoryInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Validators::InstanceTypeList.validate!(input[:instance_types], context: "#{context}[:instance_types]") unless input[:instance_types].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ProductDescriptionList.validate!(input[:product_descriptions], context: "#{context}[:product_descriptions]") unless input[:product_descriptions].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
      end
    end

    class DescribeStaleSecurityGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStaleSecurityGroupsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class DescribeStoreImageTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStoreImageTasksInput, context: context)
        Validators::ImageIdList.validate!(input[:image_ids], context: "#{context}[:image_ids]") unless input[:image_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeSubnetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSubnetsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::SubnetIdStringList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeTrafficMirrorFiltersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrafficMirrorFiltersInput, context: context)
        Validators::TrafficMirrorFilterIdList.validate!(input[:traffic_mirror_filter_ids], context: "#{context}[:traffic_mirror_filter_ids]") unless input[:traffic_mirror_filter_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeTrafficMirrorSessionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrafficMirrorSessionsInput, context: context)
        Validators::TrafficMirrorSessionIdList.validate!(input[:traffic_mirror_session_ids], context: "#{context}[:traffic_mirror_session_ids]") unless input[:traffic_mirror_session_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeTrafficMirrorTargetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrafficMirrorTargetsInput, context: context)
        Validators::TrafficMirrorTargetIdList.validate!(input[:traffic_mirror_target_ids], context: "#{context}[:traffic_mirror_target_ids]") unless input[:traffic_mirror_target_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeTransitGatewayAttachmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTransitGatewayAttachmentsInput, context: context)
        Validators::TransitGatewayAttachmentIdStringList.validate!(input[:transit_gateway_attachment_ids], context: "#{context}[:transit_gateway_attachment_ids]") unless input[:transit_gateway_attachment_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeTransitGatewayConnectPeersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTransitGatewayConnectPeersInput, context: context)
        Validators::TransitGatewayConnectPeerIdStringList.validate!(input[:transit_gateway_connect_peer_ids], context: "#{context}[:transit_gateway_connect_peer_ids]") unless input[:transit_gateway_connect_peer_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeTransitGatewayConnectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTransitGatewayConnectsInput, context: context)
        Validators::TransitGatewayAttachmentIdStringList.validate!(input[:transit_gateway_attachment_ids], context: "#{context}[:transit_gateway_attachment_ids]") unless input[:transit_gateway_attachment_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeTransitGatewayMulticastDomainsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTransitGatewayMulticastDomainsInput, context: context)
        Validators::TransitGatewayMulticastDomainIdStringList.validate!(input[:transit_gateway_multicast_domain_ids], context: "#{context}[:transit_gateway_multicast_domain_ids]") unless input[:transit_gateway_multicast_domain_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeTransitGatewayPeeringAttachmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTransitGatewayPeeringAttachmentsInput, context: context)
        Validators::TransitGatewayAttachmentIdStringList.validate!(input[:transit_gateway_attachment_ids], context: "#{context}[:transit_gateway_attachment_ids]") unless input[:transit_gateway_attachment_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeTransitGatewayRouteTablesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTransitGatewayRouteTablesInput, context: context)
        Validators::TransitGatewayRouteTableIdStringList.validate!(input[:transit_gateway_route_table_ids], context: "#{context}[:transit_gateway_route_table_ids]") unless input[:transit_gateway_route_table_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeTransitGatewayVpcAttachmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTransitGatewayVpcAttachmentsInput, context: context)
        Validators::TransitGatewayAttachmentIdStringList.validate!(input[:transit_gateway_attachment_ids], context: "#{context}[:transit_gateway_attachment_ids]") unless input[:transit_gateway_attachment_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeTransitGatewaysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTransitGatewaysInput, context: context)
        Validators::TransitGatewayIdStringList.validate!(input[:transit_gateway_ids], context: "#{context}[:transit_gateway_ids]") unless input[:transit_gateway_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeTrunkInterfaceAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrunkInterfaceAssociationsInput, context: context)
        Validators::TrunkInterfaceAssociationIdList.validate!(input[:association_ids], context: "#{context}[:association_ids]") unless input[:association_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeVolumeAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVolumeAttributeInput, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeVolumeStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVolumeStatusInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::VolumeIdStringList.validate!(input[:volume_ids], context: "#{context}[:volume_ids]") unless input[:volume_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeVolumesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVolumesInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::VolumeIdStringList.validate!(input[:volume_ids], context: "#{context}[:volume_ids]") unless input[:volume_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeVolumesModificationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVolumesModificationsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::VolumeIdStringList.validate!(input[:volume_ids], context: "#{context}[:volume_ids]") unless input[:volume_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeVpcAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVpcAttributeInput, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeVpcClassicLinkDnsSupportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVpcClassicLinkDnsSupportInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::VpcClassicLinkIdList.validate!(input[:vpc_ids], context: "#{context}[:vpc_ids]") unless input[:vpc_ids].nil?
      end
    end

    class DescribeVpcClassicLinkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVpcClassicLinkInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::VpcClassicLinkIdList.validate!(input[:vpc_ids], context: "#{context}[:vpc_ids]") unless input[:vpc_ids].nil?
      end
    end

    class DescribeVpcEndpointConnectionNotificationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVpcEndpointConnectionNotificationsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:connection_notification_id], ::String, context: "#{context}[:connection_notification_id]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeVpcEndpointConnectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVpcEndpointConnectionsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeVpcEndpointServiceConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVpcEndpointServiceConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::VpcEndpointServiceIdList.validate!(input[:service_ids], context: "#{context}[:service_ids]") unless input[:service_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeVpcEndpointServicePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVpcEndpointServicePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeVpcEndpointServicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVpcEndpointServicesInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::ValueStringList.validate!(input[:service_names], context: "#{context}[:service_names]") unless input[:service_names].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeVpcEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVpcEndpointsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::VpcEndpointIdList.validate!(input[:vpc_endpoint_ids], context: "#{context}[:vpc_endpoint_ids]") unless input[:vpc_endpoint_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeVpcPeeringConnectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVpcPeeringConnectionsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::VpcPeeringConnectionIdList.validate!(input[:vpc_peering_connection_ids], context: "#{context}[:vpc_peering_connection_ids]") unless input[:vpc_peering_connection_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeVpcsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVpcsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::VpcIdStringList.validate!(input[:vpc_ids], context: "#{context}[:vpc_ids]") unless input[:vpc_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeVpnConnectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVpnConnectionsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::VpnConnectionIdStringList.validate!(input[:vpn_connection_ids], context: "#{context}[:vpn_connection_ids]") unless input[:vpn_connection_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DescribeVpnGatewaysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVpnGatewaysInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::VpnGatewayIdStringList.validate!(input[:vpn_gateway_ids], context: "#{context}[:vpn_gateway_ids]") unless input[:vpn_gateway_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DestinationOptionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationOptionsRequest, context: context)
        Hearth::Validator.validate!(input[:file_format], ::String, context: "#{context}[:file_format]")
        Hearth::Validator.validate!(input[:hive_compatible_partitions], ::TrueClass, ::FalseClass, context: "#{context}[:hive_compatible_partitions]")
        Hearth::Validator.validate!(input[:per_hour_partition], ::TrueClass, ::FalseClass, context: "#{context}[:per_hour_partition]")
      end
    end

    class DetachClassicLinkVpcInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachClassicLinkVpcInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class DetachInternetGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachInternetGatewayInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:internet_gateway_id], ::String, context: "#{context}[:internet_gateway_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class DetachNetworkInterfaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachNetworkInterfaceInput, context: context)
        Hearth::Validator.validate!(input[:attachment_id], ::String, context: "#{context}[:attachment_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
      end
    end

    class DetachVolumeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachVolumeInput, context: context)
        Hearth::Validator.validate!(input[:device], ::String, context: "#{context}[:device]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DetachVpnGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachVpnGatewayInput, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:vpn_gateway_id], ::String, context: "#{context}[:vpn_gateway_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DhcpOptionsIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DirectoryServiceAuthenticationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryServiceAuthenticationRequest, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
      end
    end

    class DisableEbsEncryptionByDefaultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableEbsEncryptionByDefaultInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DisableFastSnapshotRestoresInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableFastSnapshotRestoresInput, context: context)
        Validators::AvailabilityZoneStringList.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Validators::SnapshotIdStringList.validate!(input[:source_snapshot_ids], context: "#{context}[:source_snapshot_ids]") unless input[:source_snapshot_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DisableImageDeprecationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableImageDeprecationInput, context: context)
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DisableIpamOrganizationAdminAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableIpamOrganizationAdminAccountInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:delegated_admin_account_id], ::String, context: "#{context}[:delegated_admin_account_id]")
      end
    end

    class DisableSerialConsoleAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableSerialConsoleAccessInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DisableTransitGatewayRouteTablePropagationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableTransitGatewayRouteTablePropagationInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_route_table_id], ::String, context: "#{context}[:transit_gateway_route_table_id]")
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DisableVgwRoutePropagationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableVgwRoutePropagationInput, context: context)
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
        Hearth::Validator.validate!(input[:route_table_id], ::String, context: "#{context}[:route_table_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DisableVpcClassicLinkDnsSupportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableVpcClassicLinkDnsSupportInput, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class DisableVpcClassicLinkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableVpcClassicLinkInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class DisassociateAddressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateAddressInput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:public_ip], ::String, context: "#{context}[:public_ip]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DisassociateClientVpnTargetNetworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateClientVpnTargetNetworkInput, context: context)
        Hearth::Validator.validate!(input[:client_vpn_endpoint_id], ::String, context: "#{context}[:client_vpn_endpoint_id]")
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DisassociateEnclaveCertificateIamRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateEnclaveCertificateIamRoleInput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DisassociateIamInstanceProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateIamInstanceProfileInput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
      end
    end

    class DisassociateInstanceEventWindowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateInstanceEventWindowInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:instance_event_window_id], ::String, context: "#{context}[:instance_event_window_id]")
        Validators::InstanceEventWindowDisassociationRequest.validate!(input[:association_target], context: "#{context}[:association_target]") unless input[:association_target].nil?
      end
    end

    class DisassociateRouteTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateRouteTableInput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DisassociateSubnetCidrBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateSubnetCidrBlockInput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
      end
    end

    class DisassociateTransitGatewayMulticastDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateTransitGatewayMulticastDomainInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_multicast_domain_id], ::String, context: "#{context}[:transit_gateway_multicast_domain_id]")
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Validators::TransitGatewaySubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DisassociateTransitGatewayRouteTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateTransitGatewayRouteTableInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_route_table_id], ::String, context: "#{context}[:transit_gateway_route_table_id]")
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DisassociateTrunkInterfaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateTrunkInterfaceInput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DisassociateVpcCidrBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateVpcCidrBlockInput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
      end
    end

    class DiskImage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DiskImage, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::DiskImageDetail.validate!(input[:image], context: "#{context}[:image]") unless input[:image].nil?
        Validators::VolumeDetail.validate!(input[:volume], context: "#{context}[:volume]") unless input[:volume].nil?
      end
    end

    class DiskImageDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DiskImageDetail, context: context)
        Hearth::Validator.validate!(input[:bytes], ::Integer, context: "#{context}[:bytes]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:import_manifest_url], ::String, context: "#{context}[:import_manifest_url]")
      end
    end

    class DiskImageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DiskImage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DnsServersOptionsModifyStructure
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DnsServersOptionsModifyStructure, context: context)
        Validators::ValueStringList.validate!(input[:custom_dns_servers], context: "#{context}[:custom_dns_servers]") unless input[:custom_dns_servers].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class EbsBlockDevice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EbsBlockDevice, context: context)
        Hearth::Validator.validate!(input[:delete_on_termination], ::TrueClass, ::FalseClass, context: "#{context}[:delete_on_termination]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:volume_size], ::Integer, context: "#{context}[:volume_size]")
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:throughput], ::Integer, context: "#{context}[:throughput]")
        Hearth::Validator.validate!(input[:outpost_arn], ::String, context: "#{context}[:outpost_arn]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
      end
    end

    class EbsInstanceBlockDeviceSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EbsInstanceBlockDeviceSpecification, context: context)
        Hearth::Validator.validate!(input[:delete_on_termination], ::TrueClass, ::FalseClass, context: "#{context}[:delete_on_termination]")
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
      end
    end

    class EgressOnlyInternetGatewayIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ElasticGpuIdSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ElasticGpuSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticGpuSpecification, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ElasticGpuSpecificationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ElasticGpuSpecification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ElasticGpuSpecifications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ElasticGpuSpecification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ElasticInferenceAccelerator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticInferenceAccelerator, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
      end
    end

    class ElasticInferenceAccelerators
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ElasticInferenceAccelerator.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnableEbsEncryptionByDefaultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableEbsEncryptionByDefaultInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class EnableFastSnapshotRestoresInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableFastSnapshotRestoresInput, context: context)
        Validators::AvailabilityZoneStringList.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Validators::SnapshotIdStringList.validate!(input[:source_snapshot_ids], context: "#{context}[:source_snapshot_ids]") unless input[:source_snapshot_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class EnableImageDeprecationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableImageDeprecationInput, context: context)
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:deprecate_at], ::Time, context: "#{context}[:deprecate_at]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class EnableIpamOrganizationAdminAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableIpamOrganizationAdminAccountInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:delegated_admin_account_id], ::String, context: "#{context}[:delegated_admin_account_id]")
      end
    end

    class EnableSerialConsoleAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableSerialConsoleAccessInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class EnableTransitGatewayRouteTablePropagationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableTransitGatewayRouteTablePropagationInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_route_table_id], ::String, context: "#{context}[:transit_gateway_route_table_id]")
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class EnableVgwRoutePropagationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableVgwRoutePropagationInput, context: context)
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
        Hearth::Validator.validate!(input[:route_table_id], ::String, context: "#{context}[:route_table_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class EnableVolumeIOInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableVolumeIOInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
      end
    end

    class EnableVpcClassicLinkDnsSupportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableVpcClassicLinkDnsSupportInput, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class EnableVpcClassicLinkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableVpcClassicLinkInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class EnclaveOptionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnclaveOptionsRequest, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class ExcludedInstanceTypeSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExecutableByStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExportClientVpnClientCertificateRevocationListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportClientVpnClientCertificateRevocationListInput, context: context)
        Hearth::Validator.validate!(input[:client_vpn_endpoint_id], ::String, context: "#{context}[:client_vpn_endpoint_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ExportClientVpnClientConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportClientVpnClientConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:client_vpn_endpoint_id], ::String, context: "#{context}[:client_vpn_endpoint_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ExportImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportImageInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:disk_image_format], ::String, context: "#{context}[:disk_image_format]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Validators::ExportTaskS3LocationRequest.validate!(input[:s3_export_location], context: "#{context}[:s3_export_location]") unless input[:s3_export_location].nil?
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class ExportImageTaskIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExportTaskIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExportTaskS3LocationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportTaskS3LocationRequest, context: context)
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_prefix], ::String, context: "#{context}[:s3_prefix]")
      end
    end

    class ExportToS3TaskSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportToS3TaskSpecification, context: context)
        Hearth::Validator.validate!(input[:container_format], ::String, context: "#{context}[:container_format]")
        Hearth::Validator.validate!(input[:disk_image_format], ::String, context: "#{context}[:disk_image_format]")
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_prefix], ::String, context: "#{context}[:s3_prefix]")
      end
    end

    class ExportTransitGatewayRoutesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportTransitGatewayRoutesInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_route_table_id], ::String, context: "#{context}[:transit_gateway_route_table_id]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class FederatedAuthenticationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FederatedAuthenticationRequest, context: context)
        Hearth::Validator.validate!(input[:saml_provider_arn], ::String, context: "#{context}[:saml_provider_arn]")
        Hearth::Validator.validate!(input[:self_service_saml_provider_arn], ::String, context: "#{context}[:self_service_saml_provider_arn]")
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Validators::ValueStringList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class FilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FleetIdSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FleetLaunchTemplateConfigListRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FleetLaunchTemplateConfigRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FleetLaunchTemplateConfigRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FleetLaunchTemplateConfigRequest, context: context)
        Validators::FleetLaunchTemplateSpecificationRequest.validate!(input[:launch_template_specification], context: "#{context}[:launch_template_specification]") unless input[:launch_template_specification].nil?
        Validators::FleetLaunchTemplateOverridesListRequest.validate!(input[:overrides], context: "#{context}[:overrides]") unless input[:overrides].nil?
      end
    end

    class FleetLaunchTemplateOverridesListRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FleetLaunchTemplateOverridesRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FleetLaunchTemplateOverridesRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FleetLaunchTemplateOverridesRequest, context: context)
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:max_price], ::String, context: "#{context}[:max_price]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:weighted_capacity], ::Float, context: "#{context}[:weighted_capacity]")
        Hearth::Validator.validate!(input[:priority], ::Float, context: "#{context}[:priority]")
        Validators::Placement.validate!(input[:placement], context: "#{context}[:placement]") unless input[:placement].nil?
        Validators::InstanceRequirementsRequest.validate!(input[:instance_requirements], context: "#{context}[:instance_requirements]") unless input[:instance_requirements].nil?
      end
    end

    class FleetLaunchTemplateSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FleetLaunchTemplateSpecification, context: context)
        Hearth::Validator.validate!(input[:launch_template_id], ::String, context: "#{context}[:launch_template_id]")
        Hearth::Validator.validate!(input[:launch_template_name], ::String, context: "#{context}[:launch_template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class FleetLaunchTemplateSpecificationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FleetLaunchTemplateSpecificationRequest, context: context)
        Hearth::Validator.validate!(input[:launch_template_id], ::String, context: "#{context}[:launch_template_id]")
        Hearth::Validator.validate!(input[:launch_template_name], ::String, context: "#{context}[:launch_template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class FleetSpotCapacityRebalanceRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FleetSpotCapacityRebalanceRequest, context: context)
        Hearth::Validator.validate!(input[:replacement_strategy], ::String, context: "#{context}[:replacement_strategy]")
        Hearth::Validator.validate!(input[:termination_delay], ::Integer, context: "#{context}[:termination_delay]")
      end
    end

    class FleetSpotMaintenanceStrategiesRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FleetSpotMaintenanceStrategiesRequest, context: context)
        Validators::FleetSpotCapacityRebalanceRequest.validate!(input[:capacity_rebalance], context: "#{context}[:capacity_rebalance]") unless input[:capacity_rebalance].nil?
      end
    end

    class FlowLogIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FlowLogResourceIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FpgaImageIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetAssociatedEnclaveCertificateIamRolesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssociatedEnclaveCertificateIamRolesInput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GetAssociatedIpv6PoolCidrsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssociatedIpv6PoolCidrsInput, context: context)
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GetCapacityReservationUsageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCapacityReservationUsageInput, context: context)
        Hearth::Validator.validate!(input[:capacity_reservation_id], ::String, context: "#{context}[:capacity_reservation_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GetCoipPoolUsageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCoipPoolUsageInput, context: context)
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GetConsoleOutputInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConsoleOutputInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:latest], ::TrueClass, ::FalseClass, context: "#{context}[:latest]")
      end
    end

    class GetConsoleScreenshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConsoleScreenshotInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:wake_up], ::TrueClass, ::FalseClass, context: "#{context}[:wake_up]")
      end
    end

    class GetDefaultCreditSpecificationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDefaultCreditSpecificationInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:instance_family], ::String, context: "#{context}[:instance_family]")
      end
    end

    class GetEbsDefaultKmsKeyIdInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEbsDefaultKmsKeyIdInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GetEbsEncryptionByDefaultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEbsEncryptionByDefaultInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GetFlowLogsIntegrationTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFlowLogsIntegrationTemplateInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:flow_log_id], ::String, context: "#{context}[:flow_log_id]")
        Hearth::Validator.validate!(input[:config_delivery_s3_destination_arn], ::String, context: "#{context}[:config_delivery_s3_destination_arn]")
        Validators::IntegrateServices.validate!(input[:integrate_services], context: "#{context}[:integrate_services]") unless input[:integrate_services].nil?
      end
    end

    class GetGroupsForCapacityReservationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupsForCapacityReservationInput, context: context)
        Hearth::Validator.validate!(input[:capacity_reservation_id], ::String, context: "#{context}[:capacity_reservation_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GetHostReservationPurchasePreviewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHostReservationPurchasePreviewInput, context: context)
        Validators::RequestHostIdSet.validate!(input[:host_id_set], context: "#{context}[:host_id_set]") unless input[:host_id_set].nil?
        Hearth::Validator.validate!(input[:offering_id], ::String, context: "#{context}[:offering_id]")
      end
    end

    class GetInstanceTypesFromInstanceRequirementsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceTypesFromInstanceRequirementsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::ArchitectureTypeSet.validate!(input[:architecture_types], context: "#{context}[:architecture_types]") unless input[:architecture_types].nil?
        Validators::VirtualizationTypeSet.validate!(input[:virtualization_types], context: "#{context}[:virtualization_types]") unless input[:virtualization_types].nil?
        Validators::InstanceRequirementsRequest.validate!(input[:instance_requirements], context: "#{context}[:instance_requirements]") unless input[:instance_requirements].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetIpamAddressHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIpamAddressHistoryInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
        Hearth::Validator.validate!(input[:ipam_scope_id], ::String, context: "#{context}[:ipam_scope_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetIpamPoolAllocationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIpamPoolAllocationsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:ipam_pool_id], ::String, context: "#{context}[:ipam_pool_id]")
        Hearth::Validator.validate!(input[:ipam_pool_allocation_id], ::String, context: "#{context}[:ipam_pool_allocation_id]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetIpamPoolCidrsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIpamPoolCidrsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:ipam_pool_id], ::String, context: "#{context}[:ipam_pool_id]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetIpamResourceCidrsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIpamResourceCidrsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:ipam_scope_id], ::String, context: "#{context}[:ipam_scope_id]")
        Hearth::Validator.validate!(input[:ipam_pool_id], ::String, context: "#{context}[:ipam_pool_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::RequestIpamResourceTag.validate!(input[:resource_tag], context: "#{context}[:resource_tag]") unless input[:resource_tag].nil?
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
      end
    end

    class GetLaunchTemplateDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLaunchTemplateDataInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class GetManagedPrefixListAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetManagedPrefixListAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:prefix_list_id], ::String, context: "#{context}[:prefix_list_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetManagedPrefixListEntriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetManagedPrefixListEntriesInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:prefix_list_id], ::String, context: "#{context}[:prefix_list_id]")
        Hearth::Validator.validate!(input[:target_version], ::Integer, context: "#{context}[:target_version]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetNetworkInsightsAccessScopeAnalysisFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkInsightsAccessScopeAnalysisFindingsInput, context: context)
        Hearth::Validator.validate!(input[:network_insights_access_scope_analysis_id], ::String, context: "#{context}[:network_insights_access_scope_analysis_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GetNetworkInsightsAccessScopeContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkInsightsAccessScopeContentInput, context: context)
        Hearth::Validator.validate!(input[:network_insights_access_scope_id], ::String, context: "#{context}[:network_insights_access_scope_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GetPasswordDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPasswordDataInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GetReservedInstancesExchangeQuoteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReservedInstancesExchangeQuoteInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::ReservedInstanceIdSet.validate!(input[:reserved_instance_ids], context: "#{context}[:reserved_instance_ids]") unless input[:reserved_instance_ids].nil?
        Validators::TargetConfigurationRequestSet.validate!(input[:target_configurations], context: "#{context}[:target_configurations]") unless input[:target_configurations].nil?
      end
    end

    class GetSerialConsoleAccessStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSerialConsoleAccessStatusInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GetSpotPlacementScoresInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSpotPlacementScoresInput, context: context)
        Validators::InstanceTypes.validate!(input[:instance_types], context: "#{context}[:instance_types]") unless input[:instance_types].nil?
        Hearth::Validator.validate!(input[:target_capacity], ::Integer, context: "#{context}[:target_capacity]")
        Hearth::Validator.validate!(input[:target_capacity_unit_type], ::String, context: "#{context}[:target_capacity_unit_type]")
        Hearth::Validator.validate!(input[:single_availability_zone], ::TrueClass, ::FalseClass, context: "#{context}[:single_availability_zone]")
        Validators::RegionNames.validate!(input[:region_names], context: "#{context}[:region_names]") unless input[:region_names].nil?
        Validators::InstanceRequirementsWithMetadataRequest.validate!(input[:instance_requirements_with_metadata], context: "#{context}[:instance_requirements_with_metadata]") unless input[:instance_requirements_with_metadata].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetSubnetCidrReservationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSubnetCidrReservationsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetTransitGatewayAttachmentPropagationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTransitGatewayAttachmentPropagationsInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GetTransitGatewayMulticastDomainAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTransitGatewayMulticastDomainAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_multicast_domain_id], ::String, context: "#{context}[:transit_gateway_multicast_domain_id]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GetTransitGatewayPrefixListReferencesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTransitGatewayPrefixListReferencesInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_route_table_id], ::String, context: "#{context}[:transit_gateway_route_table_id]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GetTransitGatewayRouteTableAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTransitGatewayRouteTableAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_route_table_id], ::String, context: "#{context}[:transit_gateway_route_table_id]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GetTransitGatewayRouteTablePropagationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTransitGatewayRouteTablePropagationsInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_route_table_id], ::String, context: "#{context}[:transit_gateway_route_table_id]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GetVpnConnectionDeviceSampleConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVpnConnectionDeviceSampleConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:vpn_connection_id], ::String, context: "#{context}[:vpn_connection_id]")
        Hearth::Validator.validate!(input[:vpn_connection_device_type_id], ::String, context: "#{context}[:vpn_connection_device_type_id]")
        Hearth::Validator.validate!(input[:internet_key_exchange_version], ::String, context: "#{context}[:internet_key_exchange_version]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GetVpnConnectionDeviceTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVpnConnectionDeviceTypesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GroupIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GroupIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupIdentifier, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class GroupIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GroupIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GroupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GroupNameStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class HibernationOptionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HibernationOptionsRequest, context: context)
        Hearth::Validator.validate!(input[:configured], ::TrueClass, ::FalseClass, context: "#{context}[:configured]")
      end
    end

    class HostReservationIdSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IKEVersionsRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IKEVersionsRequestListValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IKEVersionsRequestListValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IKEVersionsRequestListValue, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class IamInstanceProfileSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IamInstanceProfileSpecification, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
      end
    end

    class IcmpTypeCode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IcmpTypeCode, context: context)
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:type], ::Integer, context: "#{context}[:type]")
      end
    end

    class ImageDiskContainer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageDiskContainer, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Validators::UserBucket.validate!(input[:user_bucket], context: "#{context}[:user_bucket]") unless input[:user_bucket].nil?
      end
    end

    class ImageDiskContainerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ImageDiskContainer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImageIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ImageIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ImportClientVpnClientCertificateRevocationListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportClientVpnClientCertificateRevocationListInput, context: context)
        Hearth::Validator.validate!(input[:client_vpn_endpoint_id], ::String, context: "#{context}[:client_vpn_endpoint_id]")
        Hearth::Validator.validate!(input[:certificate_revocation_list], ::String, context: "#{context}[:certificate_revocation_list]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ImportImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportImageInput, context: context)
        Hearth::Validator.validate!(input[:architecture], ::String, context: "#{context}[:architecture]")
        Validators::ClientData.validate!(input[:client_data], context: "#{context}[:client_data]") unless input[:client_data].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ImageDiskContainerList.validate!(input[:disk_containers], context: "#{context}[:disk_containers]") unless input[:disk_containers].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:hypervisor], ::String, context: "#{context}[:hypervisor]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:license_type], ::String, context: "#{context}[:license_type]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Validators::ImportImageLicenseSpecificationListRequest.validate!(input[:license_specifications], context: "#{context}[:license_specifications]") unless input[:license_specifications].nil?
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:usage_operation], ::String, context: "#{context}[:usage_operation]")
        Hearth::Validator.validate!(input[:boot_mode], ::String, context: "#{context}[:boot_mode]")
      end
    end

    class ImportImageLicenseConfigurationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportImageLicenseConfigurationRequest, context: context)
        Hearth::Validator.validate!(input[:license_configuration_arn], ::String, context: "#{context}[:license_configuration_arn]")
      end
    end

    class ImportImageLicenseSpecificationListRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ImportImageLicenseConfigurationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImportInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportInstanceInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::DiskImageList.validate!(input[:disk_images], context: "#{context}[:disk_images]") unless input[:disk_images].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::ImportInstanceLaunchSpecification.validate!(input[:launch_specification], context: "#{context}[:launch_specification]") unless input[:launch_specification].nil?
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
      end
    end

    class ImportInstanceLaunchSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportInstanceLaunchSpecification, context: context)
        Hearth::Validator.validate!(input[:additional_info], ::String, context: "#{context}[:additional_info]")
        Hearth::Validator.validate!(input[:architecture], ::String, context: "#{context}[:architecture]")
        Validators::SecurityGroupIdStringList.validate!(input[:group_ids], context: "#{context}[:group_ids]") unless input[:group_ids].nil?
        Validators::SecurityGroupStringList.validate!(input[:group_names], context: "#{context}[:group_names]") unless input[:group_names].nil?
        Hearth::Validator.validate!(input[:instance_initiated_shutdown_behavior], ::String, context: "#{context}[:instance_initiated_shutdown_behavior]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:monitoring], ::TrueClass, ::FalseClass, context: "#{context}[:monitoring]")
        Validators::Placement.validate!(input[:placement], context: "#{context}[:placement]") unless input[:placement].nil?
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Validators::UserData.validate!(input[:user_data], context: "#{context}[:user_data]") unless input[:user_data].nil?
      end
    end

    class ImportKeyPairInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportKeyPairInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Hearth::Validator.validate!(input[:public_key_material], ::String, context: "#{context}[:public_key_material]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class ImportSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportSnapshotInput, context: context)
        Validators::ClientData.validate!(input[:client_data], context: "#{context}[:client_data]") unless input[:client_data].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::SnapshotDiskContainer.validate!(input[:disk_container], context: "#{context}[:disk_container]") unless input[:disk_container].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class ImportSnapshotTaskIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ImportTaskIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ImportVolumeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportVolumeInput, context: context)
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::DiskImageDetail.validate!(input[:image], context: "#{context}[:image]") unless input[:image].nil?
        Validators::VolumeDetail.validate!(input[:volume], context: "#{context}[:volume]") unless input[:volume].nil?
      end
    end

    class InsideCidrBlocksStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceBlockDeviceMappingSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceBlockDeviceMappingSpecification, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Validators::EbsInstanceBlockDeviceSpecification.validate!(input[:ebs], context: "#{context}[:ebs]") unless input[:ebs].nil?
        Hearth::Validator.validate!(input[:no_device], ::String, context: "#{context}[:no_device]")
        Hearth::Validator.validate!(input[:virtual_name], ::String, context: "#{context}[:virtual_name]")
      end
    end

    class InstanceBlockDeviceMappingSpecificationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InstanceBlockDeviceMappingSpecification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceCreditSpecificationListRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InstanceCreditSpecificationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceCreditSpecificationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceCreditSpecificationRequest, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:cpu_credits], ::String, context: "#{context}[:cpu_credits]")
      end
    end

    class InstanceEventWindowAssociationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceEventWindowAssociationRequest, context: context)
        Validators::InstanceIdList.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Validators::TagList.validate!(input[:instance_tags], context: "#{context}[:instance_tags]") unless input[:instance_tags].nil?
        Validators::DedicatedHostIdList.validate!(input[:dedicated_host_ids], context: "#{context}[:dedicated_host_ids]") unless input[:dedicated_host_ids].nil?
      end
    end

    class InstanceEventWindowDisassociationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceEventWindowDisassociationRequest, context: context)
        Validators::InstanceIdList.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Validators::TagList.validate!(input[:instance_tags], context: "#{context}[:instance_tags]") unless input[:instance_tags].nil?
        Validators::DedicatedHostIdList.validate!(input[:dedicated_host_ids], context: "#{context}[:dedicated_host_ids]") unless input[:dedicated_host_ids].nil?
      end
    end

    class InstanceEventWindowIdSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceEventWindowTimeRangeRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceEventWindowTimeRangeRequest, context: context)
        Hearth::Validator.validate!(input[:start_week_day], ::String, context: "#{context}[:start_week_day]")
        Hearth::Validator.validate!(input[:start_hour], ::Integer, context: "#{context}[:start_hour]")
        Hearth::Validator.validate!(input[:end_week_day], ::String, context: "#{context}[:end_week_day]")
        Hearth::Validator.validate!(input[:end_hour], ::Integer, context: "#{context}[:end_hour]")
      end
    end

    class InstanceEventWindowTimeRangeRequestSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InstanceEventWindowTimeRangeRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceGenerationSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceIpv6Address
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceIpv6Address, context: context)
        Hearth::Validator.validate!(input[:ipv6_address], ::String, context: "#{context}[:ipv6_address]")
      end
    end

    class InstanceIpv6AddressList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InstanceIpv6Address.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceIpv6AddressListRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InstanceIpv6AddressRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceIpv6AddressRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceIpv6AddressRequest, context: context)
        Hearth::Validator.validate!(input[:ipv6_address], ::String, context: "#{context}[:ipv6_address]")
      end
    end

    class InstanceMarketOptionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceMarketOptionsRequest, context: context)
        Hearth::Validator.validate!(input[:market_type], ::String, context: "#{context}[:market_type]")
        Validators::SpotMarketOptions.validate!(input[:spot_options], context: "#{context}[:spot_options]") unless input[:spot_options].nil?
      end
    end

    class InstanceMetadataOptionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceMetadataOptionsRequest, context: context)
        Hearth::Validator.validate!(input[:http_tokens], ::String, context: "#{context}[:http_tokens]")
        Hearth::Validator.validate!(input[:http_put_response_hop_limit], ::Integer, context: "#{context}[:http_put_response_hop_limit]")
        Hearth::Validator.validate!(input[:http_endpoint], ::String, context: "#{context}[:http_endpoint]")
        Hearth::Validator.validate!(input[:http_protocol_ipv6], ::String, context: "#{context}[:http_protocol_ipv6]")
        Hearth::Validator.validate!(input[:instance_metadata_tags], ::String, context: "#{context}[:instance_metadata_tags]")
      end
    end

    class InstanceNetworkInterfaceSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceNetworkInterfaceSpecification, context: context)
        Hearth::Validator.validate!(input[:associate_public_ip_address], ::TrueClass, ::FalseClass, context: "#{context}[:associate_public_ip_address]")
        Hearth::Validator.validate!(input[:delete_on_termination], ::TrueClass, ::FalseClass, context: "#{context}[:delete_on_termination]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:device_index], ::Integer, context: "#{context}[:device_index]")
        Validators::SecurityGroupIdStringList.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:ipv6_address_count], ::Integer, context: "#{context}[:ipv6_address_count]")
        Validators::InstanceIpv6AddressList.validate!(input[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless input[:ipv6_addresses].nil?
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
        Validators::PrivateIpAddressSpecificationList.validate!(input[:private_ip_addresses], context: "#{context}[:private_ip_addresses]") unless input[:private_ip_addresses].nil?
        Hearth::Validator.validate!(input[:secondary_private_ip_address_count], ::Integer, context: "#{context}[:secondary_private_ip_address_count]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:associate_carrier_ip_address], ::TrueClass, ::FalseClass, context: "#{context}[:associate_carrier_ip_address]")
        Hearth::Validator.validate!(input[:interface_type], ::String, context: "#{context}[:interface_type]")
        Hearth::Validator.validate!(input[:network_card_index], ::Integer, context: "#{context}[:network_card_index]")
        Validators::Ipv4PrefixList.validate!(input[:ipv4_prefixes], context: "#{context}[:ipv4_prefixes]") unless input[:ipv4_prefixes].nil?
        Hearth::Validator.validate!(input[:ipv4_prefix_count], ::Integer, context: "#{context}[:ipv4_prefix_count]")
        Validators::Ipv6PrefixList.validate!(input[:ipv6_prefixes], context: "#{context}[:ipv6_prefixes]") unless input[:ipv6_prefixes].nil?
        Hearth::Validator.validate!(input[:ipv6_prefix_count], ::Integer, context: "#{context}[:ipv6_prefix_count]")
      end
    end

    class InstanceNetworkInterfaceSpecificationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InstanceNetworkInterfaceSpecification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceRequirements
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceRequirements, context: context)
        Validators::VCpuCountRange.validate!(input[:v_cpu_count], context: "#{context}[:v_cpu_count]") unless input[:v_cpu_count].nil?
        Validators::MemoryMiB.validate!(input[:memory_mi_b], context: "#{context}[:memory_mi_b]") unless input[:memory_mi_b].nil?
        Validators::CpuManufacturerSet.validate!(input[:cpu_manufacturers], context: "#{context}[:cpu_manufacturers]") unless input[:cpu_manufacturers].nil?
        Validators::MemoryGiBPerVCpu.validate!(input[:memory_gi_b_per_v_cpu], context: "#{context}[:memory_gi_b_per_v_cpu]") unless input[:memory_gi_b_per_v_cpu].nil?
        Validators::ExcludedInstanceTypeSet.validate!(input[:excluded_instance_types], context: "#{context}[:excluded_instance_types]") unless input[:excluded_instance_types].nil?
        Validators::InstanceGenerationSet.validate!(input[:instance_generations], context: "#{context}[:instance_generations]") unless input[:instance_generations].nil?
        Hearth::Validator.validate!(input[:spot_max_price_percentage_over_lowest_price], ::Integer, context: "#{context}[:spot_max_price_percentage_over_lowest_price]")
        Hearth::Validator.validate!(input[:on_demand_max_price_percentage_over_lowest_price], ::Integer, context: "#{context}[:on_demand_max_price_percentage_over_lowest_price]")
        Hearth::Validator.validate!(input[:bare_metal], ::String, context: "#{context}[:bare_metal]")
        Hearth::Validator.validate!(input[:burstable_performance], ::String, context: "#{context}[:burstable_performance]")
        Hearth::Validator.validate!(input[:require_hibernate_support], ::TrueClass, ::FalseClass, context: "#{context}[:require_hibernate_support]")
        Validators::NetworkInterfaceCount.validate!(input[:network_interface_count], context: "#{context}[:network_interface_count]") unless input[:network_interface_count].nil?
        Hearth::Validator.validate!(input[:local_storage], ::String, context: "#{context}[:local_storage]")
        Validators::LocalStorageTypeSet.validate!(input[:local_storage_types], context: "#{context}[:local_storage_types]") unless input[:local_storage_types].nil?
        Validators::TotalLocalStorageGB.validate!(input[:total_local_storage_gb], context: "#{context}[:total_local_storage_gb]") unless input[:total_local_storage_gb].nil?
        Validators::BaselineEbsBandwidthMbps.validate!(input[:baseline_ebs_bandwidth_mbps], context: "#{context}[:baseline_ebs_bandwidth_mbps]") unless input[:baseline_ebs_bandwidth_mbps].nil?
        Validators::AcceleratorTypeSet.validate!(input[:accelerator_types], context: "#{context}[:accelerator_types]") unless input[:accelerator_types].nil?
        Validators::AcceleratorCount.validate!(input[:accelerator_count], context: "#{context}[:accelerator_count]") unless input[:accelerator_count].nil?
        Validators::AcceleratorManufacturerSet.validate!(input[:accelerator_manufacturers], context: "#{context}[:accelerator_manufacturers]") unless input[:accelerator_manufacturers].nil?
        Validators::AcceleratorNameSet.validate!(input[:accelerator_names], context: "#{context}[:accelerator_names]") unless input[:accelerator_names].nil?
        Validators::AcceleratorTotalMemoryMiB.validate!(input[:accelerator_total_memory_mi_b], context: "#{context}[:accelerator_total_memory_mi_b]") unless input[:accelerator_total_memory_mi_b].nil?
      end
    end

    class InstanceRequirementsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceRequirementsRequest, context: context)
        Validators::VCpuCountRangeRequest.validate!(input[:v_cpu_count], context: "#{context}[:v_cpu_count]") unless input[:v_cpu_count].nil?
        Validators::MemoryMiBRequest.validate!(input[:memory_mi_b], context: "#{context}[:memory_mi_b]") unless input[:memory_mi_b].nil?
        Validators::CpuManufacturerSet.validate!(input[:cpu_manufacturers], context: "#{context}[:cpu_manufacturers]") unless input[:cpu_manufacturers].nil?
        Validators::MemoryGiBPerVCpuRequest.validate!(input[:memory_gi_b_per_v_cpu], context: "#{context}[:memory_gi_b_per_v_cpu]") unless input[:memory_gi_b_per_v_cpu].nil?
        Validators::ExcludedInstanceTypeSet.validate!(input[:excluded_instance_types], context: "#{context}[:excluded_instance_types]") unless input[:excluded_instance_types].nil?
        Validators::InstanceGenerationSet.validate!(input[:instance_generations], context: "#{context}[:instance_generations]") unless input[:instance_generations].nil?
        Hearth::Validator.validate!(input[:spot_max_price_percentage_over_lowest_price], ::Integer, context: "#{context}[:spot_max_price_percentage_over_lowest_price]")
        Hearth::Validator.validate!(input[:on_demand_max_price_percentage_over_lowest_price], ::Integer, context: "#{context}[:on_demand_max_price_percentage_over_lowest_price]")
        Hearth::Validator.validate!(input[:bare_metal], ::String, context: "#{context}[:bare_metal]")
        Hearth::Validator.validate!(input[:burstable_performance], ::String, context: "#{context}[:burstable_performance]")
        Hearth::Validator.validate!(input[:require_hibernate_support], ::TrueClass, ::FalseClass, context: "#{context}[:require_hibernate_support]")
        Validators::NetworkInterfaceCountRequest.validate!(input[:network_interface_count], context: "#{context}[:network_interface_count]") unless input[:network_interface_count].nil?
        Hearth::Validator.validate!(input[:local_storage], ::String, context: "#{context}[:local_storage]")
        Validators::LocalStorageTypeSet.validate!(input[:local_storage_types], context: "#{context}[:local_storage_types]") unless input[:local_storage_types].nil?
        Validators::TotalLocalStorageGBRequest.validate!(input[:total_local_storage_gb], context: "#{context}[:total_local_storage_gb]") unless input[:total_local_storage_gb].nil?
        Validators::BaselineEbsBandwidthMbpsRequest.validate!(input[:baseline_ebs_bandwidth_mbps], context: "#{context}[:baseline_ebs_bandwidth_mbps]") unless input[:baseline_ebs_bandwidth_mbps].nil?
        Validators::AcceleratorTypeSet.validate!(input[:accelerator_types], context: "#{context}[:accelerator_types]") unless input[:accelerator_types].nil?
        Validators::AcceleratorCountRequest.validate!(input[:accelerator_count], context: "#{context}[:accelerator_count]") unless input[:accelerator_count].nil?
        Validators::AcceleratorManufacturerSet.validate!(input[:accelerator_manufacturers], context: "#{context}[:accelerator_manufacturers]") unless input[:accelerator_manufacturers].nil?
        Validators::AcceleratorNameSet.validate!(input[:accelerator_names], context: "#{context}[:accelerator_names]") unless input[:accelerator_names].nil?
        Validators::AcceleratorTotalMemoryMiBRequest.validate!(input[:accelerator_total_memory_mi_b], context: "#{context}[:accelerator_total_memory_mi_b]") unless input[:accelerator_total_memory_mi_b].nil?
      end
    end

    class InstanceRequirementsWithMetadataRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceRequirementsWithMetadataRequest, context: context)
        Validators::ArchitectureTypeSet.validate!(input[:architecture_types], context: "#{context}[:architecture_types]") unless input[:architecture_types].nil?
        Validators::VirtualizationTypeSet.validate!(input[:virtualization_types], context: "#{context}[:virtualization_types]") unless input[:virtualization_types].nil?
        Validators::InstanceRequirementsRequest.validate!(input[:instance_requirements], context: "#{context}[:instance_requirements]") unless input[:instance_requirements].nil?
      end
    end

    class InstanceSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceSpecification, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:exclude_boot_volume], ::TrueClass, ::FalseClass, context: "#{context}[:exclude_boot_volume]")
      end
    end

    class InstanceTagKeySet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IntegrateServices
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntegrateServices, context: context)
        Validators::AthenaIntegrationsSet.validate!(input[:athena_integrations], context: "#{context}[:athena_integrations]") unless input[:athena_integrations].nil?
      end
    end

    class InternetGatewayIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IpPermission
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpPermission, context: context)
        Hearth::Validator.validate!(input[:from_port], ::Integer, context: "#{context}[:from_port]")
        Hearth::Validator.validate!(input[:ip_protocol], ::String, context: "#{context}[:ip_protocol]")
        Validators::IpRangeList.validate!(input[:ip_ranges], context: "#{context}[:ip_ranges]") unless input[:ip_ranges].nil?
        Validators::Ipv6RangeList.validate!(input[:ipv6_ranges], context: "#{context}[:ipv6_ranges]") unless input[:ipv6_ranges].nil?
        Validators::PrefixListIdList.validate!(input[:prefix_list_ids], context: "#{context}[:prefix_list_ids]") unless input[:prefix_list_ids].nil?
        Hearth::Validator.validate!(input[:to_port], ::Integer, context: "#{context}[:to_port]")
        Validators::UserIdGroupPairList.validate!(input[:user_id_group_pairs], context: "#{context}[:user_id_group_pairs]") unless input[:user_id_group_pairs].nil?
      end
    end

    class IpPermissionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IpPermission.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IpPrefixList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IpRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpRange, context: context)
        Hearth::Validator.validate!(input[:cidr_ip], ::String, context: "#{context}[:cidr_ip]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class IpRangeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IpRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IpamCidrAuthorizationContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpamCidrAuthorizationContext, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:signature], ::String, context: "#{context}[:signature]")
      end
    end

    class IpamPoolAllocationDisallowedCidrs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Ipv4PrefixList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Ipv4PrefixSpecificationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Ipv4PrefixSpecificationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ipv4PrefixSpecificationRequest, context: context)
        Hearth::Validator.validate!(input[:ipv4_prefix], ::String, context: "#{context}[:ipv4_prefix]")
      end
    end

    class Ipv6AddressList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Ipv6PoolIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Ipv6PrefixList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Ipv6PrefixSpecificationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Ipv6PrefixSpecificationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ipv6PrefixSpecificationRequest, context: context)
        Hearth::Validator.validate!(input[:ipv6_prefix], ::String, context: "#{context}[:ipv6_prefix]")
      end
    end

    class Ipv6Range
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ipv6Range, context: context)
        Hearth::Validator.validate!(input[:cidr_ipv6], ::String, context: "#{context}[:cidr_ipv6]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class Ipv6RangeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Ipv6Range.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KeyNameStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class KeyPairIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LaunchPermission
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchPermission, context: context)
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:organization_arn], ::String, context: "#{context}[:organization_arn]")
        Hearth::Validator.validate!(input[:organizational_unit_arn], ::String, context: "#{context}[:organizational_unit_arn]")
      end
    end

    class LaunchPermissionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LaunchPermission.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LaunchPermissionModifications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchPermissionModifications, context: context)
        Validators::LaunchPermissionList.validate!(input[:add], context: "#{context}[:add]") unless input[:add].nil?
        Validators::LaunchPermissionList.validate!(input[:remove], context: "#{context}[:remove]") unless input[:remove].nil?
      end
    end

    class LaunchSpecsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SpotFleetLaunchSpecification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LaunchTemplateBlockDeviceMappingRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateBlockDeviceMappingRequest, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:virtual_name], ::String, context: "#{context}[:virtual_name]")
        Validators::LaunchTemplateEbsBlockDeviceRequest.validate!(input[:ebs], context: "#{context}[:ebs]") unless input[:ebs].nil?
        Hearth::Validator.validate!(input[:no_device], ::String, context: "#{context}[:no_device]")
      end
    end

    class LaunchTemplateBlockDeviceMappingRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LaunchTemplateBlockDeviceMappingRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LaunchTemplateCapacityReservationSpecificationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateCapacityReservationSpecificationRequest, context: context)
        Hearth::Validator.validate!(input[:capacity_reservation_preference], ::String, context: "#{context}[:capacity_reservation_preference]")
        Validators::CapacityReservationTarget.validate!(input[:capacity_reservation_target], context: "#{context}[:capacity_reservation_target]") unless input[:capacity_reservation_target].nil?
      end
    end

    class LaunchTemplateConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateConfig, context: context)
        Validators::FleetLaunchTemplateSpecification.validate!(input[:launch_template_specification], context: "#{context}[:launch_template_specification]") unless input[:launch_template_specification].nil?
        Validators::LaunchTemplateOverridesList.validate!(input[:overrides], context: "#{context}[:overrides]") unless input[:overrides].nil?
      end
    end

    class LaunchTemplateConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LaunchTemplateConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LaunchTemplateCpuOptionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateCpuOptionsRequest, context: context)
        Hearth::Validator.validate!(input[:core_count], ::Integer, context: "#{context}[:core_count]")
        Hearth::Validator.validate!(input[:threads_per_core], ::Integer, context: "#{context}[:threads_per_core]")
      end
    end

    class LaunchTemplateEbsBlockDeviceRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateEbsBlockDeviceRequest, context: context)
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:delete_on_termination], ::TrueClass, ::FalseClass, context: "#{context}[:delete_on_termination]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:volume_size], ::Integer, context: "#{context}[:volume_size]")
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
        Hearth::Validator.validate!(input[:throughput], ::Integer, context: "#{context}[:throughput]")
      end
    end

    class LaunchTemplateElasticInferenceAccelerator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateElasticInferenceAccelerator, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
      end
    end

    class LaunchTemplateElasticInferenceAcceleratorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LaunchTemplateElasticInferenceAccelerator.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LaunchTemplateEnclaveOptionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateEnclaveOptionsRequest, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class LaunchTemplateHibernationOptionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateHibernationOptionsRequest, context: context)
        Hearth::Validator.validate!(input[:configured], ::TrueClass, ::FalseClass, context: "#{context}[:configured]")
      end
    end

    class LaunchTemplateIamInstanceProfileSpecificationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateIamInstanceProfileSpecificationRequest, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
      end
    end

    class LaunchTemplateIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LaunchTemplateInstanceMarketOptionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateInstanceMarketOptionsRequest, context: context)
        Hearth::Validator.validate!(input[:market_type], ::String, context: "#{context}[:market_type]")
        Validators::LaunchTemplateSpotMarketOptionsRequest.validate!(input[:spot_options], context: "#{context}[:spot_options]") unless input[:spot_options].nil?
      end
    end

    class LaunchTemplateInstanceMetadataOptionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateInstanceMetadataOptionsRequest, context: context)
        Hearth::Validator.validate!(input[:http_tokens], ::String, context: "#{context}[:http_tokens]")
        Hearth::Validator.validate!(input[:http_put_response_hop_limit], ::Integer, context: "#{context}[:http_put_response_hop_limit]")
        Hearth::Validator.validate!(input[:http_endpoint], ::String, context: "#{context}[:http_endpoint]")
        Hearth::Validator.validate!(input[:http_protocol_ipv6], ::String, context: "#{context}[:http_protocol_ipv6]")
        Hearth::Validator.validate!(input[:instance_metadata_tags], ::String, context: "#{context}[:instance_metadata_tags]")
      end
    end

    class LaunchTemplateInstanceNetworkInterfaceSpecificationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest, context: context)
        Hearth::Validator.validate!(input[:associate_carrier_ip_address], ::TrueClass, ::FalseClass, context: "#{context}[:associate_carrier_ip_address]")
        Hearth::Validator.validate!(input[:associate_public_ip_address], ::TrueClass, ::FalseClass, context: "#{context}[:associate_public_ip_address]")
        Hearth::Validator.validate!(input[:delete_on_termination], ::TrueClass, ::FalseClass, context: "#{context}[:delete_on_termination]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:device_index], ::Integer, context: "#{context}[:device_index]")
        Validators::SecurityGroupIdStringList.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:interface_type], ::String, context: "#{context}[:interface_type]")
        Hearth::Validator.validate!(input[:ipv6_address_count], ::Integer, context: "#{context}[:ipv6_address_count]")
        Validators::InstanceIpv6AddressListRequest.validate!(input[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless input[:ipv6_addresses].nil?
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
        Validators::PrivateIpAddressSpecificationList.validate!(input[:private_ip_addresses], context: "#{context}[:private_ip_addresses]") unless input[:private_ip_addresses].nil?
        Hearth::Validator.validate!(input[:secondary_private_ip_address_count], ::Integer, context: "#{context}[:secondary_private_ip_address_count]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:network_card_index], ::Integer, context: "#{context}[:network_card_index]")
        Validators::Ipv4PrefixList.validate!(input[:ipv4_prefixes], context: "#{context}[:ipv4_prefixes]") unless input[:ipv4_prefixes].nil?
        Hearth::Validator.validate!(input[:ipv4_prefix_count], ::Integer, context: "#{context}[:ipv4_prefix_count]")
        Validators::Ipv6PrefixList.validate!(input[:ipv6_prefixes], context: "#{context}[:ipv6_prefixes]") unless input[:ipv6_prefixes].nil?
        Hearth::Validator.validate!(input[:ipv6_prefix_count], ::Integer, context: "#{context}[:ipv6_prefix_count]")
      end
    end

    class LaunchTemplateInstanceNetworkInterfaceSpecificationRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LaunchTemplateLicenseConfigurationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateLicenseConfigurationRequest, context: context)
        Hearth::Validator.validate!(input[:license_configuration_arn], ::String, context: "#{context}[:license_configuration_arn]")
      end
    end

    class LaunchTemplateLicenseSpecificationListRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LaunchTemplateLicenseConfigurationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LaunchTemplateNameStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LaunchTemplateOverrides
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateOverrides, context: context)
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:spot_price], ::String, context: "#{context}[:spot_price]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:weighted_capacity], ::Float, context: "#{context}[:weighted_capacity]")
        Hearth::Validator.validate!(input[:priority], ::Float, context: "#{context}[:priority]")
        Validators::InstanceRequirements.validate!(input[:instance_requirements], context: "#{context}[:instance_requirements]") unless input[:instance_requirements].nil?
      end
    end

    class LaunchTemplateOverridesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LaunchTemplateOverrides.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LaunchTemplatePlacementRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplatePlacementRequest, context: context)
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:affinity], ::String, context: "#{context}[:affinity]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:host_id], ::String, context: "#{context}[:host_id]")
        Hearth::Validator.validate!(input[:tenancy], ::String, context: "#{context}[:tenancy]")
        Hearth::Validator.validate!(input[:spread_domain], ::String, context: "#{context}[:spread_domain]")
        Hearth::Validator.validate!(input[:host_resource_group_arn], ::String, context: "#{context}[:host_resource_group_arn]")
        Hearth::Validator.validate!(input[:partition_number], ::Integer, context: "#{context}[:partition_number]")
      end
    end

    class LaunchTemplatePrivateDnsNameOptionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplatePrivateDnsNameOptionsRequest, context: context)
        Hearth::Validator.validate!(input[:hostname_type], ::String, context: "#{context}[:hostname_type]")
        Hearth::Validator.validate!(input[:enable_resource_name_dns_a_record], ::TrueClass, ::FalseClass, context: "#{context}[:enable_resource_name_dns_a_record]")
        Hearth::Validator.validate!(input[:enable_resource_name_dns_aaaa_record], ::TrueClass, ::FalseClass, context: "#{context}[:enable_resource_name_dns_aaaa_record]")
      end
    end

    class LaunchTemplateSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateSpecification, context: context)
        Hearth::Validator.validate!(input[:launch_template_id], ::String, context: "#{context}[:launch_template_id]")
        Hearth::Validator.validate!(input[:launch_template_name], ::String, context: "#{context}[:launch_template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class LaunchTemplateSpotMarketOptionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateSpotMarketOptionsRequest, context: context)
        Hearth::Validator.validate!(input[:max_price], ::String, context: "#{context}[:max_price]")
        Hearth::Validator.validate!(input[:spot_instance_type], ::String, context: "#{context}[:spot_instance_type]")
        Hearth::Validator.validate!(input[:block_duration_minutes], ::Integer, context: "#{context}[:block_duration_minutes]")
        Hearth::Validator.validate!(input[:valid_until], ::Time, context: "#{context}[:valid_until]")
        Hearth::Validator.validate!(input[:instance_interruption_behavior], ::String, context: "#{context}[:instance_interruption_behavior]")
      end
    end

    class LaunchTemplateTagSpecificationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateTagSpecificationRequest, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LaunchTemplateTagSpecificationRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LaunchTemplateTagSpecificationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LaunchTemplatesMonitoringRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplatesMonitoringRequest, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class LicenseConfigurationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LicenseConfigurationRequest, context: context)
        Hearth::Validator.validate!(input[:license_configuration_arn], ::String, context: "#{context}[:license_configuration_arn]")
      end
    end

    class LicenseSpecificationListRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LicenseConfigurationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListSnapshotsInRecycleBinInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSnapshotsInRecycleBinInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::SnapshotIdStringList.validate!(input[:snapshot_ids], context: "#{context}[:snapshot_ids]") unless input[:snapshot_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class LoadBalancersConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancersConfig, context: context)
        Validators::ClassicLoadBalancersConfig.validate!(input[:classic_load_balancers_config], context: "#{context}[:classic_load_balancers_config]") unless input[:classic_load_balancers_config].nil?
        Validators::TargetGroupsConfig.validate!(input[:target_groups_config], context: "#{context}[:target_groups_config]") unless input[:target_groups_config].nil?
      end
    end

    class LoadPermissionListRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LoadPermissionRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LoadPermissionModifications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadPermissionModifications, context: context)
        Validators::LoadPermissionListRequest.validate!(input[:add], context: "#{context}[:add]") unless input[:add].nil?
        Validators::LoadPermissionListRequest.validate!(input[:remove], context: "#{context}[:remove]") unless input[:remove].nil?
      end
    end

    class LoadPermissionRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadPermissionRequest, context: context)
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class LocalGatewayIdSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LocalGatewayRouteTableIdSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LocalGatewayRouteTableVirtualInterfaceGroupAssociationIdSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LocalGatewayRouteTableVpcAssociationIdSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LocalGatewayVirtualInterfaceGroupIdSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LocalGatewayVirtualInterfaceIdSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LocalStorageTypeSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MemoryGiBPerVCpu
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemoryGiBPerVCpu, context: context)
        Hearth::Validator.validate!(input[:min], ::Float, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Float, context: "#{context}[:max]")
      end
    end

    class MemoryGiBPerVCpuRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemoryGiBPerVCpuRequest, context: context)
        Hearth::Validator.validate!(input[:min], ::Float, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Float, context: "#{context}[:max]")
      end
    end

    class MemoryMiB
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemoryMiB, context: context)
        Hearth::Validator.validate!(input[:min], ::Integer, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class MemoryMiBRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemoryMiBRequest, context: context)
        Hearth::Validator.validate!(input[:min], ::Integer, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class ModifyAddressAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyAddressAttributeInput, context: context)
        Hearth::Validator.validate!(input[:allocation_id], ::String, context: "#{context}[:allocation_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ModifyAvailabilityZoneGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyAvailabilityZoneGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:opt_in_status], ::String, context: "#{context}[:opt_in_status]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ModifyCapacityReservationFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyCapacityReservationFleetInput, context: context)
        Hearth::Validator.validate!(input[:capacity_reservation_fleet_id], ::String, context: "#{context}[:capacity_reservation_fleet_id]")
        Hearth::Validator.validate!(input[:total_target_capacity], ::Integer, context: "#{context}[:total_target_capacity]")
        Hearth::Validator.validate!(input[:end_date], ::Time, context: "#{context}[:end_date]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:remove_end_date], ::TrueClass, ::FalseClass, context: "#{context}[:remove_end_date]")
      end
    end

    class ModifyCapacityReservationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyCapacityReservationInput, context: context)
        Hearth::Validator.validate!(input[:capacity_reservation_id], ::String, context: "#{context}[:capacity_reservation_id]")
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        Hearth::Validator.validate!(input[:end_date], ::Time, context: "#{context}[:end_date]")
        Hearth::Validator.validate!(input[:end_date_type], ::String, context: "#{context}[:end_date_type]")
        Hearth::Validator.validate!(input[:accept], ::TrueClass, ::FalseClass, context: "#{context}[:accept]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:additional_info], ::String, context: "#{context}[:additional_info]")
      end
    end

    class ModifyClientVpnEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClientVpnEndpointInput, context: context)
        Hearth::Validator.validate!(input[:client_vpn_endpoint_id], ::String, context: "#{context}[:client_vpn_endpoint_id]")
        Hearth::Validator.validate!(input[:server_certificate_arn], ::String, context: "#{context}[:server_certificate_arn]")
        Validators::ConnectionLogOptions.validate!(input[:connection_log_options], context: "#{context}[:connection_log_options]") unless input[:connection_log_options].nil?
        Validators::DnsServersOptionsModifyStructure.validate!(input[:dns_servers], context: "#{context}[:dns_servers]") unless input[:dns_servers].nil?
        Hearth::Validator.validate!(input[:vpn_port], ::Integer, context: "#{context}[:vpn_port]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:split_tunnel], ::TrueClass, ::FalseClass, context: "#{context}[:split_tunnel]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::ClientVpnSecurityGroupIdSet.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:self_service_portal], ::String, context: "#{context}[:self_service_portal]")
        Validators::ClientConnectOptions.validate!(input[:client_connect_options], context: "#{context}[:client_connect_options]") unless input[:client_connect_options].nil?
      end
    end

    class ModifyDefaultCreditSpecificationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDefaultCreditSpecificationInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:instance_family], ::String, context: "#{context}[:instance_family]")
        Hearth::Validator.validate!(input[:cpu_credits], ::String, context: "#{context}[:cpu_credits]")
      end
    end

    class ModifyEbsDefaultKmsKeyIdInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyEbsDefaultKmsKeyIdInput, context: context)
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ModifyFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyFleetInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:excess_capacity_termination_policy], ::String, context: "#{context}[:excess_capacity_termination_policy]")
        Validators::FleetLaunchTemplateConfigListRequest.validate!(input[:launch_template_configs], context: "#{context}[:launch_template_configs]") unless input[:launch_template_configs].nil?
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Validators::TargetCapacitySpecificationRequest.validate!(input[:target_capacity_specification], context: "#{context}[:target_capacity_specification]") unless input[:target_capacity_specification].nil?
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
      end
    end

    class ModifyFpgaImageAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyFpgaImageAttributeInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:fpga_image_id], ::String, context: "#{context}[:fpga_image_id]")
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:operation_type], ::String, context: "#{context}[:operation_type]")
        Validators::UserIdStringList.validate!(input[:user_ids], context: "#{context}[:user_ids]") unless input[:user_ids].nil?
        Validators::UserGroupStringList.validate!(input[:user_groups], context: "#{context}[:user_groups]") unless input[:user_groups].nil?
        Validators::ProductCodeStringList.validate!(input[:product_codes], context: "#{context}[:product_codes]") unless input[:product_codes].nil?
        Validators::LoadPermissionModifications.validate!(input[:load_permission], context: "#{context}[:load_permission]") unless input[:load_permission].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
      end
    end

    class ModifyHostsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyHostsInput, context: context)
        Hearth::Validator.validate!(input[:auto_placement], ::String, context: "#{context}[:auto_placement]")
        Validators::RequestHostIdList.validate!(input[:host_ids], context: "#{context}[:host_ids]") unless input[:host_ids].nil?
        Hearth::Validator.validate!(input[:host_recovery], ::String, context: "#{context}[:host_recovery]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:instance_family], ::String, context: "#{context}[:instance_family]")
      end
    end

    class ModifyIdFormatInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyIdFormatInput, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate!(input[:use_long_ids], ::TrueClass, ::FalseClass, context: "#{context}[:use_long_ids]")
      end
    end

    class ModifyIdentityIdFormatInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyIdentityIdFormatInput, context: context)
        Hearth::Validator.validate!(input[:principal_arn], ::String, context: "#{context}[:principal_arn]")
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate!(input[:use_long_ids], ::TrueClass, ::FalseClass, context: "#{context}[:use_long_ids]")
      end
    end

    class ModifyImageAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyImageAttributeInput, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Validators::AttributeValue.validate!(input[:description], context: "#{context}[:description]") unless input[:description].nil?
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Validators::LaunchPermissionModifications.validate!(input[:launch_permission], context: "#{context}[:launch_permission]") unless input[:launch_permission].nil?
        Hearth::Validator.validate!(input[:operation_type], ::String, context: "#{context}[:operation_type]")
        Validators::ProductCodeStringList.validate!(input[:product_codes], context: "#{context}[:product_codes]") unless input[:product_codes].nil?
        Validators::UserGroupStringList.validate!(input[:user_groups], context: "#{context}[:user_groups]") unless input[:user_groups].nil?
        Validators::UserIdStringList.validate!(input[:user_ids], context: "#{context}[:user_ids]") unless input[:user_ids].nil?
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::OrganizationArnStringList.validate!(input[:organization_arns], context: "#{context}[:organization_arns]") unless input[:organization_arns].nil?
        Validators::OrganizationalUnitArnStringList.validate!(input[:organizational_unit_arns], context: "#{context}[:organizational_unit_arns]") unless input[:organizational_unit_arns].nil?
      end
    end

    class ModifyInstanceAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyInstanceAttributeInput, context: context)
        Validators::AttributeBooleanValue.validate!(input[:source_dest_check], context: "#{context}[:source_dest_check]") unless input[:source_dest_check].nil?
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Validators::InstanceBlockDeviceMappingSpecificationList.validate!(input[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless input[:block_device_mappings].nil?
        Validators::AttributeBooleanValue.validate!(input[:disable_api_termination], context: "#{context}[:disable_api_termination]") unless input[:disable_api_termination].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::AttributeBooleanValue.validate!(input[:ebs_optimized], context: "#{context}[:ebs_optimized]") unless input[:ebs_optimized].nil?
        Validators::AttributeBooleanValue.validate!(input[:ena_support], context: "#{context}[:ena_support]") unless input[:ena_support].nil?
        Validators::GroupIdStringList.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Validators::AttributeValue.validate!(input[:instance_initiated_shutdown_behavior], context: "#{context}[:instance_initiated_shutdown_behavior]") unless input[:instance_initiated_shutdown_behavior].nil?
        Validators::AttributeValue.validate!(input[:instance_type], context: "#{context}[:instance_type]") unless input[:instance_type].nil?
        Validators::AttributeValue.validate!(input[:kernel], context: "#{context}[:kernel]") unless input[:kernel].nil?
        Validators::AttributeValue.validate!(input[:ramdisk], context: "#{context}[:ramdisk]") unless input[:ramdisk].nil?
        Validators::AttributeValue.validate!(input[:sriov_net_support], context: "#{context}[:sriov_net_support]") unless input[:sriov_net_support].nil?
        Validators::BlobAttributeValue.validate!(input[:user_data], context: "#{context}[:user_data]") unless input[:user_data].nil?
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ModifyInstanceCapacityReservationAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyInstanceCapacityReservationAttributesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Validators::CapacityReservationSpecification.validate!(input[:capacity_reservation_specification], context: "#{context}[:capacity_reservation_specification]") unless input[:capacity_reservation_specification].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ModifyInstanceCreditSpecificationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyInstanceCreditSpecificationInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::InstanceCreditSpecificationListRequest.validate!(input[:instance_credit_specifications], context: "#{context}[:instance_credit_specifications]") unless input[:instance_credit_specifications].nil?
      end
    end

    class ModifyInstanceEventStartTimeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyInstanceEventStartTimeInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:instance_event_id], ::String, context: "#{context}[:instance_event_id]")
        Hearth::Validator.validate!(input[:not_before], ::Time, context: "#{context}[:not_before]")
      end
    end

    class ModifyInstanceEventWindowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyInstanceEventWindowInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:instance_event_window_id], ::String, context: "#{context}[:instance_event_window_id]")
        Validators::InstanceEventWindowTimeRangeRequestSet.validate!(input[:time_ranges], context: "#{context}[:time_ranges]") unless input[:time_ranges].nil?
        Hearth::Validator.validate!(input[:cron_expression], ::String, context: "#{context}[:cron_expression]")
      end
    end

    class ModifyInstanceMetadataOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyInstanceMetadataOptionsInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:http_tokens], ::String, context: "#{context}[:http_tokens]")
        Hearth::Validator.validate!(input[:http_put_response_hop_limit], ::Integer, context: "#{context}[:http_put_response_hop_limit]")
        Hearth::Validator.validate!(input[:http_endpoint], ::String, context: "#{context}[:http_endpoint]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:http_protocol_ipv6], ::String, context: "#{context}[:http_protocol_ipv6]")
        Hearth::Validator.validate!(input[:instance_metadata_tags], ::String, context: "#{context}[:instance_metadata_tags]")
      end
    end

    class ModifyInstancePlacementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyInstancePlacementInput, context: context)
        Hearth::Validator.validate!(input[:affinity], ::String, context: "#{context}[:affinity]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:host_id], ::String, context: "#{context}[:host_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:tenancy], ::String, context: "#{context}[:tenancy]")
        Hearth::Validator.validate!(input[:partition_number], ::Integer, context: "#{context}[:partition_number]")
        Hearth::Validator.validate!(input[:host_resource_group_arn], ::String, context: "#{context}[:host_resource_group_arn]")
      end
    end

    class ModifyIpamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyIpamInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:ipam_id], ::String, context: "#{context}[:ipam_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::AddIpamOperatingRegionSet.validate!(input[:add_operating_regions], context: "#{context}[:add_operating_regions]") unless input[:add_operating_regions].nil?
        Validators::RemoveIpamOperatingRegionSet.validate!(input[:remove_operating_regions], context: "#{context}[:remove_operating_regions]") unless input[:remove_operating_regions].nil?
      end
    end

    class ModifyIpamPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyIpamPoolInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:ipam_pool_id], ::String, context: "#{context}[:ipam_pool_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:auto_import], ::TrueClass, ::FalseClass, context: "#{context}[:auto_import]")
        Hearth::Validator.validate!(input[:allocation_min_netmask_length], ::Integer, context: "#{context}[:allocation_min_netmask_length]")
        Hearth::Validator.validate!(input[:allocation_max_netmask_length], ::Integer, context: "#{context}[:allocation_max_netmask_length]")
        Hearth::Validator.validate!(input[:allocation_default_netmask_length], ::Integer, context: "#{context}[:allocation_default_netmask_length]")
        Hearth::Validator.validate!(input[:clear_allocation_default_netmask_length], ::TrueClass, ::FalseClass, context: "#{context}[:clear_allocation_default_netmask_length]")
        Validators::RequestIpamResourceTagList.validate!(input[:add_allocation_resource_tags], context: "#{context}[:add_allocation_resource_tags]") unless input[:add_allocation_resource_tags].nil?
        Validators::RequestIpamResourceTagList.validate!(input[:remove_allocation_resource_tags], context: "#{context}[:remove_allocation_resource_tags]") unless input[:remove_allocation_resource_tags].nil?
      end
    end

    class ModifyIpamResourceCidrInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyIpamResourceCidrInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_cidr], ::String, context: "#{context}[:resource_cidr]")
        Hearth::Validator.validate!(input[:resource_region], ::String, context: "#{context}[:resource_region]")
        Hearth::Validator.validate!(input[:current_ipam_scope_id], ::String, context: "#{context}[:current_ipam_scope_id]")
        Hearth::Validator.validate!(input[:destination_ipam_scope_id], ::String, context: "#{context}[:destination_ipam_scope_id]")
        Hearth::Validator.validate!(input[:monitored], ::TrueClass, ::FalseClass, context: "#{context}[:monitored]")
      end
    end

    class ModifyIpamScopeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyIpamScopeInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:ipam_scope_id], ::String, context: "#{context}[:ipam_scope_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class ModifyLaunchTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyLaunchTemplateInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:launch_template_id], ::String, context: "#{context}[:launch_template_id]")
        Hearth::Validator.validate!(input[:launch_template_name], ::String, context: "#{context}[:launch_template_name]")
        Hearth::Validator.validate!(input[:default_version], ::String, context: "#{context}[:default_version]")
      end
    end

    class ModifyManagedPrefixListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyManagedPrefixListInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:prefix_list_id], ::String, context: "#{context}[:prefix_list_id]")
        Hearth::Validator.validate!(input[:current_version], ::Integer, context: "#{context}[:current_version]")
        Hearth::Validator.validate!(input[:prefix_list_name], ::String, context: "#{context}[:prefix_list_name]")
        Validators::AddPrefixListEntries.validate!(input[:add_entries], context: "#{context}[:add_entries]") unless input[:add_entries].nil?
        Validators::RemovePrefixListEntries.validate!(input[:remove_entries], context: "#{context}[:remove_entries]") unless input[:remove_entries].nil?
        Hearth::Validator.validate!(input[:max_entries], ::Integer, context: "#{context}[:max_entries]")
      end
    end

    class ModifyNetworkInterfaceAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyNetworkInterfaceAttributeInput, context: context)
        Validators::NetworkInterfaceAttachmentChanges.validate!(input[:attachment], context: "#{context}[:attachment]") unless input[:attachment].nil?
        Validators::AttributeValue.validate!(input[:description], context: "#{context}[:description]") unless input[:description].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::SecurityGroupIdStringList.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Validators::AttributeBooleanValue.validate!(input[:source_dest_check], context: "#{context}[:source_dest_check]") unless input[:source_dest_check].nil?
      end
    end

    class ModifyPrivateDnsNameOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyPrivateDnsNameOptionsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:private_dns_hostname_type], ::String, context: "#{context}[:private_dns_hostname_type]")
        Hearth::Validator.validate!(input[:enable_resource_name_dns_a_record], ::TrueClass, ::FalseClass, context: "#{context}[:enable_resource_name_dns_a_record]")
        Hearth::Validator.validate!(input[:enable_resource_name_dns_aaaa_record], ::TrueClass, ::FalseClass, context: "#{context}[:enable_resource_name_dns_aaaa_record]")
      end
    end

    class ModifyReservedInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyReservedInstancesInput, context: context)
        Validators::ReservedInstancesIdStringList.validate!(input[:reserved_instances_ids], context: "#{context}[:reserved_instances_ids]") unless input[:reserved_instances_ids].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::ReservedInstancesConfigurationList.validate!(input[:target_configurations], context: "#{context}[:target_configurations]") unless input[:target_configurations].nil?
      end
    end

    class ModifySecurityGroupRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifySecurityGroupRulesInput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Validators::SecurityGroupRuleUpdateList.validate!(input[:security_group_rules], context: "#{context}[:security_group_rules]") unless input[:security_group_rules].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ModifySnapshotAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifySnapshotAttributeInput, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Validators::CreateVolumePermissionModifications.validate!(input[:create_volume_permission], context: "#{context}[:create_volume_permission]") unless input[:create_volume_permission].nil?
        Validators::GroupNameStringList.validate!(input[:group_names], context: "#{context}[:group_names]") unless input[:group_names].nil?
        Hearth::Validator.validate!(input[:operation_type], ::String, context: "#{context}[:operation_type]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Validators::UserIdStringList.validate!(input[:user_ids], context: "#{context}[:user_ids]") unless input[:user_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ModifySnapshotTierInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifySnapshotTierInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:storage_tier], ::String, context: "#{context}[:storage_tier]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ModifySpotFleetRequestInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifySpotFleetRequestInput, context: context)
        Hearth::Validator.validate!(input[:excess_capacity_termination_policy], ::String, context: "#{context}[:excess_capacity_termination_policy]")
        Validators::LaunchTemplateConfigList.validate!(input[:launch_template_configs], context: "#{context}[:launch_template_configs]") unless input[:launch_template_configs].nil?
        Hearth::Validator.validate!(input[:spot_fleet_request_id], ::String, context: "#{context}[:spot_fleet_request_id]")
        Hearth::Validator.validate!(input[:target_capacity], ::Integer, context: "#{context}[:target_capacity]")
        Hearth::Validator.validate!(input[:on_demand_target_capacity], ::Integer, context: "#{context}[:on_demand_target_capacity]")
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
      end
    end

    class ModifySubnetAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifySubnetAttributeInput, context: context)
        Validators::AttributeBooleanValue.validate!(input[:assign_ipv6_address_on_creation], context: "#{context}[:assign_ipv6_address_on_creation]") unless input[:assign_ipv6_address_on_creation].nil?
        Validators::AttributeBooleanValue.validate!(input[:map_public_ip_on_launch], context: "#{context}[:map_public_ip_on_launch]") unless input[:map_public_ip_on_launch].nil?
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Validators::AttributeBooleanValue.validate!(input[:map_customer_owned_ip_on_launch], context: "#{context}[:map_customer_owned_ip_on_launch]") unless input[:map_customer_owned_ip_on_launch].nil?
        Hearth::Validator.validate!(input[:customer_owned_ipv4_pool], ::String, context: "#{context}[:customer_owned_ipv4_pool]")
        Validators::AttributeBooleanValue.validate!(input[:enable_dns64], context: "#{context}[:enable_dns64]") unless input[:enable_dns64].nil?
        Hearth::Validator.validate!(input[:private_dns_hostname_type_on_launch], ::String, context: "#{context}[:private_dns_hostname_type_on_launch]")
        Validators::AttributeBooleanValue.validate!(input[:enable_resource_name_dns_a_record_on_launch], context: "#{context}[:enable_resource_name_dns_a_record_on_launch]") unless input[:enable_resource_name_dns_a_record_on_launch].nil?
        Validators::AttributeBooleanValue.validate!(input[:enable_resource_name_dns_aaaa_record_on_launch], context: "#{context}[:enable_resource_name_dns_aaaa_record_on_launch]") unless input[:enable_resource_name_dns_aaaa_record_on_launch].nil?
        Hearth::Validator.validate!(input[:enable_lni_at_device_index], ::Integer, context: "#{context}[:enable_lni_at_device_index]")
        Validators::AttributeBooleanValue.validate!(input[:disable_lni_at_device_index], context: "#{context}[:disable_lni_at_device_index]") unless input[:disable_lni_at_device_index].nil?
      end
    end

    class ModifyTrafficMirrorFilterNetworkServicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyTrafficMirrorFilterNetworkServicesInput, context: context)
        Hearth::Validator.validate!(input[:traffic_mirror_filter_id], ::String, context: "#{context}[:traffic_mirror_filter_id]")
        Validators::TrafficMirrorNetworkServiceList.validate!(input[:add_network_services], context: "#{context}[:add_network_services]") unless input[:add_network_services].nil?
        Validators::TrafficMirrorNetworkServiceList.validate!(input[:remove_network_services], context: "#{context}[:remove_network_services]") unless input[:remove_network_services].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ModifyTrafficMirrorFilterRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyTrafficMirrorFilterRuleInput, context: context)
        Hearth::Validator.validate!(input[:traffic_mirror_filter_rule_id], ::String, context: "#{context}[:traffic_mirror_filter_rule_id]")
        Hearth::Validator.validate!(input[:traffic_direction], ::String, context: "#{context}[:traffic_direction]")
        Hearth::Validator.validate!(input[:rule_number], ::Integer, context: "#{context}[:rule_number]")
        Hearth::Validator.validate!(input[:rule_action], ::String, context: "#{context}[:rule_action]")
        Validators::TrafficMirrorPortRangeRequest.validate!(input[:destination_port_range], context: "#{context}[:destination_port_range]") unless input[:destination_port_range].nil?
        Validators::TrafficMirrorPortRangeRequest.validate!(input[:source_port_range], context: "#{context}[:source_port_range]") unless input[:source_port_range].nil?
        Hearth::Validator.validate!(input[:protocol], ::Integer, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
        Hearth::Validator.validate!(input[:source_cidr_block], ::String, context: "#{context}[:source_cidr_block]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TrafficMirrorFilterRuleFieldList.validate!(input[:remove_fields], context: "#{context}[:remove_fields]") unless input[:remove_fields].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ModifyTrafficMirrorSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyTrafficMirrorSessionInput, context: context)
        Hearth::Validator.validate!(input[:traffic_mirror_session_id], ::String, context: "#{context}[:traffic_mirror_session_id]")
        Hearth::Validator.validate!(input[:traffic_mirror_target_id], ::String, context: "#{context}[:traffic_mirror_target_id]")
        Hearth::Validator.validate!(input[:traffic_mirror_filter_id], ::String, context: "#{context}[:traffic_mirror_filter_id]")
        Hearth::Validator.validate!(input[:packet_length], ::Integer, context: "#{context}[:packet_length]")
        Hearth::Validator.validate!(input[:session_number], ::Integer, context: "#{context}[:session_number]")
        Hearth::Validator.validate!(input[:virtual_network_id], ::Integer, context: "#{context}[:virtual_network_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TrafficMirrorSessionFieldList.validate!(input[:remove_fields], context: "#{context}[:remove_fields]") unless input[:remove_fields].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ModifyTransitGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyTransitGatewayInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_id], ::String, context: "#{context}[:transit_gateway_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ModifyTransitGatewayOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ModifyTransitGatewayOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyTransitGatewayOptions, context: context)
        Validators::TransitGatewayCidrBlockStringList.validate!(input[:add_transit_gateway_cidr_blocks], context: "#{context}[:add_transit_gateway_cidr_blocks]") unless input[:add_transit_gateway_cidr_blocks].nil?
        Validators::TransitGatewayCidrBlockStringList.validate!(input[:remove_transit_gateway_cidr_blocks], context: "#{context}[:remove_transit_gateway_cidr_blocks]") unless input[:remove_transit_gateway_cidr_blocks].nil?
        Hearth::Validator.validate!(input[:vpn_ecmp_support], ::String, context: "#{context}[:vpn_ecmp_support]")
        Hearth::Validator.validate!(input[:dns_support], ::String, context: "#{context}[:dns_support]")
        Hearth::Validator.validate!(input[:auto_accept_shared_attachments], ::String, context: "#{context}[:auto_accept_shared_attachments]")
        Hearth::Validator.validate!(input[:default_route_table_association], ::String, context: "#{context}[:default_route_table_association]")
        Hearth::Validator.validate!(input[:association_default_route_table_id], ::String, context: "#{context}[:association_default_route_table_id]")
        Hearth::Validator.validate!(input[:default_route_table_propagation], ::String, context: "#{context}[:default_route_table_propagation]")
        Hearth::Validator.validate!(input[:propagation_default_route_table_id], ::String, context: "#{context}[:propagation_default_route_table_id]")
      end
    end

    class ModifyTransitGatewayPrefixListReferenceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyTransitGatewayPrefixListReferenceInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_route_table_id], ::String, context: "#{context}[:transit_gateway_route_table_id]")
        Hearth::Validator.validate!(input[:prefix_list_id], ::String, context: "#{context}[:prefix_list_id]")
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Hearth::Validator.validate!(input[:blackhole], ::TrueClass, ::FalseClass, context: "#{context}[:blackhole]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ModifyTransitGatewayVpcAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyTransitGatewayVpcAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Validators::TransitGatewaySubnetIdList.validate!(input[:add_subnet_ids], context: "#{context}[:add_subnet_ids]") unless input[:add_subnet_ids].nil?
        Validators::TransitGatewaySubnetIdList.validate!(input[:remove_subnet_ids], context: "#{context}[:remove_subnet_ids]") unless input[:remove_subnet_ids].nil?
        Validators::ModifyTransitGatewayVpcAttachmentRequestOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ModifyTransitGatewayVpcAttachmentRequestOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyTransitGatewayVpcAttachmentRequestOptions, context: context)
        Hearth::Validator.validate!(input[:dns_support], ::String, context: "#{context}[:dns_support]")
        Hearth::Validator.validate!(input[:ipv6_support], ::String, context: "#{context}[:ipv6_support]")
        Hearth::Validator.validate!(input[:appliance_mode_support], ::String, context: "#{context}[:appliance_mode_support]")
      end
    end

    class ModifyVolumeAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyVolumeAttributeInput, context: context)
        Validators::AttributeBooleanValue.validate!(input[:auto_enable_io], context: "#{context}[:auto_enable_io]") unless input[:auto_enable_io].nil?
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ModifyVolumeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyVolumeInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:throughput], ::Integer, context: "#{context}[:throughput]")
        Hearth::Validator.validate!(input[:multi_attach_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:multi_attach_enabled]")
      end
    end

    class ModifyVpcAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyVpcAttributeInput, context: context)
        Validators::AttributeBooleanValue.validate!(input[:enable_dns_hostnames], context: "#{context}[:enable_dns_hostnames]") unless input[:enable_dns_hostnames].nil?
        Validators::AttributeBooleanValue.validate!(input[:enable_dns_support], context: "#{context}[:enable_dns_support]") unless input[:enable_dns_support].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class ModifyVpcEndpointConnectionNotificationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyVpcEndpointConnectionNotificationInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:connection_notification_id], ::String, context: "#{context}[:connection_notification_id]")
        Hearth::Validator.validate!(input[:connection_notification_arn], ::String, context: "#{context}[:connection_notification_arn]")
        Validators::ValueStringList.validate!(input[:connection_events], context: "#{context}[:connection_events]") unless input[:connection_events].nil?
      end
    end

    class ModifyVpcEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyVpcEndpointInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:vpc_endpoint_id], ::String, context: "#{context}[:vpc_endpoint_id]")
        Hearth::Validator.validate!(input[:reset_policy], ::TrueClass, ::FalseClass, context: "#{context}[:reset_policy]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
        Validators::VpcEndpointRouteTableIdList.validate!(input[:add_route_table_ids], context: "#{context}[:add_route_table_ids]") unless input[:add_route_table_ids].nil?
        Validators::VpcEndpointRouteTableIdList.validate!(input[:remove_route_table_ids], context: "#{context}[:remove_route_table_ids]") unless input[:remove_route_table_ids].nil?
        Validators::VpcEndpointSubnetIdList.validate!(input[:add_subnet_ids], context: "#{context}[:add_subnet_ids]") unless input[:add_subnet_ids].nil?
        Validators::VpcEndpointSubnetIdList.validate!(input[:remove_subnet_ids], context: "#{context}[:remove_subnet_ids]") unless input[:remove_subnet_ids].nil?
        Validators::VpcEndpointSecurityGroupIdList.validate!(input[:add_security_group_ids], context: "#{context}[:add_security_group_ids]") unless input[:add_security_group_ids].nil?
        Validators::VpcEndpointSecurityGroupIdList.validate!(input[:remove_security_group_ids], context: "#{context}[:remove_security_group_ids]") unless input[:remove_security_group_ids].nil?
        Hearth::Validator.validate!(input[:private_dns_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:private_dns_enabled]")
      end
    end

    class ModifyVpcEndpointServiceConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyVpcEndpointServiceConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Hearth::Validator.validate!(input[:private_dns_name], ::String, context: "#{context}[:private_dns_name]")
        Hearth::Validator.validate!(input[:remove_private_dns_name], ::TrueClass, ::FalseClass, context: "#{context}[:remove_private_dns_name]")
        Hearth::Validator.validate!(input[:acceptance_required], ::TrueClass, ::FalseClass, context: "#{context}[:acceptance_required]")
        Validators::ValueStringList.validate!(input[:add_network_load_balancer_arns], context: "#{context}[:add_network_load_balancer_arns]") unless input[:add_network_load_balancer_arns].nil?
        Validators::ValueStringList.validate!(input[:remove_network_load_balancer_arns], context: "#{context}[:remove_network_load_balancer_arns]") unless input[:remove_network_load_balancer_arns].nil?
        Validators::ValueStringList.validate!(input[:add_gateway_load_balancer_arns], context: "#{context}[:add_gateway_load_balancer_arns]") unless input[:add_gateway_load_balancer_arns].nil?
        Validators::ValueStringList.validate!(input[:remove_gateway_load_balancer_arns], context: "#{context}[:remove_gateway_load_balancer_arns]") unless input[:remove_gateway_load_balancer_arns].nil?
      end
    end

    class ModifyVpcEndpointServicePayerResponsibilityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyVpcEndpointServicePayerResponsibilityInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Hearth::Validator.validate!(input[:payer_responsibility], ::String, context: "#{context}[:payer_responsibility]")
      end
    end

    class ModifyVpcEndpointServicePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyVpcEndpointServicePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Validators::ValueStringList.validate!(input[:add_allowed_principals], context: "#{context}[:add_allowed_principals]") unless input[:add_allowed_principals].nil?
        Validators::ValueStringList.validate!(input[:remove_allowed_principals], context: "#{context}[:remove_allowed_principals]") unless input[:remove_allowed_principals].nil?
      end
    end

    class ModifyVpcPeeringConnectionOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyVpcPeeringConnectionOptionsInput, context: context)
        Validators::PeeringConnectionOptionsRequest.validate!(input[:accepter_peering_connection_options], context: "#{context}[:accepter_peering_connection_options]") unless input[:accepter_peering_connection_options].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::PeeringConnectionOptionsRequest.validate!(input[:requester_peering_connection_options], context: "#{context}[:requester_peering_connection_options]") unless input[:requester_peering_connection_options].nil?
        Hearth::Validator.validate!(input[:vpc_peering_connection_id], ::String, context: "#{context}[:vpc_peering_connection_id]")
      end
    end

    class ModifyVpcTenancyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyVpcTenancyInput, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:instance_tenancy], ::String, context: "#{context}[:instance_tenancy]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ModifyVpnConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyVpnConnectionInput, context: context)
        Hearth::Validator.validate!(input[:vpn_connection_id], ::String, context: "#{context}[:vpn_connection_id]")
        Hearth::Validator.validate!(input[:transit_gateway_id], ::String, context: "#{context}[:transit_gateway_id]")
        Hearth::Validator.validate!(input[:customer_gateway_id], ::String, context: "#{context}[:customer_gateway_id]")
        Hearth::Validator.validate!(input[:vpn_gateway_id], ::String, context: "#{context}[:vpn_gateway_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ModifyVpnConnectionOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyVpnConnectionOptionsInput, context: context)
        Hearth::Validator.validate!(input[:vpn_connection_id], ::String, context: "#{context}[:vpn_connection_id]")
        Hearth::Validator.validate!(input[:local_ipv4_network_cidr], ::String, context: "#{context}[:local_ipv4_network_cidr]")
        Hearth::Validator.validate!(input[:remote_ipv4_network_cidr], ::String, context: "#{context}[:remote_ipv4_network_cidr]")
        Hearth::Validator.validate!(input[:local_ipv6_network_cidr], ::String, context: "#{context}[:local_ipv6_network_cidr]")
        Hearth::Validator.validate!(input[:remote_ipv6_network_cidr], ::String, context: "#{context}[:remote_ipv6_network_cidr]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ModifyVpnTunnelCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyVpnTunnelCertificateInput, context: context)
        Hearth::Validator.validate!(input[:vpn_connection_id], ::String, context: "#{context}[:vpn_connection_id]")
        Hearth::Validator.validate!(input[:vpn_tunnel_outside_ip_address], ::String, context: "#{context}[:vpn_tunnel_outside_ip_address]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ModifyVpnTunnelOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyVpnTunnelOptionsInput, context: context)
        Hearth::Validator.validate!(input[:vpn_connection_id], ::String, context: "#{context}[:vpn_connection_id]")
        Hearth::Validator.validate!(input[:vpn_tunnel_outside_ip_address], ::String, context: "#{context}[:vpn_tunnel_outside_ip_address]")
        Validators::ModifyVpnTunnelOptionsSpecification.validate!(input[:tunnel_options], context: "#{context}[:tunnel_options]") unless input[:tunnel_options].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ModifyVpnTunnelOptionsSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyVpnTunnelOptionsSpecification, context: context)
        Hearth::Validator.validate!(input[:tunnel_inside_cidr], ::String, context: "#{context}[:tunnel_inside_cidr]")
        Hearth::Validator.validate!(input[:tunnel_inside_ipv6_cidr], ::String, context: "#{context}[:tunnel_inside_ipv6_cidr]")
        Hearth::Validator.validate!(input[:pre_shared_key], ::String, context: "#{context}[:pre_shared_key]")
        Hearth::Validator.validate!(input[:phase1_lifetime_seconds], ::Integer, context: "#{context}[:phase1_lifetime_seconds]")
        Hearth::Validator.validate!(input[:phase2_lifetime_seconds], ::Integer, context: "#{context}[:phase2_lifetime_seconds]")
        Hearth::Validator.validate!(input[:rekey_margin_time_seconds], ::Integer, context: "#{context}[:rekey_margin_time_seconds]")
        Hearth::Validator.validate!(input[:rekey_fuzz_percentage], ::Integer, context: "#{context}[:rekey_fuzz_percentage]")
        Hearth::Validator.validate!(input[:replay_window_size], ::Integer, context: "#{context}[:replay_window_size]")
        Hearth::Validator.validate!(input[:dpd_timeout_seconds], ::Integer, context: "#{context}[:dpd_timeout_seconds]")
        Hearth::Validator.validate!(input[:dpd_timeout_action], ::String, context: "#{context}[:dpd_timeout_action]")
        Validators::Phase1EncryptionAlgorithmsRequestList.validate!(input[:phase1_encryption_algorithms], context: "#{context}[:phase1_encryption_algorithms]") unless input[:phase1_encryption_algorithms].nil?
        Validators::Phase2EncryptionAlgorithmsRequestList.validate!(input[:phase2_encryption_algorithms], context: "#{context}[:phase2_encryption_algorithms]") unless input[:phase2_encryption_algorithms].nil?
        Validators::Phase1IntegrityAlgorithmsRequestList.validate!(input[:phase1_integrity_algorithms], context: "#{context}[:phase1_integrity_algorithms]") unless input[:phase1_integrity_algorithms].nil?
        Validators::Phase2IntegrityAlgorithmsRequestList.validate!(input[:phase2_integrity_algorithms], context: "#{context}[:phase2_integrity_algorithms]") unless input[:phase2_integrity_algorithms].nil?
        Validators::Phase1DHGroupNumbersRequestList.validate!(input[:phase1_dh_group_numbers], context: "#{context}[:phase1_dh_group_numbers]") unless input[:phase1_dh_group_numbers].nil?
        Validators::Phase2DHGroupNumbersRequestList.validate!(input[:phase2_dh_group_numbers], context: "#{context}[:phase2_dh_group_numbers]") unless input[:phase2_dh_group_numbers].nil?
        Validators::IKEVersionsRequestList.validate!(input[:ike_versions], context: "#{context}[:ike_versions]") unless input[:ike_versions].nil?
        Hearth::Validator.validate!(input[:startup_action], ::String, context: "#{context}[:startup_action]")
      end
    end

    class MonitorInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitorInstancesInput, context: context)
        Validators::InstanceIdStringList.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class MoveAddressToVpcInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MoveAddressToVpcInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:public_ip], ::String, context: "#{context}[:public_ip]")
      end
    end

    class MoveByoipCidrToIpamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MoveByoipCidrToIpamInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
        Hearth::Validator.validate!(input[:ipam_pool_id], ::String, context: "#{context}[:ipam_pool_id]")
        Hearth::Validator.validate!(input[:ipam_pool_owner], ::String, context: "#{context}[:ipam_pool_owner]")
      end
    end

    class NatGatewayIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NetworkAclIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NetworkInsightsAccessScopeAnalysisIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NetworkInsightsAccessScopeIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NetworkInsightsAnalysisIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NetworkInsightsPathIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NetworkInterfaceAttachmentChanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkInterfaceAttachmentChanges, context: context)
        Hearth::Validator.validate!(input[:attachment_id], ::String, context: "#{context}[:attachment_id]")
        Hearth::Validator.validate!(input[:delete_on_termination], ::TrueClass, ::FalseClass, context: "#{context}[:delete_on_termination]")
      end
    end

    class NetworkInterfaceCount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkInterfaceCount, context: context)
        Hearth::Validator.validate!(input[:min], ::Integer, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class NetworkInterfaceCountRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkInterfaceCountRequest, context: context)
        Hearth::Validator.validate!(input[:min], ::Integer, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class NetworkInterfaceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NetworkInterfacePermissionIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NewDhcpConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NewDhcpConfiguration, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Validators::ValueStringList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class NewDhcpConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NewDhcpConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OccurrenceDayRequestSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class OnDemandOptionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OnDemandOptionsRequest, context: context)
        Hearth::Validator.validate!(input[:allocation_strategy], ::String, context: "#{context}[:allocation_strategy]")
        Validators::CapacityReservationOptionsRequest.validate!(input[:capacity_reservation_options], context: "#{context}[:capacity_reservation_options]") unless input[:capacity_reservation_options].nil?
        Hearth::Validator.validate!(input[:single_instance_type], ::TrueClass, ::FalseClass, context: "#{context}[:single_instance_type]")
        Hearth::Validator.validate!(input[:single_availability_zone], ::TrueClass, ::FalseClass, context: "#{context}[:single_availability_zone]")
        Hearth::Validator.validate!(input[:min_target_capacity], ::Integer, context: "#{context}[:min_target_capacity]")
        Hearth::Validator.validate!(input[:max_total_price], ::String, context: "#{context}[:max_total_price]")
      end
    end

    class OrganizationArnStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OrganizationalUnitArnStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OwnerStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PacketHeaderStatementRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PacketHeaderStatementRequest, context: context)
        Validators::ValueStringList.validate!(input[:source_addresses], context: "#{context}[:source_addresses]") unless input[:source_addresses].nil?
        Validators::ValueStringList.validate!(input[:destination_addresses], context: "#{context}[:destination_addresses]") unless input[:destination_addresses].nil?
        Validators::ValueStringList.validate!(input[:source_ports], context: "#{context}[:source_ports]") unless input[:source_ports].nil?
        Validators::ValueStringList.validate!(input[:destination_ports], context: "#{context}[:destination_ports]") unless input[:destination_ports].nil?
        Validators::ValueStringList.validate!(input[:source_prefix_lists], context: "#{context}[:source_prefix_lists]") unless input[:source_prefix_lists].nil?
        Validators::ValueStringList.validate!(input[:destination_prefix_lists], context: "#{context}[:destination_prefix_lists]") unless input[:destination_prefix_lists].nil?
        Validators::ProtocolList.validate!(input[:protocols], context: "#{context}[:protocols]") unless input[:protocols].nil?
      end
    end

    class PathStatementRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PathStatementRequest, context: context)
        Validators::PacketHeaderStatementRequest.validate!(input[:packet_header_statement], context: "#{context}[:packet_header_statement]") unless input[:packet_header_statement].nil?
        Validators::ResourceStatementRequest.validate!(input[:resource_statement], context: "#{context}[:resource_statement]") unless input[:resource_statement].nil?
      end
    end

    class PeeringConnectionOptionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PeeringConnectionOptionsRequest, context: context)
        Hearth::Validator.validate!(input[:allow_dns_resolution_from_remote_vpc], ::TrueClass, ::FalseClass, context: "#{context}[:allow_dns_resolution_from_remote_vpc]")
        Hearth::Validator.validate!(input[:allow_egress_from_local_classic_link_to_remote_vpc], ::TrueClass, ::FalseClass, context: "#{context}[:allow_egress_from_local_classic_link_to_remote_vpc]")
        Hearth::Validator.validate!(input[:allow_egress_from_local_vpc_to_remote_classic_link], ::TrueClass, ::FalseClass, context: "#{context}[:allow_egress_from_local_vpc_to_remote_classic_link]")
      end
    end

    class Phase1DHGroupNumbersRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Phase1DHGroupNumbersRequestListValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Phase1DHGroupNumbersRequestListValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Phase1DHGroupNumbersRequestListValue, context: context)
        Hearth::Validator.validate!(input[:value], ::Integer, context: "#{context}[:value]")
      end
    end

    class Phase1EncryptionAlgorithmsRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Phase1EncryptionAlgorithmsRequestListValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Phase1EncryptionAlgorithmsRequestListValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Phase1EncryptionAlgorithmsRequestListValue, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Phase1IntegrityAlgorithmsRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Phase1IntegrityAlgorithmsRequestListValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Phase1IntegrityAlgorithmsRequestListValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Phase1IntegrityAlgorithmsRequestListValue, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Phase2DHGroupNumbersRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Phase2DHGroupNumbersRequestListValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Phase2DHGroupNumbersRequestListValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Phase2DHGroupNumbersRequestListValue, context: context)
        Hearth::Validator.validate!(input[:value], ::Integer, context: "#{context}[:value]")
      end
    end

    class Phase2EncryptionAlgorithmsRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Phase2EncryptionAlgorithmsRequestListValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Phase2EncryptionAlgorithmsRequestListValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Phase2EncryptionAlgorithmsRequestListValue, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Phase2IntegrityAlgorithmsRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Phase2IntegrityAlgorithmsRequestListValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Phase2IntegrityAlgorithmsRequestListValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Phase2IntegrityAlgorithmsRequestListValue, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Placement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Placement, context: context)
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:affinity], ::String, context: "#{context}[:affinity]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:partition_number], ::Integer, context: "#{context}[:partition_number]")
        Hearth::Validator.validate!(input[:host_id], ::String, context: "#{context}[:host_id]")
        Hearth::Validator.validate!(input[:tenancy], ::String, context: "#{context}[:tenancy]")
        Hearth::Validator.validate!(input[:spread_domain], ::String, context: "#{context}[:spread_domain]")
        Hearth::Validator.validate!(input[:host_resource_group_arn], ::String, context: "#{context}[:host_resource_group_arn]")
      end
    end

    class PlacementGroupIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PlacementGroupStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PortRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortRange, context: context)
        Hearth::Validator.validate!(input[:from], ::Integer, context: "#{context}[:from]")
        Hearth::Validator.validate!(input[:to], ::Integer, context: "#{context}[:to]")
      end
    end

    class PrefixListId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrefixListId, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:prefix_list_id], ::String, context: "#{context}[:prefix_list_id]")
      end
    end

    class PrefixListIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PrefixListId.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PrefixListResourceIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PriceScheduleSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PriceScheduleSpecification, context: context)
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Hearth::Validator.validate!(input[:price], ::Float, context: "#{context}[:price]")
        Hearth::Validator.validate!(input[:term], ::Integer, context: "#{context}[:term]")
      end
    end

    class PriceScheduleSpecificationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PriceScheduleSpecification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PrivateDnsNameOptionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrivateDnsNameOptionsRequest, context: context)
        Hearth::Validator.validate!(input[:hostname_type], ::String, context: "#{context}[:hostname_type]")
        Hearth::Validator.validate!(input[:enable_resource_name_dns_a_record], ::TrueClass, ::FalseClass, context: "#{context}[:enable_resource_name_dns_a_record]")
        Hearth::Validator.validate!(input[:enable_resource_name_dns_aaaa_record], ::TrueClass, ::FalseClass, context: "#{context}[:enable_resource_name_dns_aaaa_record]")
      end
    end

    class PrivateIpAddressConfigSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ScheduledInstancesPrivateIpAddressConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PrivateIpAddressSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrivateIpAddressSpecification, context: context)
        Hearth::Validator.validate!(input[:primary], ::TrueClass, ::FalseClass, context: "#{context}[:primary]")
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
      end
    end

    class PrivateIpAddressSpecificationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PrivateIpAddressSpecification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PrivateIpAddressStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProductCodeStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProductDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProtocolList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProvisionByoipCidrInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionByoipCidrInput, context: context)
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
        Validators::CidrAuthorizationContext.validate!(input[:cidr_authorization_context], context: "#{context}[:cidr_authorization_context]") unless input[:cidr_authorization_context].nil?
        Hearth::Validator.validate!(input[:publicly_advertisable], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_advertisable]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::TagSpecificationList.validate!(input[:pool_tag_specifications], context: "#{context}[:pool_tag_specifications]") unless input[:pool_tag_specifications].nil?
        Hearth::Validator.validate!(input[:multi_region], ::TrueClass, ::FalseClass, context: "#{context}[:multi_region]")
      end
    end

    class ProvisionIpamPoolCidrInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionIpamPoolCidrInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:ipam_pool_id], ::String, context: "#{context}[:ipam_pool_id]")
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
        Validators::IpamCidrAuthorizationContext.validate!(input[:cidr_authorization_context], context: "#{context}[:cidr_authorization_context]") unless input[:cidr_authorization_context].nil?
      end
    end

    class ProvisionPublicIpv4PoolCidrInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionPublicIpv4PoolCidrInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:ipam_pool_id], ::String, context: "#{context}[:ipam_pool_id]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:netmask_length], ::Integer, context: "#{context}[:netmask_length]")
      end
    end

    class PublicIpStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PublicIpv4PoolIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PurchaseHostReservationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseHostReservationInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Validators::RequestHostIdSet.validate!(input[:host_id_set], context: "#{context}[:host_id_set]") unless input[:host_id_set].nil?
        Hearth::Validator.validate!(input[:limit_price], ::String, context: "#{context}[:limit_price]")
        Hearth::Validator.validate!(input[:offering_id], ::String, context: "#{context}[:offering_id]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class PurchaseRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseRequest, context: context)
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        Hearth::Validator.validate!(input[:purchase_token], ::String, context: "#{context}[:purchase_token]")
      end
    end

    class PurchaseRequestSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PurchaseRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PurchaseReservedInstancesOfferingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseReservedInstancesOfferingInput, context: context)
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        Hearth::Validator.validate!(input[:reserved_instances_offering_id], ::String, context: "#{context}[:reserved_instances_offering_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::ReservedInstanceLimitPrice.validate!(input[:limit_price], context: "#{context}[:limit_price]") unless input[:limit_price].nil?
        Hearth::Validator.validate!(input[:purchase_time], ::Time, context: "#{context}[:purchase_time]")
      end
    end

    class PurchaseScheduledInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseScheduledInstancesInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::PurchaseRequestSet.validate!(input[:purchase_requests], context: "#{context}[:purchase_requests]") unless input[:purchase_requests].nil?
      end
    end

    class ReasonCodesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RebootInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootInstancesInput, context: context)
        Validators::InstanceIdStringList.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class RegionNameStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RegionNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RegisterImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterImageInput, context: context)
        Hearth::Validator.validate!(input[:image_location], ::String, context: "#{context}[:image_location]")
        Hearth::Validator.validate!(input[:architecture], ::String, context: "#{context}[:architecture]")
        Validators::BlockDeviceMappingRequestList.validate!(input[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless input[:block_device_mappings].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:ena_support], ::TrueClass, ::FalseClass, context: "#{context}[:ena_support]")
        Hearth::Validator.validate!(input[:kernel_id], ::String, context: "#{context}[:kernel_id]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Validators::BillingProductList.validate!(input[:billing_products], context: "#{context}[:billing_products]") unless input[:billing_products].nil?
        Hearth::Validator.validate!(input[:ramdisk_id], ::String, context: "#{context}[:ramdisk_id]")
        Hearth::Validator.validate!(input[:root_device_name], ::String, context: "#{context}[:root_device_name]")
        Hearth::Validator.validate!(input[:sriov_net_support], ::String, context: "#{context}[:sriov_net_support]")
        Hearth::Validator.validate!(input[:virtualization_type], ::String, context: "#{context}[:virtualization_type]")
        Hearth::Validator.validate!(input[:boot_mode], ::String, context: "#{context}[:boot_mode]")
      end
    end

    class RegisterInstanceEventNotificationAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterInstanceEventNotificationAttributesInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::RegisterInstanceTagAttributeRequest.validate!(input[:instance_tag_attribute], context: "#{context}[:instance_tag_attribute]") unless input[:instance_tag_attribute].nil?
      end
    end

    class RegisterInstanceTagAttributeRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterInstanceTagAttributeRequest, context: context)
        Hearth::Validator.validate!(input[:include_all_tags_of_instance], ::TrueClass, ::FalseClass, context: "#{context}[:include_all_tags_of_instance]")
        Validators::InstanceTagKeySet.validate!(input[:instance_tag_keys], context: "#{context}[:instance_tag_keys]") unless input[:instance_tag_keys].nil?
      end
    end

    class RegisterTransitGatewayMulticastGroupMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterTransitGatewayMulticastGroupMembersInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_multicast_domain_id], ::String, context: "#{context}[:transit_gateway_multicast_domain_id]")
        Hearth::Validator.validate!(input[:group_ip_address], ::String, context: "#{context}[:group_ip_address]")
        Validators::TransitGatewayNetworkInterfaceIdList.validate!(input[:network_interface_ids], context: "#{context}[:network_interface_ids]") unless input[:network_interface_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class RegisterTransitGatewayMulticastGroupSourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterTransitGatewayMulticastGroupSourcesInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_multicast_domain_id], ::String, context: "#{context}[:transit_gateway_multicast_domain_id]")
        Hearth::Validator.validate!(input[:group_ip_address], ::String, context: "#{context}[:group_ip_address]")
        Validators::TransitGatewayNetworkInterfaceIdList.validate!(input[:network_interface_ids], context: "#{context}[:network_interface_ids]") unless input[:network_interface_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class RejectTransitGatewayMulticastDomainAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectTransitGatewayMulticastDomainAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_multicast_domain_id], ::String, context: "#{context}[:transit_gateway_multicast_domain_id]")
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Validators::ValueStringList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class RejectTransitGatewayPeeringAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectTransitGatewayPeeringAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class RejectTransitGatewayVpcAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectTransitGatewayVpcAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class RejectVpcEndpointConnectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectVpcEndpointConnectionsInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Validators::VpcEndpointIdList.validate!(input[:vpc_endpoint_ids], context: "#{context}[:vpc_endpoint_ids]") unless input[:vpc_endpoint_ids].nil?
      end
    end

    class RejectVpcPeeringConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectVpcPeeringConnectionInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:vpc_peering_connection_id], ::String, context: "#{context}[:vpc_peering_connection_id]")
      end
    end

    class ReleaseAddressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReleaseAddressInput, context: context)
        Hearth::Validator.validate!(input[:allocation_id], ::String, context: "#{context}[:allocation_id]")
        Hearth::Validator.validate!(input[:public_ip], ::String, context: "#{context}[:public_ip]")
        Hearth::Validator.validate!(input[:network_border_group], ::String, context: "#{context}[:network_border_group]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ReleaseHostsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReleaseHostsInput, context: context)
        Validators::RequestHostIdList.validate!(input[:host_ids], context: "#{context}[:host_ids]") unless input[:host_ids].nil?
      end
    end

    class ReleaseIpamPoolAllocationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReleaseIpamPoolAllocationInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:ipam_pool_id], ::String, context: "#{context}[:ipam_pool_id]")
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
        Hearth::Validator.validate!(input[:ipam_pool_allocation_id], ::String, context: "#{context}[:ipam_pool_allocation_id]")
      end
    end

    class RemoveIpamOperatingRegion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveIpamOperatingRegion, context: context)
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
      end
    end

    class RemoveIpamOperatingRegionSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RemoveIpamOperatingRegion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RemovePrefixListEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RemovePrefixListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RemovePrefixListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemovePrefixListEntry, context: context)
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
      end
    end

    class ReplaceIamInstanceProfileAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplaceIamInstanceProfileAssociationInput, context: context)
        Validators::IamInstanceProfileSpecification.validate!(input[:iam_instance_profile], context: "#{context}[:iam_instance_profile]") unless input[:iam_instance_profile].nil?
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
      end
    end

    class ReplaceNetworkAclAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplaceNetworkAclAssociationInput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:network_acl_id], ::String, context: "#{context}[:network_acl_id]")
      end
    end

    class ReplaceNetworkAclEntryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplaceNetworkAclEntryInput, context: context)
        Hearth::Validator.validate!(input[:cidr_block], ::String, context: "#{context}[:cidr_block]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:egress], ::TrueClass, ::FalseClass, context: "#{context}[:egress]")
        Validators::IcmpTypeCode.validate!(input[:icmp_type_code], context: "#{context}[:icmp_type_code]") unless input[:icmp_type_code].nil?
        Hearth::Validator.validate!(input[:ipv6_cidr_block], ::String, context: "#{context}[:ipv6_cidr_block]")
        Hearth::Validator.validate!(input[:network_acl_id], ::String, context: "#{context}[:network_acl_id]")
        Validators::PortRange.validate!(input[:port_range], context: "#{context}[:port_range]") unless input[:port_range].nil?
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:rule_action], ::String, context: "#{context}[:rule_action]")
        Hearth::Validator.validate!(input[:rule_number], ::Integer, context: "#{context}[:rule_number]")
      end
    end

    class ReplaceRootVolumeTaskIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReplaceRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplaceRouteInput, context: context)
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
        Hearth::Validator.validate!(input[:destination_ipv6_cidr_block], ::String, context: "#{context}[:destination_ipv6_cidr_block]")
        Hearth::Validator.validate!(input[:destination_prefix_list_id], ::String, context: "#{context}[:destination_prefix_list_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:vpc_endpoint_id], ::String, context: "#{context}[:vpc_endpoint_id]")
        Hearth::Validator.validate!(input[:egress_only_internet_gateway_id], ::String, context: "#{context}[:egress_only_internet_gateway_id]")
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:local_target], ::TrueClass, ::FalseClass, context: "#{context}[:local_target]")
        Hearth::Validator.validate!(input[:nat_gateway_id], ::String, context: "#{context}[:nat_gateway_id]")
        Hearth::Validator.validate!(input[:transit_gateway_id], ::String, context: "#{context}[:transit_gateway_id]")
        Hearth::Validator.validate!(input[:local_gateway_id], ::String, context: "#{context}[:local_gateway_id]")
        Hearth::Validator.validate!(input[:carrier_gateway_id], ::String, context: "#{context}[:carrier_gateway_id]")
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:route_table_id], ::String, context: "#{context}[:route_table_id]")
        Hearth::Validator.validate!(input[:vpc_peering_connection_id], ::String, context: "#{context}[:vpc_peering_connection_id]")
        Hearth::Validator.validate!(input[:core_network_arn], ::String, context: "#{context}[:core_network_arn]")
      end
    end

    class ReplaceRouteTableAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplaceRouteTableAssociationInput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:route_table_id], ::String, context: "#{context}[:route_table_id]")
      end
    end

    class ReplaceTransitGatewayRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplaceTransitGatewayRouteInput, context: context)
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
        Hearth::Validator.validate!(input[:transit_gateway_route_table_id], ::String, context: "#{context}[:transit_gateway_route_table_id]")
        Hearth::Validator.validate!(input[:transit_gateway_attachment_id], ::String, context: "#{context}[:transit_gateway_attachment_id]")
        Hearth::Validator.validate!(input[:blackhole], ::TrueClass, ::FalseClass, context: "#{context}[:blackhole]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ReportInstanceStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportInstanceStatusInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Validators::InstanceIdStringList.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
        Validators::ReasonCodesList.validate!(input[:reason_codes], context: "#{context}[:reason_codes]") unless input[:reason_codes].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class RequestHostIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RequestHostIdSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RequestInstanceTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RequestIpamResourceTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestIpamResourceTag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class RequestIpamResourceTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RequestIpamResourceTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RequestLaunchTemplateData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestLaunchTemplateData, context: context)
        Hearth::Validator.validate!(input[:kernel_id], ::String, context: "#{context}[:kernel_id]")
        Hearth::Validator.validate!(input[:ebs_optimized], ::TrueClass, ::FalseClass, context: "#{context}[:ebs_optimized]")
        Validators::LaunchTemplateIamInstanceProfileSpecificationRequest.validate!(input[:iam_instance_profile], context: "#{context}[:iam_instance_profile]") unless input[:iam_instance_profile].nil?
        Validators::LaunchTemplateBlockDeviceMappingRequestList.validate!(input[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless input[:block_device_mappings].nil?
        Validators::LaunchTemplateInstanceNetworkInterfaceSpecificationRequestList.validate!(input[:network_interfaces], context: "#{context}[:network_interfaces]") unless input[:network_interfaces].nil?
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Validators::LaunchTemplatesMonitoringRequest.validate!(input[:monitoring], context: "#{context}[:monitoring]") unless input[:monitoring].nil?
        Validators::LaunchTemplatePlacementRequest.validate!(input[:placement], context: "#{context}[:placement]") unless input[:placement].nil?
        Hearth::Validator.validate!(input[:ram_disk_id], ::String, context: "#{context}[:ram_disk_id]")
        Hearth::Validator.validate!(input[:disable_api_termination], ::TrueClass, ::FalseClass, context: "#{context}[:disable_api_termination]")
        Hearth::Validator.validate!(input[:instance_initiated_shutdown_behavior], ::String, context: "#{context}[:instance_initiated_shutdown_behavior]")
        Hearth::Validator.validate!(input[:user_data], ::String, context: "#{context}[:user_data]")
        Validators::LaunchTemplateTagSpecificationRequestList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Validators::ElasticGpuSpecificationList.validate!(input[:elastic_gpu_specifications], context: "#{context}[:elastic_gpu_specifications]") unless input[:elastic_gpu_specifications].nil?
        Validators::LaunchTemplateElasticInferenceAcceleratorList.validate!(input[:elastic_inference_accelerators], context: "#{context}[:elastic_inference_accelerators]") unless input[:elastic_inference_accelerators].nil?
        Validators::SecurityGroupIdStringList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Validators::SecurityGroupStringList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Validators::LaunchTemplateInstanceMarketOptionsRequest.validate!(input[:instance_market_options], context: "#{context}[:instance_market_options]") unless input[:instance_market_options].nil?
        Validators::CreditSpecificationRequest.validate!(input[:credit_specification], context: "#{context}[:credit_specification]") unless input[:credit_specification].nil?
        Validators::LaunchTemplateCpuOptionsRequest.validate!(input[:cpu_options], context: "#{context}[:cpu_options]") unless input[:cpu_options].nil?
        Validators::LaunchTemplateCapacityReservationSpecificationRequest.validate!(input[:capacity_reservation_specification], context: "#{context}[:capacity_reservation_specification]") unless input[:capacity_reservation_specification].nil?
        Validators::LaunchTemplateLicenseSpecificationListRequest.validate!(input[:license_specifications], context: "#{context}[:license_specifications]") unless input[:license_specifications].nil?
        Validators::LaunchTemplateHibernationOptionsRequest.validate!(input[:hibernation_options], context: "#{context}[:hibernation_options]") unless input[:hibernation_options].nil?
        Validators::LaunchTemplateInstanceMetadataOptionsRequest.validate!(input[:metadata_options], context: "#{context}[:metadata_options]") unless input[:metadata_options].nil?
        Validators::LaunchTemplateEnclaveOptionsRequest.validate!(input[:enclave_options], context: "#{context}[:enclave_options]") unless input[:enclave_options].nil?
        Validators::InstanceRequirementsRequest.validate!(input[:instance_requirements], context: "#{context}[:instance_requirements]") unless input[:instance_requirements].nil?
        Validators::LaunchTemplatePrivateDnsNameOptionsRequest.validate!(input[:private_dns_name_options], context: "#{context}[:private_dns_name_options]") unless input[:private_dns_name_options].nil?
      end
    end

    class RequestSpotFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestSpotFleetInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::SpotFleetRequestConfigData.validate!(input[:spot_fleet_request_config], context: "#{context}[:spot_fleet_request_config]") unless input[:spot_fleet_request_config].nil?
      end
    end

    class RequestSpotInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestSpotInstancesInput, context: context)
        Hearth::Validator.validate!(input[:availability_zone_group], ::String, context: "#{context}[:availability_zone_group]")
        Hearth::Validator.validate!(input[:block_duration_minutes], ::Integer, context: "#{context}[:block_duration_minutes]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        Hearth::Validator.validate!(input[:launch_group], ::String, context: "#{context}[:launch_group]")
        Validators::RequestSpotLaunchSpecification.validate!(input[:launch_specification], context: "#{context}[:launch_specification]") unless input[:launch_specification].nil?
        Hearth::Validator.validate!(input[:spot_price], ::String, context: "#{context}[:spot_price]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:valid_from], ::Time, context: "#{context}[:valid_from]")
        Hearth::Validator.validate!(input[:valid_until], ::Time, context: "#{context}[:valid_until]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:instance_interruption_behavior], ::String, context: "#{context}[:instance_interruption_behavior]")
      end
    end

    class RequestSpotLaunchSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestSpotLaunchSpecification, context: context)
        Validators::RequestSpotLaunchSpecificationSecurityGroupIdList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Validators::RequestSpotLaunchSpecificationSecurityGroupList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:addressing_type], ::String, context: "#{context}[:addressing_type]")
        Validators::BlockDeviceMappingList.validate!(input[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless input[:block_device_mappings].nil?
        Hearth::Validator.validate!(input[:ebs_optimized], ::TrueClass, ::FalseClass, context: "#{context}[:ebs_optimized]")
        Validators::IamInstanceProfileSpecification.validate!(input[:iam_instance_profile], context: "#{context}[:iam_instance_profile]") unless input[:iam_instance_profile].nil?
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:kernel_id], ::String, context: "#{context}[:kernel_id]")
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Validators::RunInstancesMonitoringEnabled.validate!(input[:monitoring], context: "#{context}[:monitoring]") unless input[:monitoring].nil?
        Validators::InstanceNetworkInterfaceSpecificationList.validate!(input[:network_interfaces], context: "#{context}[:network_interfaces]") unless input[:network_interfaces].nil?
        Validators::SpotPlacement.validate!(input[:placement], context: "#{context}[:placement]") unless input[:placement].nil?
        Hearth::Validator.validate!(input[:ramdisk_id], ::String, context: "#{context}[:ramdisk_id]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:user_data], ::String, context: "#{context}[:user_data]")
      end
    end

    class RequestSpotLaunchSpecificationSecurityGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RequestSpotLaunchSpecificationSecurityGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReservationFleetInstanceSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservationFleetInstanceSpecification, context: context)
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:instance_platform], ::String, context: "#{context}[:instance_platform]")
        Hearth::Validator.validate!(input[:weight], ::Float, context: "#{context}[:weight]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:availability_zone_id], ::String, context: "#{context}[:availability_zone_id]")
        Hearth::Validator.validate!(input[:ebs_optimized], ::TrueClass, ::FalseClass, context: "#{context}[:ebs_optimized]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
      end
    end

    class ReservationFleetInstanceSpecificationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReservationFleetInstanceSpecification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReservedInstanceIdSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReservedInstanceLimitPrice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedInstanceLimitPrice, context: context)
        Hearth::Validator.validate!(input[:amount], ::Float, context: "#{context}[:amount]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
      end
    end

    class ReservedInstancesConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedInstancesConfiguration, context: context)
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
      end
    end

    class ReservedInstancesConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReservedInstancesConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReservedInstancesIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReservedInstancesModificationIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReservedInstancesOfferingIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResetAddressAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetAddressAttributeInput, context: context)
        Hearth::Validator.validate!(input[:allocation_id], ::String, context: "#{context}[:allocation_id]")
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ResetEbsDefaultKmsKeyIdInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetEbsDefaultKmsKeyIdInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ResetFpgaImageAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetFpgaImageAttributeInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:fpga_image_id], ::String, context: "#{context}[:fpga_image_id]")
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
      end
    end

    class ResetImageAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetImageAttributeInput, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ResetInstanceAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetInstanceAttributeInput, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class ResetNetworkInterfaceAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetNetworkInterfaceAttributeInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:source_dest_check], ::String, context: "#{context}[:source_dest_check]")
      end
    end

    class ResetSnapshotAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetSnapshotAttributeInput, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ResourceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceStatementRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceStatementRequest, context: context)
        Validators::ValueStringList.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Validators::ValueStringList.validate!(input[:resource_types], context: "#{context}[:resource_types]") unless input[:resource_types].nil?
      end
    end

    class RestorableByStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RestoreAddressToClassicInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreAddressToClassicInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:public_ip], ::String, context: "#{context}[:public_ip]")
      end
    end

    class RestoreManagedPrefixListVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreManagedPrefixListVersionInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:prefix_list_id], ::String, context: "#{context}[:prefix_list_id]")
        Hearth::Validator.validate!(input[:previous_version], ::Integer, context: "#{context}[:previous_version]")
        Hearth::Validator.validate!(input[:current_version], ::Integer, context: "#{context}[:current_version]")
      end
    end

    class RestoreSnapshotFromRecycleBinInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreSnapshotFromRecycleBinInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class RestoreSnapshotTierInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreSnapshotTierInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:temporary_restore_days], ::Integer, context: "#{context}[:temporary_restore_days]")
        Hearth::Validator.validate!(input[:permanent_restore], ::TrueClass, ::FalseClass, context: "#{context}[:permanent_restore]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class RevokeClientVpnIngressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeClientVpnIngressInput, context: context)
        Hearth::Validator.validate!(input[:client_vpn_endpoint_id], ::String, context: "#{context}[:client_vpn_endpoint_id]")
        Hearth::Validator.validate!(input[:target_network_cidr], ::String, context: "#{context}[:target_network_cidr]")
        Hearth::Validator.validate!(input[:access_group_id], ::String, context: "#{context}[:access_group_id]")
        Hearth::Validator.validate!(input[:revoke_all_groups], ::TrueClass, ::FalseClass, context: "#{context}[:revoke_all_groups]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class RevokeSecurityGroupEgressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeSecurityGroupEgressInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Validators::IpPermissionList.validate!(input[:ip_permissions], context: "#{context}[:ip_permissions]") unless input[:ip_permissions].nil?
        Validators::SecurityGroupRuleIdList.validate!(input[:security_group_rule_ids], context: "#{context}[:security_group_rule_ids]") unless input[:security_group_rule_ids].nil?
        Hearth::Validator.validate!(input[:cidr_ip], ::String, context: "#{context}[:cidr_ip]")
        Hearth::Validator.validate!(input[:from_port], ::Integer, context: "#{context}[:from_port]")
        Hearth::Validator.validate!(input[:ip_protocol], ::String, context: "#{context}[:ip_protocol]")
        Hearth::Validator.validate!(input[:to_port], ::Integer, context: "#{context}[:to_port]")
        Hearth::Validator.validate!(input[:source_security_group_name], ::String, context: "#{context}[:source_security_group_name]")
        Hearth::Validator.validate!(input[:source_security_group_owner_id], ::String, context: "#{context}[:source_security_group_owner_id]")
      end
    end

    class RevokeSecurityGroupIngressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeSecurityGroupIngressInput, context: context)
        Hearth::Validator.validate!(input[:cidr_ip], ::String, context: "#{context}[:cidr_ip]")
        Hearth::Validator.validate!(input[:from_port], ::Integer, context: "#{context}[:from_port]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Validators::IpPermissionList.validate!(input[:ip_permissions], context: "#{context}[:ip_permissions]") unless input[:ip_permissions].nil?
        Hearth::Validator.validate!(input[:ip_protocol], ::String, context: "#{context}[:ip_protocol]")
        Hearth::Validator.validate!(input[:source_security_group_name], ::String, context: "#{context}[:source_security_group_name]")
        Hearth::Validator.validate!(input[:source_security_group_owner_id], ::String, context: "#{context}[:source_security_group_owner_id]")
        Hearth::Validator.validate!(input[:to_port], ::Integer, context: "#{context}[:to_port]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::SecurityGroupRuleIdList.validate!(input[:security_group_rule_ids], context: "#{context}[:security_group_rule_ids]") unless input[:security_group_rule_ids].nil?
      end
    end

    class RouteTableIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RunInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RunInstancesInput, context: context)
        Validators::BlockDeviceMappingRequestList.validate!(input[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless input[:block_device_mappings].nil?
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:ipv6_address_count], ::Integer, context: "#{context}[:ipv6_address_count]")
        Validators::InstanceIpv6AddressList.validate!(input[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless input[:ipv6_addresses].nil?
        Hearth::Validator.validate!(input[:kernel_id], ::String, context: "#{context}[:kernel_id]")
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Hearth::Validator.validate!(input[:max_count], ::Integer, context: "#{context}[:max_count]")
        Hearth::Validator.validate!(input[:min_count], ::Integer, context: "#{context}[:min_count]")
        Validators::RunInstancesMonitoringEnabled.validate!(input[:monitoring], context: "#{context}[:monitoring]") unless input[:monitoring].nil?
        Validators::Placement.validate!(input[:placement], context: "#{context}[:placement]") unless input[:placement].nil?
        Hearth::Validator.validate!(input[:ramdisk_id], ::String, context: "#{context}[:ramdisk_id]")
        Validators::SecurityGroupIdStringList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Validators::SecurityGroupStringList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:user_data], ::String, context: "#{context}[:user_data]")
        Hearth::Validator.validate!(input[:additional_info], ::String, context: "#{context}[:additional_info]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:disable_api_termination], ::TrueClass, ::FalseClass, context: "#{context}[:disable_api_termination]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:ebs_optimized], ::TrueClass, ::FalseClass, context: "#{context}[:ebs_optimized]")
        Validators::IamInstanceProfileSpecification.validate!(input[:iam_instance_profile], context: "#{context}[:iam_instance_profile]") unless input[:iam_instance_profile].nil?
        Hearth::Validator.validate!(input[:instance_initiated_shutdown_behavior], ::String, context: "#{context}[:instance_initiated_shutdown_behavior]")
        Validators::InstanceNetworkInterfaceSpecificationList.validate!(input[:network_interfaces], context: "#{context}[:network_interfaces]") unless input[:network_interfaces].nil?
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
        Validators::ElasticGpuSpecifications.validate!(input[:elastic_gpu_specification], context: "#{context}[:elastic_gpu_specification]") unless input[:elastic_gpu_specification].nil?
        Validators::ElasticInferenceAccelerators.validate!(input[:elastic_inference_accelerators], context: "#{context}[:elastic_inference_accelerators]") unless input[:elastic_inference_accelerators].nil?
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Validators::LaunchTemplateSpecification.validate!(input[:launch_template], context: "#{context}[:launch_template]") unless input[:launch_template].nil?
        Validators::InstanceMarketOptionsRequest.validate!(input[:instance_market_options], context: "#{context}[:instance_market_options]") unless input[:instance_market_options].nil?
        Validators::CreditSpecificationRequest.validate!(input[:credit_specification], context: "#{context}[:credit_specification]") unless input[:credit_specification].nil?
        Validators::CpuOptionsRequest.validate!(input[:cpu_options], context: "#{context}[:cpu_options]") unless input[:cpu_options].nil?
        Validators::CapacityReservationSpecification.validate!(input[:capacity_reservation_specification], context: "#{context}[:capacity_reservation_specification]") unless input[:capacity_reservation_specification].nil?
        Validators::HibernationOptionsRequest.validate!(input[:hibernation_options], context: "#{context}[:hibernation_options]") unless input[:hibernation_options].nil?
        Validators::LicenseSpecificationListRequest.validate!(input[:license_specifications], context: "#{context}[:license_specifications]") unless input[:license_specifications].nil?
        Validators::InstanceMetadataOptionsRequest.validate!(input[:metadata_options], context: "#{context}[:metadata_options]") unless input[:metadata_options].nil?
        Validators::EnclaveOptionsRequest.validate!(input[:enclave_options], context: "#{context}[:enclave_options]") unless input[:enclave_options].nil?
        Validators::PrivateDnsNameOptionsRequest.validate!(input[:private_dns_name_options], context: "#{context}[:private_dns_name_options]") unless input[:private_dns_name_options].nil?
      end
    end

    class RunInstancesMonitoringEnabled
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RunInstancesMonitoringEnabled, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class RunScheduledInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RunScheduledInstancesInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        Validators::ScheduledInstancesLaunchSpecification.validate!(input[:launch_specification], context: "#{context}[:launch_specification]") unless input[:launch_specification].nil?
        Hearth::Validator.validate!(input[:scheduled_instance_id], ::String, context: "#{context}[:scheduled_instance_id]")
      end
    end

    class S3ObjectTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ObjectTag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class S3ObjectTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::S3ObjectTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3Storage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Storage, context: context)
        Hearth::Validator.validate!(input[:aws_access_key_id], ::String, context: "#{context}[:aws_access_key_id]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:upload_policy], ::String, context: "#{context}[:upload_policy]")
        Hearth::Validator.validate!(input[:upload_policy_signature], ::String, context: "#{context}[:upload_policy_signature]")
      end
    end

    class ScheduledInstanceIdRequestSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ScheduledInstanceRecurrenceRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledInstanceRecurrenceRequest, context: context)
        Hearth::Validator.validate!(input[:frequency], ::String, context: "#{context}[:frequency]")
        Hearth::Validator.validate!(input[:interval], ::Integer, context: "#{context}[:interval]")
        Validators::OccurrenceDayRequestSet.validate!(input[:occurrence_days], context: "#{context}[:occurrence_days]") unless input[:occurrence_days].nil?
        Hearth::Validator.validate!(input[:occurrence_relative_to_end], ::TrueClass, ::FalseClass, context: "#{context}[:occurrence_relative_to_end]")
        Hearth::Validator.validate!(input[:occurrence_unit], ::String, context: "#{context}[:occurrence_unit]")
      end
    end

    class ScheduledInstancesBlockDeviceMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledInstancesBlockDeviceMapping, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Validators::ScheduledInstancesEbs.validate!(input[:ebs], context: "#{context}[:ebs]") unless input[:ebs].nil?
        Hearth::Validator.validate!(input[:no_device], ::String, context: "#{context}[:no_device]")
        Hearth::Validator.validate!(input[:virtual_name], ::String, context: "#{context}[:virtual_name]")
      end
    end

    class ScheduledInstancesBlockDeviceMappingSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ScheduledInstancesBlockDeviceMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScheduledInstancesEbs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledInstancesEbs, context: context)
        Hearth::Validator.validate!(input[:delete_on_termination], ::TrueClass, ::FalseClass, context: "#{context}[:delete_on_termination]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:volume_size], ::Integer, context: "#{context}[:volume_size]")
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
      end
    end

    class ScheduledInstancesIamInstanceProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledInstancesIamInstanceProfile, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
      end
    end

    class ScheduledInstancesIpv6Address
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledInstancesIpv6Address, context: context)
        Hearth::Validator.validate!(input[:ipv6_address], ::String, context: "#{context}[:ipv6_address]")
      end
    end

    class ScheduledInstancesIpv6AddressList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ScheduledInstancesIpv6Address.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScheduledInstancesLaunchSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledInstancesLaunchSpecification, context: context)
        Validators::ScheduledInstancesBlockDeviceMappingSet.validate!(input[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless input[:block_device_mappings].nil?
        Hearth::Validator.validate!(input[:ebs_optimized], ::TrueClass, ::FalseClass, context: "#{context}[:ebs_optimized]")
        Validators::ScheduledInstancesIamInstanceProfile.validate!(input[:iam_instance_profile], context: "#{context}[:iam_instance_profile]") unless input[:iam_instance_profile].nil?
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:kernel_id], ::String, context: "#{context}[:kernel_id]")
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Validators::ScheduledInstancesMonitoring.validate!(input[:monitoring], context: "#{context}[:monitoring]") unless input[:monitoring].nil?
        Validators::ScheduledInstancesNetworkInterfaceSet.validate!(input[:network_interfaces], context: "#{context}[:network_interfaces]") unless input[:network_interfaces].nil?
        Validators::ScheduledInstancesPlacement.validate!(input[:placement], context: "#{context}[:placement]") unless input[:placement].nil?
        Hearth::Validator.validate!(input[:ramdisk_id], ::String, context: "#{context}[:ramdisk_id]")
        Validators::ScheduledInstancesSecurityGroupIdSet.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:user_data], ::String, context: "#{context}[:user_data]")
      end
    end

    class ScheduledInstancesMonitoring
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledInstancesMonitoring, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class ScheduledInstancesNetworkInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledInstancesNetworkInterface, context: context)
        Hearth::Validator.validate!(input[:associate_public_ip_address], ::TrueClass, ::FalseClass, context: "#{context}[:associate_public_ip_address]")
        Hearth::Validator.validate!(input[:delete_on_termination], ::TrueClass, ::FalseClass, context: "#{context}[:delete_on_termination]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:device_index], ::Integer, context: "#{context}[:device_index]")
        Validators::ScheduledInstancesSecurityGroupIdSet.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:ipv6_address_count], ::Integer, context: "#{context}[:ipv6_address_count]")
        Validators::ScheduledInstancesIpv6AddressList.validate!(input[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless input[:ipv6_addresses].nil?
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
        Validators::PrivateIpAddressConfigSet.validate!(input[:private_ip_address_configs], context: "#{context}[:private_ip_address_configs]") unless input[:private_ip_address_configs].nil?
        Hearth::Validator.validate!(input[:secondary_private_ip_address_count], ::Integer, context: "#{context}[:secondary_private_ip_address_count]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
      end
    end

    class ScheduledInstancesNetworkInterfaceSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ScheduledInstancesNetworkInterface.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScheduledInstancesPlacement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledInstancesPlacement, context: context)
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
      end
    end

    class ScheduledInstancesPrivateIpAddressConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledInstancesPrivateIpAddressConfig, context: context)
        Hearth::Validator.validate!(input[:primary], ::TrueClass, ::FalseClass, context: "#{context}[:primary]")
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
      end
    end

    class ScheduledInstancesSecurityGroupIdSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SearchLocalGatewayRoutesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchLocalGatewayRoutesInput, context: context)
        Hearth::Validator.validate!(input[:local_gateway_route_table_id], ::String, context: "#{context}[:local_gateway_route_table_id]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class SearchTransitGatewayMulticastGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchTransitGatewayMulticastGroupsInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_multicast_domain_id], ::String, context: "#{context}[:transit_gateway_multicast_domain_id]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class SearchTransitGatewayRoutesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchTransitGatewayRoutesInput, context: context)
        Hearth::Validator.validate!(input[:transit_gateway_route_table_id], ::String, context: "#{context}[:transit_gateway_route_table_id]")
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class SecurityGroupIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SecurityGroupRuleDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityGroupRuleDescription, context: context)
        Hearth::Validator.validate!(input[:security_group_rule_id], ::String, context: "#{context}[:security_group_rule_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class SecurityGroupRuleDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SecurityGroupRuleDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SecurityGroupRuleIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SecurityGroupRuleRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityGroupRuleRequest, context: context)
        Hearth::Validator.validate!(input[:ip_protocol], ::String, context: "#{context}[:ip_protocol]")
        Hearth::Validator.validate!(input[:from_port], ::Integer, context: "#{context}[:from_port]")
        Hearth::Validator.validate!(input[:to_port], ::Integer, context: "#{context}[:to_port]")
        Hearth::Validator.validate!(input[:cidr_ipv4], ::String, context: "#{context}[:cidr_ipv4]")
        Hearth::Validator.validate!(input[:cidr_ipv6], ::String, context: "#{context}[:cidr_ipv6]")
        Hearth::Validator.validate!(input[:prefix_list_id], ::String, context: "#{context}[:prefix_list_id]")
        Hearth::Validator.validate!(input[:referenced_group_id], ::String, context: "#{context}[:referenced_group_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class SecurityGroupRuleUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityGroupRuleUpdate, context: context)
        Hearth::Validator.validate!(input[:security_group_rule_id], ::String, context: "#{context}[:security_group_rule_id]")
        Validators::SecurityGroupRuleRequest.validate!(input[:security_group_rule], context: "#{context}[:security_group_rule]") unless input[:security_group_rule].nil?
      end
    end

    class SecurityGroupRuleUpdateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SecurityGroupRuleUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SecurityGroupStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SendDiagnosticInterruptInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendDiagnosticInterruptInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class SlotDateTimeRangeRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotDateTimeRangeRequest, context: context)
        Hearth::Validator.validate!(input[:earliest_time], ::Time, context: "#{context}[:earliest_time]")
        Hearth::Validator.validate!(input[:latest_time], ::Time, context: "#{context}[:latest_time]")
      end
    end

    class SlotStartTimeRangeRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotStartTimeRangeRequest, context: context)
        Hearth::Validator.validate!(input[:earliest_time], ::Time, context: "#{context}[:earliest_time]")
        Hearth::Validator.validate!(input[:latest_time], ::Time, context: "#{context}[:latest_time]")
      end
    end

    class SnapshotDiskContainer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotDiskContainer, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Validators::UserBucket.validate!(input[:user_bucket], context: "#{context}[:user_bucket]") unless input[:user_bucket].nil?
      end
    end

    class SnapshotIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SpotCapacityRebalance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpotCapacityRebalance, context: context)
        Hearth::Validator.validate!(input[:replacement_strategy], ::String, context: "#{context}[:replacement_strategy]")
        Hearth::Validator.validate!(input[:termination_delay], ::Integer, context: "#{context}[:termination_delay]")
      end
    end

    class SpotFleetLaunchSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpotFleetLaunchSpecification, context: context)
        Validators::GroupIdentifierList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:addressing_type], ::String, context: "#{context}[:addressing_type]")
        Validators::BlockDeviceMappingList.validate!(input[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless input[:block_device_mappings].nil?
        Hearth::Validator.validate!(input[:ebs_optimized], ::TrueClass, ::FalseClass, context: "#{context}[:ebs_optimized]")
        Validators::IamInstanceProfileSpecification.validate!(input[:iam_instance_profile], context: "#{context}[:iam_instance_profile]") unless input[:iam_instance_profile].nil?
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:kernel_id], ::String, context: "#{context}[:kernel_id]")
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Validators::SpotFleetMonitoring.validate!(input[:monitoring], context: "#{context}[:monitoring]") unless input[:monitoring].nil?
        Validators::InstanceNetworkInterfaceSpecificationList.validate!(input[:network_interfaces], context: "#{context}[:network_interfaces]") unless input[:network_interfaces].nil?
        Validators::SpotPlacement.validate!(input[:placement], context: "#{context}[:placement]") unless input[:placement].nil?
        Hearth::Validator.validate!(input[:ramdisk_id], ::String, context: "#{context}[:ramdisk_id]")
        Hearth::Validator.validate!(input[:spot_price], ::String, context: "#{context}[:spot_price]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:user_data], ::String, context: "#{context}[:user_data]")
        Hearth::Validator.validate!(input[:weighted_capacity], ::Float, context: "#{context}[:weighted_capacity]")
        Validators::SpotFleetTagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Validators::InstanceRequirements.validate!(input[:instance_requirements], context: "#{context}[:instance_requirements]") unless input[:instance_requirements].nil?
      end
    end

    class SpotFleetMonitoring
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpotFleetMonitoring, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class SpotFleetRequestConfigData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpotFleetRequestConfigData, context: context)
        Hearth::Validator.validate!(input[:allocation_strategy], ::String, context: "#{context}[:allocation_strategy]")
        Hearth::Validator.validate!(input[:on_demand_allocation_strategy], ::String, context: "#{context}[:on_demand_allocation_strategy]")
        Validators::SpotMaintenanceStrategies.validate!(input[:spot_maintenance_strategies], context: "#{context}[:spot_maintenance_strategies]") unless input[:spot_maintenance_strategies].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:excess_capacity_termination_policy], ::String, context: "#{context}[:excess_capacity_termination_policy]")
        Hearth::Validator.validate!(input[:fulfilled_capacity], ::Float, context: "#{context}[:fulfilled_capacity]")
        Hearth::Validator.validate!(input[:on_demand_fulfilled_capacity], ::Float, context: "#{context}[:on_demand_fulfilled_capacity]")
        Hearth::Validator.validate!(input[:iam_fleet_role], ::String, context: "#{context}[:iam_fleet_role]")
        Validators::LaunchSpecsList.validate!(input[:launch_specifications], context: "#{context}[:launch_specifications]") unless input[:launch_specifications].nil?
        Validators::LaunchTemplateConfigList.validate!(input[:launch_template_configs], context: "#{context}[:launch_template_configs]") unless input[:launch_template_configs].nil?
        Hearth::Validator.validate!(input[:spot_price], ::String, context: "#{context}[:spot_price]")
        Hearth::Validator.validate!(input[:target_capacity], ::Integer, context: "#{context}[:target_capacity]")
        Hearth::Validator.validate!(input[:on_demand_target_capacity], ::Integer, context: "#{context}[:on_demand_target_capacity]")
        Hearth::Validator.validate!(input[:on_demand_max_total_price], ::String, context: "#{context}[:on_demand_max_total_price]")
        Hearth::Validator.validate!(input[:spot_max_total_price], ::String, context: "#{context}[:spot_max_total_price]")
        Hearth::Validator.validate!(input[:terminate_instances_with_expiration], ::TrueClass, ::FalseClass, context: "#{context}[:terminate_instances_with_expiration]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:valid_from], ::Time, context: "#{context}[:valid_from]")
        Hearth::Validator.validate!(input[:valid_until], ::Time, context: "#{context}[:valid_until]")
        Hearth::Validator.validate!(input[:replace_unhealthy_instances], ::TrueClass, ::FalseClass, context: "#{context}[:replace_unhealthy_instances]")
        Hearth::Validator.validate!(input[:instance_interruption_behavior], ::String, context: "#{context}[:instance_interruption_behavior]")
        Validators::LoadBalancersConfig.validate!(input[:load_balancers_config], context: "#{context}[:load_balancers_config]") unless input[:load_balancers_config].nil?
        Hearth::Validator.validate!(input[:instance_pools_to_use_count], ::Integer, context: "#{context}[:instance_pools_to_use_count]")
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
        Hearth::Validator.validate!(input[:target_capacity_unit_type], ::String, context: "#{context}[:target_capacity_unit_type]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
      end
    end

    class SpotFleetRequestIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SpotFleetTagSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpotFleetTagSpecification, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class SpotFleetTagSpecificationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SpotFleetTagSpecification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SpotInstanceRequestIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SpotMaintenanceStrategies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpotMaintenanceStrategies, context: context)
        Validators::SpotCapacityRebalance.validate!(input[:capacity_rebalance], context: "#{context}[:capacity_rebalance]") unless input[:capacity_rebalance].nil?
      end
    end

    class SpotMarketOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpotMarketOptions, context: context)
        Hearth::Validator.validate!(input[:max_price], ::String, context: "#{context}[:max_price]")
        Hearth::Validator.validate!(input[:spot_instance_type], ::String, context: "#{context}[:spot_instance_type]")
        Hearth::Validator.validate!(input[:block_duration_minutes], ::Integer, context: "#{context}[:block_duration_minutes]")
        Hearth::Validator.validate!(input[:valid_until], ::Time, context: "#{context}[:valid_until]")
        Hearth::Validator.validate!(input[:instance_interruption_behavior], ::String, context: "#{context}[:instance_interruption_behavior]")
      end
    end

    class SpotOptionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpotOptionsRequest, context: context)
        Hearth::Validator.validate!(input[:allocation_strategy], ::String, context: "#{context}[:allocation_strategy]")
        Validators::FleetSpotMaintenanceStrategiesRequest.validate!(input[:maintenance_strategies], context: "#{context}[:maintenance_strategies]") unless input[:maintenance_strategies].nil?
        Hearth::Validator.validate!(input[:instance_interruption_behavior], ::String, context: "#{context}[:instance_interruption_behavior]")
        Hearth::Validator.validate!(input[:instance_pools_to_use_count], ::Integer, context: "#{context}[:instance_pools_to_use_count]")
        Hearth::Validator.validate!(input[:single_instance_type], ::TrueClass, ::FalseClass, context: "#{context}[:single_instance_type]")
        Hearth::Validator.validate!(input[:single_availability_zone], ::TrueClass, ::FalseClass, context: "#{context}[:single_availability_zone]")
        Hearth::Validator.validate!(input[:min_target_capacity], ::Integer, context: "#{context}[:min_target_capacity]")
        Hearth::Validator.validate!(input[:max_total_price], ::String, context: "#{context}[:max_total_price]")
      end
    end

    class SpotPlacement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpotPlacement, context: context)
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:tenancy], ::String, context: "#{context}[:tenancy]")
      end
    end

    class StartInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartInstancesInput, context: context)
        Validators::InstanceIdStringList.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Hearth::Validator.validate!(input[:additional_info], ::String, context: "#{context}[:additional_info]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class StartNetworkInsightsAccessScopeAnalysisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartNetworkInsightsAccessScopeAnalysisInput, context: context)
        Hearth::Validator.validate!(input[:network_insights_access_scope_id], ::String, context: "#{context}[:network_insights_access_scope_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class StartNetworkInsightsAnalysisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartNetworkInsightsAnalysisInput, context: context)
        Hearth::Validator.validate!(input[:network_insights_path_id], ::String, context: "#{context}[:network_insights_path_id]")
        Validators::ArnList.validate!(input[:filter_in_arns], context: "#{context}[:filter_in_arns]") unless input[:filter_in_arns].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::TagSpecificationList.validate!(input[:tag_specifications], context: "#{context}[:tag_specifications]") unless input[:tag_specifications].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class StartVpcEndpointServicePrivateDnsVerificationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartVpcEndpointServicePrivateDnsVerificationInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
      end
    end

    class StopInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopInstancesInput, context: context)
        Validators::InstanceIdStringList.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Hearth::Validator.validate!(input[:hibernate], ::TrueClass, ::FalseClass, context: "#{context}[:hibernate]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
      end
    end

    class Storage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Storage, context: context)
        Validators::S3Storage.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
      end
    end

    class StorageLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageLocation, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
      end
    end

    class SubnetIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagSpecification, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagSpecificationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TagSpecification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetCapacitySpecificationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetCapacitySpecificationRequest, context: context)
        Hearth::Validator.validate!(input[:total_target_capacity], ::Integer, context: "#{context}[:total_target_capacity]")
        Hearth::Validator.validate!(input[:on_demand_target_capacity], ::Integer, context: "#{context}[:on_demand_target_capacity]")
        Hearth::Validator.validate!(input[:spot_target_capacity], ::Integer, context: "#{context}[:spot_target_capacity]")
        Hearth::Validator.validate!(input[:default_target_capacity_type], ::String, context: "#{context}[:default_target_capacity_type]")
        Hearth::Validator.validate!(input[:target_capacity_unit_type], ::String, context: "#{context}[:target_capacity_unit_type]")
      end
    end

    class TargetConfigurationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetConfigurationRequest, context: context)
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        Hearth::Validator.validate!(input[:offering_id], ::String, context: "#{context}[:offering_id]")
      end
    end

    class TargetConfigurationRequestSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TargetConfigurationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetGroup, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class TargetGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TargetGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetGroupsConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetGroupsConfig, context: context)
        Validators::TargetGroups.validate!(input[:target_groups], context: "#{context}[:target_groups]") unless input[:target_groups].nil?
      end
    end

    class TerminateClientVpnConnectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateClientVpnConnectionsInput, context: context)
        Hearth::Validator.validate!(input[:client_vpn_endpoint_id], ::String, context: "#{context}[:client_vpn_endpoint_id]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class TerminateInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateInstancesInput, context: context)
        Validators::InstanceIdStringList.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ThroughResourcesStatementRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThroughResourcesStatementRequest, context: context)
        Validators::ResourceStatementRequest.validate!(input[:resource_statement], context: "#{context}[:resource_statement]") unless input[:resource_statement].nil?
      end
    end

    class ThroughResourcesStatementRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ThroughResourcesStatementRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TotalLocalStorageGB
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TotalLocalStorageGB, context: context)
        Hearth::Validator.validate!(input[:min], ::Float, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Float, context: "#{context}[:max]")
      end
    end

    class TotalLocalStorageGBRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TotalLocalStorageGBRequest, context: context)
        Hearth::Validator.validate!(input[:min], ::Float, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Float, context: "#{context}[:max]")
      end
    end

    class TrafficMirrorFilterIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TrafficMirrorFilterRuleFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TrafficMirrorNetworkServiceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TrafficMirrorPortRangeRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrafficMirrorPortRangeRequest, context: context)
        Hearth::Validator.validate!(input[:from_port], ::Integer, context: "#{context}[:from_port]")
        Hearth::Validator.validate!(input[:to_port], ::Integer, context: "#{context}[:to_port]")
      end
    end

    class TrafficMirrorSessionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TrafficMirrorSessionIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TrafficMirrorTargetIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TransitGatewayAttachmentIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TransitGatewayCidrBlockStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TransitGatewayConnectPeerIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TransitGatewayConnectRequestBgpOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransitGatewayConnectRequestBgpOptions, context: context)
        Hearth::Validator.validate!(input[:peer_asn], ::Integer, context: "#{context}[:peer_asn]")
      end
    end

    class TransitGatewayIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TransitGatewayMulticastDomainIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TransitGatewayNetworkInterfaceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TransitGatewayRequestOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransitGatewayRequestOptions, context: context)
        Hearth::Validator.validate!(input[:amazon_side_asn], ::Integer, context: "#{context}[:amazon_side_asn]")
        Hearth::Validator.validate!(input[:auto_accept_shared_attachments], ::String, context: "#{context}[:auto_accept_shared_attachments]")
        Hearth::Validator.validate!(input[:default_route_table_association], ::String, context: "#{context}[:default_route_table_association]")
        Hearth::Validator.validate!(input[:default_route_table_propagation], ::String, context: "#{context}[:default_route_table_propagation]")
        Hearth::Validator.validate!(input[:vpn_ecmp_support], ::String, context: "#{context}[:vpn_ecmp_support]")
        Hearth::Validator.validate!(input[:dns_support], ::String, context: "#{context}[:dns_support]")
        Hearth::Validator.validate!(input[:multicast_support], ::String, context: "#{context}[:multicast_support]")
        Validators::TransitGatewayCidrBlockStringList.validate!(input[:transit_gateway_cidr_blocks], context: "#{context}[:transit_gateway_cidr_blocks]") unless input[:transit_gateway_cidr_blocks].nil?
      end
    end

    class TransitGatewayRouteTableIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TransitGatewaySubnetIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TrunkInterfaceAssociationIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UnassignIpv6AddressesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnassignIpv6AddressesInput, context: context)
        Validators::Ipv6AddressList.validate!(input[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless input[:ipv6_addresses].nil?
        Validators::IpPrefixList.validate!(input[:ipv6_prefixes], context: "#{context}[:ipv6_prefixes]") unless input[:ipv6_prefixes].nil?
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
      end
    end

    class UnassignPrivateIpAddressesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnassignPrivateIpAddressesInput, context: context)
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Validators::PrivateIpAddressStringList.validate!(input[:private_ip_addresses], context: "#{context}[:private_ip_addresses]") unless input[:private_ip_addresses].nil?
        Validators::IpPrefixList.validate!(input[:ipv4_prefixes], context: "#{context}[:ipv4_prefixes]") unless input[:ipv4_prefixes].nil?
      end
    end

    class UnmonitorInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnmonitorInstancesInput, context: context)
        Validators::InstanceIdStringList.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class UpdateSecurityGroupRuleDescriptionsEgressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSecurityGroupRuleDescriptionsEgressInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Validators::IpPermissionList.validate!(input[:ip_permissions], context: "#{context}[:ip_permissions]") unless input[:ip_permissions].nil?
        Validators::SecurityGroupRuleDescriptionList.validate!(input[:security_group_rule_descriptions], context: "#{context}[:security_group_rule_descriptions]") unless input[:security_group_rule_descriptions].nil?
      end
    end

    class UpdateSecurityGroupRuleDescriptionsIngressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSecurityGroupRuleDescriptionsIngressInput, context: context)
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Validators::IpPermissionList.validate!(input[:ip_permissions], context: "#{context}[:ip_permissions]") unless input[:ip_permissions].nil?
        Validators::SecurityGroupRuleDescriptionList.validate!(input[:security_group_rule_descriptions], context: "#{context}[:security_group_rule_descriptions]") unless input[:security_group_rule_descriptions].nil?
      end
    end

    class UserBucket
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserBucket, context: context)
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
      end
    end

    class UserData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserData, context: context)
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
      end
    end

    class UserGroupStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UserIdGroupPair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserIdGroupPair, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:peering_status], ::String, context: "#{context}[:peering_status]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:vpc_peering_connection_id], ::String, context: "#{context}[:vpc_peering_connection_id]")
      end
    end

    class UserIdGroupPairList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UserIdGroupPair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VCpuCountRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VCpuCountRange, context: context)
        Hearth::Validator.validate!(input[:min], ::Integer, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class VCpuCountRangeRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VCpuCountRangeRequest, context: context)
        Hearth::Validator.validate!(input[:min], ::Integer, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class ValueStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VersionStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VirtualizationTypeSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VolumeDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VolumeDetail, context: context)
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
      end
    end

    class VolumeIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VpcClassicLinkIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VpcEndpointIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VpcEndpointRouteTableIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VpcEndpointSecurityGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VpcEndpointServiceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VpcEndpointSubnetIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VpcIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VpcPeeringConnectionIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VpnConnectionIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VpnConnectionOptionsSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpnConnectionOptionsSpecification, context: context)
        Hearth::Validator.validate!(input[:enable_acceleration], ::TrueClass, ::FalseClass, context: "#{context}[:enable_acceleration]")
        Hearth::Validator.validate!(input[:static_routes_only], ::TrueClass, ::FalseClass, context: "#{context}[:static_routes_only]")
        Hearth::Validator.validate!(input[:tunnel_inside_ip_version], ::String, context: "#{context}[:tunnel_inside_ip_version]")
        Validators::VpnTunnelOptionsSpecificationsList.validate!(input[:tunnel_options], context: "#{context}[:tunnel_options]") unless input[:tunnel_options].nil?
        Hearth::Validator.validate!(input[:local_ipv4_network_cidr], ::String, context: "#{context}[:local_ipv4_network_cidr]")
        Hearth::Validator.validate!(input[:remote_ipv4_network_cidr], ::String, context: "#{context}[:remote_ipv4_network_cidr]")
        Hearth::Validator.validate!(input[:local_ipv6_network_cidr], ::String, context: "#{context}[:local_ipv6_network_cidr]")
        Hearth::Validator.validate!(input[:remote_ipv6_network_cidr], ::String, context: "#{context}[:remote_ipv6_network_cidr]")
      end
    end

    class VpnGatewayIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VpnTunnelOptionsSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpnTunnelOptionsSpecification, context: context)
        Hearth::Validator.validate!(input[:tunnel_inside_cidr], ::String, context: "#{context}[:tunnel_inside_cidr]")
        Hearth::Validator.validate!(input[:tunnel_inside_ipv6_cidr], ::String, context: "#{context}[:tunnel_inside_ipv6_cidr]")
        Hearth::Validator.validate!(input[:pre_shared_key], ::String, context: "#{context}[:pre_shared_key]")
        Hearth::Validator.validate!(input[:phase1_lifetime_seconds], ::Integer, context: "#{context}[:phase1_lifetime_seconds]")
        Hearth::Validator.validate!(input[:phase2_lifetime_seconds], ::Integer, context: "#{context}[:phase2_lifetime_seconds]")
        Hearth::Validator.validate!(input[:rekey_margin_time_seconds], ::Integer, context: "#{context}[:rekey_margin_time_seconds]")
        Hearth::Validator.validate!(input[:rekey_fuzz_percentage], ::Integer, context: "#{context}[:rekey_fuzz_percentage]")
        Hearth::Validator.validate!(input[:replay_window_size], ::Integer, context: "#{context}[:replay_window_size]")
        Hearth::Validator.validate!(input[:dpd_timeout_seconds], ::Integer, context: "#{context}[:dpd_timeout_seconds]")
        Hearth::Validator.validate!(input[:dpd_timeout_action], ::String, context: "#{context}[:dpd_timeout_action]")
        Validators::Phase1EncryptionAlgorithmsRequestList.validate!(input[:phase1_encryption_algorithms], context: "#{context}[:phase1_encryption_algorithms]") unless input[:phase1_encryption_algorithms].nil?
        Validators::Phase2EncryptionAlgorithmsRequestList.validate!(input[:phase2_encryption_algorithms], context: "#{context}[:phase2_encryption_algorithms]") unless input[:phase2_encryption_algorithms].nil?
        Validators::Phase1IntegrityAlgorithmsRequestList.validate!(input[:phase1_integrity_algorithms], context: "#{context}[:phase1_integrity_algorithms]") unless input[:phase1_integrity_algorithms].nil?
        Validators::Phase2IntegrityAlgorithmsRequestList.validate!(input[:phase2_integrity_algorithms], context: "#{context}[:phase2_integrity_algorithms]") unless input[:phase2_integrity_algorithms].nil?
        Validators::Phase1DHGroupNumbersRequestList.validate!(input[:phase1_dh_group_numbers], context: "#{context}[:phase1_dh_group_numbers]") unless input[:phase1_dh_group_numbers].nil?
        Validators::Phase2DHGroupNumbersRequestList.validate!(input[:phase2_dh_group_numbers], context: "#{context}[:phase2_dh_group_numbers]") unless input[:phase2_dh_group_numbers].nil?
        Validators::IKEVersionsRequestList.validate!(input[:ike_versions], context: "#{context}[:ike_versions]") unless input[:ike_versions].nil?
        Hearth::Validator.validate!(input[:startup_action], ::String, context: "#{context}[:startup_action]")
      end
    end

    class VpnTunnelOptionsSpecificationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VpnTunnelOptionsSpecification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WithdrawByoipCidrInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WithdrawByoipCidrInput, context: context)
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ZoneIdStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ZoneNameStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
