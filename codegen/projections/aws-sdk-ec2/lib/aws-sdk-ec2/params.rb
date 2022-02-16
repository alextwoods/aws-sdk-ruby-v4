# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::Ec2
  module Params

    module AcceleratorCount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceleratorCount, context: context)
        type = Types::AcceleratorCount.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module AcceleratorCountRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceleratorCountRequest, context: context)
        type = Types::AcceleratorCountRequest.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module AcceleratorManufacturerSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module AcceleratorNameSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module AcceleratorTotalMemoryMiB
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceleratorTotalMemoryMiB, context: context)
        type = Types::AcceleratorTotalMemoryMiB.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module AcceleratorTotalMemoryMiBRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceleratorTotalMemoryMiBRequest, context: context)
        type = Types::AcceleratorTotalMemoryMiBRequest.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module AcceleratorTypeSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module AcceptReservedInstancesExchangeQuoteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptReservedInstancesExchangeQuoteInput, context: context)
        type = Types::AcceptReservedInstancesExchangeQuoteInput.new
        type.dry_run = params[:dry_run]
        type.reserved_instance_ids = ReservedInstanceIdSet.build(params[:reserved_instance_ids], context: "#{context}[:reserved_instance_ids]") unless params[:reserved_instance_ids].nil?
        type.target_configurations = TargetConfigurationRequestSet.build(params[:target_configurations], context: "#{context}[:target_configurations]") unless params[:target_configurations].nil?
        type
      end
    end

    module AcceptTransitGatewayMulticastDomainAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptTransitGatewayMulticastDomainAssociationsInput, context: context)
        type = Types::AcceptTransitGatewayMulticastDomainAssociationsInput.new
        type.transit_gateway_multicast_domain_id = params[:transit_gateway_multicast_domain_id]
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.subnet_ids = ValueStringList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module AcceptTransitGatewayPeeringAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptTransitGatewayPeeringAttachmentInput, context: context)
        type = Types::AcceptTransitGatewayPeeringAttachmentInput.new
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module AcceptTransitGatewayVpcAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptTransitGatewayVpcAttachmentInput, context: context)
        type = Types::AcceptTransitGatewayVpcAttachmentInput.new
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module AcceptVpcEndpointConnectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptVpcEndpointConnectionsInput, context: context)
        type = Types::AcceptVpcEndpointConnectionsInput.new
        type.dry_run = params[:dry_run]
        type.service_id = params[:service_id]
        type.vpc_endpoint_ids = VpcEndpointIdList.build(params[:vpc_endpoint_ids], context: "#{context}[:vpc_endpoint_ids]") unless params[:vpc_endpoint_ids].nil?
        type
      end
    end

    module AcceptVpcPeeringConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptVpcPeeringConnectionInput, context: context)
        type = Types::AcceptVpcPeeringConnectionInput.new
        type.dry_run = params[:dry_run]
        type.vpc_peering_connection_id = params[:vpc_peering_connection_id]
        type
      end
    end

    module AccessScopePathListRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccessScopePathRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccessScopePathRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessScopePathRequest, context: context)
        type = Types::AccessScopePathRequest.new
        type.source = PathStatementRequest.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.destination = PathStatementRequest.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.through_resources = ThroughResourcesStatementRequestList.build(params[:through_resources], context: "#{context}[:through_resources]") unless params[:through_resources].nil?
        type
      end
    end

    module AccountAttributeNameStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module AddIpamOperatingRegion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddIpamOperatingRegion, context: context)
        type = Types::AddIpamOperatingRegion.new
        type.region_name = params[:region_name]
        type
      end
    end

    module AddIpamOperatingRegionSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AddIpamOperatingRegion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AddPrefixListEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AddPrefixListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AddPrefixListEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddPrefixListEntry, context: context)
        type = Types::AddPrefixListEntry.new
        type.cidr = params[:cidr]
        type.description = params[:description]
        type
      end
    end

    module AdvertiseByoipCidrInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdvertiseByoipCidrInput, context: context)
        type = Types::AdvertiseByoipCidrInput.new
        type.cidr = params[:cidr]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module AllocateAddressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllocateAddressInput, context: context)
        type = Types::AllocateAddressInput.new
        type.domain = params[:domain]
        type.address = params[:address]
        type.public_ipv4_pool = params[:public_ipv4_pool]
        type.network_border_group = params[:network_border_group]
        type.customer_owned_ipv4_pool = params[:customer_owned_ipv4_pool]
        type.dry_run = params[:dry_run]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module AllocateHostsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllocateHostsInput, context: context)
        type = Types::AllocateHostsInput.new
        type.auto_placement = params[:auto_placement]
        type.availability_zone = params[:availability_zone]
        type.client_token = params[:client_token]
        type.instance_type = params[:instance_type]
        type.instance_family = params[:instance_family]
        type.quantity = params[:quantity]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.host_recovery = params[:host_recovery]
        type
      end
    end

    module AllocateIpamPoolCidrInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllocateIpamPoolCidrInput, context: context)
        type = Types::AllocateIpamPoolCidrInput.new
        type.dry_run = params[:dry_run]
        type.ipam_pool_id = params[:ipam_pool_id]
        type.cidr = params[:cidr]
        type.netmask_length = params[:netmask_length]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.description = params[:description]
        type.preview_next_cidr = params[:preview_next_cidr]
        type.disallowed_cidrs = IpamPoolAllocationDisallowedCidrs.build(params[:disallowed_cidrs], context: "#{context}[:disallowed_cidrs]") unless params[:disallowed_cidrs].nil?
        type
      end
    end

    module AllocationIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module AllocationIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ApplySecurityGroupsToClientVpnTargetNetworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplySecurityGroupsToClientVpnTargetNetworkInput, context: context)
        type = Types::ApplySecurityGroupsToClientVpnTargetNetworkInput.new
        type.client_vpn_endpoint_id = params[:client_vpn_endpoint_id]
        type.vpc_id = params[:vpc_id]
        type.security_group_ids = ClientVpnSecurityGroupIdSet.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ArchitectureTypeSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module AssignIpv6AddressesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssignIpv6AddressesInput, context: context)
        type = Types::AssignIpv6AddressesInput.new
        type.ipv6_address_count = params[:ipv6_address_count]
        type.ipv6_addresses = Ipv6AddressList.build(params[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless params[:ipv6_addresses].nil?
        type.ipv6_prefix_count = params[:ipv6_prefix_count]
        type.ipv6_prefixes = IpPrefixList.build(params[:ipv6_prefixes], context: "#{context}[:ipv6_prefixes]") unless params[:ipv6_prefixes].nil?
        type.network_interface_id = params[:network_interface_id]
        type
      end
    end

    module AssignPrivateIpAddressesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssignPrivateIpAddressesInput, context: context)
        type = Types::AssignPrivateIpAddressesInput.new
        type.allow_reassignment = params[:allow_reassignment]
        type.network_interface_id = params[:network_interface_id]
        type.private_ip_addresses = PrivateIpAddressStringList.build(params[:private_ip_addresses], context: "#{context}[:private_ip_addresses]") unless params[:private_ip_addresses].nil?
        type.secondary_private_ip_address_count = params[:secondary_private_ip_address_count]
        type.ipv4_prefixes = IpPrefixList.build(params[:ipv4_prefixes], context: "#{context}[:ipv4_prefixes]") unless params[:ipv4_prefixes].nil?
        type.ipv4_prefix_count = params[:ipv4_prefix_count]
        type
      end
    end

    module AssociateAddressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateAddressInput, context: context)
        type = Types::AssociateAddressInput.new
        type.allocation_id = params[:allocation_id]
        type.instance_id = params[:instance_id]
        type.public_ip = params[:public_ip]
        type.allow_reassociation = params[:allow_reassociation]
        type.dry_run = params[:dry_run]
        type.network_interface_id = params[:network_interface_id]
        type.private_ip_address = params[:private_ip_address]
        type
      end
    end

    module AssociateClientVpnTargetNetworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateClientVpnTargetNetworkInput, context: context)
        type = Types::AssociateClientVpnTargetNetworkInput.new
        type.client_vpn_endpoint_id = params[:client_vpn_endpoint_id]
        type.subnet_id = params[:subnet_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.dry_run = params[:dry_run]
        type
      end
    end

    module AssociateDhcpOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDhcpOptionsInput, context: context)
        type = Types::AssociateDhcpOptionsInput.new
        type.dhcp_options_id = params[:dhcp_options_id]
        type.vpc_id = params[:vpc_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module AssociateEnclaveCertificateIamRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateEnclaveCertificateIamRoleInput, context: context)
        type = Types::AssociateEnclaveCertificateIamRoleInput.new
        type.certificate_arn = params[:certificate_arn]
        type.role_arn = params[:role_arn]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module AssociateIamInstanceProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateIamInstanceProfileInput, context: context)
        type = Types::AssociateIamInstanceProfileInput.new
        type.iam_instance_profile = IamInstanceProfileSpecification.build(params[:iam_instance_profile], context: "#{context}[:iam_instance_profile]") unless params[:iam_instance_profile].nil?
        type.instance_id = params[:instance_id]
        type
      end
    end

    module AssociateInstanceEventWindowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateInstanceEventWindowInput, context: context)
        type = Types::AssociateInstanceEventWindowInput.new
        type.dry_run = params[:dry_run]
        type.instance_event_window_id = params[:instance_event_window_id]
        type.association_target = InstanceEventWindowAssociationRequest.build(params[:association_target], context: "#{context}[:association_target]") unless params[:association_target].nil?
        type
      end
    end

    module AssociateRouteTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateRouteTableInput, context: context)
        type = Types::AssociateRouteTableInput.new
        type.dry_run = params[:dry_run]
        type.route_table_id = params[:route_table_id]
        type.subnet_id = params[:subnet_id]
        type.gateway_id = params[:gateway_id]
        type
      end
    end

    module AssociateSubnetCidrBlockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateSubnetCidrBlockInput, context: context)
        type = Types::AssociateSubnetCidrBlockInput.new
        type.ipv6_cidr_block = params[:ipv6_cidr_block]
        type.subnet_id = params[:subnet_id]
        type
      end
    end

    module AssociateTransitGatewayMulticastDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateTransitGatewayMulticastDomainInput, context: context)
        type = Types::AssociateTransitGatewayMulticastDomainInput.new
        type.transit_gateway_multicast_domain_id = params[:transit_gateway_multicast_domain_id]
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.subnet_ids = TransitGatewaySubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module AssociateTransitGatewayRouteTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateTransitGatewayRouteTableInput, context: context)
        type = Types::AssociateTransitGatewayRouteTableInput.new
        type.transit_gateway_route_table_id = params[:transit_gateway_route_table_id]
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module AssociateTrunkInterfaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateTrunkInterfaceInput, context: context)
        type = Types::AssociateTrunkInterfaceInput.new
        type.branch_interface_id = params[:branch_interface_id]
        type.trunk_interface_id = params[:trunk_interface_id]
        type.vlan_id = params[:vlan_id]
        type.gre_key = params[:gre_key]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.dry_run = params[:dry_run]
        type
      end
    end

    module AssociateVpcCidrBlockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateVpcCidrBlockInput, context: context)
        type = Types::AssociateVpcCidrBlockInput.new
        type.amazon_provided_ipv6_cidr_block = params[:amazon_provided_ipv6_cidr_block]
        type.cidr_block = params[:cidr_block]
        type.vpc_id = params[:vpc_id]
        type.ipv6_cidr_block_network_border_group = params[:ipv6_cidr_block_network_border_group]
        type.ipv6_pool = params[:ipv6_pool]
        type.ipv6_cidr_block = params[:ipv6_cidr_block]
        type.ipv4_ipam_pool_id = params[:ipv4_ipam_pool_id]
        type.ipv4_netmask_length = params[:ipv4_netmask_length]
        type.ipv6_ipam_pool_id = params[:ipv6_ipam_pool_id]
        type.ipv6_netmask_length = params[:ipv6_netmask_length]
        type
      end
    end

    module AssociationIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module AthenaIntegration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AthenaIntegration, context: context)
        type = Types::AthenaIntegration.new
        type.integration_result_s3_destination_arn = params[:integration_result_s3_destination_arn]
        type.partition_load_frequency = params[:partition_load_frequency]
        type.partition_start_date = params[:partition_start_date]
        type.partition_end_date = params[:partition_end_date]
        type
      end
    end

    module AthenaIntegrationsSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AthenaIntegration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttachClassicLinkVpcInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachClassicLinkVpcInput, context: context)
        type = Types::AttachClassicLinkVpcInput.new
        type.dry_run = params[:dry_run]
        type.groups = GroupIdStringList.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.instance_id = params[:instance_id]
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module AttachInternetGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachInternetGatewayInput, context: context)
        type = Types::AttachInternetGatewayInput.new
        type.dry_run = params[:dry_run]
        type.internet_gateway_id = params[:internet_gateway_id]
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module AttachNetworkInterfaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachNetworkInterfaceInput, context: context)
        type = Types::AttachNetworkInterfaceInput.new
        type.device_index = params[:device_index]
        type.dry_run = params[:dry_run]
        type.instance_id = params[:instance_id]
        type.network_interface_id = params[:network_interface_id]
        type.network_card_index = params[:network_card_index]
        type
      end
    end

    module AttachVolumeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachVolumeInput, context: context)
        type = Types::AttachVolumeInput.new
        type.device = params[:device]
        type.instance_id = params[:instance_id]
        type.volume_id = params[:volume_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module AttachVpnGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachVpnGatewayInput, context: context)
        type = Types::AttachVpnGatewayInput.new
        type.vpc_id = params[:vpc_id]
        type.vpn_gateway_id = params[:vpn_gateway_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module AttributeBooleanValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeBooleanValue, context: context)
        type = Types::AttributeBooleanValue.new
        type.value = params[:value]
        type
      end
    end

    module AttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeValue, context: context)
        type = Types::AttributeValue.new
        type.value = params[:value]
        type
      end
    end

    module AuthorizeClientVpnIngressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizeClientVpnIngressInput, context: context)
        type = Types::AuthorizeClientVpnIngressInput.new
        type.client_vpn_endpoint_id = params[:client_vpn_endpoint_id]
        type.target_network_cidr = params[:target_network_cidr]
        type.access_group_id = params[:access_group_id]
        type.authorize_all_groups = params[:authorize_all_groups]
        type.description = params[:description]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.dry_run = params[:dry_run]
        type
      end
    end

    module AuthorizeSecurityGroupEgressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizeSecurityGroupEgressInput, context: context)
        type = Types::AuthorizeSecurityGroupEgressInput.new
        type.dry_run = params[:dry_run]
        type.group_id = params[:group_id]
        type.ip_permissions = IpPermissionList.build(params[:ip_permissions], context: "#{context}[:ip_permissions]") unless params[:ip_permissions].nil?
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.cidr_ip = params[:cidr_ip]
        type.from_port = params[:from_port]
        type.ip_protocol = params[:ip_protocol]
        type.to_port = params[:to_port]
        type.source_security_group_name = params[:source_security_group_name]
        type.source_security_group_owner_id = params[:source_security_group_owner_id]
        type
      end
    end

    module AuthorizeSecurityGroupIngressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizeSecurityGroupIngressInput, context: context)
        type = Types::AuthorizeSecurityGroupIngressInput.new
        type.cidr_ip = params[:cidr_ip]
        type.from_port = params[:from_port]
        type.group_id = params[:group_id]
        type.group_name = params[:group_name]
        type.ip_permissions = IpPermissionList.build(params[:ip_permissions], context: "#{context}[:ip_permissions]") unless params[:ip_permissions].nil?
        type.ip_protocol = params[:ip_protocol]
        type.source_security_group_name = params[:source_security_group_name]
        type.source_security_group_owner_id = params[:source_security_group_owner_id]
        type.to_port = params[:to_port]
        type.dry_run = params[:dry_run]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module AvailabilityZoneStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module BaselineEbsBandwidthMbps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BaselineEbsBandwidthMbps, context: context)
        type = Types::BaselineEbsBandwidthMbps.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module BaselineEbsBandwidthMbpsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BaselineEbsBandwidthMbpsRequest, context: context)
        type = Types::BaselineEbsBandwidthMbpsRequest.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module BillingProductList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module BlobAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlobAttributeValue, context: context)
        type = Types::BlobAttributeValue.new
        type.value = params[:value]
        type
      end
    end

    module BlockDeviceMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlockDeviceMapping, context: context)
        type = Types::BlockDeviceMapping.new
        type.device_name = params[:device_name]
        type.virtual_name = params[:virtual_name]
        type.ebs = EbsBlockDevice.build(params[:ebs], context: "#{context}[:ebs]") unless params[:ebs].nil?
        type.no_device = params[:no_device]
        type
      end
    end

    module BlockDeviceMappingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BlockDeviceMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BlockDeviceMappingRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BlockDeviceMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BundleIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module BundleInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BundleInstanceInput, context: context)
        type = Types::BundleInstanceInput.new
        type.instance_id = params[:instance_id]
        type.storage = Storage.build(params[:storage], context: "#{context}[:storage]") unless params[:storage].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CancelBundleTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelBundleTaskInput, context: context)
        type = Types::CancelBundleTaskInput.new
        type.bundle_id = params[:bundle_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CancelCapacityReservationFleetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelCapacityReservationFleetsInput, context: context)
        type = Types::CancelCapacityReservationFleetsInput.new
        type.dry_run = params[:dry_run]
        type.capacity_reservation_fleet_ids = CapacityReservationFleetIdSet.build(params[:capacity_reservation_fleet_ids], context: "#{context}[:capacity_reservation_fleet_ids]") unless params[:capacity_reservation_fleet_ids].nil?
        type
      end
    end

    module CancelCapacityReservationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelCapacityReservationInput, context: context)
        type = Types::CancelCapacityReservationInput.new
        type.capacity_reservation_id = params[:capacity_reservation_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CancelConversionTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelConversionTaskInput, context: context)
        type = Types::CancelConversionTaskInput.new
        type.conversion_task_id = params[:conversion_task_id]
        type.dry_run = params[:dry_run]
        type.reason_message = params[:reason_message]
        type
      end
    end

    module CancelExportTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelExportTaskInput, context: context)
        type = Types::CancelExportTaskInput.new
        type.export_task_id = params[:export_task_id]
        type
      end
    end

    module CancelImportTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelImportTaskInput, context: context)
        type = Types::CancelImportTaskInput.new
        type.cancel_reason = params[:cancel_reason]
        type.dry_run = params[:dry_run]
        type.import_task_id = params[:import_task_id]
        type
      end
    end

    module CancelReservedInstancesListingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelReservedInstancesListingInput, context: context)
        type = Types::CancelReservedInstancesListingInput.new
        type.reserved_instances_listing_id = params[:reserved_instances_listing_id]
        type
      end
    end

    module CancelSpotFleetRequestsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelSpotFleetRequestsInput, context: context)
        type = Types::CancelSpotFleetRequestsInput.new
        type.dry_run = params[:dry_run]
        type.spot_fleet_request_ids = SpotFleetRequestIdList.build(params[:spot_fleet_request_ids], context: "#{context}[:spot_fleet_request_ids]") unless params[:spot_fleet_request_ids].nil?
        type.terminate_instances = params[:terminate_instances]
        type
      end
    end

    module CancelSpotInstanceRequestsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelSpotInstanceRequestsInput, context: context)
        type = Types::CancelSpotInstanceRequestsInput.new
        type.dry_run = params[:dry_run]
        type.spot_instance_request_ids = SpotInstanceRequestIdList.build(params[:spot_instance_request_ids], context: "#{context}[:spot_instance_request_ids]") unless params[:spot_instance_request_ids].nil?
        type
      end
    end

    module CapacityReservationFleetIdSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module CapacityReservationIdSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module CapacityReservationOptionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CapacityReservationOptionsRequest, context: context)
        type = Types::CapacityReservationOptionsRequest.new
        type.usage_strategy = params[:usage_strategy]
        type
      end
    end

    module CapacityReservationSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CapacityReservationSpecification, context: context)
        type = Types::CapacityReservationSpecification.new
        type.capacity_reservation_preference = params[:capacity_reservation_preference]
        type.capacity_reservation_target = CapacityReservationTarget.build(params[:capacity_reservation_target], context: "#{context}[:capacity_reservation_target]") unless params[:capacity_reservation_target].nil?
        type
      end
    end

    module CapacityReservationTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CapacityReservationTarget, context: context)
        type = Types::CapacityReservationTarget.new
        type.capacity_reservation_id = params[:capacity_reservation_id]
        type.capacity_reservation_resource_group_arn = params[:capacity_reservation_resource_group_arn]
        type
      end
    end

    module CarrierGatewayIdSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module CertificateAuthenticationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateAuthenticationRequest, context: context)
        type = Types::CertificateAuthenticationRequest.new
        type.client_root_certificate_chain_arn = params[:client_root_certificate_chain_arn]
        type
      end
    end

    module CidrAuthorizationContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CidrAuthorizationContext, context: context)
        type = Types::CidrAuthorizationContext.new
        type.message = params[:message]
        type.signature = params[:signature]
        type
      end
    end

    module ClassicLoadBalancer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClassicLoadBalancer, context: context)
        type = Types::ClassicLoadBalancer.new
        type.member_name = params[:member_name]
        type
      end
    end

    module ClassicLoadBalancers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClassicLoadBalancer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClassicLoadBalancersConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClassicLoadBalancersConfig, context: context)
        type = Types::ClassicLoadBalancersConfig.new
        type.classic_load_balancers = ClassicLoadBalancers.build(params[:classic_load_balancers], context: "#{context}[:classic_load_balancers]") unless params[:classic_load_balancers].nil?
        type
      end
    end

    module ClientConnectOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientConnectOptions, context: context)
        type = Types::ClientConnectOptions.new
        type.enabled = params[:enabled]
        type.lambda_function_arn = params[:lambda_function_arn]
        type
      end
    end

    module ClientData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientData, context: context)
        type = Types::ClientData.new
        type.comment = params[:comment]
        type.upload_end = params[:upload_end]
        type.upload_size = params[:upload_size]
        type.upload_start = params[:upload_start]
        type
      end
    end

    module ClientVpnAuthenticationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientVpnAuthenticationRequest, context: context)
        type = Types::ClientVpnAuthenticationRequest.new
        type.type = params[:type]
        type.active_directory = DirectoryServiceAuthenticationRequest.build(params[:active_directory], context: "#{context}[:active_directory]") unless params[:active_directory].nil?
        type.mutual_authentication = CertificateAuthenticationRequest.build(params[:mutual_authentication], context: "#{context}[:mutual_authentication]") unless params[:mutual_authentication].nil?
        type.federated_authentication = FederatedAuthenticationRequest.build(params[:federated_authentication], context: "#{context}[:federated_authentication]") unless params[:federated_authentication].nil?
        type
      end
    end

    module ClientVpnAuthenticationRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClientVpnAuthenticationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClientVpnEndpointIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ClientVpnSecurityGroupIdSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module CoipPoolIdSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ConfirmProductInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmProductInstanceInput, context: context)
        type = Types::ConfirmProductInstanceInput.new
        type.instance_id = params[:instance_id]
        type.product_code = params[:product_code]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ConnectionLogOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionLogOptions, context: context)
        type = Types::ConnectionLogOptions.new
        type.enabled = params[:enabled]
        type.cloudwatch_log_group = params[:cloudwatch_log_group]
        type.cloudwatch_log_stream = params[:cloudwatch_log_stream]
        type
      end
    end

    module ConnectionNotificationIdsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ConversionIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module CopyFpgaImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyFpgaImageInput, context: context)
        type = Types::CopyFpgaImageInput.new
        type.dry_run = params[:dry_run]
        type.source_fpga_image_id = params[:source_fpga_image_id]
        type.description = params[:description]
        type.member_name = params[:member_name]
        type.source_region = params[:source_region]
        type.client_token = params[:client_token]
        type
      end
    end

    module CopyImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyImageInput, context: context)
        type = Types::CopyImageInput.new
        type.client_token = params[:client_token]
        type.description = params[:description]
        type.encrypted = params[:encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.member_name = params[:member_name]
        type.source_image_id = params[:source_image_id]
        type.source_region = params[:source_region]
        type.destination_outpost_arn = params[:destination_outpost_arn]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CopySnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopySnapshotInput, context: context)
        type = Types::CopySnapshotInput.new
        type.description = params[:description]
        type.destination_outpost_arn = params[:destination_outpost_arn]
        type.destination_region = params[:destination_region]
        type.encrypted = params[:encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.presigned_url = params[:presigned_url]
        type.source_region = params[:source_region]
        type.source_snapshot_id = params[:source_snapshot_id]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CpuManufacturerSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module CpuOptionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CpuOptionsRequest, context: context)
        type = Types::CpuOptionsRequest.new
        type.core_count = params[:core_count]
        type.threads_per_core = params[:threads_per_core]
        type
      end
    end

    module CreateCapacityReservationFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCapacityReservationFleetInput, context: context)
        type = Types::CreateCapacityReservationFleetInput.new
        type.allocation_strategy = params[:allocation_strategy]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.instance_type_specifications = ReservationFleetInstanceSpecificationList.build(params[:instance_type_specifications], context: "#{context}[:instance_type_specifications]") unless params[:instance_type_specifications].nil?
        type.tenancy = params[:tenancy]
        type.total_target_capacity = params[:total_target_capacity]
        type.end_date = params[:end_date]
        type.instance_match_criteria = params[:instance_match_criteria]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateCapacityReservationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCapacityReservationInput, context: context)
        type = Types::CreateCapacityReservationInput.new
        type.client_token = params[:client_token]
        type.instance_type = params[:instance_type]
        type.instance_platform = params[:instance_platform]
        type.availability_zone = params[:availability_zone]
        type.availability_zone_id = params[:availability_zone_id]
        type.tenancy = params[:tenancy]
        type.instance_count = params[:instance_count]
        type.ebs_optimized = params[:ebs_optimized]
        type.ephemeral_storage = params[:ephemeral_storage]
        type.end_date = params[:end_date]
        type.end_date_type = params[:end_date_type]
        type.instance_match_criteria = params[:instance_match_criteria]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type.outpost_arn = params[:outpost_arn]
        type.placement_group_arn = params[:placement_group_arn]
        type
      end
    end

    module CreateCarrierGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCarrierGatewayInput, context: context)
        type = Types::CreateCarrierGatewayInput.new
        type.vpc_id = params[:vpc_id]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateClientVpnEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClientVpnEndpointInput, context: context)
        type = Types::CreateClientVpnEndpointInput.new
        type.client_cidr_block = params[:client_cidr_block]
        type.server_certificate_arn = params[:server_certificate_arn]
        type.authentication_options = ClientVpnAuthenticationRequestList.build(params[:authentication_options], context: "#{context}[:authentication_options]") unless params[:authentication_options].nil?
        type.connection_log_options = ConnectionLogOptions.build(params[:connection_log_options], context: "#{context}[:connection_log_options]") unless params[:connection_log_options].nil?
        type.dns_servers = ValueStringList.build(params[:dns_servers], context: "#{context}[:dns_servers]") unless params[:dns_servers].nil?
        type.transport_protocol = params[:transport_protocol]
        type.vpn_port = params[:vpn_port]
        type.description = params[:description]
        type.split_tunnel = params[:split_tunnel]
        type.dry_run = params[:dry_run]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.security_group_ids = ClientVpnSecurityGroupIdSet.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.vpc_id = params[:vpc_id]
        type.self_service_portal = params[:self_service_portal]
        type.client_connect_options = ClientConnectOptions.build(params[:client_connect_options], context: "#{context}[:client_connect_options]") unless params[:client_connect_options].nil?
        type
      end
    end

    module CreateClientVpnRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClientVpnRouteInput, context: context)
        type = Types::CreateClientVpnRouteInput.new
        type.client_vpn_endpoint_id = params[:client_vpn_endpoint_id]
        type.destination_cidr_block = params[:destination_cidr_block]
        type.target_vpc_subnet_id = params[:target_vpc_subnet_id]
        type.description = params[:description]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateCustomerGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomerGatewayInput, context: context)
        type = Types::CreateCustomerGatewayInput.new
        type.bgp_asn = params[:bgp_asn]
        type.public_ip = params[:public_ip]
        type.certificate_arn = params[:certificate_arn]
        type.type = params[:type]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.device_name = params[:device_name]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateDefaultSubnetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDefaultSubnetInput, context: context)
        type = Types::CreateDefaultSubnetInput.new
        type.availability_zone = params[:availability_zone]
        type.dry_run = params[:dry_run]
        type.ipv6_native = params[:ipv6_native]
        type
      end
    end

    module CreateDefaultVpcInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDefaultVpcInput, context: context)
        type = Types::CreateDefaultVpcInput.new
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateDhcpOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDhcpOptionsInput, context: context)
        type = Types::CreateDhcpOptionsInput.new
        type.dhcp_configurations = NewDhcpConfigurationList.build(params[:dhcp_configurations], context: "#{context}[:dhcp_configurations]") unless params[:dhcp_configurations].nil?
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateEgressOnlyInternetGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEgressOnlyInternetGatewayInput, context: context)
        type = Types::CreateEgressOnlyInternetGatewayInput.new
        type.client_token = params[:client_token]
        type.dry_run = params[:dry_run]
        type.vpc_id = params[:vpc_id]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module CreateFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFleetInput, context: context)
        type = Types::CreateFleetInput.new
        type.dry_run = params[:dry_run]
        type.client_token = params[:client_token]
        type.spot_options = SpotOptionsRequest.build(params[:spot_options], context: "#{context}[:spot_options]") unless params[:spot_options].nil?
        type.on_demand_options = OnDemandOptionsRequest.build(params[:on_demand_options], context: "#{context}[:on_demand_options]") unless params[:on_demand_options].nil?
        type.excess_capacity_termination_policy = params[:excess_capacity_termination_policy]
        type.launch_template_configs = FleetLaunchTemplateConfigListRequest.build(params[:launch_template_configs], context: "#{context}[:launch_template_configs]") unless params[:launch_template_configs].nil?
        type.target_capacity_specification = TargetCapacitySpecificationRequest.build(params[:target_capacity_specification], context: "#{context}[:target_capacity_specification]") unless params[:target_capacity_specification].nil?
        type.terminate_instances_with_expiration = params[:terminate_instances_with_expiration]
        type.type = params[:type]
        type.valid_from = params[:valid_from]
        type.valid_until = params[:valid_until]
        type.replace_unhealthy_instances = params[:replace_unhealthy_instances]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.context = params[:context]
        type
      end
    end

    module CreateFlowLogsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFlowLogsInput, context: context)
        type = Types::CreateFlowLogsInput.new
        type.dry_run = params[:dry_run]
        type.client_token = params[:client_token]
        type.deliver_logs_permission_arn = params[:deliver_logs_permission_arn]
        type.log_group_name = params[:log_group_name]
        type.resource_ids = FlowLogResourceIds.build(params[:resource_ids], context: "#{context}[:resource_ids]") unless params[:resource_ids].nil?
        type.resource_type = params[:resource_type]
        type.traffic_type = params[:traffic_type]
        type.log_destination_type = params[:log_destination_type]
        type.log_destination = params[:log_destination]
        type.log_format = params[:log_format]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.max_aggregation_interval = params[:max_aggregation_interval]
        type.destination_options = DestinationOptionsRequest.build(params[:destination_options], context: "#{context}[:destination_options]") unless params[:destination_options].nil?
        type
      end
    end

    module CreateFpgaImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFpgaImageInput, context: context)
        type = Types::CreateFpgaImageInput.new
        type.dry_run = params[:dry_run]
        type.input_storage_location = StorageLocation.build(params[:input_storage_location], context: "#{context}[:input_storage_location]") unless params[:input_storage_location].nil?
        type.logs_storage_location = StorageLocation.build(params[:logs_storage_location], context: "#{context}[:logs_storage_location]") unless params[:logs_storage_location].nil?
        type.description = params[:description]
        type.member_name = params[:member_name]
        type.client_token = params[:client_token]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module CreateImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateImageInput, context: context)
        type = Types::CreateImageInput.new
        type.block_device_mappings = BlockDeviceMappingRequestList.build(params[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless params[:block_device_mappings].nil?
        type.description = params[:description]
        type.dry_run = params[:dry_run]
        type.instance_id = params[:instance_id]
        type.member_name = params[:member_name]
        type.no_reboot = params[:no_reboot]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module CreateInstanceEventWindowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInstanceEventWindowInput, context: context)
        type = Types::CreateInstanceEventWindowInput.new
        type.dry_run = params[:dry_run]
        type.member_name = params[:member_name]
        type.time_ranges = InstanceEventWindowTimeRangeRequestSet.build(params[:time_ranges], context: "#{context}[:time_ranges]") unless params[:time_ranges].nil?
        type.cron_expression = params[:cron_expression]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module CreateInstanceExportTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInstanceExportTaskInput, context: context)
        type = Types::CreateInstanceExportTaskInput.new
        type.description = params[:description]
        type.export_to_s3_task = ExportToS3TaskSpecification.build(params[:export_to_s3_task], context: "#{context}[:export_to_s3_task]") unless params[:export_to_s3_task].nil?
        type.instance_id = params[:instance_id]
        type.target_environment = params[:target_environment]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module CreateInternetGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInternetGatewayInput, context: context)
        type = Types::CreateInternetGatewayInput.new
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateIpamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIpamInput, context: context)
        type = Types::CreateIpamInput.new
        type.dry_run = params[:dry_run]
        type.description = params[:description]
        type.operating_regions = AddIpamOperatingRegionSet.build(params[:operating_regions], context: "#{context}[:operating_regions]") unless params[:operating_regions].nil?
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateIpamPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIpamPoolInput, context: context)
        type = Types::CreateIpamPoolInput.new
        type.dry_run = params[:dry_run]
        type.ipam_scope_id = params[:ipam_scope_id]
        type.locale = params[:locale]
        type.source_ipam_pool_id = params[:source_ipam_pool_id]
        type.description = params[:description]
        type.address_family = params[:address_family]
        type.auto_import = params[:auto_import]
        type.publicly_advertisable = params[:publicly_advertisable]
        type.allocation_min_netmask_length = params[:allocation_min_netmask_length]
        type.allocation_max_netmask_length = params[:allocation_max_netmask_length]
        type.allocation_default_netmask_length = params[:allocation_default_netmask_length]
        type.allocation_resource_tags = RequestIpamResourceTagList.build(params[:allocation_resource_tags], context: "#{context}[:allocation_resource_tags]") unless params[:allocation_resource_tags].nil?
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.aws_service = params[:aws_service]
        type
      end
    end

    module CreateIpamScopeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIpamScopeInput, context: context)
        type = Types::CreateIpamScopeInput.new
        type.dry_run = params[:dry_run]
        type.ipam_id = params[:ipam_id]
        type.description = params[:description]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateKeyPairInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateKeyPairInput, context: context)
        type = Types::CreateKeyPairInput.new
        type.key_name = params[:key_name]
        type.dry_run = params[:dry_run]
        type.key_type = params[:key_type]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module CreateLaunchTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLaunchTemplateInput, context: context)
        type = Types::CreateLaunchTemplateInput.new
        type.dry_run = params[:dry_run]
        type.client_token = params[:client_token]
        type.launch_template_name = params[:launch_template_name]
        type.version_description = params[:version_description]
        type.launch_template_data = RequestLaunchTemplateData.build(params[:launch_template_data], context: "#{context}[:launch_template_data]") unless params[:launch_template_data].nil?
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module CreateLaunchTemplateVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLaunchTemplateVersionInput, context: context)
        type = Types::CreateLaunchTemplateVersionInput.new
        type.dry_run = params[:dry_run]
        type.client_token = params[:client_token]
        type.launch_template_id = params[:launch_template_id]
        type.launch_template_name = params[:launch_template_name]
        type.source_version = params[:source_version]
        type.version_description = params[:version_description]
        type.launch_template_data = RequestLaunchTemplateData.build(params[:launch_template_data], context: "#{context}[:launch_template_data]") unless params[:launch_template_data].nil?
        type
      end
    end

    module CreateLocalGatewayRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocalGatewayRouteInput, context: context)
        type = Types::CreateLocalGatewayRouteInput.new
        type.destination_cidr_block = params[:destination_cidr_block]
        type.local_gateway_route_table_id = params[:local_gateway_route_table_id]
        type.local_gateway_virtual_interface_group_id = params[:local_gateway_virtual_interface_group_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateLocalGatewayRouteTableVpcAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocalGatewayRouteTableVpcAssociationInput, context: context)
        type = Types::CreateLocalGatewayRouteTableVpcAssociationInput.new
        type.local_gateway_route_table_id = params[:local_gateway_route_table_id]
        type.vpc_id = params[:vpc_id]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateManagedPrefixListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateManagedPrefixListInput, context: context)
        type = Types::CreateManagedPrefixListInput.new
        type.dry_run = params[:dry_run]
        type.prefix_list_name = params[:prefix_list_name]
        type.entries = AddPrefixListEntries.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type.max_entries = params[:max_entries]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.address_family = params[:address_family]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateNatGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNatGatewayInput, context: context)
        type = Types::CreateNatGatewayInput.new
        type.allocation_id = params[:allocation_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.dry_run = params[:dry_run]
        type.subnet_id = params[:subnet_id]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.connectivity_type = params[:connectivity_type]
        type
      end
    end

    module CreateNetworkAclEntryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNetworkAclEntryInput, context: context)
        type = Types::CreateNetworkAclEntryInput.new
        type.cidr_block = params[:cidr_block]
        type.dry_run = params[:dry_run]
        type.egress = params[:egress]
        type.icmp_type_code = IcmpTypeCode.build(params[:icmp_type_code], context: "#{context}[:icmp_type_code]") unless params[:icmp_type_code].nil?
        type.ipv6_cidr_block = params[:ipv6_cidr_block]
        type.network_acl_id = params[:network_acl_id]
        type.port_range = PortRange.build(params[:port_range], context: "#{context}[:port_range]") unless params[:port_range].nil?
        type.protocol = params[:protocol]
        type.rule_action = params[:rule_action]
        type.rule_number = params[:rule_number]
        type
      end
    end

    module CreateNetworkAclInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNetworkAclInput, context: context)
        type = Types::CreateNetworkAclInput.new
        type.dry_run = params[:dry_run]
        type.vpc_id = params[:vpc_id]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module CreateNetworkInsightsAccessScopeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNetworkInsightsAccessScopeInput, context: context)
        type = Types::CreateNetworkInsightsAccessScopeInput.new
        type.match_paths = AccessScopePathListRequest.build(params[:match_paths], context: "#{context}[:match_paths]") unless params[:match_paths].nil?
        type.exclude_paths = AccessScopePathListRequest.build(params[:exclude_paths], context: "#{context}[:exclude_paths]") unless params[:exclude_paths].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateNetworkInsightsPathInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNetworkInsightsPathInput, context: context)
        type = Types::CreateNetworkInsightsPathInput.new
        type.source_ip = params[:source_ip]
        type.destination_ip = params[:destination_ip]
        type.source = params[:source]
        type.destination = params[:destination]
        type.protocol = params[:protocol]
        type.destination_port = params[:destination_port]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateNetworkInterfaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNetworkInterfaceInput, context: context)
        type = Types::CreateNetworkInterfaceInput.new
        type.description = params[:description]
        type.dry_run = params[:dry_run]
        type.groups = SecurityGroupIdStringList.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.ipv6_address_count = params[:ipv6_address_count]
        type.ipv6_addresses = InstanceIpv6AddressList.build(params[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless params[:ipv6_addresses].nil?
        type.private_ip_address = params[:private_ip_address]
        type.private_ip_addresses = PrivateIpAddressSpecificationList.build(params[:private_ip_addresses], context: "#{context}[:private_ip_addresses]") unless params[:private_ip_addresses].nil?
        type.secondary_private_ip_address_count = params[:secondary_private_ip_address_count]
        type.ipv4_prefixes = Ipv4PrefixList.build(params[:ipv4_prefixes], context: "#{context}[:ipv4_prefixes]") unless params[:ipv4_prefixes].nil?
        type.ipv4_prefix_count = params[:ipv4_prefix_count]
        type.ipv6_prefixes = Ipv6PrefixList.build(params[:ipv6_prefixes], context: "#{context}[:ipv6_prefixes]") unless params[:ipv6_prefixes].nil?
        type.ipv6_prefix_count = params[:ipv6_prefix_count]
        type.interface_type = params[:interface_type]
        type.subnet_id = params[:subnet_id]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateNetworkInterfacePermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNetworkInterfacePermissionInput, context: context)
        type = Types::CreateNetworkInterfacePermissionInput.new
        type.network_interface_id = params[:network_interface_id]
        type.aws_account_id = params[:aws_account_id]
        type.aws_service = params[:aws_service]
        type.permission = params[:permission]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreatePlacementGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePlacementGroupInput, context: context)
        type = Types::CreatePlacementGroupInput.new
        type.dry_run = params[:dry_run]
        type.group_name = params[:group_name]
        type.strategy = params[:strategy]
        type.partition_count = params[:partition_count]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module CreatePublicIpv4PoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePublicIpv4PoolInput, context: context)
        type = Types::CreatePublicIpv4PoolInput.new
        type.dry_run = params[:dry_run]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module CreateReplaceRootVolumeTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReplaceRootVolumeTaskInput, context: context)
        type = Types::CreateReplaceRootVolumeTaskInput.new
        type.instance_id = params[:instance_id]
        type.snapshot_id = params[:snapshot_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.dry_run = params[:dry_run]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module CreateReservedInstancesListingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReservedInstancesListingInput, context: context)
        type = Types::CreateReservedInstancesListingInput.new
        type.client_token = params[:client_token]
        type.instance_count = params[:instance_count]
        type.price_schedules = PriceScheduleSpecificationList.build(params[:price_schedules], context: "#{context}[:price_schedules]") unless params[:price_schedules].nil?
        type.reserved_instances_id = params[:reserved_instances_id]
        type
      end
    end

    module CreateRestoreImageTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRestoreImageTaskInput, context: context)
        type = Types::CreateRestoreImageTaskInput.new
        type.bucket = params[:bucket]
        type.object_key = params[:object_key]
        type.member_name = params[:member_name]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRouteInput, context: context)
        type = Types::CreateRouteInput.new
        type.destination_cidr_block = params[:destination_cidr_block]
        type.destination_ipv6_cidr_block = params[:destination_ipv6_cidr_block]
        type.destination_prefix_list_id = params[:destination_prefix_list_id]
        type.dry_run = params[:dry_run]
        type.vpc_endpoint_id = params[:vpc_endpoint_id]
        type.egress_only_internet_gateway_id = params[:egress_only_internet_gateway_id]
        type.gateway_id = params[:gateway_id]
        type.instance_id = params[:instance_id]
        type.nat_gateway_id = params[:nat_gateway_id]
        type.transit_gateway_id = params[:transit_gateway_id]
        type.local_gateway_id = params[:local_gateway_id]
        type.carrier_gateway_id = params[:carrier_gateway_id]
        type.network_interface_id = params[:network_interface_id]
        type.route_table_id = params[:route_table_id]
        type.vpc_peering_connection_id = params[:vpc_peering_connection_id]
        type.core_network_arn = params[:core_network_arn]
        type
      end
    end

    module CreateRouteTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRouteTableInput, context: context)
        type = Types::CreateRouteTableInput.new
        type.dry_run = params[:dry_run]
        type.vpc_id = params[:vpc_id]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module CreateSecurityGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSecurityGroupInput, context: context)
        type = Types::CreateSecurityGroupInput.new
        type.description = params[:description]
        type.group_name = params[:group_name]
        type.vpc_id = params[:vpc_id]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotInput, context: context)
        type = Types::CreateSnapshotInput.new
        type.description = params[:description]
        type.outpost_arn = params[:outpost_arn]
        type.volume_id = params[:volume_id]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateSnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotsInput, context: context)
        type = Types::CreateSnapshotsInput.new
        type.description = params[:description]
        type.instance_specification = InstanceSpecification.build(params[:instance_specification], context: "#{context}[:instance_specification]") unless params[:instance_specification].nil?
        type.outpost_arn = params[:outpost_arn]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type.copy_tags_from_source = params[:copy_tags_from_source]
        type
      end
    end

    module CreateSpotDatafeedSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSpotDatafeedSubscriptionInput, context: context)
        type = Types::CreateSpotDatafeedSubscriptionInput.new
        type.bucket = params[:bucket]
        type.dry_run = params[:dry_run]
        type.prefix = params[:prefix]
        type
      end
    end

    module CreateStoreImageTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStoreImageTaskInput, context: context)
        type = Types::CreateStoreImageTaskInput.new
        type.image_id = params[:image_id]
        type.bucket = params[:bucket]
        type.s3_object_tags = S3ObjectTagList.build(params[:s3_object_tags], context: "#{context}[:s3_object_tags]") unless params[:s3_object_tags].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateSubnetCidrReservationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSubnetCidrReservationInput, context: context)
        type = Types::CreateSubnetCidrReservationInput.new
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.subnet_id = params[:subnet_id]
        type.cidr = params[:cidr]
        type.reservation_type = params[:reservation_type]
        type.description = params[:description]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateSubnetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSubnetInput, context: context)
        type = Types::CreateSubnetInput.new
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.availability_zone = params[:availability_zone]
        type.availability_zone_id = params[:availability_zone_id]
        type.cidr_block = params[:cidr_block]
        type.ipv6_cidr_block = params[:ipv6_cidr_block]
        type.outpost_arn = params[:outpost_arn]
        type.vpc_id = params[:vpc_id]
        type.dry_run = params[:dry_run]
        type.ipv6_native = params[:ipv6_native]
        type
      end
    end

    module CreateTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTagsInput, context: context)
        type = Types::CreateTagsInput.new
        type.dry_run = params[:dry_run]
        type.resources = ResourceIdList.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateTrafficMirrorFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrafficMirrorFilterInput, context: context)
        type = Types::CreateTrafficMirrorFilterInput.new
        type.description = params[:description]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateTrafficMirrorFilterRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrafficMirrorFilterRuleInput, context: context)
        type = Types::CreateTrafficMirrorFilterRuleInput.new
        type.traffic_mirror_filter_id = params[:traffic_mirror_filter_id]
        type.traffic_direction = params[:traffic_direction]
        type.rule_number = params[:rule_number]
        type.rule_action = params[:rule_action]
        type.destination_port_range = TrafficMirrorPortRangeRequest.build(params[:destination_port_range], context: "#{context}[:destination_port_range]") unless params[:destination_port_range].nil?
        type.source_port_range = TrafficMirrorPortRangeRequest.build(params[:source_port_range], context: "#{context}[:source_port_range]") unless params[:source_port_range].nil?
        type.protocol = params[:protocol]
        type.destination_cidr_block = params[:destination_cidr_block]
        type.source_cidr_block = params[:source_cidr_block]
        type.description = params[:description]
        type.dry_run = params[:dry_run]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateTrafficMirrorSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrafficMirrorSessionInput, context: context)
        type = Types::CreateTrafficMirrorSessionInput.new
        type.network_interface_id = params[:network_interface_id]
        type.traffic_mirror_target_id = params[:traffic_mirror_target_id]
        type.traffic_mirror_filter_id = params[:traffic_mirror_filter_id]
        type.packet_length = params[:packet_length]
        type.session_number = params[:session_number]
        type.virtual_network_id = params[:virtual_network_id]
        type.description = params[:description]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateTrafficMirrorTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrafficMirrorTargetInput, context: context)
        type = Types::CreateTrafficMirrorTargetInput.new
        type.network_interface_id = params[:network_interface_id]
        type.network_load_balancer_arn = params[:network_load_balancer_arn]
        type.description = params[:description]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateTransitGatewayConnectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTransitGatewayConnectInput, context: context)
        type = Types::CreateTransitGatewayConnectInput.new
        type.transport_transit_gateway_attachment_id = params[:transport_transit_gateway_attachment_id]
        type.options = CreateTransitGatewayConnectRequestOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateTransitGatewayConnectPeerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTransitGatewayConnectPeerInput, context: context)
        type = Types::CreateTransitGatewayConnectPeerInput.new
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.transit_gateway_address = params[:transit_gateway_address]
        type.peer_address = params[:peer_address]
        type.bgp_options = TransitGatewayConnectRequestBgpOptions.build(params[:bgp_options], context: "#{context}[:bgp_options]") unless params[:bgp_options].nil?
        type.inside_cidr_blocks = InsideCidrBlocksStringList.build(params[:inside_cidr_blocks], context: "#{context}[:inside_cidr_blocks]") unless params[:inside_cidr_blocks].nil?
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateTransitGatewayConnectRequestOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTransitGatewayConnectRequestOptions, context: context)
        type = Types::CreateTransitGatewayConnectRequestOptions.new
        type.protocol = params[:protocol]
        type
      end
    end

    module CreateTransitGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTransitGatewayInput, context: context)
        type = Types::CreateTransitGatewayInput.new
        type.description = params[:description]
        type.options = TransitGatewayRequestOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateTransitGatewayMulticastDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTransitGatewayMulticastDomainInput, context: context)
        type = Types::CreateTransitGatewayMulticastDomainInput.new
        type.transit_gateway_id = params[:transit_gateway_id]
        type.options = CreateTransitGatewayMulticastDomainRequestOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateTransitGatewayMulticastDomainRequestOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTransitGatewayMulticastDomainRequestOptions, context: context)
        type = Types::CreateTransitGatewayMulticastDomainRequestOptions.new
        type.igmpv2_support = params[:igmpv2_support]
        type.static_sources_support = params[:static_sources_support]
        type.auto_accept_shared_associations = params[:auto_accept_shared_associations]
        type
      end
    end

    module CreateTransitGatewayPeeringAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTransitGatewayPeeringAttachmentInput, context: context)
        type = Types::CreateTransitGatewayPeeringAttachmentInput.new
        type.transit_gateway_id = params[:transit_gateway_id]
        type.peer_transit_gateway_id = params[:peer_transit_gateway_id]
        type.peer_account_id = params[:peer_account_id]
        type.peer_region = params[:peer_region]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateTransitGatewayPrefixListReferenceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTransitGatewayPrefixListReferenceInput, context: context)
        type = Types::CreateTransitGatewayPrefixListReferenceInput.new
        type.transit_gateway_route_table_id = params[:transit_gateway_route_table_id]
        type.prefix_list_id = params[:prefix_list_id]
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.blackhole = params[:blackhole]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateTransitGatewayRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTransitGatewayRouteInput, context: context)
        type = Types::CreateTransitGatewayRouteInput.new
        type.destination_cidr_block = params[:destination_cidr_block]
        type.transit_gateway_route_table_id = params[:transit_gateway_route_table_id]
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.blackhole = params[:blackhole]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateTransitGatewayRouteTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTransitGatewayRouteTableInput, context: context)
        type = Types::CreateTransitGatewayRouteTableInput.new
        type.transit_gateway_id = params[:transit_gateway_id]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateTransitGatewayVpcAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTransitGatewayVpcAttachmentInput, context: context)
        type = Types::CreateTransitGatewayVpcAttachmentInput.new
        type.transit_gateway_id = params[:transit_gateway_id]
        type.vpc_id = params[:vpc_id]
        type.subnet_ids = TransitGatewaySubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.options = CreateTransitGatewayVpcAttachmentRequestOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateTransitGatewayVpcAttachmentRequestOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTransitGatewayVpcAttachmentRequestOptions, context: context)
        type = Types::CreateTransitGatewayVpcAttachmentRequestOptions.new
        type.dns_support = params[:dns_support]
        type.ipv6_support = params[:ipv6_support]
        type.appliance_mode_support = params[:appliance_mode_support]
        type
      end
    end

    module CreateVolumeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVolumeInput, context: context)
        type = Types::CreateVolumeInput.new
        type.availability_zone = params[:availability_zone]
        type.encrypted = params[:encrypted]
        type.iops = params[:iops]
        type.kms_key_id = params[:kms_key_id]
        type.outpost_arn = params[:outpost_arn]
        type.size = params[:size]
        type.snapshot_id = params[:snapshot_id]
        type.volume_type = params[:volume_type]
        type.dry_run = params[:dry_run]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.multi_attach_enabled = params[:multi_attach_enabled]
        type.throughput = params[:throughput]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateVolumePermission
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVolumePermission, context: context)
        type = Types::CreateVolumePermission.new
        type.group = params[:group]
        type.user_id = params[:user_id]
        type
      end
    end

    module CreateVolumePermissionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CreateVolumePermission.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateVolumePermissionModifications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVolumePermissionModifications, context: context)
        type = Types::CreateVolumePermissionModifications.new
        type.add = CreateVolumePermissionList.build(params[:add], context: "#{context}[:add]") unless params[:add].nil?
        type.remove = CreateVolumePermissionList.build(params[:remove], context: "#{context}[:remove]") unless params[:remove].nil?
        type
      end
    end

    module CreateVpcEndpointConnectionNotificationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpcEndpointConnectionNotificationInput, context: context)
        type = Types::CreateVpcEndpointConnectionNotificationInput.new
        type.dry_run = params[:dry_run]
        type.service_id = params[:service_id]
        type.vpc_endpoint_id = params[:vpc_endpoint_id]
        type.connection_notification_arn = params[:connection_notification_arn]
        type.connection_events = ValueStringList.build(params[:connection_events], context: "#{context}[:connection_events]") unless params[:connection_events].nil?
        type.client_token = params[:client_token]
        type
      end
    end

    module CreateVpcEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpcEndpointInput, context: context)
        type = Types::CreateVpcEndpointInput.new
        type.dry_run = params[:dry_run]
        type.vpc_endpoint_type = params[:vpc_endpoint_type]
        type.vpc_id = params[:vpc_id]
        type.service_name = params[:service_name]
        type.policy_document = params[:policy_document]
        type.route_table_ids = VpcEndpointRouteTableIdList.build(params[:route_table_ids], context: "#{context}[:route_table_ids]") unless params[:route_table_ids].nil?
        type.subnet_ids = VpcEndpointSubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = VpcEndpointSecurityGroupIdList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.client_token = params[:client_token]
        type.private_dns_enabled = params[:private_dns_enabled]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module CreateVpcEndpointServiceConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpcEndpointServiceConfigurationInput, context: context)
        type = Types::CreateVpcEndpointServiceConfigurationInput.new
        type.dry_run = params[:dry_run]
        type.acceptance_required = params[:acceptance_required]
        type.private_dns_name = params[:private_dns_name]
        type.network_load_balancer_arns = ValueStringList.build(params[:network_load_balancer_arns], context: "#{context}[:network_load_balancer_arns]") unless params[:network_load_balancer_arns].nil?
        type.gateway_load_balancer_arns = ValueStringList.build(params[:gateway_load_balancer_arns], context: "#{context}[:gateway_load_balancer_arns]") unless params[:gateway_load_balancer_arns].nil?
        type.client_token = params[:client_token]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module CreateVpcInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpcInput, context: context)
        type = Types::CreateVpcInput.new
        type.cidr_block = params[:cidr_block]
        type.amazon_provided_ipv6_cidr_block = params[:amazon_provided_ipv6_cidr_block]
        type.ipv6_pool = params[:ipv6_pool]
        type.ipv6_cidr_block = params[:ipv6_cidr_block]
        type.ipv4_ipam_pool_id = params[:ipv4_ipam_pool_id]
        type.ipv4_netmask_length = params[:ipv4_netmask_length]
        type.ipv6_ipam_pool_id = params[:ipv6_ipam_pool_id]
        type.ipv6_netmask_length = params[:ipv6_netmask_length]
        type.dry_run = params[:dry_run]
        type.instance_tenancy = params[:instance_tenancy]
        type.ipv6_cidr_block_network_border_group = params[:ipv6_cidr_block_network_border_group]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module CreateVpcPeeringConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpcPeeringConnectionInput, context: context)
        type = Types::CreateVpcPeeringConnectionInput.new
        type.dry_run = params[:dry_run]
        type.peer_owner_id = params[:peer_owner_id]
        type.peer_vpc_id = params[:peer_vpc_id]
        type.vpc_id = params[:vpc_id]
        type.peer_region = params[:peer_region]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module CreateVpnConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpnConnectionInput, context: context)
        type = Types::CreateVpnConnectionInput.new
        type.customer_gateway_id = params[:customer_gateway_id]
        type.type = params[:type]
        type.vpn_gateway_id = params[:vpn_gateway_id]
        type.transit_gateway_id = params[:transit_gateway_id]
        type.dry_run = params[:dry_run]
        type.options = VpnConnectionOptionsSpecification.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module CreateVpnConnectionRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpnConnectionRouteInput, context: context)
        type = Types::CreateVpnConnectionRouteInput.new
        type.destination_cidr_block = params[:destination_cidr_block]
        type.vpn_connection_id = params[:vpn_connection_id]
        type
      end
    end

    module CreateVpnGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpnGatewayInput, context: context)
        type = Types::CreateVpnGatewayInput.new
        type.availability_zone = params[:availability_zone]
        type.type = params[:type]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.amazon_side_asn = params[:amazon_side_asn]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreditSpecificationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreditSpecificationRequest, context: context)
        type = Types::CreditSpecificationRequest.new
        type.cpu_credits = params[:cpu_credits]
        type
      end
    end

    module CustomerGatewayIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module DedicatedHostIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module DeleteCarrierGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCarrierGatewayInput, context: context)
        type = Types::DeleteCarrierGatewayInput.new
        type.carrier_gateway_id = params[:carrier_gateway_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteClientVpnEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClientVpnEndpointInput, context: context)
        type = Types::DeleteClientVpnEndpointInput.new
        type.client_vpn_endpoint_id = params[:client_vpn_endpoint_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteClientVpnRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClientVpnRouteInput, context: context)
        type = Types::DeleteClientVpnRouteInput.new
        type.client_vpn_endpoint_id = params[:client_vpn_endpoint_id]
        type.target_vpc_subnet_id = params[:target_vpc_subnet_id]
        type.destination_cidr_block = params[:destination_cidr_block]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteCustomerGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomerGatewayInput, context: context)
        type = Types::DeleteCustomerGatewayInput.new
        type.customer_gateway_id = params[:customer_gateway_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteDhcpOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDhcpOptionsInput, context: context)
        type = Types::DeleteDhcpOptionsInput.new
        type.dhcp_options_id = params[:dhcp_options_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteEgressOnlyInternetGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEgressOnlyInternetGatewayInput, context: context)
        type = Types::DeleteEgressOnlyInternetGatewayInput.new
        type.dry_run = params[:dry_run]
        type.egress_only_internet_gateway_id = params[:egress_only_internet_gateway_id]
        type
      end
    end

    module DeleteFleetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFleetsInput, context: context)
        type = Types::DeleteFleetsInput.new
        type.dry_run = params[:dry_run]
        type.fleet_ids = FleetIdSet.build(params[:fleet_ids], context: "#{context}[:fleet_ids]") unless params[:fleet_ids].nil?
        type.terminate_instances = params[:terminate_instances]
        type
      end
    end

    module DeleteFlowLogsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFlowLogsInput, context: context)
        type = Types::DeleteFlowLogsInput.new
        type.dry_run = params[:dry_run]
        type.flow_log_ids = FlowLogIdList.build(params[:flow_log_ids], context: "#{context}[:flow_log_ids]") unless params[:flow_log_ids].nil?
        type
      end
    end

    module DeleteFpgaImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFpgaImageInput, context: context)
        type = Types::DeleteFpgaImageInput.new
        type.dry_run = params[:dry_run]
        type.fpga_image_id = params[:fpga_image_id]
        type
      end
    end

    module DeleteInstanceEventWindowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInstanceEventWindowInput, context: context)
        type = Types::DeleteInstanceEventWindowInput.new
        type.dry_run = params[:dry_run]
        type.force_delete = params[:force_delete]
        type.instance_event_window_id = params[:instance_event_window_id]
        type
      end
    end

    module DeleteInternetGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInternetGatewayInput, context: context)
        type = Types::DeleteInternetGatewayInput.new
        type.dry_run = params[:dry_run]
        type.internet_gateway_id = params[:internet_gateway_id]
        type
      end
    end

    module DeleteIpamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIpamInput, context: context)
        type = Types::DeleteIpamInput.new
        type.dry_run = params[:dry_run]
        type.ipam_id = params[:ipam_id]
        type
      end
    end

    module DeleteIpamPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIpamPoolInput, context: context)
        type = Types::DeleteIpamPoolInput.new
        type.dry_run = params[:dry_run]
        type.ipam_pool_id = params[:ipam_pool_id]
        type
      end
    end

    module DeleteIpamScopeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIpamScopeInput, context: context)
        type = Types::DeleteIpamScopeInput.new
        type.dry_run = params[:dry_run]
        type.ipam_scope_id = params[:ipam_scope_id]
        type
      end
    end

    module DeleteKeyPairInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteKeyPairInput, context: context)
        type = Types::DeleteKeyPairInput.new
        type.key_name = params[:key_name]
        type.key_pair_id = params[:key_pair_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteLaunchTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLaunchTemplateInput, context: context)
        type = Types::DeleteLaunchTemplateInput.new
        type.dry_run = params[:dry_run]
        type.launch_template_id = params[:launch_template_id]
        type.launch_template_name = params[:launch_template_name]
        type
      end
    end

    module DeleteLaunchTemplateVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLaunchTemplateVersionsInput, context: context)
        type = Types::DeleteLaunchTemplateVersionsInput.new
        type.dry_run = params[:dry_run]
        type.launch_template_id = params[:launch_template_id]
        type.launch_template_name = params[:launch_template_name]
        type.versions = VersionStringList.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type
      end
    end

    module DeleteLocalGatewayRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLocalGatewayRouteInput, context: context)
        type = Types::DeleteLocalGatewayRouteInput.new
        type.destination_cidr_block = params[:destination_cidr_block]
        type.local_gateway_route_table_id = params[:local_gateway_route_table_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteLocalGatewayRouteTableVpcAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLocalGatewayRouteTableVpcAssociationInput, context: context)
        type = Types::DeleteLocalGatewayRouteTableVpcAssociationInput.new
        type.local_gateway_route_table_vpc_association_id = params[:local_gateway_route_table_vpc_association_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteManagedPrefixListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteManagedPrefixListInput, context: context)
        type = Types::DeleteManagedPrefixListInput.new
        type.dry_run = params[:dry_run]
        type.prefix_list_id = params[:prefix_list_id]
        type
      end
    end

    module DeleteNatGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNatGatewayInput, context: context)
        type = Types::DeleteNatGatewayInput.new
        type.dry_run = params[:dry_run]
        type.nat_gateway_id = params[:nat_gateway_id]
        type
      end
    end

    module DeleteNetworkAclEntryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNetworkAclEntryInput, context: context)
        type = Types::DeleteNetworkAclEntryInput.new
        type.dry_run = params[:dry_run]
        type.egress = params[:egress]
        type.network_acl_id = params[:network_acl_id]
        type.rule_number = params[:rule_number]
        type
      end
    end

    module DeleteNetworkAclInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNetworkAclInput, context: context)
        type = Types::DeleteNetworkAclInput.new
        type.dry_run = params[:dry_run]
        type.network_acl_id = params[:network_acl_id]
        type
      end
    end

    module DeleteNetworkInsightsAccessScopeAnalysisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNetworkInsightsAccessScopeAnalysisInput, context: context)
        type = Types::DeleteNetworkInsightsAccessScopeAnalysisInput.new
        type.network_insights_access_scope_analysis_id = params[:network_insights_access_scope_analysis_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteNetworkInsightsAccessScopeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNetworkInsightsAccessScopeInput, context: context)
        type = Types::DeleteNetworkInsightsAccessScopeInput.new
        type.dry_run = params[:dry_run]
        type.network_insights_access_scope_id = params[:network_insights_access_scope_id]
        type
      end
    end

    module DeleteNetworkInsightsAnalysisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNetworkInsightsAnalysisInput, context: context)
        type = Types::DeleteNetworkInsightsAnalysisInput.new
        type.dry_run = params[:dry_run]
        type.network_insights_analysis_id = params[:network_insights_analysis_id]
        type
      end
    end

    module DeleteNetworkInsightsPathInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNetworkInsightsPathInput, context: context)
        type = Types::DeleteNetworkInsightsPathInput.new
        type.dry_run = params[:dry_run]
        type.network_insights_path_id = params[:network_insights_path_id]
        type
      end
    end

    module DeleteNetworkInterfaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNetworkInterfaceInput, context: context)
        type = Types::DeleteNetworkInterfaceInput.new
        type.dry_run = params[:dry_run]
        type.network_interface_id = params[:network_interface_id]
        type
      end
    end

    module DeleteNetworkInterfacePermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNetworkInterfacePermissionInput, context: context)
        type = Types::DeleteNetworkInterfacePermissionInput.new
        type.network_interface_permission_id = params[:network_interface_permission_id]
        type.force = params[:force]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeletePlacementGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePlacementGroupInput, context: context)
        type = Types::DeletePlacementGroupInput.new
        type.dry_run = params[:dry_run]
        type.group_name = params[:group_name]
        type
      end
    end

    module DeletePublicIpv4PoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePublicIpv4PoolInput, context: context)
        type = Types::DeletePublicIpv4PoolInput.new
        type.dry_run = params[:dry_run]
        type.pool_id = params[:pool_id]
        type
      end
    end

    module DeleteQueuedReservedInstancesIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module DeleteQueuedReservedInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteQueuedReservedInstancesInput, context: context)
        type = Types::DeleteQueuedReservedInstancesInput.new
        type.dry_run = params[:dry_run]
        type.reserved_instances_ids = DeleteQueuedReservedInstancesIdList.build(params[:reserved_instances_ids], context: "#{context}[:reserved_instances_ids]") unless params[:reserved_instances_ids].nil?
        type
      end
    end

    module DeleteRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRouteInput, context: context)
        type = Types::DeleteRouteInput.new
        type.destination_cidr_block = params[:destination_cidr_block]
        type.destination_ipv6_cidr_block = params[:destination_ipv6_cidr_block]
        type.destination_prefix_list_id = params[:destination_prefix_list_id]
        type.dry_run = params[:dry_run]
        type.route_table_id = params[:route_table_id]
        type
      end
    end

    module DeleteRouteTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRouteTableInput, context: context)
        type = Types::DeleteRouteTableInput.new
        type.dry_run = params[:dry_run]
        type.route_table_id = params[:route_table_id]
        type
      end
    end

    module DeleteSecurityGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSecurityGroupInput, context: context)
        type = Types::DeleteSecurityGroupInput.new
        type.group_id = params[:group_id]
        type.group_name = params[:group_name]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSnapshotInput, context: context)
        type = Types::DeleteSnapshotInput.new
        type.snapshot_id = params[:snapshot_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteSpotDatafeedSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSpotDatafeedSubscriptionInput, context: context)
        type = Types::DeleteSpotDatafeedSubscriptionInput.new
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteSubnetCidrReservationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSubnetCidrReservationInput, context: context)
        type = Types::DeleteSubnetCidrReservationInput.new
        type.subnet_cidr_reservation_id = params[:subnet_cidr_reservation_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteSubnetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSubnetInput, context: context)
        type = Types::DeleteSubnetInput.new
        type.subnet_id = params[:subnet_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsInput, context: context)
        type = Types::DeleteTagsInput.new
        type.dry_run = params[:dry_run]
        type.resources = ResourceIdList.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DeleteTrafficMirrorFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrafficMirrorFilterInput, context: context)
        type = Types::DeleteTrafficMirrorFilterInput.new
        type.traffic_mirror_filter_id = params[:traffic_mirror_filter_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteTrafficMirrorFilterRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrafficMirrorFilterRuleInput, context: context)
        type = Types::DeleteTrafficMirrorFilterRuleInput.new
        type.traffic_mirror_filter_rule_id = params[:traffic_mirror_filter_rule_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteTrafficMirrorSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrafficMirrorSessionInput, context: context)
        type = Types::DeleteTrafficMirrorSessionInput.new
        type.traffic_mirror_session_id = params[:traffic_mirror_session_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteTrafficMirrorTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrafficMirrorTargetInput, context: context)
        type = Types::DeleteTrafficMirrorTargetInput.new
        type.traffic_mirror_target_id = params[:traffic_mirror_target_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteTransitGatewayConnectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTransitGatewayConnectInput, context: context)
        type = Types::DeleteTransitGatewayConnectInput.new
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteTransitGatewayConnectPeerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTransitGatewayConnectPeerInput, context: context)
        type = Types::DeleteTransitGatewayConnectPeerInput.new
        type.transit_gateway_connect_peer_id = params[:transit_gateway_connect_peer_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteTransitGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTransitGatewayInput, context: context)
        type = Types::DeleteTransitGatewayInput.new
        type.transit_gateway_id = params[:transit_gateway_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteTransitGatewayMulticastDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTransitGatewayMulticastDomainInput, context: context)
        type = Types::DeleteTransitGatewayMulticastDomainInput.new
        type.transit_gateway_multicast_domain_id = params[:transit_gateway_multicast_domain_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteTransitGatewayPeeringAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTransitGatewayPeeringAttachmentInput, context: context)
        type = Types::DeleteTransitGatewayPeeringAttachmentInput.new
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteTransitGatewayPrefixListReferenceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTransitGatewayPrefixListReferenceInput, context: context)
        type = Types::DeleteTransitGatewayPrefixListReferenceInput.new
        type.transit_gateway_route_table_id = params[:transit_gateway_route_table_id]
        type.prefix_list_id = params[:prefix_list_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteTransitGatewayRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTransitGatewayRouteInput, context: context)
        type = Types::DeleteTransitGatewayRouteInput.new
        type.transit_gateway_route_table_id = params[:transit_gateway_route_table_id]
        type.destination_cidr_block = params[:destination_cidr_block]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteTransitGatewayRouteTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTransitGatewayRouteTableInput, context: context)
        type = Types::DeleteTransitGatewayRouteTableInput.new
        type.transit_gateway_route_table_id = params[:transit_gateway_route_table_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteTransitGatewayVpcAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTransitGatewayVpcAttachmentInput, context: context)
        type = Types::DeleteTransitGatewayVpcAttachmentInput.new
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteVolumeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVolumeInput, context: context)
        type = Types::DeleteVolumeInput.new
        type.volume_id = params[:volume_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteVpcEndpointConnectionNotificationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVpcEndpointConnectionNotificationsInput, context: context)
        type = Types::DeleteVpcEndpointConnectionNotificationsInput.new
        type.dry_run = params[:dry_run]
        type.connection_notification_ids = ConnectionNotificationIdsList.build(params[:connection_notification_ids], context: "#{context}[:connection_notification_ids]") unless params[:connection_notification_ids].nil?
        type
      end
    end

    module DeleteVpcEndpointServiceConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVpcEndpointServiceConfigurationsInput, context: context)
        type = Types::DeleteVpcEndpointServiceConfigurationsInput.new
        type.dry_run = params[:dry_run]
        type.service_ids = VpcEndpointServiceIdList.build(params[:service_ids], context: "#{context}[:service_ids]") unless params[:service_ids].nil?
        type
      end
    end

    module DeleteVpcEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVpcEndpointsInput, context: context)
        type = Types::DeleteVpcEndpointsInput.new
        type.dry_run = params[:dry_run]
        type.vpc_endpoint_ids = VpcEndpointIdList.build(params[:vpc_endpoint_ids], context: "#{context}[:vpc_endpoint_ids]") unless params[:vpc_endpoint_ids].nil?
        type
      end
    end

    module DeleteVpcInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVpcInput, context: context)
        type = Types::DeleteVpcInput.new
        type.vpc_id = params[:vpc_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteVpcPeeringConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVpcPeeringConnectionInput, context: context)
        type = Types::DeleteVpcPeeringConnectionInput.new
        type.dry_run = params[:dry_run]
        type.vpc_peering_connection_id = params[:vpc_peering_connection_id]
        type
      end
    end

    module DeleteVpnConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVpnConnectionInput, context: context)
        type = Types::DeleteVpnConnectionInput.new
        type.vpn_connection_id = params[:vpn_connection_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteVpnConnectionRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVpnConnectionRouteInput, context: context)
        type = Types::DeleteVpnConnectionRouteInput.new
        type.destination_cidr_block = params[:destination_cidr_block]
        type.vpn_connection_id = params[:vpn_connection_id]
        type
      end
    end

    module DeleteVpnGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVpnGatewayInput, context: context)
        type = Types::DeleteVpnGatewayInput.new
        type.vpn_gateway_id = params[:vpn_gateway_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeprovisionByoipCidrInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeprovisionByoipCidrInput, context: context)
        type = Types::DeprovisionByoipCidrInput.new
        type.cidr = params[:cidr]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeprovisionIpamPoolCidrInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeprovisionIpamPoolCidrInput, context: context)
        type = Types::DeprovisionIpamPoolCidrInput.new
        type.dry_run = params[:dry_run]
        type.ipam_pool_id = params[:ipam_pool_id]
        type.cidr = params[:cidr]
        type
      end
    end

    module DeprovisionPublicIpv4PoolCidrInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeprovisionPublicIpv4PoolCidrInput, context: context)
        type = Types::DeprovisionPublicIpv4PoolCidrInput.new
        type.dry_run = params[:dry_run]
        type.pool_id = params[:pool_id]
        type.cidr = params[:cidr]
        type
      end
    end

    module DeregisterImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterImageInput, context: context)
        type = Types::DeregisterImageInput.new
        type.image_id = params[:image_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeregisterInstanceEventNotificationAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterInstanceEventNotificationAttributesInput, context: context)
        type = Types::DeregisterInstanceEventNotificationAttributesInput.new
        type.dry_run = params[:dry_run]
        type.instance_tag_attribute = DeregisterInstanceTagAttributeRequest.build(params[:instance_tag_attribute], context: "#{context}[:instance_tag_attribute]") unless params[:instance_tag_attribute].nil?
        type
      end
    end

    module DeregisterInstanceTagAttributeRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterInstanceTagAttributeRequest, context: context)
        type = Types::DeregisterInstanceTagAttributeRequest.new
        type.include_all_tags_of_instance = params[:include_all_tags_of_instance]
        type.instance_tag_keys = InstanceTagKeySet.build(params[:instance_tag_keys], context: "#{context}[:instance_tag_keys]") unless params[:instance_tag_keys].nil?
        type
      end
    end

    module DeregisterTransitGatewayMulticastGroupMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterTransitGatewayMulticastGroupMembersInput, context: context)
        type = Types::DeregisterTransitGatewayMulticastGroupMembersInput.new
        type.transit_gateway_multicast_domain_id = params[:transit_gateway_multicast_domain_id]
        type.group_ip_address = params[:group_ip_address]
        type.network_interface_ids = TransitGatewayNetworkInterfaceIdList.build(params[:network_interface_ids], context: "#{context}[:network_interface_ids]") unless params[:network_interface_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeregisterTransitGatewayMulticastGroupSourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterTransitGatewayMulticastGroupSourcesInput, context: context)
        type = Types::DeregisterTransitGatewayMulticastGroupSourcesInput.new
        type.transit_gateway_multicast_domain_id = params[:transit_gateway_multicast_domain_id]
        type.group_ip_address = params[:group_ip_address]
        type.network_interface_ids = TransitGatewayNetworkInterfaceIdList.build(params[:network_interface_ids], context: "#{context}[:network_interface_ids]") unless params[:network_interface_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeAccountAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountAttributesInput, context: context)
        type = Types::DescribeAccountAttributesInput.new
        type.attribute_names = AccountAttributeNameStringList.build(params[:attribute_names], context: "#{context}[:attribute_names]") unless params[:attribute_names].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeAddressesAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAddressesAttributeInput, context: context)
        type = Types::DescribeAddressesAttributeInput.new
        type.allocation_ids = AllocationIds.build(params[:allocation_ids], context: "#{context}[:allocation_ids]") unless params[:allocation_ids].nil?
        type.attribute = params[:attribute]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeAddressesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAddressesInput, context: context)
        type = Types::DescribeAddressesInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.public_ips = PublicIpStringList.build(params[:public_ips], context: "#{context}[:public_ips]") unless params[:public_ips].nil?
        type.allocation_ids = AllocationIdList.build(params[:allocation_ids], context: "#{context}[:allocation_ids]") unless params[:allocation_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeAggregateIdFormatInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAggregateIdFormatInput, context: context)
        type = Types::DescribeAggregateIdFormatInput.new
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeAvailabilityZonesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAvailabilityZonesInput, context: context)
        type = Types::DescribeAvailabilityZonesInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.zone_names = ZoneNameStringList.build(params[:zone_names], context: "#{context}[:zone_names]") unless params[:zone_names].nil?
        type.zone_ids = ZoneIdStringList.build(params[:zone_ids], context: "#{context}[:zone_ids]") unless params[:zone_ids].nil?
        type.all_availability_zones = params[:all_availability_zones]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeBundleTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBundleTasksInput, context: context)
        type = Types::DescribeBundleTasksInput.new
        type.bundle_ids = BundleIdStringList.build(params[:bundle_ids], context: "#{context}[:bundle_ids]") unless params[:bundle_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeByoipCidrsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeByoipCidrsInput, context: context)
        type = Types::DescribeByoipCidrsInput.new
        type.dry_run = params[:dry_run]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeCapacityReservationFleetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCapacityReservationFleetsInput, context: context)
        type = Types::DescribeCapacityReservationFleetsInput.new
        type.capacity_reservation_fleet_ids = CapacityReservationFleetIdSet.build(params[:capacity_reservation_fleet_ids], context: "#{context}[:capacity_reservation_fleet_ids]") unless params[:capacity_reservation_fleet_ids].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeCapacityReservationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCapacityReservationsInput, context: context)
        type = Types::DescribeCapacityReservationsInput.new
        type.capacity_reservation_ids = CapacityReservationIdSet.build(params[:capacity_reservation_ids], context: "#{context}[:capacity_reservation_ids]") unless params[:capacity_reservation_ids].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeCarrierGatewaysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCarrierGatewaysInput, context: context)
        type = Types::DescribeCarrierGatewaysInput.new
        type.carrier_gateway_ids = CarrierGatewayIdSet.build(params[:carrier_gateway_ids], context: "#{context}[:carrier_gateway_ids]") unless params[:carrier_gateway_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeClassicLinkInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClassicLinkInstancesInput, context: context)
        type = Types::DescribeClassicLinkInstancesInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.dry_run = params[:dry_run]
        type.instance_ids = InstanceIdStringList.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeClientVpnAuthorizationRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClientVpnAuthorizationRulesInput, context: context)
        type = Types::DescribeClientVpnAuthorizationRulesInput.new
        type.client_vpn_endpoint_id = params[:client_vpn_endpoint_id]
        type.dry_run = params[:dry_run]
        type.next_token = params[:next_token]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeClientVpnConnectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClientVpnConnectionsInput, context: context)
        type = Types::DescribeClientVpnConnectionsInput.new
        type.client_vpn_endpoint_id = params[:client_vpn_endpoint_id]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeClientVpnEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClientVpnEndpointsInput, context: context)
        type = Types::DescribeClientVpnEndpointsInput.new
        type.client_vpn_endpoint_ids = ClientVpnEndpointIdList.build(params[:client_vpn_endpoint_ids], context: "#{context}[:client_vpn_endpoint_ids]") unless params[:client_vpn_endpoint_ids].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeClientVpnRoutesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClientVpnRoutesInput, context: context)
        type = Types::DescribeClientVpnRoutesInput.new
        type.client_vpn_endpoint_id = params[:client_vpn_endpoint_id]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeClientVpnTargetNetworksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClientVpnTargetNetworksInput, context: context)
        type = Types::DescribeClientVpnTargetNetworksInput.new
        type.client_vpn_endpoint_id = params[:client_vpn_endpoint_id]
        type.association_ids = ValueStringList.build(params[:association_ids], context: "#{context}[:association_ids]") unless params[:association_ids].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeCoipPoolsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCoipPoolsInput, context: context)
        type = Types::DescribeCoipPoolsInput.new
        type.pool_ids = CoipPoolIdSet.build(params[:pool_ids], context: "#{context}[:pool_ids]") unless params[:pool_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeConversionTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConversionTasksInput, context: context)
        type = Types::DescribeConversionTasksInput.new
        type.conversion_task_ids = ConversionIdStringList.build(params[:conversion_task_ids], context: "#{context}[:conversion_task_ids]") unless params[:conversion_task_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeCustomerGatewaysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomerGatewaysInput, context: context)
        type = Types::DescribeCustomerGatewaysInput.new
        type.customer_gateway_ids = CustomerGatewayIdStringList.build(params[:customer_gateway_ids], context: "#{context}[:customer_gateway_ids]") unless params[:customer_gateway_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeDhcpOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDhcpOptionsInput, context: context)
        type = Types::DescribeDhcpOptionsInput.new
        type.dhcp_options_ids = DhcpOptionsIdStringList.build(params[:dhcp_options_ids], context: "#{context}[:dhcp_options_ids]") unless params[:dhcp_options_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.dry_run = params[:dry_run]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeEgressOnlyInternetGatewaysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEgressOnlyInternetGatewaysInput, context: context)
        type = Types::DescribeEgressOnlyInternetGatewaysInput.new
        type.dry_run = params[:dry_run]
        type.egress_only_internet_gateway_ids = EgressOnlyInternetGatewayIdList.build(params[:egress_only_internet_gateway_ids], context: "#{context}[:egress_only_internet_gateway_ids]") unless params[:egress_only_internet_gateway_ids].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module DescribeElasticGpusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeElasticGpusInput, context: context)
        type = Types::DescribeElasticGpusInput.new
        type.elastic_gpu_ids = ElasticGpuIdSet.build(params[:elastic_gpu_ids], context: "#{context}[:elastic_gpu_ids]") unless params[:elastic_gpu_ids].nil?
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeExportImageTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExportImageTasksInput, context: context)
        type = Types::DescribeExportImageTasksInput.new
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.export_image_task_ids = ExportImageTaskIdList.build(params[:export_image_task_ids], context: "#{context}[:export_image_task_ids]") unless params[:export_image_task_ids].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeExportTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExportTasksInput, context: context)
        type = Types::DescribeExportTasksInput.new
        type.export_task_ids = ExportTaskIdStringList.build(params[:export_task_ids], context: "#{context}[:export_task_ids]") unless params[:export_task_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module DescribeFastSnapshotRestoresInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFastSnapshotRestoresInput, context: context)
        type = Types::DescribeFastSnapshotRestoresInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeFleetHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetHistoryInput, context: context)
        type = Types::DescribeFleetHistoryInput.new
        type.dry_run = params[:dry_run]
        type.event_type = params[:event_type]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.fleet_id = params[:fleet_id]
        type.start_time = params[:start_time]
        type
      end
    end

    module DescribeFleetInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetInstancesInput, context: context)
        type = Types::DescribeFleetInstancesInput.new
        type.dry_run = params[:dry_run]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.fleet_id = params[:fleet_id]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module DescribeFleetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetsInput, context: context)
        type = Types::DescribeFleetsInput.new
        type.dry_run = params[:dry_run]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.fleet_ids = FleetIdSet.build(params[:fleet_ids], context: "#{context}[:fleet_ids]") unless params[:fleet_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module DescribeFlowLogsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFlowLogsInput, context: context)
        type = Types::DescribeFlowLogsInput.new
        type.dry_run = params[:dry_run]
        type.filter = FilterList.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.flow_log_ids = FlowLogIdList.build(params[:flow_log_ids], context: "#{context}[:flow_log_ids]") unless params[:flow_log_ids].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFpgaImageAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFpgaImageAttributeInput, context: context)
        type = Types::DescribeFpgaImageAttributeInput.new
        type.dry_run = params[:dry_run]
        type.fpga_image_id = params[:fpga_image_id]
        type.attribute = params[:attribute]
        type
      end
    end

    module DescribeFpgaImagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFpgaImagesInput, context: context)
        type = Types::DescribeFpgaImagesInput.new
        type.dry_run = params[:dry_run]
        type.fpga_image_ids = FpgaImageIdList.build(params[:fpga_image_ids], context: "#{context}[:fpga_image_ids]") unless params[:fpga_image_ids].nil?
        type.owners = OwnerStringList.build(params[:owners], context: "#{context}[:owners]") unless params[:owners].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeHostReservationOfferingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHostReservationOfferingsInput, context: context)
        type = Types::DescribeHostReservationOfferingsInput.new
        type.filter = FilterList.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.max_duration = params[:max_duration]
        type.max_results = params[:max_results]
        type.min_duration = params[:min_duration]
        type.next_token = params[:next_token]
        type.offering_id = params[:offering_id]
        type
      end
    end

    module DescribeHostReservationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHostReservationsInput, context: context)
        type = Types::DescribeHostReservationsInput.new
        type.filter = FilterList.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.host_reservation_id_set = HostReservationIdSet.build(params[:host_reservation_id_set], context: "#{context}[:host_reservation_id_set]") unless params[:host_reservation_id_set].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeHostsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHostsInput, context: context)
        type = Types::DescribeHostsInput.new
        type.filter = FilterList.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.host_ids = RequestHostIdList.build(params[:host_ids], context: "#{context}[:host_ids]") unless params[:host_ids].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeIamInstanceProfileAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIamInstanceProfileAssociationsInput, context: context)
        type = Types::DescribeIamInstanceProfileAssociationsInput.new
        type.association_ids = AssociationIdList.build(params[:association_ids], context: "#{context}[:association_ids]") unless params[:association_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeIdFormatInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIdFormatInput, context: context)
        type = Types::DescribeIdFormatInput.new
        type.resource = params[:resource]
        type
      end
    end

    module DescribeIdentityIdFormatInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIdentityIdFormatInput, context: context)
        type = Types::DescribeIdentityIdFormatInput.new
        type.principal_arn = params[:principal_arn]
        type.resource = params[:resource]
        type
      end
    end

    module DescribeImageAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImageAttributeInput, context: context)
        type = Types::DescribeImageAttributeInput.new
        type.attribute = params[:attribute]
        type.image_id = params[:image_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeImagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImagesInput, context: context)
        type = Types::DescribeImagesInput.new
        type.executable_users = ExecutableByStringList.build(params[:executable_users], context: "#{context}[:executable_users]") unless params[:executable_users].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.image_ids = ImageIdStringList.build(params[:image_ids], context: "#{context}[:image_ids]") unless params[:image_ids].nil?
        type.owners = OwnerStringList.build(params[:owners], context: "#{context}[:owners]") unless params[:owners].nil?
        type.include_deprecated = params[:include_deprecated]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeImportImageTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImportImageTasksInput, context: context)
        type = Types::DescribeImportImageTasksInput.new
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.import_task_ids = ImportTaskIdList.build(params[:import_task_ids], context: "#{context}[:import_task_ids]") unless params[:import_task_ids].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeImportSnapshotTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImportSnapshotTasksInput, context: context)
        type = Types::DescribeImportSnapshotTasksInput.new
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.import_task_ids = ImportSnapshotTaskIdList.build(params[:import_task_ids], context: "#{context}[:import_task_ids]") unless params[:import_task_ids].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeInstanceAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceAttributeInput, context: context)
        type = Types::DescribeInstanceAttributeInput.new
        type.attribute = params[:attribute]
        type.dry_run = params[:dry_run]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module DescribeInstanceCreditSpecificationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceCreditSpecificationsInput, context: context)
        type = Types::DescribeInstanceCreditSpecificationsInput.new
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.instance_ids = InstanceIdStringList.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeInstanceEventNotificationAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceEventNotificationAttributesInput, context: context)
        type = Types::DescribeInstanceEventNotificationAttributesInput.new
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeInstanceEventWindowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceEventWindowsInput, context: context)
        type = Types::DescribeInstanceEventWindowsInput.new
        type.dry_run = params[:dry_run]
        type.instance_event_window_ids = InstanceEventWindowIdSet.build(params[:instance_event_window_ids], context: "#{context}[:instance_event_window_ids]") unless params[:instance_event_window_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeInstanceStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceStatusInput, context: context)
        type = Types::DescribeInstanceStatusInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.instance_ids = InstanceIdStringList.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type.include_all_instances = params[:include_all_instances]
        type
      end
    end

    module DescribeInstanceTypeOfferingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceTypeOfferingsInput, context: context)
        type = Types::DescribeInstanceTypeOfferingsInput.new
        type.dry_run = params[:dry_run]
        type.location_type = params[:location_type]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeInstanceTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceTypesInput, context: context)
        type = Types::DescribeInstanceTypesInput.new
        type.dry_run = params[:dry_run]
        type.instance_types = RequestInstanceTypeList.build(params[:instance_types], context: "#{context}[:instance_types]") unless params[:instance_types].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstancesInput, context: context)
        type = Types::DescribeInstancesInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.instance_ids = InstanceIdStringList.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.dry_run = params[:dry_run]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeInternetGatewaysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInternetGatewaysInput, context: context)
        type = Types::DescribeInternetGatewaysInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.dry_run = params[:dry_run]
        type.internet_gateway_ids = InternetGatewayIdList.build(params[:internet_gateway_ids], context: "#{context}[:internet_gateway_ids]") unless params[:internet_gateway_ids].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeIpamPoolsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIpamPoolsInput, context: context)
        type = Types::DescribeIpamPoolsInput.new
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.ipam_pool_ids = ValueStringList.build(params[:ipam_pool_ids], context: "#{context}[:ipam_pool_ids]") unless params[:ipam_pool_ids].nil?
        type
      end
    end

    module DescribeIpamScopesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIpamScopesInput, context: context)
        type = Types::DescribeIpamScopesInput.new
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.ipam_scope_ids = ValueStringList.build(params[:ipam_scope_ids], context: "#{context}[:ipam_scope_ids]") unless params[:ipam_scope_ids].nil?
        type
      end
    end

    module DescribeIpamsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIpamsInput, context: context)
        type = Types::DescribeIpamsInput.new
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.ipam_ids = ValueStringList.build(params[:ipam_ids], context: "#{context}[:ipam_ids]") unless params[:ipam_ids].nil?
        type
      end
    end

    module DescribeIpv6PoolsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIpv6PoolsInput, context: context)
        type = Types::DescribeIpv6PoolsInput.new
        type.pool_ids = Ipv6PoolIdList.build(params[:pool_ids], context: "#{context}[:pool_ids]") unless params[:pool_ids].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module DescribeKeyPairsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeKeyPairsInput, context: context)
        type = Types::DescribeKeyPairsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.key_names = KeyNameStringList.build(params[:key_names], context: "#{context}[:key_names]") unless params[:key_names].nil?
        type.key_pair_ids = KeyPairIdStringList.build(params[:key_pair_ids], context: "#{context}[:key_pair_ids]") unless params[:key_pair_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeLaunchTemplateVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLaunchTemplateVersionsInput, context: context)
        type = Types::DescribeLaunchTemplateVersionsInput.new
        type.dry_run = params[:dry_run]
        type.launch_template_id = params[:launch_template_id]
        type.launch_template_name = params[:launch_template_name]
        type.versions = VersionStringList.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type.min_version = params[:min_version]
        type.max_version = params[:max_version]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module DescribeLaunchTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLaunchTemplatesInput, context: context)
        type = Types::DescribeLaunchTemplatesInput.new
        type.dry_run = params[:dry_run]
        type.launch_template_ids = LaunchTemplateIdStringList.build(params[:launch_template_ids], context: "#{context}[:launch_template_ids]") unless params[:launch_template_ids].nil?
        type.launch_template_names = LaunchTemplateNameStringList.build(params[:launch_template_names], context: "#{context}[:launch_template_names]") unless params[:launch_template_names].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsInput, context: context)
        type = Types::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsInput.new
        type.local_gateway_route_table_virtual_interface_group_association_ids = LocalGatewayRouteTableVirtualInterfaceGroupAssociationIdSet.build(params[:local_gateway_route_table_virtual_interface_group_association_ids], context: "#{context}[:local_gateway_route_table_virtual_interface_group_association_ids]") unless params[:local_gateway_route_table_virtual_interface_group_association_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeLocalGatewayRouteTableVpcAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocalGatewayRouteTableVpcAssociationsInput, context: context)
        type = Types::DescribeLocalGatewayRouteTableVpcAssociationsInput.new
        type.local_gateway_route_table_vpc_association_ids = LocalGatewayRouteTableVpcAssociationIdSet.build(params[:local_gateway_route_table_vpc_association_ids], context: "#{context}[:local_gateway_route_table_vpc_association_ids]") unless params[:local_gateway_route_table_vpc_association_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeLocalGatewayRouteTablesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocalGatewayRouteTablesInput, context: context)
        type = Types::DescribeLocalGatewayRouteTablesInput.new
        type.local_gateway_route_table_ids = LocalGatewayRouteTableIdSet.build(params[:local_gateway_route_table_ids], context: "#{context}[:local_gateway_route_table_ids]") unless params[:local_gateway_route_table_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeLocalGatewayVirtualInterfaceGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocalGatewayVirtualInterfaceGroupsInput, context: context)
        type = Types::DescribeLocalGatewayVirtualInterfaceGroupsInput.new
        type.local_gateway_virtual_interface_group_ids = LocalGatewayVirtualInterfaceGroupIdSet.build(params[:local_gateway_virtual_interface_group_ids], context: "#{context}[:local_gateway_virtual_interface_group_ids]") unless params[:local_gateway_virtual_interface_group_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeLocalGatewayVirtualInterfacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocalGatewayVirtualInterfacesInput, context: context)
        type = Types::DescribeLocalGatewayVirtualInterfacesInput.new
        type.local_gateway_virtual_interface_ids = LocalGatewayVirtualInterfaceIdSet.build(params[:local_gateway_virtual_interface_ids], context: "#{context}[:local_gateway_virtual_interface_ids]") unless params[:local_gateway_virtual_interface_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeLocalGatewaysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocalGatewaysInput, context: context)
        type = Types::DescribeLocalGatewaysInput.new
        type.local_gateway_ids = LocalGatewayIdSet.build(params[:local_gateway_ids], context: "#{context}[:local_gateway_ids]") unless params[:local_gateway_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeManagedPrefixListsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeManagedPrefixListsInput, context: context)
        type = Types::DescribeManagedPrefixListsInput.new
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.prefix_list_ids = ValueStringList.build(params[:prefix_list_ids], context: "#{context}[:prefix_list_ids]") unless params[:prefix_list_ids].nil?
        type
      end
    end

    module DescribeMovingAddressesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMovingAddressesInput, context: context)
        type = Types::DescribeMovingAddressesInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.dry_run = params[:dry_run]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.public_ips = ValueStringList.build(params[:public_ips], context: "#{context}[:public_ips]") unless params[:public_ips].nil?
        type
      end
    end

    module DescribeNatGatewaysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNatGatewaysInput, context: context)
        type = Types::DescribeNatGatewaysInput.new
        type.dry_run = params[:dry_run]
        type.filter = FilterList.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.max_results = params[:max_results]
        type.nat_gateway_ids = NatGatewayIdStringList.build(params[:nat_gateway_ids], context: "#{context}[:nat_gateway_ids]") unless params[:nat_gateway_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeNetworkAclsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNetworkAclsInput, context: context)
        type = Types::DescribeNetworkAclsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.dry_run = params[:dry_run]
        type.network_acl_ids = NetworkAclIdStringList.build(params[:network_acl_ids], context: "#{context}[:network_acl_ids]") unless params[:network_acl_ids].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeNetworkInsightsAccessScopeAnalysesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNetworkInsightsAccessScopeAnalysesInput, context: context)
        type = Types::DescribeNetworkInsightsAccessScopeAnalysesInput.new
        type.network_insights_access_scope_analysis_ids = NetworkInsightsAccessScopeAnalysisIdList.build(params[:network_insights_access_scope_analysis_ids], context: "#{context}[:network_insights_access_scope_analysis_ids]") unless params[:network_insights_access_scope_analysis_ids].nil?
        type.network_insights_access_scope_id = params[:network_insights_access_scope_id]
        type.analysis_start_time_begin = params[:analysis_start_time_begin]
        type.analysis_start_time_end = params[:analysis_start_time_end]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.dry_run = params[:dry_run]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeNetworkInsightsAccessScopesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNetworkInsightsAccessScopesInput, context: context)
        type = Types::DescribeNetworkInsightsAccessScopesInput.new
        type.network_insights_access_scope_ids = NetworkInsightsAccessScopeIdList.build(params[:network_insights_access_scope_ids], context: "#{context}[:network_insights_access_scope_ids]") unless params[:network_insights_access_scope_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.dry_run = params[:dry_run]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeNetworkInsightsAnalysesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNetworkInsightsAnalysesInput, context: context)
        type = Types::DescribeNetworkInsightsAnalysesInput.new
        type.network_insights_analysis_ids = NetworkInsightsAnalysisIdList.build(params[:network_insights_analysis_ids], context: "#{context}[:network_insights_analysis_ids]") unless params[:network_insights_analysis_ids].nil?
        type.network_insights_path_id = params[:network_insights_path_id]
        type.analysis_start_time = params[:analysis_start_time]
        type.analysis_end_time = params[:analysis_end_time]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.dry_run = params[:dry_run]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeNetworkInsightsPathsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNetworkInsightsPathsInput, context: context)
        type = Types::DescribeNetworkInsightsPathsInput.new
        type.network_insights_path_ids = NetworkInsightsPathIdList.build(params[:network_insights_path_ids], context: "#{context}[:network_insights_path_ids]") unless params[:network_insights_path_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.dry_run = params[:dry_run]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeNetworkInterfaceAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNetworkInterfaceAttributeInput, context: context)
        type = Types::DescribeNetworkInterfaceAttributeInput.new
        type.attribute = params[:attribute]
        type.dry_run = params[:dry_run]
        type.network_interface_id = params[:network_interface_id]
        type
      end
    end

    module DescribeNetworkInterfacePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNetworkInterfacePermissionsInput, context: context)
        type = Types::DescribeNetworkInterfacePermissionsInput.new
        type.network_interface_permission_ids = NetworkInterfacePermissionIdList.build(params[:network_interface_permission_ids], context: "#{context}[:network_interface_permission_ids]") unless params[:network_interface_permission_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeNetworkInterfacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNetworkInterfacesInput, context: context)
        type = Types::DescribeNetworkInterfacesInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.dry_run = params[:dry_run]
        type.network_interface_ids = NetworkInterfaceIdList.build(params[:network_interface_ids], context: "#{context}[:network_interface_ids]") unless params[:network_interface_ids].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribePlacementGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePlacementGroupsInput, context: context)
        type = Types::DescribePlacementGroupsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.dry_run = params[:dry_run]
        type.group_names = PlacementGroupStringList.build(params[:group_names], context: "#{context}[:group_names]") unless params[:group_names].nil?
        type.group_ids = PlacementGroupIdStringList.build(params[:group_ids], context: "#{context}[:group_ids]") unless params[:group_ids].nil?
        type
      end
    end

    module DescribePrefixListsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePrefixListsInput, context: context)
        type = Types::DescribePrefixListsInput.new
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.prefix_list_ids = PrefixListResourceIdStringList.build(params[:prefix_list_ids], context: "#{context}[:prefix_list_ids]") unless params[:prefix_list_ids].nil?
        type
      end
    end

    module DescribePrincipalIdFormatInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePrincipalIdFormatInput, context: context)
        type = Types::DescribePrincipalIdFormatInput.new
        type.dry_run = params[:dry_run]
        type.resources = ResourceList.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribePublicIpv4PoolsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePublicIpv4PoolsInput, context: context)
        type = Types::DescribePublicIpv4PoolsInput.new
        type.pool_ids = PublicIpv4PoolIdStringList.build(params[:pool_ids], context: "#{context}[:pool_ids]") unless params[:pool_ids].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module DescribeRegionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRegionsInput, context: context)
        type = Types::DescribeRegionsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.region_names = RegionNameStringList.build(params[:region_names], context: "#{context}[:region_names]") unless params[:region_names].nil?
        type.dry_run = params[:dry_run]
        type.all_regions = params[:all_regions]
        type
      end
    end

    module DescribeReplaceRootVolumeTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplaceRootVolumeTasksInput, context: context)
        type = Types::DescribeReplaceRootVolumeTasksInput.new
        type.replace_root_volume_task_ids = ReplaceRootVolumeTaskIds.build(params[:replace_root_volume_task_ids], context: "#{context}[:replace_root_volume_task_ids]") unless params[:replace_root_volume_task_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeReservedInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedInstancesInput, context: context)
        type = Types::DescribeReservedInstancesInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.offering_class = params[:offering_class]
        type.reserved_instances_ids = ReservedInstancesIdStringList.build(params[:reserved_instances_ids], context: "#{context}[:reserved_instances_ids]") unless params[:reserved_instances_ids].nil?
        type.dry_run = params[:dry_run]
        type.offering_type = params[:offering_type]
        type
      end
    end

    module DescribeReservedInstancesListingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedInstancesListingsInput, context: context)
        type = Types::DescribeReservedInstancesListingsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.reserved_instances_id = params[:reserved_instances_id]
        type.reserved_instances_listing_id = params[:reserved_instances_listing_id]
        type
      end
    end

    module DescribeReservedInstancesModificationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedInstancesModificationsInput, context: context)
        type = Types::DescribeReservedInstancesModificationsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.reserved_instances_modification_ids = ReservedInstancesModificationIdStringList.build(params[:reserved_instances_modification_ids], context: "#{context}[:reserved_instances_modification_ids]") unless params[:reserved_instances_modification_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeReservedInstancesOfferingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedInstancesOfferingsInput, context: context)
        type = Types::DescribeReservedInstancesOfferingsInput.new
        type.availability_zone = params[:availability_zone]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.include_marketplace = params[:include_marketplace]
        type.instance_type = params[:instance_type]
        type.max_duration = params[:max_duration]
        type.max_instance_count = params[:max_instance_count]
        type.min_duration = params[:min_duration]
        type.offering_class = params[:offering_class]
        type.product_description = params[:product_description]
        type.reserved_instances_offering_ids = ReservedInstancesOfferingIdStringList.build(params[:reserved_instances_offering_ids], context: "#{context}[:reserved_instances_offering_ids]") unless params[:reserved_instances_offering_ids].nil?
        type.dry_run = params[:dry_run]
        type.instance_tenancy = params[:instance_tenancy]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.offering_type = params[:offering_type]
        type
      end
    end

    module DescribeRouteTablesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRouteTablesInput, context: context)
        type = Types::DescribeRouteTablesInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.dry_run = params[:dry_run]
        type.route_table_ids = RouteTableIdStringList.build(params[:route_table_ids], context: "#{context}[:route_table_ids]") unless params[:route_table_ids].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeScheduledInstanceAvailabilityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScheduledInstanceAvailabilityInput, context: context)
        type = Types::DescribeScheduledInstanceAvailabilityInput.new
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.first_slot_start_time_range = SlotDateTimeRangeRequest.build(params[:first_slot_start_time_range], context: "#{context}[:first_slot_start_time_range]") unless params[:first_slot_start_time_range].nil?
        type.max_results = params[:max_results]
        type.max_slot_duration_in_hours = params[:max_slot_duration_in_hours]
        type.min_slot_duration_in_hours = params[:min_slot_duration_in_hours]
        type.next_token = params[:next_token]
        type.recurrence = ScheduledInstanceRecurrenceRequest.build(params[:recurrence], context: "#{context}[:recurrence]") unless params[:recurrence].nil?
        type
      end
    end

    module DescribeScheduledInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScheduledInstancesInput, context: context)
        type = Types::DescribeScheduledInstancesInput.new
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.scheduled_instance_ids = ScheduledInstanceIdRequestSet.build(params[:scheduled_instance_ids], context: "#{context}[:scheduled_instance_ids]") unless params[:scheduled_instance_ids].nil?
        type.slot_start_time_range = SlotStartTimeRangeRequest.build(params[:slot_start_time_range], context: "#{context}[:slot_start_time_range]") unless params[:slot_start_time_range].nil?
        type
      end
    end

    module DescribeSecurityGroupReferencesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSecurityGroupReferencesInput, context: context)
        type = Types::DescribeSecurityGroupReferencesInput.new
        type.dry_run = params[:dry_run]
        type.group_id = GroupIds.build(params[:group_id], context: "#{context}[:group_id]") unless params[:group_id].nil?
        type
      end
    end

    module DescribeSecurityGroupRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSecurityGroupRulesInput, context: context)
        type = Types::DescribeSecurityGroupRulesInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.security_group_rule_ids = SecurityGroupRuleIdList.build(params[:security_group_rule_ids], context: "#{context}[:security_group_rule_ids]") unless params[:security_group_rule_ids].nil?
        type.dry_run = params[:dry_run]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeSecurityGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSecurityGroupsInput, context: context)
        type = Types::DescribeSecurityGroupsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.group_ids = GroupIdStringList.build(params[:group_ids], context: "#{context}[:group_ids]") unless params[:group_ids].nil?
        type.group_names = GroupNameStringList.build(params[:group_names], context: "#{context}[:group_names]") unless params[:group_names].nil?
        type.dry_run = params[:dry_run]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeSnapshotAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSnapshotAttributeInput, context: context)
        type = Types::DescribeSnapshotAttributeInput.new
        type.attribute = params[:attribute]
        type.snapshot_id = params[:snapshot_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeSnapshotTierStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSnapshotTierStatusInput, context: context)
        type = Types::DescribeSnapshotTierStatusInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.dry_run = params[:dry_run]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeSnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSnapshotsInput, context: context)
        type = Types::DescribeSnapshotsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.owner_ids = OwnerStringList.build(params[:owner_ids], context: "#{context}[:owner_ids]") unless params[:owner_ids].nil?
        type.restorable_by_user_ids = RestorableByStringList.build(params[:restorable_by_user_ids], context: "#{context}[:restorable_by_user_ids]") unless params[:restorable_by_user_ids].nil?
        type.snapshot_ids = SnapshotIdStringList.build(params[:snapshot_ids], context: "#{context}[:snapshot_ids]") unless params[:snapshot_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeSpotDatafeedSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSpotDatafeedSubscriptionInput, context: context)
        type = Types::DescribeSpotDatafeedSubscriptionInput.new
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeSpotFleetInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSpotFleetInstancesInput, context: context)
        type = Types::DescribeSpotFleetInstancesInput.new
        type.dry_run = params[:dry_run]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.spot_fleet_request_id = params[:spot_fleet_request_id]
        type
      end
    end

    module DescribeSpotFleetRequestHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSpotFleetRequestHistoryInput, context: context)
        type = Types::DescribeSpotFleetRequestHistoryInput.new
        type.dry_run = params[:dry_run]
        type.event_type = params[:event_type]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.spot_fleet_request_id = params[:spot_fleet_request_id]
        type.start_time = params[:start_time]
        type
      end
    end

    module DescribeSpotFleetRequestsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSpotFleetRequestsInput, context: context)
        type = Types::DescribeSpotFleetRequestsInput.new
        type.dry_run = params[:dry_run]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.spot_fleet_request_ids = SpotFleetRequestIdList.build(params[:spot_fleet_request_ids], context: "#{context}[:spot_fleet_request_ids]") unless params[:spot_fleet_request_ids].nil?
        type
      end
    end

    module DescribeSpotInstanceRequestsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSpotInstanceRequestsInput, context: context)
        type = Types::DescribeSpotInstanceRequestsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.dry_run = params[:dry_run]
        type.spot_instance_request_ids = SpotInstanceRequestIdList.build(params[:spot_instance_request_ids], context: "#{context}[:spot_instance_request_ids]") unless params[:spot_instance_request_ids].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeSpotPriceHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSpotPriceHistoryInput, context: context)
        type = Types::DescribeSpotPriceHistoryInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.availability_zone = params[:availability_zone]
        type.dry_run = params[:dry_run]
        type.end_time = params[:end_time]
        type.instance_types = InstanceTypeList.build(params[:instance_types], context: "#{context}[:instance_types]") unless params[:instance_types].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.product_descriptions = ProductDescriptionList.build(params[:product_descriptions], context: "#{context}[:product_descriptions]") unless params[:product_descriptions].nil?
        type.start_time = params[:start_time]
        type
      end
    end

    module DescribeStaleSecurityGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStaleSecurityGroupsInput, context: context)
        type = Types::DescribeStaleSecurityGroupsInput.new
        type.dry_run = params[:dry_run]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module DescribeStoreImageTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStoreImageTasksInput, context: context)
        type = Types::DescribeStoreImageTasksInput.new
        type.image_ids = ImageIdList.build(params[:image_ids], context: "#{context}[:image_ids]") unless params[:image_ids].nil?
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeSubnetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSubnetsInput, context: context)
        type = Types::DescribeSubnetsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.subnet_ids = SubnetIdStringList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.dry_run = params[:dry_run]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagsInput, context: context)
        type = Types::DescribeTagsInput.new
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeTrafficMirrorFiltersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrafficMirrorFiltersInput, context: context)
        type = Types::DescribeTrafficMirrorFiltersInput.new
        type.traffic_mirror_filter_ids = TrafficMirrorFilterIdList.build(params[:traffic_mirror_filter_ids], context: "#{context}[:traffic_mirror_filter_ids]") unless params[:traffic_mirror_filter_ids].nil?
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeTrafficMirrorSessionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrafficMirrorSessionsInput, context: context)
        type = Types::DescribeTrafficMirrorSessionsInput.new
        type.traffic_mirror_session_ids = TrafficMirrorSessionIdList.build(params[:traffic_mirror_session_ids], context: "#{context}[:traffic_mirror_session_ids]") unless params[:traffic_mirror_session_ids].nil?
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeTrafficMirrorTargetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrafficMirrorTargetsInput, context: context)
        type = Types::DescribeTrafficMirrorTargetsInput.new
        type.traffic_mirror_target_ids = TrafficMirrorTargetIdList.build(params[:traffic_mirror_target_ids], context: "#{context}[:traffic_mirror_target_ids]") unless params[:traffic_mirror_target_ids].nil?
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeTransitGatewayAttachmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTransitGatewayAttachmentsInput, context: context)
        type = Types::DescribeTransitGatewayAttachmentsInput.new
        type.transit_gateway_attachment_ids = TransitGatewayAttachmentIdStringList.build(params[:transit_gateway_attachment_ids], context: "#{context}[:transit_gateway_attachment_ids]") unless params[:transit_gateway_attachment_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeTransitGatewayConnectPeersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTransitGatewayConnectPeersInput, context: context)
        type = Types::DescribeTransitGatewayConnectPeersInput.new
        type.transit_gateway_connect_peer_ids = TransitGatewayConnectPeerIdStringList.build(params[:transit_gateway_connect_peer_ids], context: "#{context}[:transit_gateway_connect_peer_ids]") unless params[:transit_gateway_connect_peer_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeTransitGatewayConnectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTransitGatewayConnectsInput, context: context)
        type = Types::DescribeTransitGatewayConnectsInput.new
        type.transit_gateway_attachment_ids = TransitGatewayAttachmentIdStringList.build(params[:transit_gateway_attachment_ids], context: "#{context}[:transit_gateway_attachment_ids]") unless params[:transit_gateway_attachment_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeTransitGatewayMulticastDomainsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTransitGatewayMulticastDomainsInput, context: context)
        type = Types::DescribeTransitGatewayMulticastDomainsInput.new
        type.transit_gateway_multicast_domain_ids = TransitGatewayMulticastDomainIdStringList.build(params[:transit_gateway_multicast_domain_ids], context: "#{context}[:transit_gateway_multicast_domain_ids]") unless params[:transit_gateway_multicast_domain_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeTransitGatewayPeeringAttachmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTransitGatewayPeeringAttachmentsInput, context: context)
        type = Types::DescribeTransitGatewayPeeringAttachmentsInput.new
        type.transit_gateway_attachment_ids = TransitGatewayAttachmentIdStringList.build(params[:transit_gateway_attachment_ids], context: "#{context}[:transit_gateway_attachment_ids]") unless params[:transit_gateway_attachment_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeTransitGatewayRouteTablesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTransitGatewayRouteTablesInput, context: context)
        type = Types::DescribeTransitGatewayRouteTablesInput.new
        type.transit_gateway_route_table_ids = TransitGatewayRouteTableIdStringList.build(params[:transit_gateway_route_table_ids], context: "#{context}[:transit_gateway_route_table_ids]") unless params[:transit_gateway_route_table_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeTransitGatewayVpcAttachmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTransitGatewayVpcAttachmentsInput, context: context)
        type = Types::DescribeTransitGatewayVpcAttachmentsInput.new
        type.transit_gateway_attachment_ids = TransitGatewayAttachmentIdStringList.build(params[:transit_gateway_attachment_ids], context: "#{context}[:transit_gateway_attachment_ids]") unless params[:transit_gateway_attachment_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeTransitGatewaysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTransitGatewaysInput, context: context)
        type = Types::DescribeTransitGatewaysInput.new
        type.transit_gateway_ids = TransitGatewayIdStringList.build(params[:transit_gateway_ids], context: "#{context}[:transit_gateway_ids]") unless params[:transit_gateway_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeTrunkInterfaceAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrunkInterfaceAssociationsInput, context: context)
        type = Types::DescribeTrunkInterfaceAssociationsInput.new
        type.association_ids = TrunkInterfaceAssociationIdList.build(params[:association_ids], context: "#{context}[:association_ids]") unless params[:association_ids].nil?
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeVolumeAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVolumeAttributeInput, context: context)
        type = Types::DescribeVolumeAttributeInput.new
        type.attribute = params[:attribute]
        type.volume_id = params[:volume_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeVolumeStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVolumeStatusInput, context: context)
        type = Types::DescribeVolumeStatusInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.volume_ids = VolumeIdStringList.build(params[:volume_ids], context: "#{context}[:volume_ids]") unless params[:volume_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeVolumesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVolumesInput, context: context)
        type = Types::DescribeVolumesInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.volume_ids = VolumeIdStringList.build(params[:volume_ids], context: "#{context}[:volume_ids]") unless params[:volume_ids].nil?
        type.dry_run = params[:dry_run]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeVolumesModificationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVolumesModificationsInput, context: context)
        type = Types::DescribeVolumesModificationsInput.new
        type.dry_run = params[:dry_run]
        type.volume_ids = VolumeIdStringList.build(params[:volume_ids], context: "#{context}[:volume_ids]") unless params[:volume_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeVpcAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVpcAttributeInput, context: context)
        type = Types::DescribeVpcAttributeInput.new
        type.attribute = params[:attribute]
        type.vpc_id = params[:vpc_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeVpcClassicLinkDnsSupportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVpcClassicLinkDnsSupportInput, context: context)
        type = Types::DescribeVpcClassicLinkDnsSupportInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.vpc_ids = VpcClassicLinkIdList.build(params[:vpc_ids], context: "#{context}[:vpc_ids]") unless params[:vpc_ids].nil?
        type
      end
    end

    module DescribeVpcClassicLinkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVpcClassicLinkInput, context: context)
        type = Types::DescribeVpcClassicLinkInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.dry_run = params[:dry_run]
        type.vpc_ids = VpcClassicLinkIdList.build(params[:vpc_ids], context: "#{context}[:vpc_ids]") unless params[:vpc_ids].nil?
        type
      end
    end

    module DescribeVpcEndpointConnectionNotificationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVpcEndpointConnectionNotificationsInput, context: context)
        type = Types::DescribeVpcEndpointConnectionNotificationsInput.new
        type.dry_run = params[:dry_run]
        type.connection_notification_id = params[:connection_notification_id]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeVpcEndpointConnectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVpcEndpointConnectionsInput, context: context)
        type = Types::DescribeVpcEndpointConnectionsInput.new
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeVpcEndpointServiceConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVpcEndpointServiceConfigurationsInput, context: context)
        type = Types::DescribeVpcEndpointServiceConfigurationsInput.new
        type.dry_run = params[:dry_run]
        type.service_ids = VpcEndpointServiceIdList.build(params[:service_ids], context: "#{context}[:service_ids]") unless params[:service_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeVpcEndpointServicePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVpcEndpointServicePermissionsInput, context: context)
        type = Types::DescribeVpcEndpointServicePermissionsInput.new
        type.dry_run = params[:dry_run]
        type.service_id = params[:service_id]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeVpcEndpointServicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVpcEndpointServicesInput, context: context)
        type = Types::DescribeVpcEndpointServicesInput.new
        type.dry_run = params[:dry_run]
        type.service_names = ValueStringList.build(params[:service_names], context: "#{context}[:service_names]") unless params[:service_names].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeVpcEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVpcEndpointsInput, context: context)
        type = Types::DescribeVpcEndpointsInput.new
        type.dry_run = params[:dry_run]
        type.vpc_endpoint_ids = VpcEndpointIdList.build(params[:vpc_endpoint_ids], context: "#{context}[:vpc_endpoint_ids]") unless params[:vpc_endpoint_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeVpcPeeringConnectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVpcPeeringConnectionsInput, context: context)
        type = Types::DescribeVpcPeeringConnectionsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.dry_run = params[:dry_run]
        type.vpc_peering_connection_ids = VpcPeeringConnectionIdList.build(params[:vpc_peering_connection_ids], context: "#{context}[:vpc_peering_connection_ids]") unless params[:vpc_peering_connection_ids].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeVpcsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVpcsInput, context: context)
        type = Types::DescribeVpcsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.vpc_ids = VpcIdStringList.build(params[:vpc_ids], context: "#{context}[:vpc_ids]") unless params[:vpc_ids].nil?
        type.dry_run = params[:dry_run]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeVpnConnectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVpnConnectionsInput, context: context)
        type = Types::DescribeVpnConnectionsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.vpn_connection_ids = VpnConnectionIdStringList.build(params[:vpn_connection_ids], context: "#{context}[:vpn_connection_ids]") unless params[:vpn_connection_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DescribeVpnGatewaysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVpnGatewaysInput, context: context)
        type = Types::DescribeVpnGatewaysInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.vpn_gateway_ids = VpnGatewayIdStringList.build(params[:vpn_gateway_ids], context: "#{context}[:vpn_gateway_ids]") unless params[:vpn_gateway_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DestinationOptionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationOptionsRequest, context: context)
        type = Types::DestinationOptionsRequest.new
        type.file_format = params[:file_format]
        type.hive_compatible_partitions = params[:hive_compatible_partitions]
        type.per_hour_partition = params[:per_hour_partition]
        type
      end
    end

    module DetachClassicLinkVpcInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachClassicLinkVpcInput, context: context)
        type = Types::DetachClassicLinkVpcInput.new
        type.dry_run = params[:dry_run]
        type.instance_id = params[:instance_id]
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module DetachInternetGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachInternetGatewayInput, context: context)
        type = Types::DetachInternetGatewayInput.new
        type.dry_run = params[:dry_run]
        type.internet_gateway_id = params[:internet_gateway_id]
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module DetachNetworkInterfaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachNetworkInterfaceInput, context: context)
        type = Types::DetachNetworkInterfaceInput.new
        type.attachment_id = params[:attachment_id]
        type.dry_run = params[:dry_run]
        type.force = params[:force]
        type
      end
    end

    module DetachVolumeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachVolumeInput, context: context)
        type = Types::DetachVolumeInput.new
        type.device = params[:device]
        type.force = params[:force]
        type.instance_id = params[:instance_id]
        type.volume_id = params[:volume_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DetachVpnGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachVpnGatewayInput, context: context)
        type = Types::DetachVpnGatewayInput.new
        type.vpc_id = params[:vpc_id]
        type.vpn_gateway_id = params[:vpn_gateway_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DhcpOptionsIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module DirectoryServiceAuthenticationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryServiceAuthenticationRequest, context: context)
        type = Types::DirectoryServiceAuthenticationRequest.new
        type.directory_id = params[:directory_id]
        type
      end
    end

    module DisableEbsEncryptionByDefaultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableEbsEncryptionByDefaultInput, context: context)
        type = Types::DisableEbsEncryptionByDefaultInput.new
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DisableFastSnapshotRestoresInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableFastSnapshotRestoresInput, context: context)
        type = Types::DisableFastSnapshotRestoresInput.new
        type.availability_zones = AvailabilityZoneStringList.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.source_snapshot_ids = SnapshotIdStringList.build(params[:source_snapshot_ids], context: "#{context}[:source_snapshot_ids]") unless params[:source_snapshot_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DisableImageDeprecationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableImageDeprecationInput, context: context)
        type = Types::DisableImageDeprecationInput.new
        type.image_id = params[:image_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DisableIpamOrganizationAdminAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableIpamOrganizationAdminAccountInput, context: context)
        type = Types::DisableIpamOrganizationAdminAccountInput.new
        type.dry_run = params[:dry_run]
        type.delegated_admin_account_id = params[:delegated_admin_account_id]
        type
      end
    end

    module DisableSerialConsoleAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableSerialConsoleAccessInput, context: context)
        type = Types::DisableSerialConsoleAccessInput.new
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DisableTransitGatewayRouteTablePropagationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableTransitGatewayRouteTablePropagationInput, context: context)
        type = Types::DisableTransitGatewayRouteTablePropagationInput.new
        type.transit_gateway_route_table_id = params[:transit_gateway_route_table_id]
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DisableVgwRoutePropagationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableVgwRoutePropagationInput, context: context)
        type = Types::DisableVgwRoutePropagationInput.new
        type.gateway_id = params[:gateway_id]
        type.route_table_id = params[:route_table_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DisableVpcClassicLinkDnsSupportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableVpcClassicLinkDnsSupportInput, context: context)
        type = Types::DisableVpcClassicLinkDnsSupportInput.new
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module DisableVpcClassicLinkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableVpcClassicLinkInput, context: context)
        type = Types::DisableVpcClassicLinkInput.new
        type.dry_run = params[:dry_run]
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module DisassociateAddressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateAddressInput, context: context)
        type = Types::DisassociateAddressInput.new
        type.association_id = params[:association_id]
        type.public_ip = params[:public_ip]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DisassociateClientVpnTargetNetworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateClientVpnTargetNetworkInput, context: context)
        type = Types::DisassociateClientVpnTargetNetworkInput.new
        type.client_vpn_endpoint_id = params[:client_vpn_endpoint_id]
        type.association_id = params[:association_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DisassociateEnclaveCertificateIamRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateEnclaveCertificateIamRoleInput, context: context)
        type = Types::DisassociateEnclaveCertificateIamRoleInput.new
        type.certificate_arn = params[:certificate_arn]
        type.role_arn = params[:role_arn]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DisassociateIamInstanceProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateIamInstanceProfileInput, context: context)
        type = Types::DisassociateIamInstanceProfileInput.new
        type.association_id = params[:association_id]
        type
      end
    end

    module DisassociateInstanceEventWindowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateInstanceEventWindowInput, context: context)
        type = Types::DisassociateInstanceEventWindowInput.new
        type.dry_run = params[:dry_run]
        type.instance_event_window_id = params[:instance_event_window_id]
        type.association_target = InstanceEventWindowDisassociationRequest.build(params[:association_target], context: "#{context}[:association_target]") unless params[:association_target].nil?
        type
      end
    end

    module DisassociateRouteTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateRouteTableInput, context: context)
        type = Types::DisassociateRouteTableInput.new
        type.association_id = params[:association_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DisassociateSubnetCidrBlockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateSubnetCidrBlockInput, context: context)
        type = Types::DisassociateSubnetCidrBlockInput.new
        type.association_id = params[:association_id]
        type
      end
    end

    module DisassociateTransitGatewayMulticastDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateTransitGatewayMulticastDomainInput, context: context)
        type = Types::DisassociateTransitGatewayMulticastDomainInput.new
        type.transit_gateway_multicast_domain_id = params[:transit_gateway_multicast_domain_id]
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.subnet_ids = TransitGatewaySubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DisassociateTransitGatewayRouteTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateTransitGatewayRouteTableInput, context: context)
        type = Types::DisassociateTransitGatewayRouteTableInput.new
        type.transit_gateway_route_table_id = params[:transit_gateway_route_table_id]
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DisassociateTrunkInterfaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateTrunkInterfaceInput, context: context)
        type = Types::DisassociateTrunkInterfaceInput.new
        type.association_id = params[:association_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DisassociateVpcCidrBlockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateVpcCidrBlockInput, context: context)
        type = Types::DisassociateVpcCidrBlockInput.new
        type.association_id = params[:association_id]
        type
      end
    end

    module DiskImage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DiskImage, context: context)
        type = Types::DiskImage.new
        type.description = params[:description]
        type.image = DiskImageDetail.build(params[:image], context: "#{context}[:image]") unless params[:image].nil?
        type.volume = VolumeDetail.build(params[:volume], context: "#{context}[:volume]") unless params[:volume].nil?
        type
      end
    end

    module DiskImageDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DiskImageDetail, context: context)
        type = Types::DiskImageDetail.new
        type.bytes = params[:bytes]
        type.format = params[:format]
        type.import_manifest_url = params[:import_manifest_url]
        type
      end
    end

    module DiskImageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DiskImage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DnsServersOptionsModifyStructure
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DnsServersOptionsModifyStructure, context: context)
        type = Types::DnsServersOptionsModifyStructure.new
        type.custom_dns_servers = ValueStringList.build(params[:custom_dns_servers], context: "#{context}[:custom_dns_servers]") unless params[:custom_dns_servers].nil?
        type.enabled = params[:enabled]
        type
      end
    end

    module EbsBlockDevice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EbsBlockDevice, context: context)
        type = Types::EbsBlockDevice.new
        type.delete_on_termination = params[:delete_on_termination]
        type.iops = params[:iops]
        type.snapshot_id = params[:snapshot_id]
        type.volume_size = params[:volume_size]
        type.volume_type = params[:volume_type]
        type.kms_key_id = params[:kms_key_id]
        type.throughput = params[:throughput]
        type.outpost_arn = params[:outpost_arn]
        type.encrypted = params[:encrypted]
        type
      end
    end

    module EbsInstanceBlockDeviceSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EbsInstanceBlockDeviceSpecification, context: context)
        type = Types::EbsInstanceBlockDeviceSpecification.new
        type.delete_on_termination = params[:delete_on_termination]
        type.volume_id = params[:volume_id]
        type
      end
    end

    module EgressOnlyInternetGatewayIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ElasticGpuIdSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ElasticGpuSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticGpuSpecification, context: context)
        type = Types::ElasticGpuSpecification.new
        type.type = params[:type]
        type
      end
    end

    module ElasticGpuSpecificationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ElasticGpuSpecification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ElasticGpuSpecifications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ElasticGpuSpecification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ElasticInferenceAccelerator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticInferenceAccelerator, context: context)
        type = Types::ElasticInferenceAccelerator.new
        type.type = params[:type]
        type.count = params[:count]
        type
      end
    end

    module ElasticInferenceAccelerators
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ElasticInferenceAccelerator.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnableEbsEncryptionByDefaultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableEbsEncryptionByDefaultInput, context: context)
        type = Types::EnableEbsEncryptionByDefaultInput.new
        type.dry_run = params[:dry_run]
        type
      end
    end

    module EnableFastSnapshotRestoresInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableFastSnapshotRestoresInput, context: context)
        type = Types::EnableFastSnapshotRestoresInput.new
        type.availability_zones = AvailabilityZoneStringList.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.source_snapshot_ids = SnapshotIdStringList.build(params[:source_snapshot_ids], context: "#{context}[:source_snapshot_ids]") unless params[:source_snapshot_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module EnableImageDeprecationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableImageDeprecationInput, context: context)
        type = Types::EnableImageDeprecationInput.new
        type.image_id = params[:image_id]
        type.deprecate_at = params[:deprecate_at]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module EnableIpamOrganizationAdminAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableIpamOrganizationAdminAccountInput, context: context)
        type = Types::EnableIpamOrganizationAdminAccountInput.new
        type.dry_run = params[:dry_run]
        type.delegated_admin_account_id = params[:delegated_admin_account_id]
        type
      end
    end

    module EnableSerialConsoleAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableSerialConsoleAccessInput, context: context)
        type = Types::EnableSerialConsoleAccessInput.new
        type.dry_run = params[:dry_run]
        type
      end
    end

    module EnableTransitGatewayRouteTablePropagationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableTransitGatewayRouteTablePropagationInput, context: context)
        type = Types::EnableTransitGatewayRouteTablePropagationInput.new
        type.transit_gateway_route_table_id = params[:transit_gateway_route_table_id]
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module EnableVgwRoutePropagationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableVgwRoutePropagationInput, context: context)
        type = Types::EnableVgwRoutePropagationInput.new
        type.gateway_id = params[:gateway_id]
        type.route_table_id = params[:route_table_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module EnableVolumeIOInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableVolumeIOInput, context: context)
        type = Types::EnableVolumeIOInput.new
        type.dry_run = params[:dry_run]
        type.volume_id = params[:volume_id]
        type
      end
    end

    module EnableVpcClassicLinkDnsSupportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableVpcClassicLinkDnsSupportInput, context: context)
        type = Types::EnableVpcClassicLinkDnsSupportInput.new
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module EnableVpcClassicLinkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableVpcClassicLinkInput, context: context)
        type = Types::EnableVpcClassicLinkInput.new
        type.dry_run = params[:dry_run]
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module EnclaveOptionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnclaveOptionsRequest, context: context)
        type = Types::EnclaveOptionsRequest.new
        type.enabled = params[:enabled]
        type
      end
    end

    module ExcludedInstanceTypeSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ExecutableByStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ExportClientVpnClientCertificateRevocationListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportClientVpnClientCertificateRevocationListInput, context: context)
        type = Types::ExportClientVpnClientCertificateRevocationListInput.new
        type.client_vpn_endpoint_id = params[:client_vpn_endpoint_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ExportClientVpnClientConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportClientVpnClientConfigurationInput, context: context)
        type = Types::ExportClientVpnClientConfigurationInput.new
        type.client_vpn_endpoint_id = params[:client_vpn_endpoint_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ExportImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportImageInput, context: context)
        type = Types::ExportImageInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.description = params[:description]
        type.disk_image_format = params[:disk_image_format]
        type.dry_run = params[:dry_run]
        type.image_id = params[:image_id]
        type.s3_export_location = ExportTaskS3LocationRequest.build(params[:s3_export_location], context: "#{context}[:s3_export_location]") unless params[:s3_export_location].nil?
        type.role_name = params[:role_name]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module ExportImageTaskIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ExportTaskIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ExportTaskS3LocationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportTaskS3LocationRequest, context: context)
        type = Types::ExportTaskS3LocationRequest.new
        type.s3_bucket = params[:s3_bucket]
        type.s3_prefix = params[:s3_prefix]
        type
      end
    end

    module ExportToS3TaskSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportToS3TaskSpecification, context: context)
        type = Types::ExportToS3TaskSpecification.new
        type.container_format = params[:container_format]
        type.disk_image_format = params[:disk_image_format]
        type.s3_bucket = params[:s3_bucket]
        type.s3_prefix = params[:s3_prefix]
        type
      end
    end

    module ExportTransitGatewayRoutesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportTransitGatewayRoutesInput, context: context)
        type = Types::ExportTransitGatewayRoutesInput.new
        type.transit_gateway_route_table_id = params[:transit_gateway_route_table_id]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.s3_bucket = params[:s3_bucket]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module FederatedAuthenticationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FederatedAuthenticationRequest, context: context)
        type = Types::FederatedAuthenticationRequest.new
        type.saml_provider_arn = params[:saml_provider_arn]
        type.self_service_saml_provider_arn = params[:self_service_saml_provider_arn]
        type
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.member_name = params[:member_name]
        type.values = ValueStringList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module FilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FleetIdSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module FleetLaunchTemplateConfigListRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FleetLaunchTemplateConfigRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FleetLaunchTemplateConfigRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FleetLaunchTemplateConfigRequest, context: context)
        type = Types::FleetLaunchTemplateConfigRequest.new
        type.launch_template_specification = FleetLaunchTemplateSpecificationRequest.build(params[:launch_template_specification], context: "#{context}[:launch_template_specification]") unless params[:launch_template_specification].nil?
        type.overrides = FleetLaunchTemplateOverridesListRequest.build(params[:overrides], context: "#{context}[:overrides]") unless params[:overrides].nil?
        type
      end
    end

    module FleetLaunchTemplateOverridesListRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FleetLaunchTemplateOverridesRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FleetLaunchTemplateOverridesRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FleetLaunchTemplateOverridesRequest, context: context)
        type = Types::FleetLaunchTemplateOverridesRequest.new
        type.instance_type = params[:instance_type]
        type.max_price = params[:max_price]
        type.subnet_id = params[:subnet_id]
        type.availability_zone = params[:availability_zone]
        type.weighted_capacity = params[:weighted_capacity]
        type.priority = params[:priority]
        type.placement = Placement.build(params[:placement], context: "#{context}[:placement]") unless params[:placement].nil?
        type.instance_requirements = InstanceRequirementsRequest.build(params[:instance_requirements], context: "#{context}[:instance_requirements]") unless params[:instance_requirements].nil?
        type
      end
    end

    module FleetLaunchTemplateSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FleetLaunchTemplateSpecification, context: context)
        type = Types::FleetLaunchTemplateSpecification.new
        type.launch_template_id = params[:launch_template_id]
        type.launch_template_name = params[:launch_template_name]
        type.version = params[:version]
        type
      end
    end

    module FleetLaunchTemplateSpecificationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FleetLaunchTemplateSpecificationRequest, context: context)
        type = Types::FleetLaunchTemplateSpecificationRequest.new
        type.launch_template_id = params[:launch_template_id]
        type.launch_template_name = params[:launch_template_name]
        type.version = params[:version]
        type
      end
    end

    module FleetSpotCapacityRebalanceRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FleetSpotCapacityRebalanceRequest, context: context)
        type = Types::FleetSpotCapacityRebalanceRequest.new
        type.replacement_strategy = params[:replacement_strategy]
        type.termination_delay = params[:termination_delay]
        type
      end
    end

    module FleetSpotMaintenanceStrategiesRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FleetSpotMaintenanceStrategiesRequest, context: context)
        type = Types::FleetSpotMaintenanceStrategiesRequest.new
        type.capacity_rebalance = FleetSpotCapacityRebalanceRequest.build(params[:capacity_rebalance], context: "#{context}[:capacity_rebalance]") unless params[:capacity_rebalance].nil?
        type
      end
    end

    module FlowLogIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module FlowLogResourceIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module FpgaImageIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module GetAssociatedEnclaveCertificateIamRolesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssociatedEnclaveCertificateIamRolesInput, context: context)
        type = Types::GetAssociatedEnclaveCertificateIamRolesInput.new
        type.certificate_arn = params[:certificate_arn]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module GetAssociatedIpv6PoolCidrsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssociatedIpv6PoolCidrsInput, context: context)
        type = Types::GetAssociatedIpv6PoolCidrsInput.new
        type.pool_id = params[:pool_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module GetCapacityReservationUsageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCapacityReservationUsageInput, context: context)
        type = Types::GetCapacityReservationUsageInput.new
        type.capacity_reservation_id = params[:capacity_reservation_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module GetCoipPoolUsageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCoipPoolUsageInput, context: context)
        type = Types::GetCoipPoolUsageInput.new
        type.pool_id = params[:pool_id]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module GetConsoleOutputInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConsoleOutputInput, context: context)
        type = Types::GetConsoleOutputInput.new
        type.instance_id = params[:instance_id]
        type.dry_run = params[:dry_run]
        type.latest = params[:latest]
        type
      end
    end

    module GetConsoleScreenshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConsoleScreenshotInput, context: context)
        type = Types::GetConsoleScreenshotInput.new
        type.dry_run = params[:dry_run]
        type.instance_id = params[:instance_id]
        type.wake_up = params[:wake_up]
        type
      end
    end

    module GetDefaultCreditSpecificationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDefaultCreditSpecificationInput, context: context)
        type = Types::GetDefaultCreditSpecificationInput.new
        type.dry_run = params[:dry_run]
        type.instance_family = params[:instance_family]
        type
      end
    end

    module GetEbsDefaultKmsKeyIdInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEbsDefaultKmsKeyIdInput, context: context)
        type = Types::GetEbsDefaultKmsKeyIdInput.new
        type.dry_run = params[:dry_run]
        type
      end
    end

    module GetEbsEncryptionByDefaultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEbsEncryptionByDefaultInput, context: context)
        type = Types::GetEbsEncryptionByDefaultInput.new
        type.dry_run = params[:dry_run]
        type
      end
    end

    module GetFlowLogsIntegrationTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFlowLogsIntegrationTemplateInput, context: context)
        type = Types::GetFlowLogsIntegrationTemplateInput.new
        type.dry_run = params[:dry_run]
        type.flow_log_id = params[:flow_log_id]
        type.config_delivery_s3_destination_arn = params[:config_delivery_s3_destination_arn]
        type.integrate_services = IntegrateServices.build(params[:integrate_services], context: "#{context}[:integrate_services]") unless params[:integrate_services].nil?
        type
      end
    end

    module GetGroupsForCapacityReservationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupsForCapacityReservationInput, context: context)
        type = Types::GetGroupsForCapacityReservationInput.new
        type.capacity_reservation_id = params[:capacity_reservation_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module GetHostReservationPurchasePreviewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHostReservationPurchasePreviewInput, context: context)
        type = Types::GetHostReservationPurchasePreviewInput.new
        type.host_id_set = RequestHostIdSet.build(params[:host_id_set], context: "#{context}[:host_id_set]") unless params[:host_id_set].nil?
        type.offering_id = params[:offering_id]
        type
      end
    end

    module GetInstanceTypesFromInstanceRequirementsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceTypesFromInstanceRequirementsInput, context: context)
        type = Types::GetInstanceTypesFromInstanceRequirementsInput.new
        type.dry_run = params[:dry_run]
        type.architecture_types = ArchitectureTypeSet.build(params[:architecture_types], context: "#{context}[:architecture_types]") unless params[:architecture_types].nil?
        type.virtualization_types = VirtualizationTypeSet.build(params[:virtualization_types], context: "#{context}[:virtualization_types]") unless params[:virtualization_types].nil?
        type.instance_requirements = InstanceRequirementsRequest.build(params[:instance_requirements], context: "#{context}[:instance_requirements]") unless params[:instance_requirements].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetIpamAddressHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIpamAddressHistoryInput, context: context)
        type = Types::GetIpamAddressHistoryInput.new
        type.dry_run = params[:dry_run]
        type.cidr = params[:cidr]
        type.ipam_scope_id = params[:ipam_scope_id]
        type.vpc_id = params[:vpc_id]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetIpamPoolAllocationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIpamPoolAllocationsInput, context: context)
        type = Types::GetIpamPoolAllocationsInput.new
        type.dry_run = params[:dry_run]
        type.ipam_pool_id = params[:ipam_pool_id]
        type.ipam_pool_allocation_id = params[:ipam_pool_allocation_id]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetIpamPoolCidrsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIpamPoolCidrsInput, context: context)
        type = Types::GetIpamPoolCidrsInput.new
        type.dry_run = params[:dry_run]
        type.ipam_pool_id = params[:ipam_pool_id]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetIpamResourceCidrsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIpamResourceCidrsInput, context: context)
        type = Types::GetIpamResourceCidrsInput.new
        type.dry_run = params[:dry_run]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.ipam_scope_id = params[:ipam_scope_id]
        type.ipam_pool_id = params[:ipam_pool_id]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.resource_tag = RequestIpamResourceTag.build(params[:resource_tag], context: "#{context}[:resource_tag]") unless params[:resource_tag].nil?
        type.resource_owner = params[:resource_owner]
        type
      end
    end

    module GetLaunchTemplateDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLaunchTemplateDataInput, context: context)
        type = Types::GetLaunchTemplateDataInput.new
        type.dry_run = params[:dry_run]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module GetManagedPrefixListAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetManagedPrefixListAssociationsInput, context: context)
        type = Types::GetManagedPrefixListAssociationsInput.new
        type.dry_run = params[:dry_run]
        type.prefix_list_id = params[:prefix_list_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetManagedPrefixListEntriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetManagedPrefixListEntriesInput, context: context)
        type = Types::GetManagedPrefixListEntriesInput.new
        type.dry_run = params[:dry_run]
        type.prefix_list_id = params[:prefix_list_id]
        type.target_version = params[:target_version]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetNetworkInsightsAccessScopeAnalysisFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkInsightsAccessScopeAnalysisFindingsInput, context: context)
        type = Types::GetNetworkInsightsAccessScopeAnalysisFindingsInput.new
        type.network_insights_access_scope_analysis_id = params[:network_insights_access_scope_analysis_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module GetNetworkInsightsAccessScopeContentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkInsightsAccessScopeContentInput, context: context)
        type = Types::GetNetworkInsightsAccessScopeContentInput.new
        type.network_insights_access_scope_id = params[:network_insights_access_scope_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module GetPasswordDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPasswordDataInput, context: context)
        type = Types::GetPasswordDataInput.new
        type.instance_id = params[:instance_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module GetReservedInstancesExchangeQuoteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReservedInstancesExchangeQuoteInput, context: context)
        type = Types::GetReservedInstancesExchangeQuoteInput.new
        type.dry_run = params[:dry_run]
        type.reserved_instance_ids = ReservedInstanceIdSet.build(params[:reserved_instance_ids], context: "#{context}[:reserved_instance_ids]") unless params[:reserved_instance_ids].nil?
        type.target_configurations = TargetConfigurationRequestSet.build(params[:target_configurations], context: "#{context}[:target_configurations]") unless params[:target_configurations].nil?
        type
      end
    end

    module GetSerialConsoleAccessStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSerialConsoleAccessStatusInput, context: context)
        type = Types::GetSerialConsoleAccessStatusInput.new
        type.dry_run = params[:dry_run]
        type
      end
    end

    module GetSpotPlacementScoresInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSpotPlacementScoresInput, context: context)
        type = Types::GetSpotPlacementScoresInput.new
        type.instance_types = InstanceTypes.build(params[:instance_types], context: "#{context}[:instance_types]") unless params[:instance_types].nil?
        type.target_capacity = params[:target_capacity]
        type.target_capacity_unit_type = params[:target_capacity_unit_type]
        type.single_availability_zone = params[:single_availability_zone]
        type.region_names = RegionNames.build(params[:region_names], context: "#{context}[:region_names]") unless params[:region_names].nil?
        type.instance_requirements_with_metadata = InstanceRequirementsWithMetadataRequest.build(params[:instance_requirements_with_metadata], context: "#{context}[:instance_requirements_with_metadata]") unless params[:instance_requirements_with_metadata].nil?
        type.dry_run = params[:dry_run]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetSubnetCidrReservationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSubnetCidrReservationsInput, context: context)
        type = Types::GetSubnetCidrReservationsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.subnet_id = params[:subnet_id]
        type.dry_run = params[:dry_run]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetTransitGatewayAttachmentPropagationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTransitGatewayAttachmentPropagationsInput, context: context)
        type = Types::GetTransitGatewayAttachmentPropagationsInput.new
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module GetTransitGatewayMulticastDomainAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTransitGatewayMulticastDomainAssociationsInput, context: context)
        type = Types::GetTransitGatewayMulticastDomainAssociationsInput.new
        type.transit_gateway_multicast_domain_id = params[:transit_gateway_multicast_domain_id]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module GetTransitGatewayPrefixListReferencesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTransitGatewayPrefixListReferencesInput, context: context)
        type = Types::GetTransitGatewayPrefixListReferencesInput.new
        type.transit_gateway_route_table_id = params[:transit_gateway_route_table_id]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module GetTransitGatewayRouteTableAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTransitGatewayRouteTableAssociationsInput, context: context)
        type = Types::GetTransitGatewayRouteTableAssociationsInput.new
        type.transit_gateway_route_table_id = params[:transit_gateway_route_table_id]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module GetTransitGatewayRouteTablePropagationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTransitGatewayRouteTablePropagationsInput, context: context)
        type = Types::GetTransitGatewayRouteTablePropagationsInput.new
        type.transit_gateway_route_table_id = params[:transit_gateway_route_table_id]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module GetVpnConnectionDeviceSampleConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVpnConnectionDeviceSampleConfigurationInput, context: context)
        type = Types::GetVpnConnectionDeviceSampleConfigurationInput.new
        type.vpn_connection_id = params[:vpn_connection_id]
        type.vpn_connection_device_type_id = params[:vpn_connection_device_type_id]
        type.internet_key_exchange_version = params[:internet_key_exchange_version]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module GetVpnConnectionDeviceTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVpnConnectionDeviceTypesInput, context: context)
        type = Types::GetVpnConnectionDeviceTypesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module GroupIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module GroupIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupIdentifier, context: context)
        type = Types::GroupIdentifier.new
        type.group_name = params[:group_name]
        type.group_id = params[:group_id]
        type
      end
    end

    module GroupIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupIdentifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module GroupNameStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module HibernationOptionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HibernationOptionsRequest, context: context)
        type = Types::HibernationOptionsRequest.new
        type.configured = params[:configured]
        type
      end
    end

    module HostReservationIdSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module IKEVersionsRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IKEVersionsRequestListValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IKEVersionsRequestListValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IKEVersionsRequestListValue, context: context)
        type = Types::IKEVersionsRequestListValue.new
        type.value = params[:value]
        type
      end
    end

    module IamInstanceProfileSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IamInstanceProfileSpecification, context: context)
        type = Types::IamInstanceProfileSpecification.new
        type.arn = params[:arn]
        type.member_name = params[:member_name]
        type
      end
    end

    module IcmpTypeCode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IcmpTypeCode, context: context)
        type = Types::IcmpTypeCode.new
        type.code = params[:code]
        type.type = params[:type]
        type
      end
    end

    module ImageDiskContainer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageDiskContainer, context: context)
        type = Types::ImageDiskContainer.new
        type.description = params[:description]
        type.device_name = params[:device_name]
        type.format = params[:format]
        type.snapshot_id = params[:snapshot_id]
        type.url = params[:url]
        type.user_bucket = UserBucket.build(params[:user_bucket], context: "#{context}[:user_bucket]") unless params[:user_bucket].nil?
        type
      end
    end

    module ImageDiskContainerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImageDiskContainer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImageIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ImageIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ImportClientVpnClientCertificateRevocationListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportClientVpnClientCertificateRevocationListInput, context: context)
        type = Types::ImportClientVpnClientCertificateRevocationListInput.new
        type.client_vpn_endpoint_id = params[:client_vpn_endpoint_id]
        type.certificate_revocation_list = params[:certificate_revocation_list]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ImportImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportImageInput, context: context)
        type = Types::ImportImageInput.new
        type.architecture = params[:architecture]
        type.client_data = ClientData.build(params[:client_data], context: "#{context}[:client_data]") unless params[:client_data].nil?
        type.client_token = params[:client_token]
        type.description = params[:description]
        type.disk_containers = ImageDiskContainerList.build(params[:disk_containers], context: "#{context}[:disk_containers]") unless params[:disk_containers].nil?
        type.dry_run = params[:dry_run]
        type.encrypted = params[:encrypted]
        type.hypervisor = params[:hypervisor]
        type.kms_key_id = params[:kms_key_id]
        type.license_type = params[:license_type]
        type.platform = params[:platform]
        type.role_name = params[:role_name]
        type.license_specifications = ImportImageLicenseSpecificationListRequest.build(params[:license_specifications], context: "#{context}[:license_specifications]") unless params[:license_specifications].nil?
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.usage_operation = params[:usage_operation]
        type.boot_mode = params[:boot_mode]
        type
      end
    end

    module ImportImageLicenseConfigurationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportImageLicenseConfigurationRequest, context: context)
        type = Types::ImportImageLicenseConfigurationRequest.new
        type.license_configuration_arn = params[:license_configuration_arn]
        type
      end
    end

    module ImportImageLicenseSpecificationListRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImportImageLicenseConfigurationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImportInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportInstanceInput, context: context)
        type = Types::ImportInstanceInput.new
        type.description = params[:description]
        type.disk_images = DiskImageList.build(params[:disk_images], context: "#{context}[:disk_images]") unless params[:disk_images].nil?
        type.dry_run = params[:dry_run]
        type.launch_specification = ImportInstanceLaunchSpecification.build(params[:launch_specification], context: "#{context}[:launch_specification]") unless params[:launch_specification].nil?
        type.platform = params[:platform]
        type
      end
    end

    module ImportInstanceLaunchSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportInstanceLaunchSpecification, context: context)
        type = Types::ImportInstanceLaunchSpecification.new
        type.additional_info = params[:additional_info]
        type.architecture = params[:architecture]
        type.group_ids = SecurityGroupIdStringList.build(params[:group_ids], context: "#{context}[:group_ids]") unless params[:group_ids].nil?
        type.group_names = SecurityGroupStringList.build(params[:group_names], context: "#{context}[:group_names]") unless params[:group_names].nil?
        type.instance_initiated_shutdown_behavior = params[:instance_initiated_shutdown_behavior]
        type.instance_type = params[:instance_type]
        type.monitoring = params[:monitoring]
        type.placement = Placement.build(params[:placement], context: "#{context}[:placement]") unless params[:placement].nil?
        type.private_ip_address = params[:private_ip_address]
        type.subnet_id = params[:subnet_id]
        type.user_data = UserData.build(params[:user_data], context: "#{context}[:user_data]") unless params[:user_data].nil?
        type
      end
    end

    module ImportKeyPairInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportKeyPairInput, context: context)
        type = Types::ImportKeyPairInput.new
        type.dry_run = params[:dry_run]
        type.key_name = params[:key_name]
        type.public_key_material = params[:public_key_material]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module ImportSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportSnapshotInput, context: context)
        type = Types::ImportSnapshotInput.new
        type.client_data = ClientData.build(params[:client_data], context: "#{context}[:client_data]") unless params[:client_data].nil?
        type.client_token = params[:client_token]
        type.description = params[:description]
        type.disk_container = SnapshotDiskContainer.build(params[:disk_container], context: "#{context}[:disk_container]") unless params[:disk_container].nil?
        type.dry_run = params[:dry_run]
        type.encrypted = params[:encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.role_name = params[:role_name]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module ImportSnapshotTaskIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ImportTaskIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ImportVolumeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportVolumeInput, context: context)
        type = Types::ImportVolumeInput.new
        type.availability_zone = params[:availability_zone]
        type.description = params[:description]
        type.dry_run = params[:dry_run]
        type.image = DiskImageDetail.build(params[:image], context: "#{context}[:image]") unless params[:image].nil?
        type.volume = VolumeDetail.build(params[:volume], context: "#{context}[:volume]") unless params[:volume].nil?
        type
      end
    end

    module InsideCidrBlocksStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module InstanceBlockDeviceMappingSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceBlockDeviceMappingSpecification, context: context)
        type = Types::InstanceBlockDeviceMappingSpecification.new
        type.device_name = params[:device_name]
        type.ebs = EbsInstanceBlockDeviceSpecification.build(params[:ebs], context: "#{context}[:ebs]") unless params[:ebs].nil?
        type.no_device = params[:no_device]
        type.virtual_name = params[:virtual_name]
        type
      end
    end

    module InstanceBlockDeviceMappingSpecificationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceBlockDeviceMappingSpecification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceCreditSpecificationListRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceCreditSpecificationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceCreditSpecificationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceCreditSpecificationRequest, context: context)
        type = Types::InstanceCreditSpecificationRequest.new
        type.instance_id = params[:instance_id]
        type.cpu_credits = params[:cpu_credits]
        type
      end
    end

    module InstanceEventWindowAssociationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceEventWindowAssociationRequest, context: context)
        type = Types::InstanceEventWindowAssociationRequest.new
        type.instance_ids = InstanceIdList.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.instance_tags = TagList.build(params[:instance_tags], context: "#{context}[:instance_tags]") unless params[:instance_tags].nil?
        type.dedicated_host_ids = DedicatedHostIdList.build(params[:dedicated_host_ids], context: "#{context}[:dedicated_host_ids]") unless params[:dedicated_host_ids].nil?
        type
      end
    end

    module InstanceEventWindowDisassociationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceEventWindowDisassociationRequest, context: context)
        type = Types::InstanceEventWindowDisassociationRequest.new
        type.instance_ids = InstanceIdList.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.instance_tags = TagList.build(params[:instance_tags], context: "#{context}[:instance_tags]") unless params[:instance_tags].nil?
        type.dedicated_host_ids = DedicatedHostIdList.build(params[:dedicated_host_ids], context: "#{context}[:dedicated_host_ids]") unless params[:dedicated_host_ids].nil?
        type
      end
    end

    module InstanceEventWindowIdSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module InstanceEventWindowTimeRangeRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceEventWindowTimeRangeRequest, context: context)
        type = Types::InstanceEventWindowTimeRangeRequest.new
        type.start_week_day = params[:start_week_day]
        type.start_hour = params[:start_hour]
        type.end_week_day = params[:end_week_day]
        type.end_hour = params[:end_hour]
        type
      end
    end

    module InstanceEventWindowTimeRangeRequestSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceEventWindowTimeRangeRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceGenerationSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module InstanceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module InstanceIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module InstanceIpv6Address
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceIpv6Address, context: context)
        type = Types::InstanceIpv6Address.new
        type.ipv6_address = params[:ipv6_address]
        type
      end
    end

    module InstanceIpv6AddressList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceIpv6Address.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceIpv6AddressListRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceIpv6AddressRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceIpv6AddressRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceIpv6AddressRequest, context: context)
        type = Types::InstanceIpv6AddressRequest.new
        type.ipv6_address = params[:ipv6_address]
        type
      end
    end

    module InstanceMarketOptionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceMarketOptionsRequest, context: context)
        type = Types::InstanceMarketOptionsRequest.new
        type.market_type = params[:market_type]
        type.spot_options = SpotMarketOptions.build(params[:spot_options], context: "#{context}[:spot_options]") unless params[:spot_options].nil?
        type
      end
    end

    module InstanceMetadataOptionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceMetadataOptionsRequest, context: context)
        type = Types::InstanceMetadataOptionsRequest.new
        type.http_tokens = params[:http_tokens]
        type.http_put_response_hop_limit = params[:http_put_response_hop_limit]
        type.http_endpoint = params[:http_endpoint]
        type.http_protocol_ipv6 = params[:http_protocol_ipv6]
        type.instance_metadata_tags = params[:instance_metadata_tags]
        type
      end
    end

    module InstanceNetworkInterfaceSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceNetworkInterfaceSpecification, context: context)
        type = Types::InstanceNetworkInterfaceSpecification.new
        type.associate_public_ip_address = params[:associate_public_ip_address]
        type.delete_on_termination = params[:delete_on_termination]
        type.description = params[:description]
        type.device_index = params[:device_index]
        type.groups = SecurityGroupIdStringList.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.ipv6_address_count = params[:ipv6_address_count]
        type.ipv6_addresses = InstanceIpv6AddressList.build(params[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless params[:ipv6_addresses].nil?
        type.network_interface_id = params[:network_interface_id]
        type.private_ip_address = params[:private_ip_address]
        type.private_ip_addresses = PrivateIpAddressSpecificationList.build(params[:private_ip_addresses], context: "#{context}[:private_ip_addresses]") unless params[:private_ip_addresses].nil?
        type.secondary_private_ip_address_count = params[:secondary_private_ip_address_count]
        type.subnet_id = params[:subnet_id]
        type.associate_carrier_ip_address = params[:associate_carrier_ip_address]
        type.interface_type = params[:interface_type]
        type.network_card_index = params[:network_card_index]
        type.ipv4_prefixes = Ipv4PrefixList.build(params[:ipv4_prefixes], context: "#{context}[:ipv4_prefixes]") unless params[:ipv4_prefixes].nil?
        type.ipv4_prefix_count = params[:ipv4_prefix_count]
        type.ipv6_prefixes = Ipv6PrefixList.build(params[:ipv6_prefixes], context: "#{context}[:ipv6_prefixes]") unless params[:ipv6_prefixes].nil?
        type.ipv6_prefix_count = params[:ipv6_prefix_count]
        type
      end
    end

    module InstanceNetworkInterfaceSpecificationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceNetworkInterfaceSpecification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceRequirements
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceRequirements, context: context)
        type = Types::InstanceRequirements.new
        type.v_cpu_count = VCpuCountRange.build(params[:v_cpu_count], context: "#{context}[:v_cpu_count]") unless params[:v_cpu_count].nil?
        type.memory_mi_b = MemoryMiB.build(params[:memory_mi_b], context: "#{context}[:memory_mi_b]") unless params[:memory_mi_b].nil?
        type.cpu_manufacturers = CpuManufacturerSet.build(params[:cpu_manufacturers], context: "#{context}[:cpu_manufacturers]") unless params[:cpu_manufacturers].nil?
        type.memory_gi_b_per_v_cpu = MemoryGiBPerVCpu.build(params[:memory_gi_b_per_v_cpu], context: "#{context}[:memory_gi_b_per_v_cpu]") unless params[:memory_gi_b_per_v_cpu].nil?
        type.excluded_instance_types = ExcludedInstanceTypeSet.build(params[:excluded_instance_types], context: "#{context}[:excluded_instance_types]") unless params[:excluded_instance_types].nil?
        type.instance_generations = InstanceGenerationSet.build(params[:instance_generations], context: "#{context}[:instance_generations]") unless params[:instance_generations].nil?
        type.spot_max_price_percentage_over_lowest_price = params[:spot_max_price_percentage_over_lowest_price]
        type.on_demand_max_price_percentage_over_lowest_price = params[:on_demand_max_price_percentage_over_lowest_price]
        type.bare_metal = params[:bare_metal]
        type.burstable_performance = params[:burstable_performance]
        type.require_hibernate_support = params[:require_hibernate_support]
        type.network_interface_count = NetworkInterfaceCount.build(params[:network_interface_count], context: "#{context}[:network_interface_count]") unless params[:network_interface_count].nil?
        type.local_storage = params[:local_storage]
        type.local_storage_types = LocalStorageTypeSet.build(params[:local_storage_types], context: "#{context}[:local_storage_types]") unless params[:local_storage_types].nil?
        type.total_local_storage_gb = TotalLocalStorageGB.build(params[:total_local_storage_gb], context: "#{context}[:total_local_storage_gb]") unless params[:total_local_storage_gb].nil?
        type.baseline_ebs_bandwidth_mbps = BaselineEbsBandwidthMbps.build(params[:baseline_ebs_bandwidth_mbps], context: "#{context}[:baseline_ebs_bandwidth_mbps]") unless params[:baseline_ebs_bandwidth_mbps].nil?
        type.accelerator_types = AcceleratorTypeSet.build(params[:accelerator_types], context: "#{context}[:accelerator_types]") unless params[:accelerator_types].nil?
        type.accelerator_count = AcceleratorCount.build(params[:accelerator_count], context: "#{context}[:accelerator_count]") unless params[:accelerator_count].nil?
        type.accelerator_manufacturers = AcceleratorManufacturerSet.build(params[:accelerator_manufacturers], context: "#{context}[:accelerator_manufacturers]") unless params[:accelerator_manufacturers].nil?
        type.accelerator_names = AcceleratorNameSet.build(params[:accelerator_names], context: "#{context}[:accelerator_names]") unless params[:accelerator_names].nil?
        type.accelerator_total_memory_mi_b = AcceleratorTotalMemoryMiB.build(params[:accelerator_total_memory_mi_b], context: "#{context}[:accelerator_total_memory_mi_b]") unless params[:accelerator_total_memory_mi_b].nil?
        type
      end
    end

    module InstanceRequirementsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceRequirementsRequest, context: context)
        type = Types::InstanceRequirementsRequest.new
        type.v_cpu_count = VCpuCountRangeRequest.build(params[:v_cpu_count], context: "#{context}[:v_cpu_count]") unless params[:v_cpu_count].nil?
        type.memory_mi_b = MemoryMiBRequest.build(params[:memory_mi_b], context: "#{context}[:memory_mi_b]") unless params[:memory_mi_b].nil?
        type.cpu_manufacturers = CpuManufacturerSet.build(params[:cpu_manufacturers], context: "#{context}[:cpu_manufacturers]") unless params[:cpu_manufacturers].nil?
        type.memory_gi_b_per_v_cpu = MemoryGiBPerVCpuRequest.build(params[:memory_gi_b_per_v_cpu], context: "#{context}[:memory_gi_b_per_v_cpu]") unless params[:memory_gi_b_per_v_cpu].nil?
        type.excluded_instance_types = ExcludedInstanceTypeSet.build(params[:excluded_instance_types], context: "#{context}[:excluded_instance_types]") unless params[:excluded_instance_types].nil?
        type.instance_generations = InstanceGenerationSet.build(params[:instance_generations], context: "#{context}[:instance_generations]") unless params[:instance_generations].nil?
        type.spot_max_price_percentage_over_lowest_price = params[:spot_max_price_percentage_over_lowest_price]
        type.on_demand_max_price_percentage_over_lowest_price = params[:on_demand_max_price_percentage_over_lowest_price]
        type.bare_metal = params[:bare_metal]
        type.burstable_performance = params[:burstable_performance]
        type.require_hibernate_support = params[:require_hibernate_support]
        type.network_interface_count = NetworkInterfaceCountRequest.build(params[:network_interface_count], context: "#{context}[:network_interface_count]") unless params[:network_interface_count].nil?
        type.local_storage = params[:local_storage]
        type.local_storage_types = LocalStorageTypeSet.build(params[:local_storage_types], context: "#{context}[:local_storage_types]") unless params[:local_storage_types].nil?
        type.total_local_storage_gb = TotalLocalStorageGBRequest.build(params[:total_local_storage_gb], context: "#{context}[:total_local_storage_gb]") unless params[:total_local_storage_gb].nil?
        type.baseline_ebs_bandwidth_mbps = BaselineEbsBandwidthMbpsRequest.build(params[:baseline_ebs_bandwidth_mbps], context: "#{context}[:baseline_ebs_bandwidth_mbps]") unless params[:baseline_ebs_bandwidth_mbps].nil?
        type.accelerator_types = AcceleratorTypeSet.build(params[:accelerator_types], context: "#{context}[:accelerator_types]") unless params[:accelerator_types].nil?
        type.accelerator_count = AcceleratorCountRequest.build(params[:accelerator_count], context: "#{context}[:accelerator_count]") unless params[:accelerator_count].nil?
        type.accelerator_manufacturers = AcceleratorManufacturerSet.build(params[:accelerator_manufacturers], context: "#{context}[:accelerator_manufacturers]") unless params[:accelerator_manufacturers].nil?
        type.accelerator_names = AcceleratorNameSet.build(params[:accelerator_names], context: "#{context}[:accelerator_names]") unless params[:accelerator_names].nil?
        type.accelerator_total_memory_mi_b = AcceleratorTotalMemoryMiBRequest.build(params[:accelerator_total_memory_mi_b], context: "#{context}[:accelerator_total_memory_mi_b]") unless params[:accelerator_total_memory_mi_b].nil?
        type
      end
    end

    module InstanceRequirementsWithMetadataRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceRequirementsWithMetadataRequest, context: context)
        type = Types::InstanceRequirementsWithMetadataRequest.new
        type.architecture_types = ArchitectureTypeSet.build(params[:architecture_types], context: "#{context}[:architecture_types]") unless params[:architecture_types].nil?
        type.virtualization_types = VirtualizationTypeSet.build(params[:virtualization_types], context: "#{context}[:virtualization_types]") unless params[:virtualization_types].nil?
        type.instance_requirements = InstanceRequirementsRequest.build(params[:instance_requirements], context: "#{context}[:instance_requirements]") unless params[:instance_requirements].nil?
        type
      end
    end

    module InstanceSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceSpecification, context: context)
        type = Types::InstanceSpecification.new
        type.instance_id = params[:instance_id]
        type.exclude_boot_volume = params[:exclude_boot_volume]
        type
      end
    end

    module InstanceTagKeySet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module InstanceTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module InstanceTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module IntegrateServices
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntegrateServices, context: context)
        type = Types::IntegrateServices.new
        type.athena_integrations = AthenaIntegrationsSet.build(params[:athena_integrations], context: "#{context}[:athena_integrations]") unless params[:athena_integrations].nil?
        type
      end
    end

    module InternetGatewayIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module IpPermission
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpPermission, context: context)
        type = Types::IpPermission.new
        type.from_port = params[:from_port]
        type.ip_protocol = params[:ip_protocol]
        type.ip_ranges = IpRangeList.build(params[:ip_ranges], context: "#{context}[:ip_ranges]") unless params[:ip_ranges].nil?
        type.ipv6_ranges = Ipv6RangeList.build(params[:ipv6_ranges], context: "#{context}[:ipv6_ranges]") unless params[:ipv6_ranges].nil?
        type.prefix_list_ids = PrefixListIdList.build(params[:prefix_list_ids], context: "#{context}[:prefix_list_ids]") unless params[:prefix_list_ids].nil?
        type.to_port = params[:to_port]
        type.user_id_group_pairs = UserIdGroupPairList.build(params[:user_id_group_pairs], context: "#{context}[:user_id_group_pairs]") unless params[:user_id_group_pairs].nil?
        type
      end
    end

    module IpPermissionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IpPermission.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IpPrefixList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module IpRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpRange, context: context)
        type = Types::IpRange.new
        type.cidr_ip = params[:cidr_ip]
        type.description = params[:description]
        type
      end
    end

    module IpRangeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IpRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IpamCidrAuthorizationContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpamCidrAuthorizationContext, context: context)
        type = Types::IpamCidrAuthorizationContext.new
        type.message = params[:message]
        type.signature = params[:signature]
        type
      end
    end

    module IpamPoolAllocationDisallowedCidrs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module Ipv4PrefixList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Ipv4PrefixSpecificationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Ipv4PrefixSpecificationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Ipv4PrefixSpecificationRequest, context: context)
        type = Types::Ipv4PrefixSpecificationRequest.new
        type.ipv4_prefix = params[:ipv4_prefix]
        type
      end
    end

    module Ipv6AddressList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module Ipv6PoolIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module Ipv6PrefixList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Ipv6PrefixSpecificationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Ipv6PrefixSpecificationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Ipv6PrefixSpecificationRequest, context: context)
        type = Types::Ipv6PrefixSpecificationRequest.new
        type.ipv6_prefix = params[:ipv6_prefix]
        type
      end
    end

    module Ipv6Range
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Ipv6Range, context: context)
        type = Types::Ipv6Range.new
        type.cidr_ipv6 = params[:cidr_ipv6]
        type.description = params[:description]
        type
      end
    end

    module Ipv6RangeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Ipv6Range.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module KeyNameStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module KeyPairIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module LaunchPermission
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchPermission, context: context)
        type = Types::LaunchPermission.new
        type.group = params[:group]
        type.user_id = params[:user_id]
        type.organization_arn = params[:organization_arn]
        type.organizational_unit_arn = params[:organizational_unit_arn]
        type
      end
    end

    module LaunchPermissionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchPermission.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LaunchPermissionModifications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchPermissionModifications, context: context)
        type = Types::LaunchPermissionModifications.new
        type.add = LaunchPermissionList.build(params[:add], context: "#{context}[:add]") unless params[:add].nil?
        type.remove = LaunchPermissionList.build(params[:remove], context: "#{context}[:remove]") unless params[:remove].nil?
        type
      end
    end

    module LaunchSpecsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SpotFleetLaunchSpecification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LaunchTemplateBlockDeviceMappingRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateBlockDeviceMappingRequest, context: context)
        type = Types::LaunchTemplateBlockDeviceMappingRequest.new
        type.device_name = params[:device_name]
        type.virtual_name = params[:virtual_name]
        type.ebs = LaunchTemplateEbsBlockDeviceRequest.build(params[:ebs], context: "#{context}[:ebs]") unless params[:ebs].nil?
        type.no_device = params[:no_device]
        type
      end
    end

    module LaunchTemplateBlockDeviceMappingRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchTemplateBlockDeviceMappingRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LaunchTemplateCapacityReservationSpecificationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateCapacityReservationSpecificationRequest, context: context)
        type = Types::LaunchTemplateCapacityReservationSpecificationRequest.new
        type.capacity_reservation_preference = params[:capacity_reservation_preference]
        type.capacity_reservation_target = CapacityReservationTarget.build(params[:capacity_reservation_target], context: "#{context}[:capacity_reservation_target]") unless params[:capacity_reservation_target].nil?
        type
      end
    end

    module LaunchTemplateConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateConfig, context: context)
        type = Types::LaunchTemplateConfig.new
        type.launch_template_specification = FleetLaunchTemplateSpecification.build(params[:launch_template_specification], context: "#{context}[:launch_template_specification]") unless params[:launch_template_specification].nil?
        type.overrides = LaunchTemplateOverridesList.build(params[:overrides], context: "#{context}[:overrides]") unless params[:overrides].nil?
        type
      end
    end

    module LaunchTemplateConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchTemplateConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LaunchTemplateCpuOptionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateCpuOptionsRequest, context: context)
        type = Types::LaunchTemplateCpuOptionsRequest.new
        type.core_count = params[:core_count]
        type.threads_per_core = params[:threads_per_core]
        type
      end
    end

    module LaunchTemplateEbsBlockDeviceRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateEbsBlockDeviceRequest, context: context)
        type = Types::LaunchTemplateEbsBlockDeviceRequest.new
        type.encrypted = params[:encrypted]
        type.delete_on_termination = params[:delete_on_termination]
        type.iops = params[:iops]
        type.kms_key_id = params[:kms_key_id]
        type.snapshot_id = params[:snapshot_id]
        type.volume_size = params[:volume_size]
        type.volume_type = params[:volume_type]
        type.throughput = params[:throughput]
        type
      end
    end

    module LaunchTemplateElasticInferenceAccelerator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateElasticInferenceAccelerator, context: context)
        type = Types::LaunchTemplateElasticInferenceAccelerator.new
        type.type = params[:type]
        type.count = params[:count]
        type
      end
    end

    module LaunchTemplateElasticInferenceAcceleratorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchTemplateElasticInferenceAccelerator.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LaunchTemplateEnclaveOptionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateEnclaveOptionsRequest, context: context)
        type = Types::LaunchTemplateEnclaveOptionsRequest.new
        type.enabled = params[:enabled]
        type
      end
    end

    module LaunchTemplateHibernationOptionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateHibernationOptionsRequest, context: context)
        type = Types::LaunchTemplateHibernationOptionsRequest.new
        type.configured = params[:configured]
        type
      end
    end

    module LaunchTemplateIamInstanceProfileSpecificationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateIamInstanceProfileSpecificationRequest, context: context)
        type = Types::LaunchTemplateIamInstanceProfileSpecificationRequest.new
        type.arn = params[:arn]
        type.member_name = params[:member_name]
        type
      end
    end

    module LaunchTemplateIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module LaunchTemplateInstanceMarketOptionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateInstanceMarketOptionsRequest, context: context)
        type = Types::LaunchTemplateInstanceMarketOptionsRequest.new
        type.market_type = params[:market_type]
        type.spot_options = LaunchTemplateSpotMarketOptionsRequest.build(params[:spot_options], context: "#{context}[:spot_options]") unless params[:spot_options].nil?
        type
      end
    end

    module LaunchTemplateInstanceMetadataOptionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateInstanceMetadataOptionsRequest, context: context)
        type = Types::LaunchTemplateInstanceMetadataOptionsRequest.new
        type.http_tokens = params[:http_tokens]
        type.http_put_response_hop_limit = params[:http_put_response_hop_limit]
        type.http_endpoint = params[:http_endpoint]
        type.http_protocol_ipv6 = params[:http_protocol_ipv6]
        type.instance_metadata_tags = params[:instance_metadata_tags]
        type
      end
    end

    module LaunchTemplateInstanceNetworkInterfaceSpecificationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest, context: context)
        type = Types::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest.new
        type.associate_carrier_ip_address = params[:associate_carrier_ip_address]
        type.associate_public_ip_address = params[:associate_public_ip_address]
        type.delete_on_termination = params[:delete_on_termination]
        type.description = params[:description]
        type.device_index = params[:device_index]
        type.groups = SecurityGroupIdStringList.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.interface_type = params[:interface_type]
        type.ipv6_address_count = params[:ipv6_address_count]
        type.ipv6_addresses = InstanceIpv6AddressListRequest.build(params[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless params[:ipv6_addresses].nil?
        type.network_interface_id = params[:network_interface_id]
        type.private_ip_address = params[:private_ip_address]
        type.private_ip_addresses = PrivateIpAddressSpecificationList.build(params[:private_ip_addresses], context: "#{context}[:private_ip_addresses]") unless params[:private_ip_addresses].nil?
        type.secondary_private_ip_address_count = params[:secondary_private_ip_address_count]
        type.subnet_id = params[:subnet_id]
        type.network_card_index = params[:network_card_index]
        type.ipv4_prefixes = Ipv4PrefixList.build(params[:ipv4_prefixes], context: "#{context}[:ipv4_prefixes]") unless params[:ipv4_prefixes].nil?
        type.ipv4_prefix_count = params[:ipv4_prefix_count]
        type.ipv6_prefixes = Ipv6PrefixList.build(params[:ipv6_prefixes], context: "#{context}[:ipv6_prefixes]") unless params[:ipv6_prefixes].nil?
        type.ipv6_prefix_count = params[:ipv6_prefix_count]
        type
      end
    end

    module LaunchTemplateInstanceNetworkInterfaceSpecificationRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchTemplateInstanceNetworkInterfaceSpecificationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LaunchTemplateLicenseConfigurationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateLicenseConfigurationRequest, context: context)
        type = Types::LaunchTemplateLicenseConfigurationRequest.new
        type.license_configuration_arn = params[:license_configuration_arn]
        type
      end
    end

    module LaunchTemplateLicenseSpecificationListRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchTemplateLicenseConfigurationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LaunchTemplateNameStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module LaunchTemplateOverrides
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateOverrides, context: context)
        type = Types::LaunchTemplateOverrides.new
        type.instance_type = params[:instance_type]
        type.spot_price = params[:spot_price]
        type.subnet_id = params[:subnet_id]
        type.availability_zone = params[:availability_zone]
        type.weighted_capacity = params[:weighted_capacity]
        type.priority = params[:priority]
        type.instance_requirements = InstanceRequirements.build(params[:instance_requirements], context: "#{context}[:instance_requirements]") unless params[:instance_requirements].nil?
        type
      end
    end

    module LaunchTemplateOverridesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchTemplateOverrides.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LaunchTemplatePlacementRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplatePlacementRequest, context: context)
        type = Types::LaunchTemplatePlacementRequest.new
        type.availability_zone = params[:availability_zone]
        type.affinity = params[:affinity]
        type.group_name = params[:group_name]
        type.host_id = params[:host_id]
        type.tenancy = params[:tenancy]
        type.spread_domain = params[:spread_domain]
        type.host_resource_group_arn = params[:host_resource_group_arn]
        type.partition_number = params[:partition_number]
        type
      end
    end

    module LaunchTemplatePrivateDnsNameOptionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplatePrivateDnsNameOptionsRequest, context: context)
        type = Types::LaunchTemplatePrivateDnsNameOptionsRequest.new
        type.hostname_type = params[:hostname_type]
        type.enable_resource_name_dns_a_record = params[:enable_resource_name_dns_a_record]
        type.enable_resource_name_dns_aaaa_record = params[:enable_resource_name_dns_aaaa_record]
        type
      end
    end

    module LaunchTemplateSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateSpecification, context: context)
        type = Types::LaunchTemplateSpecification.new
        type.launch_template_id = params[:launch_template_id]
        type.launch_template_name = params[:launch_template_name]
        type.version = params[:version]
        type
      end
    end

    module LaunchTemplateSpotMarketOptionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateSpotMarketOptionsRequest, context: context)
        type = Types::LaunchTemplateSpotMarketOptionsRequest.new
        type.max_price = params[:max_price]
        type.spot_instance_type = params[:spot_instance_type]
        type.block_duration_minutes = params[:block_duration_minutes]
        type.valid_until = params[:valid_until]
        type.instance_interruption_behavior = params[:instance_interruption_behavior]
        type
      end
    end

    module LaunchTemplateTagSpecificationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateTagSpecificationRequest, context: context)
        type = Types::LaunchTemplateTagSpecificationRequest.new
        type.resource_type = params[:resource_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LaunchTemplateTagSpecificationRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchTemplateTagSpecificationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LaunchTemplatesMonitoringRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplatesMonitoringRequest, context: context)
        type = Types::LaunchTemplatesMonitoringRequest.new
        type.enabled = params[:enabled]
        type
      end
    end

    module LicenseConfigurationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LicenseConfigurationRequest, context: context)
        type = Types::LicenseConfigurationRequest.new
        type.license_configuration_arn = params[:license_configuration_arn]
        type
      end
    end

    module LicenseSpecificationListRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LicenseConfigurationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListSnapshotsInRecycleBinInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSnapshotsInRecycleBinInput, context: context)
        type = Types::ListSnapshotsInRecycleBinInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.snapshot_ids = SnapshotIdStringList.build(params[:snapshot_ids], context: "#{context}[:snapshot_ids]") unless params[:snapshot_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module LoadBalancersConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancersConfig, context: context)
        type = Types::LoadBalancersConfig.new
        type.classic_load_balancers_config = ClassicLoadBalancersConfig.build(params[:classic_load_balancers_config], context: "#{context}[:classic_load_balancers_config]") unless params[:classic_load_balancers_config].nil?
        type.target_groups_config = TargetGroupsConfig.build(params[:target_groups_config], context: "#{context}[:target_groups_config]") unless params[:target_groups_config].nil?
        type
      end
    end

    module LoadPermissionListRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LoadPermissionRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LoadPermissionModifications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadPermissionModifications, context: context)
        type = Types::LoadPermissionModifications.new
        type.add = LoadPermissionListRequest.build(params[:add], context: "#{context}[:add]") unless params[:add].nil?
        type.remove = LoadPermissionListRequest.build(params[:remove], context: "#{context}[:remove]") unless params[:remove].nil?
        type
      end
    end

    module LoadPermissionRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadPermissionRequest, context: context)
        type = Types::LoadPermissionRequest.new
        type.group = params[:group]
        type.user_id = params[:user_id]
        type
      end
    end

    module LocalGatewayIdSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module LocalGatewayRouteTableIdSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module LocalGatewayRouteTableVirtualInterfaceGroupAssociationIdSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module LocalGatewayRouteTableVpcAssociationIdSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module LocalGatewayVirtualInterfaceGroupIdSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module LocalGatewayVirtualInterfaceIdSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module LocalStorageTypeSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module MemoryGiBPerVCpu
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemoryGiBPerVCpu, context: context)
        type = Types::MemoryGiBPerVCpu.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module MemoryGiBPerVCpuRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemoryGiBPerVCpuRequest, context: context)
        type = Types::MemoryGiBPerVCpuRequest.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module MemoryMiB
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemoryMiB, context: context)
        type = Types::MemoryMiB.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module MemoryMiBRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemoryMiBRequest, context: context)
        type = Types::MemoryMiBRequest.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module ModifyAddressAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyAddressAttributeInput, context: context)
        type = Types::ModifyAddressAttributeInput.new
        type.allocation_id = params[:allocation_id]
        type.domain_name = params[:domain_name]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ModifyAvailabilityZoneGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyAvailabilityZoneGroupInput, context: context)
        type = Types::ModifyAvailabilityZoneGroupInput.new
        type.group_name = params[:group_name]
        type.opt_in_status = params[:opt_in_status]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ModifyCapacityReservationFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyCapacityReservationFleetInput, context: context)
        type = Types::ModifyCapacityReservationFleetInput.new
        type.capacity_reservation_fleet_id = params[:capacity_reservation_fleet_id]
        type.total_target_capacity = params[:total_target_capacity]
        type.end_date = params[:end_date]
        type.dry_run = params[:dry_run]
        type.remove_end_date = params[:remove_end_date]
        type
      end
    end

    module ModifyCapacityReservationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyCapacityReservationInput, context: context)
        type = Types::ModifyCapacityReservationInput.new
        type.capacity_reservation_id = params[:capacity_reservation_id]
        type.instance_count = params[:instance_count]
        type.end_date = params[:end_date]
        type.end_date_type = params[:end_date_type]
        type.accept = params[:accept]
        type.dry_run = params[:dry_run]
        type.additional_info = params[:additional_info]
        type
      end
    end

    module ModifyClientVpnEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClientVpnEndpointInput, context: context)
        type = Types::ModifyClientVpnEndpointInput.new
        type.client_vpn_endpoint_id = params[:client_vpn_endpoint_id]
        type.server_certificate_arn = params[:server_certificate_arn]
        type.connection_log_options = ConnectionLogOptions.build(params[:connection_log_options], context: "#{context}[:connection_log_options]") unless params[:connection_log_options].nil?
        type.dns_servers = DnsServersOptionsModifyStructure.build(params[:dns_servers], context: "#{context}[:dns_servers]") unless params[:dns_servers].nil?
        type.vpn_port = params[:vpn_port]
        type.description = params[:description]
        type.split_tunnel = params[:split_tunnel]
        type.dry_run = params[:dry_run]
        type.security_group_ids = ClientVpnSecurityGroupIdSet.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.vpc_id = params[:vpc_id]
        type.self_service_portal = params[:self_service_portal]
        type.client_connect_options = ClientConnectOptions.build(params[:client_connect_options], context: "#{context}[:client_connect_options]") unless params[:client_connect_options].nil?
        type
      end
    end

    module ModifyDefaultCreditSpecificationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDefaultCreditSpecificationInput, context: context)
        type = Types::ModifyDefaultCreditSpecificationInput.new
        type.dry_run = params[:dry_run]
        type.instance_family = params[:instance_family]
        type.cpu_credits = params[:cpu_credits]
        type
      end
    end

    module ModifyEbsDefaultKmsKeyIdInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyEbsDefaultKmsKeyIdInput, context: context)
        type = Types::ModifyEbsDefaultKmsKeyIdInput.new
        type.kms_key_id = params[:kms_key_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ModifyFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyFleetInput, context: context)
        type = Types::ModifyFleetInput.new
        type.dry_run = params[:dry_run]
        type.excess_capacity_termination_policy = params[:excess_capacity_termination_policy]
        type.launch_template_configs = FleetLaunchTemplateConfigListRequest.build(params[:launch_template_configs], context: "#{context}[:launch_template_configs]") unless params[:launch_template_configs].nil?
        type.fleet_id = params[:fleet_id]
        type.target_capacity_specification = TargetCapacitySpecificationRequest.build(params[:target_capacity_specification], context: "#{context}[:target_capacity_specification]") unless params[:target_capacity_specification].nil?
        type.context = params[:context]
        type
      end
    end

    module ModifyFpgaImageAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyFpgaImageAttributeInput, context: context)
        type = Types::ModifyFpgaImageAttributeInput.new
        type.dry_run = params[:dry_run]
        type.fpga_image_id = params[:fpga_image_id]
        type.attribute = params[:attribute]
        type.operation_type = params[:operation_type]
        type.user_ids = UserIdStringList.build(params[:user_ids], context: "#{context}[:user_ids]") unless params[:user_ids].nil?
        type.user_groups = UserGroupStringList.build(params[:user_groups], context: "#{context}[:user_groups]") unless params[:user_groups].nil?
        type.product_codes = ProductCodeStringList.build(params[:product_codes], context: "#{context}[:product_codes]") unless params[:product_codes].nil?
        type.load_permission = LoadPermissionModifications.build(params[:load_permission], context: "#{context}[:load_permission]") unless params[:load_permission].nil?
        type.description = params[:description]
        type.member_name = params[:member_name]
        type
      end
    end

    module ModifyHostsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyHostsInput, context: context)
        type = Types::ModifyHostsInput.new
        type.auto_placement = params[:auto_placement]
        type.host_ids = RequestHostIdList.build(params[:host_ids], context: "#{context}[:host_ids]") unless params[:host_ids].nil?
        type.host_recovery = params[:host_recovery]
        type.instance_type = params[:instance_type]
        type.instance_family = params[:instance_family]
        type
      end
    end

    module ModifyIdFormatInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyIdFormatInput, context: context)
        type = Types::ModifyIdFormatInput.new
        type.resource = params[:resource]
        type.use_long_ids = params[:use_long_ids]
        type
      end
    end

    module ModifyIdentityIdFormatInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyIdentityIdFormatInput, context: context)
        type = Types::ModifyIdentityIdFormatInput.new
        type.principal_arn = params[:principal_arn]
        type.resource = params[:resource]
        type.use_long_ids = params[:use_long_ids]
        type
      end
    end

    module ModifyImageAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyImageAttributeInput, context: context)
        type = Types::ModifyImageAttributeInput.new
        type.attribute = params[:attribute]
        type.description = AttributeValue.build(params[:description], context: "#{context}[:description]") unless params[:description].nil?
        type.image_id = params[:image_id]
        type.launch_permission = LaunchPermissionModifications.build(params[:launch_permission], context: "#{context}[:launch_permission]") unless params[:launch_permission].nil?
        type.operation_type = params[:operation_type]
        type.product_codes = ProductCodeStringList.build(params[:product_codes], context: "#{context}[:product_codes]") unless params[:product_codes].nil?
        type.user_groups = UserGroupStringList.build(params[:user_groups], context: "#{context}[:user_groups]") unless params[:user_groups].nil?
        type.user_ids = UserIdStringList.build(params[:user_ids], context: "#{context}[:user_ids]") unless params[:user_ids].nil?
        type.value = params[:value]
        type.dry_run = params[:dry_run]
        type.organization_arns = OrganizationArnStringList.build(params[:organization_arns], context: "#{context}[:organization_arns]") unless params[:organization_arns].nil?
        type.organizational_unit_arns = OrganizationalUnitArnStringList.build(params[:organizational_unit_arns], context: "#{context}[:organizational_unit_arns]") unless params[:organizational_unit_arns].nil?
        type
      end
    end

    module ModifyInstanceAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyInstanceAttributeInput, context: context)
        type = Types::ModifyInstanceAttributeInput.new
        type.source_dest_check = AttributeBooleanValue.build(params[:source_dest_check], context: "#{context}[:source_dest_check]") unless params[:source_dest_check].nil?
        type.attribute = params[:attribute]
        type.block_device_mappings = InstanceBlockDeviceMappingSpecificationList.build(params[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless params[:block_device_mappings].nil?
        type.disable_api_termination = AttributeBooleanValue.build(params[:disable_api_termination], context: "#{context}[:disable_api_termination]") unless params[:disable_api_termination].nil?
        type.dry_run = params[:dry_run]
        type.ebs_optimized = AttributeBooleanValue.build(params[:ebs_optimized], context: "#{context}[:ebs_optimized]") unless params[:ebs_optimized].nil?
        type.ena_support = AttributeBooleanValue.build(params[:ena_support], context: "#{context}[:ena_support]") unless params[:ena_support].nil?
        type.groups = GroupIdStringList.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.instance_id = params[:instance_id]
        type.instance_initiated_shutdown_behavior = AttributeValue.build(params[:instance_initiated_shutdown_behavior], context: "#{context}[:instance_initiated_shutdown_behavior]") unless params[:instance_initiated_shutdown_behavior].nil?
        type.instance_type = AttributeValue.build(params[:instance_type], context: "#{context}[:instance_type]") unless params[:instance_type].nil?
        type.kernel = AttributeValue.build(params[:kernel], context: "#{context}[:kernel]") unless params[:kernel].nil?
        type.ramdisk = AttributeValue.build(params[:ramdisk], context: "#{context}[:ramdisk]") unless params[:ramdisk].nil?
        type.sriov_net_support = AttributeValue.build(params[:sriov_net_support], context: "#{context}[:sriov_net_support]") unless params[:sriov_net_support].nil?
        type.user_data = BlobAttributeValue.build(params[:user_data], context: "#{context}[:user_data]") unless params[:user_data].nil?
        type.value = params[:value]
        type
      end
    end

    module ModifyInstanceCapacityReservationAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyInstanceCapacityReservationAttributesInput, context: context)
        type = Types::ModifyInstanceCapacityReservationAttributesInput.new
        type.instance_id = params[:instance_id]
        type.capacity_reservation_specification = CapacityReservationSpecification.build(params[:capacity_reservation_specification], context: "#{context}[:capacity_reservation_specification]") unless params[:capacity_reservation_specification].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ModifyInstanceCreditSpecificationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyInstanceCreditSpecificationInput, context: context)
        type = Types::ModifyInstanceCreditSpecificationInput.new
        type.dry_run = params[:dry_run]
        type.client_token = params[:client_token]
        type.instance_credit_specifications = InstanceCreditSpecificationListRequest.build(params[:instance_credit_specifications], context: "#{context}[:instance_credit_specifications]") unless params[:instance_credit_specifications].nil?
        type
      end
    end

    module ModifyInstanceEventStartTimeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyInstanceEventStartTimeInput, context: context)
        type = Types::ModifyInstanceEventStartTimeInput.new
        type.dry_run = params[:dry_run]
        type.instance_id = params[:instance_id]
        type.instance_event_id = params[:instance_event_id]
        type.not_before = params[:not_before]
        type
      end
    end

    module ModifyInstanceEventWindowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyInstanceEventWindowInput, context: context)
        type = Types::ModifyInstanceEventWindowInput.new
        type.dry_run = params[:dry_run]
        type.member_name = params[:member_name]
        type.instance_event_window_id = params[:instance_event_window_id]
        type.time_ranges = InstanceEventWindowTimeRangeRequestSet.build(params[:time_ranges], context: "#{context}[:time_ranges]") unless params[:time_ranges].nil?
        type.cron_expression = params[:cron_expression]
        type
      end
    end

    module ModifyInstanceMetadataOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyInstanceMetadataOptionsInput, context: context)
        type = Types::ModifyInstanceMetadataOptionsInput.new
        type.instance_id = params[:instance_id]
        type.http_tokens = params[:http_tokens]
        type.http_put_response_hop_limit = params[:http_put_response_hop_limit]
        type.http_endpoint = params[:http_endpoint]
        type.dry_run = params[:dry_run]
        type.http_protocol_ipv6 = params[:http_protocol_ipv6]
        type.instance_metadata_tags = params[:instance_metadata_tags]
        type
      end
    end

    module ModifyInstancePlacementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyInstancePlacementInput, context: context)
        type = Types::ModifyInstancePlacementInput.new
        type.affinity = params[:affinity]
        type.group_name = params[:group_name]
        type.host_id = params[:host_id]
        type.instance_id = params[:instance_id]
        type.tenancy = params[:tenancy]
        type.partition_number = params[:partition_number]
        type.host_resource_group_arn = params[:host_resource_group_arn]
        type
      end
    end

    module ModifyIpamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyIpamInput, context: context)
        type = Types::ModifyIpamInput.new
        type.dry_run = params[:dry_run]
        type.ipam_id = params[:ipam_id]
        type.description = params[:description]
        type.add_operating_regions = AddIpamOperatingRegionSet.build(params[:add_operating_regions], context: "#{context}[:add_operating_regions]") unless params[:add_operating_regions].nil?
        type.remove_operating_regions = RemoveIpamOperatingRegionSet.build(params[:remove_operating_regions], context: "#{context}[:remove_operating_regions]") unless params[:remove_operating_regions].nil?
        type
      end
    end

    module ModifyIpamPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyIpamPoolInput, context: context)
        type = Types::ModifyIpamPoolInput.new
        type.dry_run = params[:dry_run]
        type.ipam_pool_id = params[:ipam_pool_id]
        type.description = params[:description]
        type.auto_import = params[:auto_import]
        type.allocation_min_netmask_length = params[:allocation_min_netmask_length]
        type.allocation_max_netmask_length = params[:allocation_max_netmask_length]
        type.allocation_default_netmask_length = params[:allocation_default_netmask_length]
        type.clear_allocation_default_netmask_length = params[:clear_allocation_default_netmask_length]
        type.add_allocation_resource_tags = RequestIpamResourceTagList.build(params[:add_allocation_resource_tags], context: "#{context}[:add_allocation_resource_tags]") unless params[:add_allocation_resource_tags].nil?
        type.remove_allocation_resource_tags = RequestIpamResourceTagList.build(params[:remove_allocation_resource_tags], context: "#{context}[:remove_allocation_resource_tags]") unless params[:remove_allocation_resource_tags].nil?
        type
      end
    end

    module ModifyIpamResourceCidrInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyIpamResourceCidrInput, context: context)
        type = Types::ModifyIpamResourceCidrInput.new
        type.dry_run = params[:dry_run]
        type.resource_id = params[:resource_id]
        type.resource_cidr = params[:resource_cidr]
        type.resource_region = params[:resource_region]
        type.current_ipam_scope_id = params[:current_ipam_scope_id]
        type.destination_ipam_scope_id = params[:destination_ipam_scope_id]
        type.monitored = params[:monitored]
        type
      end
    end

    module ModifyIpamScopeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyIpamScopeInput, context: context)
        type = Types::ModifyIpamScopeInput.new
        type.dry_run = params[:dry_run]
        type.ipam_scope_id = params[:ipam_scope_id]
        type.description = params[:description]
        type
      end
    end

    module ModifyLaunchTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyLaunchTemplateInput, context: context)
        type = Types::ModifyLaunchTemplateInput.new
        type.dry_run = params[:dry_run]
        type.client_token = params[:client_token]
        type.launch_template_id = params[:launch_template_id]
        type.launch_template_name = params[:launch_template_name]
        type.default_version = params[:default_version]
        type
      end
    end

    module ModifyManagedPrefixListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyManagedPrefixListInput, context: context)
        type = Types::ModifyManagedPrefixListInput.new
        type.dry_run = params[:dry_run]
        type.prefix_list_id = params[:prefix_list_id]
        type.current_version = params[:current_version]
        type.prefix_list_name = params[:prefix_list_name]
        type.add_entries = AddPrefixListEntries.build(params[:add_entries], context: "#{context}[:add_entries]") unless params[:add_entries].nil?
        type.remove_entries = RemovePrefixListEntries.build(params[:remove_entries], context: "#{context}[:remove_entries]") unless params[:remove_entries].nil?
        type.max_entries = params[:max_entries]
        type
      end
    end

    module ModifyNetworkInterfaceAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyNetworkInterfaceAttributeInput, context: context)
        type = Types::ModifyNetworkInterfaceAttributeInput.new
        type.attachment = NetworkInterfaceAttachmentChanges.build(params[:attachment], context: "#{context}[:attachment]") unless params[:attachment].nil?
        type.description = AttributeValue.build(params[:description], context: "#{context}[:description]") unless params[:description].nil?
        type.dry_run = params[:dry_run]
        type.groups = SecurityGroupIdStringList.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.network_interface_id = params[:network_interface_id]
        type.source_dest_check = AttributeBooleanValue.build(params[:source_dest_check], context: "#{context}[:source_dest_check]") unless params[:source_dest_check].nil?
        type
      end
    end

    module ModifyPrivateDnsNameOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyPrivateDnsNameOptionsInput, context: context)
        type = Types::ModifyPrivateDnsNameOptionsInput.new
        type.dry_run = params[:dry_run]
        type.instance_id = params[:instance_id]
        type.private_dns_hostname_type = params[:private_dns_hostname_type]
        type.enable_resource_name_dns_a_record = params[:enable_resource_name_dns_a_record]
        type.enable_resource_name_dns_aaaa_record = params[:enable_resource_name_dns_aaaa_record]
        type
      end
    end

    module ModifyReservedInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyReservedInstancesInput, context: context)
        type = Types::ModifyReservedInstancesInput.new
        type.reserved_instances_ids = ReservedInstancesIdStringList.build(params[:reserved_instances_ids], context: "#{context}[:reserved_instances_ids]") unless params[:reserved_instances_ids].nil?
        type.client_token = params[:client_token]
        type.target_configurations = ReservedInstancesConfigurationList.build(params[:target_configurations], context: "#{context}[:target_configurations]") unless params[:target_configurations].nil?
        type
      end
    end

    module ModifySecurityGroupRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifySecurityGroupRulesInput, context: context)
        type = Types::ModifySecurityGroupRulesInput.new
        type.group_id = params[:group_id]
        type.security_group_rules = SecurityGroupRuleUpdateList.build(params[:security_group_rules], context: "#{context}[:security_group_rules]") unless params[:security_group_rules].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ModifySnapshotAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifySnapshotAttributeInput, context: context)
        type = Types::ModifySnapshotAttributeInput.new
        type.attribute = params[:attribute]
        type.create_volume_permission = CreateVolumePermissionModifications.build(params[:create_volume_permission], context: "#{context}[:create_volume_permission]") unless params[:create_volume_permission].nil?
        type.group_names = GroupNameStringList.build(params[:group_names], context: "#{context}[:group_names]") unless params[:group_names].nil?
        type.operation_type = params[:operation_type]
        type.snapshot_id = params[:snapshot_id]
        type.user_ids = UserIdStringList.build(params[:user_ids], context: "#{context}[:user_ids]") unless params[:user_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ModifySnapshotTierInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifySnapshotTierInput, context: context)
        type = Types::ModifySnapshotTierInput.new
        type.snapshot_id = params[:snapshot_id]
        type.storage_tier = params[:storage_tier]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ModifySpotFleetRequestInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifySpotFleetRequestInput, context: context)
        type = Types::ModifySpotFleetRequestInput.new
        type.excess_capacity_termination_policy = params[:excess_capacity_termination_policy]
        type.launch_template_configs = LaunchTemplateConfigList.build(params[:launch_template_configs], context: "#{context}[:launch_template_configs]") unless params[:launch_template_configs].nil?
        type.spot_fleet_request_id = params[:spot_fleet_request_id]
        type.target_capacity = params[:target_capacity]
        type.on_demand_target_capacity = params[:on_demand_target_capacity]
        type.context = params[:context]
        type
      end
    end

    module ModifySubnetAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifySubnetAttributeInput, context: context)
        type = Types::ModifySubnetAttributeInput.new
        type.assign_ipv6_address_on_creation = AttributeBooleanValue.build(params[:assign_ipv6_address_on_creation], context: "#{context}[:assign_ipv6_address_on_creation]") unless params[:assign_ipv6_address_on_creation].nil?
        type.map_public_ip_on_launch = AttributeBooleanValue.build(params[:map_public_ip_on_launch], context: "#{context}[:map_public_ip_on_launch]") unless params[:map_public_ip_on_launch].nil?
        type.subnet_id = params[:subnet_id]
        type.map_customer_owned_ip_on_launch = AttributeBooleanValue.build(params[:map_customer_owned_ip_on_launch], context: "#{context}[:map_customer_owned_ip_on_launch]") unless params[:map_customer_owned_ip_on_launch].nil?
        type.customer_owned_ipv4_pool = params[:customer_owned_ipv4_pool]
        type.enable_dns64 = AttributeBooleanValue.build(params[:enable_dns64], context: "#{context}[:enable_dns64]") unless params[:enable_dns64].nil?
        type.private_dns_hostname_type_on_launch = params[:private_dns_hostname_type_on_launch]
        type.enable_resource_name_dns_a_record_on_launch = AttributeBooleanValue.build(params[:enable_resource_name_dns_a_record_on_launch], context: "#{context}[:enable_resource_name_dns_a_record_on_launch]") unless params[:enable_resource_name_dns_a_record_on_launch].nil?
        type.enable_resource_name_dns_aaaa_record_on_launch = AttributeBooleanValue.build(params[:enable_resource_name_dns_aaaa_record_on_launch], context: "#{context}[:enable_resource_name_dns_aaaa_record_on_launch]") unless params[:enable_resource_name_dns_aaaa_record_on_launch].nil?
        type.enable_lni_at_device_index = params[:enable_lni_at_device_index]
        type.disable_lni_at_device_index = AttributeBooleanValue.build(params[:disable_lni_at_device_index], context: "#{context}[:disable_lni_at_device_index]") unless params[:disable_lni_at_device_index].nil?
        type
      end
    end

    module ModifyTrafficMirrorFilterNetworkServicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyTrafficMirrorFilterNetworkServicesInput, context: context)
        type = Types::ModifyTrafficMirrorFilterNetworkServicesInput.new
        type.traffic_mirror_filter_id = params[:traffic_mirror_filter_id]
        type.add_network_services = TrafficMirrorNetworkServiceList.build(params[:add_network_services], context: "#{context}[:add_network_services]") unless params[:add_network_services].nil?
        type.remove_network_services = TrafficMirrorNetworkServiceList.build(params[:remove_network_services], context: "#{context}[:remove_network_services]") unless params[:remove_network_services].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ModifyTrafficMirrorFilterRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyTrafficMirrorFilterRuleInput, context: context)
        type = Types::ModifyTrafficMirrorFilterRuleInput.new
        type.traffic_mirror_filter_rule_id = params[:traffic_mirror_filter_rule_id]
        type.traffic_direction = params[:traffic_direction]
        type.rule_number = params[:rule_number]
        type.rule_action = params[:rule_action]
        type.destination_port_range = TrafficMirrorPortRangeRequest.build(params[:destination_port_range], context: "#{context}[:destination_port_range]") unless params[:destination_port_range].nil?
        type.source_port_range = TrafficMirrorPortRangeRequest.build(params[:source_port_range], context: "#{context}[:source_port_range]") unless params[:source_port_range].nil?
        type.protocol = params[:protocol]
        type.destination_cidr_block = params[:destination_cidr_block]
        type.source_cidr_block = params[:source_cidr_block]
        type.description = params[:description]
        type.remove_fields = TrafficMirrorFilterRuleFieldList.build(params[:remove_fields], context: "#{context}[:remove_fields]") unless params[:remove_fields].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ModifyTrafficMirrorSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyTrafficMirrorSessionInput, context: context)
        type = Types::ModifyTrafficMirrorSessionInput.new
        type.traffic_mirror_session_id = params[:traffic_mirror_session_id]
        type.traffic_mirror_target_id = params[:traffic_mirror_target_id]
        type.traffic_mirror_filter_id = params[:traffic_mirror_filter_id]
        type.packet_length = params[:packet_length]
        type.session_number = params[:session_number]
        type.virtual_network_id = params[:virtual_network_id]
        type.description = params[:description]
        type.remove_fields = TrafficMirrorSessionFieldList.build(params[:remove_fields], context: "#{context}[:remove_fields]") unless params[:remove_fields].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ModifyTransitGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyTransitGatewayInput, context: context)
        type = Types::ModifyTransitGatewayInput.new
        type.transit_gateway_id = params[:transit_gateway_id]
        type.description = params[:description]
        type.options = ModifyTransitGatewayOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ModifyTransitGatewayOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyTransitGatewayOptions, context: context)
        type = Types::ModifyTransitGatewayOptions.new
        type.add_transit_gateway_cidr_blocks = TransitGatewayCidrBlockStringList.build(params[:add_transit_gateway_cidr_blocks], context: "#{context}[:add_transit_gateway_cidr_blocks]") unless params[:add_transit_gateway_cidr_blocks].nil?
        type.remove_transit_gateway_cidr_blocks = TransitGatewayCidrBlockStringList.build(params[:remove_transit_gateway_cidr_blocks], context: "#{context}[:remove_transit_gateway_cidr_blocks]") unless params[:remove_transit_gateway_cidr_blocks].nil?
        type.vpn_ecmp_support = params[:vpn_ecmp_support]
        type.dns_support = params[:dns_support]
        type.auto_accept_shared_attachments = params[:auto_accept_shared_attachments]
        type.default_route_table_association = params[:default_route_table_association]
        type.association_default_route_table_id = params[:association_default_route_table_id]
        type.default_route_table_propagation = params[:default_route_table_propagation]
        type.propagation_default_route_table_id = params[:propagation_default_route_table_id]
        type
      end
    end

    module ModifyTransitGatewayPrefixListReferenceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyTransitGatewayPrefixListReferenceInput, context: context)
        type = Types::ModifyTransitGatewayPrefixListReferenceInput.new
        type.transit_gateway_route_table_id = params[:transit_gateway_route_table_id]
        type.prefix_list_id = params[:prefix_list_id]
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.blackhole = params[:blackhole]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ModifyTransitGatewayVpcAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyTransitGatewayVpcAttachmentInput, context: context)
        type = Types::ModifyTransitGatewayVpcAttachmentInput.new
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.add_subnet_ids = TransitGatewaySubnetIdList.build(params[:add_subnet_ids], context: "#{context}[:add_subnet_ids]") unless params[:add_subnet_ids].nil?
        type.remove_subnet_ids = TransitGatewaySubnetIdList.build(params[:remove_subnet_ids], context: "#{context}[:remove_subnet_ids]") unless params[:remove_subnet_ids].nil?
        type.options = ModifyTransitGatewayVpcAttachmentRequestOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ModifyTransitGatewayVpcAttachmentRequestOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyTransitGatewayVpcAttachmentRequestOptions, context: context)
        type = Types::ModifyTransitGatewayVpcAttachmentRequestOptions.new
        type.dns_support = params[:dns_support]
        type.ipv6_support = params[:ipv6_support]
        type.appliance_mode_support = params[:appliance_mode_support]
        type
      end
    end

    module ModifyVolumeAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyVolumeAttributeInput, context: context)
        type = Types::ModifyVolumeAttributeInput.new
        type.auto_enable_io = AttributeBooleanValue.build(params[:auto_enable_io], context: "#{context}[:auto_enable_io]") unless params[:auto_enable_io].nil?
        type.volume_id = params[:volume_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ModifyVolumeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyVolumeInput, context: context)
        type = Types::ModifyVolumeInput.new
        type.dry_run = params[:dry_run]
        type.volume_id = params[:volume_id]
        type.size = params[:size]
        type.volume_type = params[:volume_type]
        type.iops = params[:iops]
        type.throughput = params[:throughput]
        type.multi_attach_enabled = params[:multi_attach_enabled]
        type
      end
    end

    module ModifyVpcAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyVpcAttributeInput, context: context)
        type = Types::ModifyVpcAttributeInput.new
        type.enable_dns_hostnames = AttributeBooleanValue.build(params[:enable_dns_hostnames], context: "#{context}[:enable_dns_hostnames]") unless params[:enable_dns_hostnames].nil?
        type.enable_dns_support = AttributeBooleanValue.build(params[:enable_dns_support], context: "#{context}[:enable_dns_support]") unless params[:enable_dns_support].nil?
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module ModifyVpcEndpointConnectionNotificationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyVpcEndpointConnectionNotificationInput, context: context)
        type = Types::ModifyVpcEndpointConnectionNotificationInput.new
        type.dry_run = params[:dry_run]
        type.connection_notification_id = params[:connection_notification_id]
        type.connection_notification_arn = params[:connection_notification_arn]
        type.connection_events = ValueStringList.build(params[:connection_events], context: "#{context}[:connection_events]") unless params[:connection_events].nil?
        type
      end
    end

    module ModifyVpcEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyVpcEndpointInput, context: context)
        type = Types::ModifyVpcEndpointInput.new
        type.dry_run = params[:dry_run]
        type.vpc_endpoint_id = params[:vpc_endpoint_id]
        type.reset_policy = params[:reset_policy]
        type.policy_document = params[:policy_document]
        type.add_route_table_ids = VpcEndpointRouteTableIdList.build(params[:add_route_table_ids], context: "#{context}[:add_route_table_ids]") unless params[:add_route_table_ids].nil?
        type.remove_route_table_ids = VpcEndpointRouteTableIdList.build(params[:remove_route_table_ids], context: "#{context}[:remove_route_table_ids]") unless params[:remove_route_table_ids].nil?
        type.add_subnet_ids = VpcEndpointSubnetIdList.build(params[:add_subnet_ids], context: "#{context}[:add_subnet_ids]") unless params[:add_subnet_ids].nil?
        type.remove_subnet_ids = VpcEndpointSubnetIdList.build(params[:remove_subnet_ids], context: "#{context}[:remove_subnet_ids]") unless params[:remove_subnet_ids].nil?
        type.add_security_group_ids = VpcEndpointSecurityGroupIdList.build(params[:add_security_group_ids], context: "#{context}[:add_security_group_ids]") unless params[:add_security_group_ids].nil?
        type.remove_security_group_ids = VpcEndpointSecurityGroupIdList.build(params[:remove_security_group_ids], context: "#{context}[:remove_security_group_ids]") unless params[:remove_security_group_ids].nil?
        type.private_dns_enabled = params[:private_dns_enabled]
        type
      end
    end

    module ModifyVpcEndpointServiceConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyVpcEndpointServiceConfigurationInput, context: context)
        type = Types::ModifyVpcEndpointServiceConfigurationInput.new
        type.dry_run = params[:dry_run]
        type.service_id = params[:service_id]
        type.private_dns_name = params[:private_dns_name]
        type.remove_private_dns_name = params[:remove_private_dns_name]
        type.acceptance_required = params[:acceptance_required]
        type.add_network_load_balancer_arns = ValueStringList.build(params[:add_network_load_balancer_arns], context: "#{context}[:add_network_load_balancer_arns]") unless params[:add_network_load_balancer_arns].nil?
        type.remove_network_load_balancer_arns = ValueStringList.build(params[:remove_network_load_balancer_arns], context: "#{context}[:remove_network_load_balancer_arns]") unless params[:remove_network_load_balancer_arns].nil?
        type.add_gateway_load_balancer_arns = ValueStringList.build(params[:add_gateway_load_balancer_arns], context: "#{context}[:add_gateway_load_balancer_arns]") unless params[:add_gateway_load_balancer_arns].nil?
        type.remove_gateway_load_balancer_arns = ValueStringList.build(params[:remove_gateway_load_balancer_arns], context: "#{context}[:remove_gateway_load_balancer_arns]") unless params[:remove_gateway_load_balancer_arns].nil?
        type
      end
    end

    module ModifyVpcEndpointServicePayerResponsibilityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyVpcEndpointServicePayerResponsibilityInput, context: context)
        type = Types::ModifyVpcEndpointServicePayerResponsibilityInput.new
        type.dry_run = params[:dry_run]
        type.service_id = params[:service_id]
        type.payer_responsibility = params[:payer_responsibility]
        type
      end
    end

    module ModifyVpcEndpointServicePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyVpcEndpointServicePermissionsInput, context: context)
        type = Types::ModifyVpcEndpointServicePermissionsInput.new
        type.dry_run = params[:dry_run]
        type.service_id = params[:service_id]
        type.add_allowed_principals = ValueStringList.build(params[:add_allowed_principals], context: "#{context}[:add_allowed_principals]") unless params[:add_allowed_principals].nil?
        type.remove_allowed_principals = ValueStringList.build(params[:remove_allowed_principals], context: "#{context}[:remove_allowed_principals]") unless params[:remove_allowed_principals].nil?
        type
      end
    end

    module ModifyVpcPeeringConnectionOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyVpcPeeringConnectionOptionsInput, context: context)
        type = Types::ModifyVpcPeeringConnectionOptionsInput.new
        type.accepter_peering_connection_options = PeeringConnectionOptionsRequest.build(params[:accepter_peering_connection_options], context: "#{context}[:accepter_peering_connection_options]") unless params[:accepter_peering_connection_options].nil?
        type.dry_run = params[:dry_run]
        type.requester_peering_connection_options = PeeringConnectionOptionsRequest.build(params[:requester_peering_connection_options], context: "#{context}[:requester_peering_connection_options]") unless params[:requester_peering_connection_options].nil?
        type.vpc_peering_connection_id = params[:vpc_peering_connection_id]
        type
      end
    end

    module ModifyVpcTenancyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyVpcTenancyInput, context: context)
        type = Types::ModifyVpcTenancyInput.new
        type.vpc_id = params[:vpc_id]
        type.instance_tenancy = params[:instance_tenancy]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ModifyVpnConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyVpnConnectionInput, context: context)
        type = Types::ModifyVpnConnectionInput.new
        type.vpn_connection_id = params[:vpn_connection_id]
        type.transit_gateway_id = params[:transit_gateway_id]
        type.customer_gateway_id = params[:customer_gateway_id]
        type.vpn_gateway_id = params[:vpn_gateway_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ModifyVpnConnectionOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyVpnConnectionOptionsInput, context: context)
        type = Types::ModifyVpnConnectionOptionsInput.new
        type.vpn_connection_id = params[:vpn_connection_id]
        type.local_ipv4_network_cidr = params[:local_ipv4_network_cidr]
        type.remote_ipv4_network_cidr = params[:remote_ipv4_network_cidr]
        type.local_ipv6_network_cidr = params[:local_ipv6_network_cidr]
        type.remote_ipv6_network_cidr = params[:remote_ipv6_network_cidr]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ModifyVpnTunnelCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyVpnTunnelCertificateInput, context: context)
        type = Types::ModifyVpnTunnelCertificateInput.new
        type.vpn_connection_id = params[:vpn_connection_id]
        type.vpn_tunnel_outside_ip_address = params[:vpn_tunnel_outside_ip_address]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ModifyVpnTunnelOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyVpnTunnelOptionsInput, context: context)
        type = Types::ModifyVpnTunnelOptionsInput.new
        type.vpn_connection_id = params[:vpn_connection_id]
        type.vpn_tunnel_outside_ip_address = params[:vpn_tunnel_outside_ip_address]
        type.tunnel_options = ModifyVpnTunnelOptionsSpecification.build(params[:tunnel_options], context: "#{context}[:tunnel_options]") unless params[:tunnel_options].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ModifyVpnTunnelOptionsSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyVpnTunnelOptionsSpecification, context: context)
        type = Types::ModifyVpnTunnelOptionsSpecification.new
        type.tunnel_inside_cidr = params[:tunnel_inside_cidr]
        type.tunnel_inside_ipv6_cidr = params[:tunnel_inside_ipv6_cidr]
        type.pre_shared_key = params[:pre_shared_key]
        type.phase1_lifetime_seconds = params[:phase1_lifetime_seconds]
        type.phase2_lifetime_seconds = params[:phase2_lifetime_seconds]
        type.rekey_margin_time_seconds = params[:rekey_margin_time_seconds]
        type.rekey_fuzz_percentage = params[:rekey_fuzz_percentage]
        type.replay_window_size = params[:replay_window_size]
        type.dpd_timeout_seconds = params[:dpd_timeout_seconds]
        type.dpd_timeout_action = params[:dpd_timeout_action]
        type.phase1_encryption_algorithms = Phase1EncryptionAlgorithmsRequestList.build(params[:phase1_encryption_algorithms], context: "#{context}[:phase1_encryption_algorithms]") unless params[:phase1_encryption_algorithms].nil?
        type.phase2_encryption_algorithms = Phase2EncryptionAlgorithmsRequestList.build(params[:phase2_encryption_algorithms], context: "#{context}[:phase2_encryption_algorithms]") unless params[:phase2_encryption_algorithms].nil?
        type.phase1_integrity_algorithms = Phase1IntegrityAlgorithmsRequestList.build(params[:phase1_integrity_algorithms], context: "#{context}[:phase1_integrity_algorithms]") unless params[:phase1_integrity_algorithms].nil?
        type.phase2_integrity_algorithms = Phase2IntegrityAlgorithmsRequestList.build(params[:phase2_integrity_algorithms], context: "#{context}[:phase2_integrity_algorithms]") unless params[:phase2_integrity_algorithms].nil?
        type.phase1_dh_group_numbers = Phase1DHGroupNumbersRequestList.build(params[:phase1_dh_group_numbers], context: "#{context}[:phase1_dh_group_numbers]") unless params[:phase1_dh_group_numbers].nil?
        type.phase2_dh_group_numbers = Phase2DHGroupNumbersRequestList.build(params[:phase2_dh_group_numbers], context: "#{context}[:phase2_dh_group_numbers]") unless params[:phase2_dh_group_numbers].nil?
        type.ike_versions = IKEVersionsRequestList.build(params[:ike_versions], context: "#{context}[:ike_versions]") unless params[:ike_versions].nil?
        type.startup_action = params[:startup_action]
        type
      end
    end

    module MonitorInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitorInstancesInput, context: context)
        type = Types::MonitorInstancesInput.new
        type.instance_ids = InstanceIdStringList.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module MoveAddressToVpcInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MoveAddressToVpcInput, context: context)
        type = Types::MoveAddressToVpcInput.new
        type.dry_run = params[:dry_run]
        type.public_ip = params[:public_ip]
        type
      end
    end

    module MoveByoipCidrToIpamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MoveByoipCidrToIpamInput, context: context)
        type = Types::MoveByoipCidrToIpamInput.new
        type.dry_run = params[:dry_run]
        type.cidr = params[:cidr]
        type.ipam_pool_id = params[:ipam_pool_id]
        type.ipam_pool_owner = params[:ipam_pool_owner]
        type
      end
    end

    module NatGatewayIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module NetworkAclIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module NetworkInsightsAccessScopeAnalysisIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module NetworkInsightsAccessScopeIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module NetworkInsightsAnalysisIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module NetworkInsightsPathIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module NetworkInterfaceAttachmentChanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkInterfaceAttachmentChanges, context: context)
        type = Types::NetworkInterfaceAttachmentChanges.new
        type.attachment_id = params[:attachment_id]
        type.delete_on_termination = params[:delete_on_termination]
        type
      end
    end

    module NetworkInterfaceCount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkInterfaceCount, context: context)
        type = Types::NetworkInterfaceCount.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module NetworkInterfaceCountRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkInterfaceCountRequest, context: context)
        type = Types::NetworkInterfaceCountRequest.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module NetworkInterfaceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module NetworkInterfacePermissionIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module NewDhcpConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NewDhcpConfiguration, context: context)
        type = Types::NewDhcpConfiguration.new
        type.key = params[:key]
        type.values = ValueStringList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module NewDhcpConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NewDhcpConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OccurrenceDayRequestSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module OnDemandOptionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OnDemandOptionsRequest, context: context)
        type = Types::OnDemandOptionsRequest.new
        type.allocation_strategy = params[:allocation_strategy]
        type.capacity_reservation_options = CapacityReservationOptionsRequest.build(params[:capacity_reservation_options], context: "#{context}[:capacity_reservation_options]") unless params[:capacity_reservation_options].nil?
        type.single_instance_type = params[:single_instance_type]
        type.single_availability_zone = params[:single_availability_zone]
        type.min_target_capacity = params[:min_target_capacity]
        type.max_total_price = params[:max_total_price]
        type
      end
    end

    module OrganizationArnStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module OrganizationalUnitArnStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module OwnerStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module PacketHeaderStatementRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PacketHeaderStatementRequest, context: context)
        type = Types::PacketHeaderStatementRequest.new
        type.source_addresses = ValueStringList.build(params[:source_addresses], context: "#{context}[:source_addresses]") unless params[:source_addresses].nil?
        type.destination_addresses = ValueStringList.build(params[:destination_addresses], context: "#{context}[:destination_addresses]") unless params[:destination_addresses].nil?
        type.source_ports = ValueStringList.build(params[:source_ports], context: "#{context}[:source_ports]") unless params[:source_ports].nil?
        type.destination_ports = ValueStringList.build(params[:destination_ports], context: "#{context}[:destination_ports]") unless params[:destination_ports].nil?
        type.source_prefix_lists = ValueStringList.build(params[:source_prefix_lists], context: "#{context}[:source_prefix_lists]") unless params[:source_prefix_lists].nil?
        type.destination_prefix_lists = ValueStringList.build(params[:destination_prefix_lists], context: "#{context}[:destination_prefix_lists]") unless params[:destination_prefix_lists].nil?
        type.protocols = ProtocolList.build(params[:protocols], context: "#{context}[:protocols]") unless params[:protocols].nil?
        type
      end
    end

    module PathStatementRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PathStatementRequest, context: context)
        type = Types::PathStatementRequest.new
        type.packet_header_statement = PacketHeaderStatementRequest.build(params[:packet_header_statement], context: "#{context}[:packet_header_statement]") unless params[:packet_header_statement].nil?
        type.resource_statement = ResourceStatementRequest.build(params[:resource_statement], context: "#{context}[:resource_statement]") unless params[:resource_statement].nil?
        type
      end
    end

    module PeeringConnectionOptionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PeeringConnectionOptionsRequest, context: context)
        type = Types::PeeringConnectionOptionsRequest.new
        type.allow_dns_resolution_from_remote_vpc = params[:allow_dns_resolution_from_remote_vpc]
        type.allow_egress_from_local_classic_link_to_remote_vpc = params[:allow_egress_from_local_classic_link_to_remote_vpc]
        type.allow_egress_from_local_vpc_to_remote_classic_link = params[:allow_egress_from_local_vpc_to_remote_classic_link]
        type
      end
    end

    module Phase1DHGroupNumbersRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Phase1DHGroupNumbersRequestListValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Phase1DHGroupNumbersRequestListValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Phase1DHGroupNumbersRequestListValue, context: context)
        type = Types::Phase1DHGroupNumbersRequestListValue.new
        type.value = params[:value]
        type
      end
    end

    module Phase1EncryptionAlgorithmsRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Phase1EncryptionAlgorithmsRequestListValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Phase1EncryptionAlgorithmsRequestListValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Phase1EncryptionAlgorithmsRequestListValue, context: context)
        type = Types::Phase1EncryptionAlgorithmsRequestListValue.new
        type.value = params[:value]
        type
      end
    end

    module Phase1IntegrityAlgorithmsRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Phase1IntegrityAlgorithmsRequestListValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Phase1IntegrityAlgorithmsRequestListValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Phase1IntegrityAlgorithmsRequestListValue, context: context)
        type = Types::Phase1IntegrityAlgorithmsRequestListValue.new
        type.value = params[:value]
        type
      end
    end

    module Phase2DHGroupNumbersRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Phase2DHGroupNumbersRequestListValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Phase2DHGroupNumbersRequestListValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Phase2DHGroupNumbersRequestListValue, context: context)
        type = Types::Phase2DHGroupNumbersRequestListValue.new
        type.value = params[:value]
        type
      end
    end

    module Phase2EncryptionAlgorithmsRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Phase2EncryptionAlgorithmsRequestListValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Phase2EncryptionAlgorithmsRequestListValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Phase2EncryptionAlgorithmsRequestListValue, context: context)
        type = Types::Phase2EncryptionAlgorithmsRequestListValue.new
        type.value = params[:value]
        type
      end
    end

    module Phase2IntegrityAlgorithmsRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Phase2IntegrityAlgorithmsRequestListValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Phase2IntegrityAlgorithmsRequestListValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Phase2IntegrityAlgorithmsRequestListValue, context: context)
        type = Types::Phase2IntegrityAlgorithmsRequestListValue.new
        type.value = params[:value]
        type
      end
    end

    module Placement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Placement, context: context)
        type = Types::Placement.new
        type.availability_zone = params[:availability_zone]
        type.affinity = params[:affinity]
        type.group_name = params[:group_name]
        type.partition_number = params[:partition_number]
        type.host_id = params[:host_id]
        type.tenancy = params[:tenancy]
        type.spread_domain = params[:spread_domain]
        type.host_resource_group_arn = params[:host_resource_group_arn]
        type
      end
    end

    module PlacementGroupIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module PlacementGroupStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module PortRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortRange, context: context)
        type = Types::PortRange.new
        type.from = params[:from]
        type.to = params[:to]
        type
      end
    end

    module PrefixListId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrefixListId, context: context)
        type = Types::PrefixListId.new
        type.description = params[:description]
        type.prefix_list_id = params[:prefix_list_id]
        type
      end
    end

    module PrefixListIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PrefixListId.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PrefixListResourceIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module PriceScheduleSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PriceScheduleSpecification, context: context)
        type = Types::PriceScheduleSpecification.new
        type.currency_code = params[:currency_code]
        type.price = params[:price]
        type.term = params[:term]
        type
      end
    end

    module PriceScheduleSpecificationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PriceScheduleSpecification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PrivateDnsNameOptionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrivateDnsNameOptionsRequest, context: context)
        type = Types::PrivateDnsNameOptionsRequest.new
        type.hostname_type = params[:hostname_type]
        type.enable_resource_name_dns_a_record = params[:enable_resource_name_dns_a_record]
        type.enable_resource_name_dns_aaaa_record = params[:enable_resource_name_dns_aaaa_record]
        type
      end
    end

    module PrivateIpAddressConfigSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScheduledInstancesPrivateIpAddressConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PrivateIpAddressSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrivateIpAddressSpecification, context: context)
        type = Types::PrivateIpAddressSpecification.new
        type.primary = params[:primary]
        type.private_ip_address = params[:private_ip_address]
        type
      end
    end

    module PrivateIpAddressSpecificationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PrivateIpAddressSpecification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PrivateIpAddressStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ProductCodeStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ProductDescriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ProtocolList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ProvisionByoipCidrInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionByoipCidrInput, context: context)
        type = Types::ProvisionByoipCidrInput.new
        type.cidr = params[:cidr]
        type.cidr_authorization_context = CidrAuthorizationContext.build(params[:cidr_authorization_context], context: "#{context}[:cidr_authorization_context]") unless params[:cidr_authorization_context].nil?
        type.publicly_advertisable = params[:publicly_advertisable]
        type.description = params[:description]
        type.dry_run = params[:dry_run]
        type.pool_tag_specifications = TagSpecificationList.build(params[:pool_tag_specifications], context: "#{context}[:pool_tag_specifications]") unless params[:pool_tag_specifications].nil?
        type.multi_region = params[:multi_region]
        type
      end
    end

    module ProvisionIpamPoolCidrInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionIpamPoolCidrInput, context: context)
        type = Types::ProvisionIpamPoolCidrInput.new
        type.dry_run = params[:dry_run]
        type.ipam_pool_id = params[:ipam_pool_id]
        type.cidr = params[:cidr]
        type.cidr_authorization_context = IpamCidrAuthorizationContext.build(params[:cidr_authorization_context], context: "#{context}[:cidr_authorization_context]") unless params[:cidr_authorization_context].nil?
        type
      end
    end

    module ProvisionPublicIpv4PoolCidrInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionPublicIpv4PoolCidrInput, context: context)
        type = Types::ProvisionPublicIpv4PoolCidrInput.new
        type.dry_run = params[:dry_run]
        type.ipam_pool_id = params[:ipam_pool_id]
        type.pool_id = params[:pool_id]
        type.netmask_length = params[:netmask_length]
        type
      end
    end

    module PublicIpStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module PublicIpv4PoolIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module PurchaseHostReservationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseHostReservationInput, context: context)
        type = Types::PurchaseHostReservationInput.new
        type.client_token = params[:client_token]
        type.currency_code = params[:currency_code]
        type.host_id_set = RequestHostIdSet.build(params[:host_id_set], context: "#{context}[:host_id_set]") unless params[:host_id_set].nil?
        type.limit_price = params[:limit_price]
        type.offering_id = params[:offering_id]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module PurchaseRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseRequest, context: context)
        type = Types::PurchaseRequest.new
        type.instance_count = params[:instance_count]
        type.purchase_token = params[:purchase_token]
        type
      end
    end

    module PurchaseRequestSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PurchaseRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PurchaseReservedInstancesOfferingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseReservedInstancesOfferingInput, context: context)
        type = Types::PurchaseReservedInstancesOfferingInput.new
        type.instance_count = params[:instance_count]
        type.reserved_instances_offering_id = params[:reserved_instances_offering_id]
        type.dry_run = params[:dry_run]
        type.limit_price = ReservedInstanceLimitPrice.build(params[:limit_price], context: "#{context}[:limit_price]") unless params[:limit_price].nil?
        type.purchase_time = params[:purchase_time]
        type
      end
    end

    module PurchaseScheduledInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseScheduledInstancesInput, context: context)
        type = Types::PurchaseScheduledInstancesInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.dry_run = params[:dry_run]
        type.purchase_requests = PurchaseRequestSet.build(params[:purchase_requests], context: "#{context}[:purchase_requests]") unless params[:purchase_requests].nil?
        type
      end
    end

    module ReasonCodesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module RebootInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootInstancesInput, context: context)
        type = Types::RebootInstancesInput.new
        type.instance_ids = InstanceIdStringList.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module RegionNameStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module RegionNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module RegisterImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterImageInput, context: context)
        type = Types::RegisterImageInput.new
        type.image_location = params[:image_location]
        type.architecture = params[:architecture]
        type.block_device_mappings = BlockDeviceMappingRequestList.build(params[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless params[:block_device_mappings].nil?
        type.description = params[:description]
        type.dry_run = params[:dry_run]
        type.ena_support = params[:ena_support]
        type.kernel_id = params[:kernel_id]
        type.member_name = params[:member_name]
        type.billing_products = BillingProductList.build(params[:billing_products], context: "#{context}[:billing_products]") unless params[:billing_products].nil?
        type.ramdisk_id = params[:ramdisk_id]
        type.root_device_name = params[:root_device_name]
        type.sriov_net_support = params[:sriov_net_support]
        type.virtualization_type = params[:virtualization_type]
        type.boot_mode = params[:boot_mode]
        type
      end
    end

    module RegisterInstanceEventNotificationAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterInstanceEventNotificationAttributesInput, context: context)
        type = Types::RegisterInstanceEventNotificationAttributesInput.new
        type.dry_run = params[:dry_run]
        type.instance_tag_attribute = RegisterInstanceTagAttributeRequest.build(params[:instance_tag_attribute], context: "#{context}[:instance_tag_attribute]") unless params[:instance_tag_attribute].nil?
        type
      end
    end

    module RegisterInstanceTagAttributeRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterInstanceTagAttributeRequest, context: context)
        type = Types::RegisterInstanceTagAttributeRequest.new
        type.include_all_tags_of_instance = params[:include_all_tags_of_instance]
        type.instance_tag_keys = InstanceTagKeySet.build(params[:instance_tag_keys], context: "#{context}[:instance_tag_keys]") unless params[:instance_tag_keys].nil?
        type
      end
    end

    module RegisterTransitGatewayMulticastGroupMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterTransitGatewayMulticastGroupMembersInput, context: context)
        type = Types::RegisterTransitGatewayMulticastGroupMembersInput.new
        type.transit_gateway_multicast_domain_id = params[:transit_gateway_multicast_domain_id]
        type.group_ip_address = params[:group_ip_address]
        type.network_interface_ids = TransitGatewayNetworkInterfaceIdList.build(params[:network_interface_ids], context: "#{context}[:network_interface_ids]") unless params[:network_interface_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module RegisterTransitGatewayMulticastGroupSourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterTransitGatewayMulticastGroupSourcesInput, context: context)
        type = Types::RegisterTransitGatewayMulticastGroupSourcesInput.new
        type.transit_gateway_multicast_domain_id = params[:transit_gateway_multicast_domain_id]
        type.group_ip_address = params[:group_ip_address]
        type.network_interface_ids = TransitGatewayNetworkInterfaceIdList.build(params[:network_interface_ids], context: "#{context}[:network_interface_ids]") unless params[:network_interface_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module RejectTransitGatewayMulticastDomainAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectTransitGatewayMulticastDomainAssociationsInput, context: context)
        type = Types::RejectTransitGatewayMulticastDomainAssociationsInput.new
        type.transit_gateway_multicast_domain_id = params[:transit_gateway_multicast_domain_id]
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.subnet_ids = ValueStringList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module RejectTransitGatewayPeeringAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectTransitGatewayPeeringAttachmentInput, context: context)
        type = Types::RejectTransitGatewayPeeringAttachmentInput.new
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module RejectTransitGatewayVpcAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectTransitGatewayVpcAttachmentInput, context: context)
        type = Types::RejectTransitGatewayVpcAttachmentInput.new
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module RejectVpcEndpointConnectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectVpcEndpointConnectionsInput, context: context)
        type = Types::RejectVpcEndpointConnectionsInput.new
        type.dry_run = params[:dry_run]
        type.service_id = params[:service_id]
        type.vpc_endpoint_ids = VpcEndpointIdList.build(params[:vpc_endpoint_ids], context: "#{context}[:vpc_endpoint_ids]") unless params[:vpc_endpoint_ids].nil?
        type
      end
    end

    module RejectVpcPeeringConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectVpcPeeringConnectionInput, context: context)
        type = Types::RejectVpcPeeringConnectionInput.new
        type.dry_run = params[:dry_run]
        type.vpc_peering_connection_id = params[:vpc_peering_connection_id]
        type
      end
    end

    module ReleaseAddressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReleaseAddressInput, context: context)
        type = Types::ReleaseAddressInput.new
        type.allocation_id = params[:allocation_id]
        type.public_ip = params[:public_ip]
        type.network_border_group = params[:network_border_group]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ReleaseHostsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReleaseHostsInput, context: context)
        type = Types::ReleaseHostsInput.new
        type.host_ids = RequestHostIdList.build(params[:host_ids], context: "#{context}[:host_ids]") unless params[:host_ids].nil?
        type
      end
    end

    module ReleaseIpamPoolAllocationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReleaseIpamPoolAllocationInput, context: context)
        type = Types::ReleaseIpamPoolAllocationInput.new
        type.dry_run = params[:dry_run]
        type.ipam_pool_id = params[:ipam_pool_id]
        type.cidr = params[:cidr]
        type.ipam_pool_allocation_id = params[:ipam_pool_allocation_id]
        type
      end
    end

    module RemoveIpamOperatingRegion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveIpamOperatingRegion, context: context)
        type = Types::RemoveIpamOperatingRegion.new
        type.region_name = params[:region_name]
        type
      end
    end

    module RemoveIpamOperatingRegionSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RemoveIpamOperatingRegion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RemovePrefixListEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RemovePrefixListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RemovePrefixListEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemovePrefixListEntry, context: context)
        type = Types::RemovePrefixListEntry.new
        type.cidr = params[:cidr]
        type
      end
    end

    module ReplaceIamInstanceProfileAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplaceIamInstanceProfileAssociationInput, context: context)
        type = Types::ReplaceIamInstanceProfileAssociationInput.new
        type.iam_instance_profile = IamInstanceProfileSpecification.build(params[:iam_instance_profile], context: "#{context}[:iam_instance_profile]") unless params[:iam_instance_profile].nil?
        type.association_id = params[:association_id]
        type
      end
    end

    module ReplaceNetworkAclAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplaceNetworkAclAssociationInput, context: context)
        type = Types::ReplaceNetworkAclAssociationInput.new
        type.association_id = params[:association_id]
        type.dry_run = params[:dry_run]
        type.network_acl_id = params[:network_acl_id]
        type
      end
    end

    module ReplaceNetworkAclEntryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplaceNetworkAclEntryInput, context: context)
        type = Types::ReplaceNetworkAclEntryInput.new
        type.cidr_block = params[:cidr_block]
        type.dry_run = params[:dry_run]
        type.egress = params[:egress]
        type.icmp_type_code = IcmpTypeCode.build(params[:icmp_type_code], context: "#{context}[:icmp_type_code]") unless params[:icmp_type_code].nil?
        type.ipv6_cidr_block = params[:ipv6_cidr_block]
        type.network_acl_id = params[:network_acl_id]
        type.port_range = PortRange.build(params[:port_range], context: "#{context}[:port_range]") unless params[:port_range].nil?
        type.protocol = params[:protocol]
        type.rule_action = params[:rule_action]
        type.rule_number = params[:rule_number]
        type
      end
    end

    module ReplaceRootVolumeTaskIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ReplaceRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplaceRouteInput, context: context)
        type = Types::ReplaceRouteInput.new
        type.destination_cidr_block = params[:destination_cidr_block]
        type.destination_ipv6_cidr_block = params[:destination_ipv6_cidr_block]
        type.destination_prefix_list_id = params[:destination_prefix_list_id]
        type.dry_run = params[:dry_run]
        type.vpc_endpoint_id = params[:vpc_endpoint_id]
        type.egress_only_internet_gateway_id = params[:egress_only_internet_gateway_id]
        type.gateway_id = params[:gateway_id]
        type.instance_id = params[:instance_id]
        type.local_target = params[:local_target]
        type.nat_gateway_id = params[:nat_gateway_id]
        type.transit_gateway_id = params[:transit_gateway_id]
        type.local_gateway_id = params[:local_gateway_id]
        type.carrier_gateway_id = params[:carrier_gateway_id]
        type.network_interface_id = params[:network_interface_id]
        type.route_table_id = params[:route_table_id]
        type.vpc_peering_connection_id = params[:vpc_peering_connection_id]
        type.core_network_arn = params[:core_network_arn]
        type
      end
    end

    module ReplaceRouteTableAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplaceRouteTableAssociationInput, context: context)
        type = Types::ReplaceRouteTableAssociationInput.new
        type.association_id = params[:association_id]
        type.dry_run = params[:dry_run]
        type.route_table_id = params[:route_table_id]
        type
      end
    end

    module ReplaceTransitGatewayRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplaceTransitGatewayRouteInput, context: context)
        type = Types::ReplaceTransitGatewayRouteInput.new
        type.destination_cidr_block = params[:destination_cidr_block]
        type.transit_gateway_route_table_id = params[:transit_gateway_route_table_id]
        type.transit_gateway_attachment_id = params[:transit_gateway_attachment_id]
        type.blackhole = params[:blackhole]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ReportInstanceStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportInstanceStatusInput, context: context)
        type = Types::ReportInstanceStatusInput.new
        type.description = params[:description]
        type.dry_run = params[:dry_run]
        type.end_time = params[:end_time]
        type.instances = InstanceIdStringList.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type.reason_codes = ReasonCodesList.build(params[:reason_codes], context: "#{context}[:reason_codes]") unless params[:reason_codes].nil?
        type.start_time = params[:start_time]
        type.status = params[:status]
        type
      end
    end

    module RequestHostIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module RequestHostIdSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module RequestInstanceTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module RequestIpamResourceTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestIpamResourceTag, context: context)
        type = Types::RequestIpamResourceTag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module RequestIpamResourceTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RequestIpamResourceTag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RequestLaunchTemplateData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestLaunchTemplateData, context: context)
        type = Types::RequestLaunchTemplateData.new
        type.kernel_id = params[:kernel_id]
        type.ebs_optimized = params[:ebs_optimized]
        type.iam_instance_profile = LaunchTemplateIamInstanceProfileSpecificationRequest.build(params[:iam_instance_profile], context: "#{context}[:iam_instance_profile]") unless params[:iam_instance_profile].nil?
        type.block_device_mappings = LaunchTemplateBlockDeviceMappingRequestList.build(params[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless params[:block_device_mappings].nil?
        type.network_interfaces = LaunchTemplateInstanceNetworkInterfaceSpecificationRequestList.build(params[:network_interfaces], context: "#{context}[:network_interfaces]") unless params[:network_interfaces].nil?
        type.image_id = params[:image_id]
        type.instance_type = params[:instance_type]
        type.key_name = params[:key_name]
        type.monitoring = LaunchTemplatesMonitoringRequest.build(params[:monitoring], context: "#{context}[:monitoring]") unless params[:monitoring].nil?
        type.placement = LaunchTemplatePlacementRequest.build(params[:placement], context: "#{context}[:placement]") unless params[:placement].nil?
        type.ram_disk_id = params[:ram_disk_id]
        type.disable_api_termination = params[:disable_api_termination]
        type.instance_initiated_shutdown_behavior = params[:instance_initiated_shutdown_behavior]
        type.user_data = params[:user_data]
        type.tag_specifications = LaunchTemplateTagSpecificationRequestList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.elastic_gpu_specifications = ElasticGpuSpecificationList.build(params[:elastic_gpu_specifications], context: "#{context}[:elastic_gpu_specifications]") unless params[:elastic_gpu_specifications].nil?
        type.elastic_inference_accelerators = LaunchTemplateElasticInferenceAcceleratorList.build(params[:elastic_inference_accelerators], context: "#{context}[:elastic_inference_accelerators]") unless params[:elastic_inference_accelerators].nil?
        type.security_group_ids = SecurityGroupIdStringList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.security_groups = SecurityGroupStringList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.instance_market_options = LaunchTemplateInstanceMarketOptionsRequest.build(params[:instance_market_options], context: "#{context}[:instance_market_options]") unless params[:instance_market_options].nil?
        type.credit_specification = CreditSpecificationRequest.build(params[:credit_specification], context: "#{context}[:credit_specification]") unless params[:credit_specification].nil?
        type.cpu_options = LaunchTemplateCpuOptionsRequest.build(params[:cpu_options], context: "#{context}[:cpu_options]") unless params[:cpu_options].nil?
        type.capacity_reservation_specification = LaunchTemplateCapacityReservationSpecificationRequest.build(params[:capacity_reservation_specification], context: "#{context}[:capacity_reservation_specification]") unless params[:capacity_reservation_specification].nil?
        type.license_specifications = LaunchTemplateLicenseSpecificationListRequest.build(params[:license_specifications], context: "#{context}[:license_specifications]") unless params[:license_specifications].nil?
        type.hibernation_options = LaunchTemplateHibernationOptionsRequest.build(params[:hibernation_options], context: "#{context}[:hibernation_options]") unless params[:hibernation_options].nil?
        type.metadata_options = LaunchTemplateInstanceMetadataOptionsRequest.build(params[:metadata_options], context: "#{context}[:metadata_options]") unless params[:metadata_options].nil?
        type.enclave_options = LaunchTemplateEnclaveOptionsRequest.build(params[:enclave_options], context: "#{context}[:enclave_options]") unless params[:enclave_options].nil?
        type.instance_requirements = InstanceRequirementsRequest.build(params[:instance_requirements], context: "#{context}[:instance_requirements]") unless params[:instance_requirements].nil?
        type.private_dns_name_options = LaunchTemplatePrivateDnsNameOptionsRequest.build(params[:private_dns_name_options], context: "#{context}[:private_dns_name_options]") unless params[:private_dns_name_options].nil?
        type
      end
    end

    module RequestSpotFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestSpotFleetInput, context: context)
        type = Types::RequestSpotFleetInput.new
        type.dry_run = params[:dry_run]
        type.spot_fleet_request_config = SpotFleetRequestConfigData.build(params[:spot_fleet_request_config], context: "#{context}[:spot_fleet_request_config]") unless params[:spot_fleet_request_config].nil?
        type
      end
    end

    module RequestSpotInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestSpotInstancesInput, context: context)
        type = Types::RequestSpotInstancesInput.new
        type.availability_zone_group = params[:availability_zone_group]
        type.block_duration_minutes = params[:block_duration_minutes]
        type.client_token = params[:client_token]
        type.dry_run = params[:dry_run]
        type.instance_count = params[:instance_count]
        type.launch_group = params[:launch_group]
        type.launch_specification = RequestSpotLaunchSpecification.build(params[:launch_specification], context: "#{context}[:launch_specification]") unless params[:launch_specification].nil?
        type.spot_price = params[:spot_price]
        type.type = params[:type]
        type.valid_from = params[:valid_from]
        type.valid_until = params[:valid_until]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.instance_interruption_behavior = params[:instance_interruption_behavior]
        type
      end
    end

    module RequestSpotLaunchSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestSpotLaunchSpecification, context: context)
        type = Types::RequestSpotLaunchSpecification.new
        type.security_group_ids = RequestSpotLaunchSpecificationSecurityGroupIdList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.security_groups = RequestSpotLaunchSpecificationSecurityGroupList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.addressing_type = params[:addressing_type]
        type.block_device_mappings = BlockDeviceMappingList.build(params[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless params[:block_device_mappings].nil?
        type.ebs_optimized = params[:ebs_optimized]
        type.iam_instance_profile = IamInstanceProfileSpecification.build(params[:iam_instance_profile], context: "#{context}[:iam_instance_profile]") unless params[:iam_instance_profile].nil?
        type.image_id = params[:image_id]
        type.instance_type = params[:instance_type]
        type.kernel_id = params[:kernel_id]
        type.key_name = params[:key_name]
        type.monitoring = RunInstancesMonitoringEnabled.build(params[:monitoring], context: "#{context}[:monitoring]") unless params[:monitoring].nil?
        type.network_interfaces = InstanceNetworkInterfaceSpecificationList.build(params[:network_interfaces], context: "#{context}[:network_interfaces]") unless params[:network_interfaces].nil?
        type.placement = SpotPlacement.build(params[:placement], context: "#{context}[:placement]") unless params[:placement].nil?
        type.ramdisk_id = params[:ramdisk_id]
        type.subnet_id = params[:subnet_id]
        type.user_data = params[:user_data]
        type
      end
    end

    module RequestSpotLaunchSpecificationSecurityGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module RequestSpotLaunchSpecificationSecurityGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ReservationFleetInstanceSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservationFleetInstanceSpecification, context: context)
        type = Types::ReservationFleetInstanceSpecification.new
        type.instance_type = params[:instance_type]
        type.instance_platform = params[:instance_platform]
        type.weight = params[:weight]
        type.availability_zone = params[:availability_zone]
        type.availability_zone_id = params[:availability_zone_id]
        type.ebs_optimized = params[:ebs_optimized]
        type.priority = params[:priority]
        type
      end
    end

    module ReservationFleetInstanceSpecificationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReservationFleetInstanceSpecification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReservedInstanceIdSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ReservedInstanceLimitPrice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedInstanceLimitPrice, context: context)
        type = Types::ReservedInstanceLimitPrice.new
        type.amount = params[:amount]
        type.currency_code = params[:currency_code]
        type
      end
    end

    module ReservedInstancesConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedInstancesConfiguration, context: context)
        type = Types::ReservedInstancesConfiguration.new
        type.availability_zone = params[:availability_zone]
        type.instance_count = params[:instance_count]
        type.instance_type = params[:instance_type]
        type.platform = params[:platform]
        type.scope = params[:scope]
        type
      end
    end

    module ReservedInstancesConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReservedInstancesConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReservedInstancesIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ReservedInstancesModificationIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ReservedInstancesOfferingIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ResetAddressAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetAddressAttributeInput, context: context)
        type = Types::ResetAddressAttributeInput.new
        type.allocation_id = params[:allocation_id]
        type.attribute = params[:attribute]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ResetEbsDefaultKmsKeyIdInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetEbsDefaultKmsKeyIdInput, context: context)
        type = Types::ResetEbsDefaultKmsKeyIdInput.new
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ResetFpgaImageAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetFpgaImageAttributeInput, context: context)
        type = Types::ResetFpgaImageAttributeInput.new
        type.dry_run = params[:dry_run]
        type.fpga_image_id = params[:fpga_image_id]
        type.attribute = params[:attribute]
        type
      end
    end

    module ResetImageAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetImageAttributeInput, context: context)
        type = Types::ResetImageAttributeInput.new
        type.attribute = params[:attribute]
        type.image_id = params[:image_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ResetInstanceAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetInstanceAttributeInput, context: context)
        type = Types::ResetInstanceAttributeInput.new
        type.attribute = params[:attribute]
        type.dry_run = params[:dry_run]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module ResetNetworkInterfaceAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetNetworkInterfaceAttributeInput, context: context)
        type = Types::ResetNetworkInterfaceAttributeInput.new
        type.dry_run = params[:dry_run]
        type.network_interface_id = params[:network_interface_id]
        type.source_dest_check = params[:source_dest_check]
        type
      end
    end

    module ResetSnapshotAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetSnapshotAttributeInput, context: context)
        type = Types::ResetSnapshotAttributeInput.new
        type.attribute = params[:attribute]
        type.snapshot_id = params[:snapshot_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ResourceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ResourceStatementRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceStatementRequest, context: context)
        type = Types::ResourceStatementRequest.new
        type.resources = ValueStringList.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.resource_types = ValueStringList.build(params[:resource_types], context: "#{context}[:resource_types]") unless params[:resource_types].nil?
        type
      end
    end

    module RestorableByStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module RestoreAddressToClassicInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreAddressToClassicInput, context: context)
        type = Types::RestoreAddressToClassicInput.new
        type.dry_run = params[:dry_run]
        type.public_ip = params[:public_ip]
        type
      end
    end

    module RestoreManagedPrefixListVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreManagedPrefixListVersionInput, context: context)
        type = Types::RestoreManagedPrefixListVersionInput.new
        type.dry_run = params[:dry_run]
        type.prefix_list_id = params[:prefix_list_id]
        type.previous_version = params[:previous_version]
        type.current_version = params[:current_version]
        type
      end
    end

    module RestoreSnapshotFromRecycleBinInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreSnapshotFromRecycleBinInput, context: context)
        type = Types::RestoreSnapshotFromRecycleBinInput.new
        type.snapshot_id = params[:snapshot_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module RestoreSnapshotTierInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreSnapshotTierInput, context: context)
        type = Types::RestoreSnapshotTierInput.new
        type.snapshot_id = params[:snapshot_id]
        type.temporary_restore_days = params[:temporary_restore_days]
        type.permanent_restore = params[:permanent_restore]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module RevokeClientVpnIngressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeClientVpnIngressInput, context: context)
        type = Types::RevokeClientVpnIngressInput.new
        type.client_vpn_endpoint_id = params[:client_vpn_endpoint_id]
        type.target_network_cidr = params[:target_network_cidr]
        type.access_group_id = params[:access_group_id]
        type.revoke_all_groups = params[:revoke_all_groups]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module RevokeSecurityGroupEgressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeSecurityGroupEgressInput, context: context)
        type = Types::RevokeSecurityGroupEgressInput.new
        type.dry_run = params[:dry_run]
        type.group_id = params[:group_id]
        type.ip_permissions = IpPermissionList.build(params[:ip_permissions], context: "#{context}[:ip_permissions]") unless params[:ip_permissions].nil?
        type.security_group_rule_ids = SecurityGroupRuleIdList.build(params[:security_group_rule_ids], context: "#{context}[:security_group_rule_ids]") unless params[:security_group_rule_ids].nil?
        type.cidr_ip = params[:cidr_ip]
        type.from_port = params[:from_port]
        type.ip_protocol = params[:ip_protocol]
        type.to_port = params[:to_port]
        type.source_security_group_name = params[:source_security_group_name]
        type.source_security_group_owner_id = params[:source_security_group_owner_id]
        type
      end
    end

    module RevokeSecurityGroupIngressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeSecurityGroupIngressInput, context: context)
        type = Types::RevokeSecurityGroupIngressInput.new
        type.cidr_ip = params[:cidr_ip]
        type.from_port = params[:from_port]
        type.group_id = params[:group_id]
        type.group_name = params[:group_name]
        type.ip_permissions = IpPermissionList.build(params[:ip_permissions], context: "#{context}[:ip_permissions]") unless params[:ip_permissions].nil?
        type.ip_protocol = params[:ip_protocol]
        type.source_security_group_name = params[:source_security_group_name]
        type.source_security_group_owner_id = params[:source_security_group_owner_id]
        type.to_port = params[:to_port]
        type.dry_run = params[:dry_run]
        type.security_group_rule_ids = SecurityGroupRuleIdList.build(params[:security_group_rule_ids], context: "#{context}[:security_group_rule_ids]") unless params[:security_group_rule_ids].nil?
        type
      end
    end

    module RouteTableIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module RunInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RunInstancesInput, context: context)
        type = Types::RunInstancesInput.new
        type.block_device_mappings = BlockDeviceMappingRequestList.build(params[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless params[:block_device_mappings].nil?
        type.image_id = params[:image_id]
        type.instance_type = params[:instance_type]
        type.ipv6_address_count = params[:ipv6_address_count]
        type.ipv6_addresses = InstanceIpv6AddressList.build(params[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless params[:ipv6_addresses].nil?
        type.kernel_id = params[:kernel_id]
        type.key_name = params[:key_name]
        type.max_count = params[:max_count]
        type.min_count = params[:min_count]
        type.monitoring = RunInstancesMonitoringEnabled.build(params[:monitoring], context: "#{context}[:monitoring]") unless params[:monitoring].nil?
        type.placement = Placement.build(params[:placement], context: "#{context}[:placement]") unless params[:placement].nil?
        type.ramdisk_id = params[:ramdisk_id]
        type.security_group_ids = SecurityGroupIdStringList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.security_groups = SecurityGroupStringList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.subnet_id = params[:subnet_id]
        type.user_data = params[:user_data]
        type.additional_info = params[:additional_info]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.disable_api_termination = params[:disable_api_termination]
        type.dry_run = params[:dry_run]
        type.ebs_optimized = params[:ebs_optimized]
        type.iam_instance_profile = IamInstanceProfileSpecification.build(params[:iam_instance_profile], context: "#{context}[:iam_instance_profile]") unless params[:iam_instance_profile].nil?
        type.instance_initiated_shutdown_behavior = params[:instance_initiated_shutdown_behavior]
        type.network_interfaces = InstanceNetworkInterfaceSpecificationList.build(params[:network_interfaces], context: "#{context}[:network_interfaces]") unless params[:network_interfaces].nil?
        type.private_ip_address = params[:private_ip_address]
        type.elastic_gpu_specification = ElasticGpuSpecifications.build(params[:elastic_gpu_specification], context: "#{context}[:elastic_gpu_specification]") unless params[:elastic_gpu_specification].nil?
        type.elastic_inference_accelerators = ElasticInferenceAccelerators.build(params[:elastic_inference_accelerators], context: "#{context}[:elastic_inference_accelerators]") unless params[:elastic_inference_accelerators].nil?
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.launch_template = LaunchTemplateSpecification.build(params[:launch_template], context: "#{context}[:launch_template]") unless params[:launch_template].nil?
        type.instance_market_options = InstanceMarketOptionsRequest.build(params[:instance_market_options], context: "#{context}[:instance_market_options]") unless params[:instance_market_options].nil?
        type.credit_specification = CreditSpecificationRequest.build(params[:credit_specification], context: "#{context}[:credit_specification]") unless params[:credit_specification].nil?
        type.cpu_options = CpuOptionsRequest.build(params[:cpu_options], context: "#{context}[:cpu_options]") unless params[:cpu_options].nil?
        type.capacity_reservation_specification = CapacityReservationSpecification.build(params[:capacity_reservation_specification], context: "#{context}[:capacity_reservation_specification]") unless params[:capacity_reservation_specification].nil?
        type.hibernation_options = HibernationOptionsRequest.build(params[:hibernation_options], context: "#{context}[:hibernation_options]") unless params[:hibernation_options].nil?
        type.license_specifications = LicenseSpecificationListRequest.build(params[:license_specifications], context: "#{context}[:license_specifications]") unless params[:license_specifications].nil?
        type.metadata_options = InstanceMetadataOptionsRequest.build(params[:metadata_options], context: "#{context}[:metadata_options]") unless params[:metadata_options].nil?
        type.enclave_options = EnclaveOptionsRequest.build(params[:enclave_options], context: "#{context}[:enclave_options]") unless params[:enclave_options].nil?
        type.private_dns_name_options = PrivateDnsNameOptionsRequest.build(params[:private_dns_name_options], context: "#{context}[:private_dns_name_options]") unless params[:private_dns_name_options].nil?
        type
      end
    end

    module RunInstancesMonitoringEnabled
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RunInstancesMonitoringEnabled, context: context)
        type = Types::RunInstancesMonitoringEnabled.new
        type.enabled = params[:enabled]
        type
      end
    end

    module RunScheduledInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RunScheduledInstancesInput, context: context)
        type = Types::RunScheduledInstancesInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.dry_run = params[:dry_run]
        type.instance_count = params[:instance_count]
        type.launch_specification = ScheduledInstancesLaunchSpecification.build(params[:launch_specification], context: "#{context}[:launch_specification]") unless params[:launch_specification].nil?
        type.scheduled_instance_id = params[:scheduled_instance_id]
        type
      end
    end

    module S3ObjectTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ObjectTag, context: context)
        type = Types::S3ObjectTag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module S3ObjectTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << S3ObjectTag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3Storage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Storage, context: context)
        type = Types::S3Storage.new
        type.aws_access_key_id = params[:aws_access_key_id]
        type.bucket = params[:bucket]
        type.prefix = params[:prefix]
        type.upload_policy = params[:upload_policy]
        type.upload_policy_signature = params[:upload_policy_signature]
        type
      end
    end

    module ScheduledInstanceIdRequestSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ScheduledInstanceRecurrenceRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledInstanceRecurrenceRequest, context: context)
        type = Types::ScheduledInstanceRecurrenceRequest.new
        type.frequency = params[:frequency]
        type.interval = params[:interval]
        type.occurrence_days = OccurrenceDayRequestSet.build(params[:occurrence_days], context: "#{context}[:occurrence_days]") unless params[:occurrence_days].nil?
        type.occurrence_relative_to_end = params[:occurrence_relative_to_end]
        type.occurrence_unit = params[:occurrence_unit]
        type
      end
    end

    module ScheduledInstancesBlockDeviceMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledInstancesBlockDeviceMapping, context: context)
        type = Types::ScheduledInstancesBlockDeviceMapping.new
        type.device_name = params[:device_name]
        type.ebs = ScheduledInstancesEbs.build(params[:ebs], context: "#{context}[:ebs]") unless params[:ebs].nil?
        type.no_device = params[:no_device]
        type.virtual_name = params[:virtual_name]
        type
      end
    end

    module ScheduledInstancesBlockDeviceMappingSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScheduledInstancesBlockDeviceMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScheduledInstancesEbs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledInstancesEbs, context: context)
        type = Types::ScheduledInstancesEbs.new
        type.delete_on_termination = params[:delete_on_termination]
        type.encrypted = params[:encrypted]
        type.iops = params[:iops]
        type.snapshot_id = params[:snapshot_id]
        type.volume_size = params[:volume_size]
        type.volume_type = params[:volume_type]
        type
      end
    end

    module ScheduledInstancesIamInstanceProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledInstancesIamInstanceProfile, context: context)
        type = Types::ScheduledInstancesIamInstanceProfile.new
        type.arn = params[:arn]
        type.member_name = params[:member_name]
        type
      end
    end

    module ScheduledInstancesIpv6Address
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledInstancesIpv6Address, context: context)
        type = Types::ScheduledInstancesIpv6Address.new
        type.ipv6_address = params[:ipv6_address]
        type
      end
    end

    module ScheduledInstancesIpv6AddressList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScheduledInstancesIpv6Address.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScheduledInstancesLaunchSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledInstancesLaunchSpecification, context: context)
        type = Types::ScheduledInstancesLaunchSpecification.new
        type.block_device_mappings = ScheduledInstancesBlockDeviceMappingSet.build(params[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless params[:block_device_mappings].nil?
        type.ebs_optimized = params[:ebs_optimized]
        type.iam_instance_profile = ScheduledInstancesIamInstanceProfile.build(params[:iam_instance_profile], context: "#{context}[:iam_instance_profile]") unless params[:iam_instance_profile].nil?
        type.image_id = params[:image_id]
        type.instance_type = params[:instance_type]
        type.kernel_id = params[:kernel_id]
        type.key_name = params[:key_name]
        type.monitoring = ScheduledInstancesMonitoring.build(params[:monitoring], context: "#{context}[:monitoring]") unless params[:monitoring].nil?
        type.network_interfaces = ScheduledInstancesNetworkInterfaceSet.build(params[:network_interfaces], context: "#{context}[:network_interfaces]") unless params[:network_interfaces].nil?
        type.placement = ScheduledInstancesPlacement.build(params[:placement], context: "#{context}[:placement]") unless params[:placement].nil?
        type.ramdisk_id = params[:ramdisk_id]
        type.security_group_ids = ScheduledInstancesSecurityGroupIdSet.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_id = params[:subnet_id]
        type.user_data = params[:user_data]
        type
      end
    end

    module ScheduledInstancesMonitoring
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledInstancesMonitoring, context: context)
        type = Types::ScheduledInstancesMonitoring.new
        type.enabled = params[:enabled]
        type
      end
    end

    module ScheduledInstancesNetworkInterface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledInstancesNetworkInterface, context: context)
        type = Types::ScheduledInstancesNetworkInterface.new
        type.associate_public_ip_address = params[:associate_public_ip_address]
        type.delete_on_termination = params[:delete_on_termination]
        type.description = params[:description]
        type.device_index = params[:device_index]
        type.groups = ScheduledInstancesSecurityGroupIdSet.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.ipv6_address_count = params[:ipv6_address_count]
        type.ipv6_addresses = ScheduledInstancesIpv6AddressList.build(params[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless params[:ipv6_addresses].nil?
        type.network_interface_id = params[:network_interface_id]
        type.private_ip_address = params[:private_ip_address]
        type.private_ip_address_configs = PrivateIpAddressConfigSet.build(params[:private_ip_address_configs], context: "#{context}[:private_ip_address_configs]") unless params[:private_ip_address_configs].nil?
        type.secondary_private_ip_address_count = params[:secondary_private_ip_address_count]
        type.subnet_id = params[:subnet_id]
        type
      end
    end

    module ScheduledInstancesNetworkInterfaceSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScheduledInstancesNetworkInterface.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScheduledInstancesPlacement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledInstancesPlacement, context: context)
        type = Types::ScheduledInstancesPlacement.new
        type.availability_zone = params[:availability_zone]
        type.group_name = params[:group_name]
        type
      end
    end

    module ScheduledInstancesPrivateIpAddressConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledInstancesPrivateIpAddressConfig, context: context)
        type = Types::ScheduledInstancesPrivateIpAddressConfig.new
        type.primary = params[:primary]
        type.private_ip_address = params[:private_ip_address]
        type
      end
    end

    module ScheduledInstancesSecurityGroupIdSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module SearchLocalGatewayRoutesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchLocalGatewayRoutesInput, context: context)
        type = Types::SearchLocalGatewayRoutesInput.new
        type.local_gateway_route_table_id = params[:local_gateway_route_table_id]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module SearchTransitGatewayMulticastGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchTransitGatewayMulticastGroupsInput, context: context)
        type = Types::SearchTransitGatewayMulticastGroupsInput.new
        type.transit_gateway_multicast_domain_id = params[:transit_gateway_multicast_domain_id]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module SearchTransitGatewayRoutesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchTransitGatewayRoutesInput, context: context)
        type = Types::SearchTransitGatewayRoutesInput.new
        type.transit_gateway_route_table_id = params[:transit_gateway_route_table_id]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module SecurityGroupIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module SecurityGroupRuleDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityGroupRuleDescription, context: context)
        type = Types::SecurityGroupRuleDescription.new
        type.security_group_rule_id = params[:security_group_rule_id]
        type.description = params[:description]
        type
      end
    end

    module SecurityGroupRuleDescriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SecurityGroupRuleDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SecurityGroupRuleIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module SecurityGroupRuleRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityGroupRuleRequest, context: context)
        type = Types::SecurityGroupRuleRequest.new
        type.ip_protocol = params[:ip_protocol]
        type.from_port = params[:from_port]
        type.to_port = params[:to_port]
        type.cidr_ipv4 = params[:cidr_ipv4]
        type.cidr_ipv6 = params[:cidr_ipv6]
        type.prefix_list_id = params[:prefix_list_id]
        type.referenced_group_id = params[:referenced_group_id]
        type.description = params[:description]
        type
      end
    end

    module SecurityGroupRuleUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityGroupRuleUpdate, context: context)
        type = Types::SecurityGroupRuleUpdate.new
        type.security_group_rule_id = params[:security_group_rule_id]
        type.security_group_rule = SecurityGroupRuleRequest.build(params[:security_group_rule], context: "#{context}[:security_group_rule]") unless params[:security_group_rule].nil?
        type
      end
    end

    module SecurityGroupRuleUpdateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SecurityGroupRuleUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SecurityGroupStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module SendDiagnosticInterruptInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendDiagnosticInterruptInput, context: context)
        type = Types::SendDiagnosticInterruptInput.new
        type.instance_id = params[:instance_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module SlotDateTimeRangeRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotDateTimeRangeRequest, context: context)
        type = Types::SlotDateTimeRangeRequest.new
        type.earliest_time = params[:earliest_time]
        type.latest_time = params[:latest_time]
        type
      end
    end

    module SlotStartTimeRangeRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotStartTimeRangeRequest, context: context)
        type = Types::SlotStartTimeRangeRequest.new
        type.earliest_time = params[:earliest_time]
        type.latest_time = params[:latest_time]
        type
      end
    end

    module SnapshotDiskContainer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotDiskContainer, context: context)
        type = Types::SnapshotDiskContainer.new
        type.description = params[:description]
        type.format = params[:format]
        type.url = params[:url]
        type.user_bucket = UserBucket.build(params[:user_bucket], context: "#{context}[:user_bucket]") unless params[:user_bucket].nil?
        type
      end
    end

    module SnapshotIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module SpotCapacityRebalance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpotCapacityRebalance, context: context)
        type = Types::SpotCapacityRebalance.new
        type.replacement_strategy = params[:replacement_strategy]
        type.termination_delay = params[:termination_delay]
        type
      end
    end

    module SpotFleetLaunchSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpotFleetLaunchSpecification, context: context)
        type = Types::SpotFleetLaunchSpecification.new
        type.security_groups = GroupIdentifierList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.addressing_type = params[:addressing_type]
        type.block_device_mappings = BlockDeviceMappingList.build(params[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless params[:block_device_mappings].nil?
        type.ebs_optimized = params[:ebs_optimized]
        type.iam_instance_profile = IamInstanceProfileSpecification.build(params[:iam_instance_profile], context: "#{context}[:iam_instance_profile]") unless params[:iam_instance_profile].nil?
        type.image_id = params[:image_id]
        type.instance_type = params[:instance_type]
        type.kernel_id = params[:kernel_id]
        type.key_name = params[:key_name]
        type.monitoring = SpotFleetMonitoring.build(params[:monitoring], context: "#{context}[:monitoring]") unless params[:monitoring].nil?
        type.network_interfaces = InstanceNetworkInterfaceSpecificationList.build(params[:network_interfaces], context: "#{context}[:network_interfaces]") unless params[:network_interfaces].nil?
        type.placement = SpotPlacement.build(params[:placement], context: "#{context}[:placement]") unless params[:placement].nil?
        type.ramdisk_id = params[:ramdisk_id]
        type.spot_price = params[:spot_price]
        type.subnet_id = params[:subnet_id]
        type.user_data = params[:user_data]
        type.weighted_capacity = params[:weighted_capacity]
        type.tag_specifications = SpotFleetTagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.instance_requirements = InstanceRequirements.build(params[:instance_requirements], context: "#{context}[:instance_requirements]") unless params[:instance_requirements].nil?
        type
      end
    end

    module SpotFleetMonitoring
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpotFleetMonitoring, context: context)
        type = Types::SpotFleetMonitoring.new
        type.enabled = params[:enabled]
        type
      end
    end

    module SpotFleetRequestConfigData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpotFleetRequestConfigData, context: context)
        type = Types::SpotFleetRequestConfigData.new
        type.allocation_strategy = params[:allocation_strategy]
        type.on_demand_allocation_strategy = params[:on_demand_allocation_strategy]
        type.spot_maintenance_strategies = SpotMaintenanceStrategies.build(params[:spot_maintenance_strategies], context: "#{context}[:spot_maintenance_strategies]") unless params[:spot_maintenance_strategies].nil?
        type.client_token = params[:client_token]
        type.excess_capacity_termination_policy = params[:excess_capacity_termination_policy]
        type.fulfilled_capacity = params[:fulfilled_capacity]
        type.on_demand_fulfilled_capacity = params[:on_demand_fulfilled_capacity]
        type.iam_fleet_role = params[:iam_fleet_role]
        type.launch_specifications = LaunchSpecsList.build(params[:launch_specifications], context: "#{context}[:launch_specifications]") unless params[:launch_specifications].nil?
        type.launch_template_configs = LaunchTemplateConfigList.build(params[:launch_template_configs], context: "#{context}[:launch_template_configs]") unless params[:launch_template_configs].nil?
        type.spot_price = params[:spot_price]
        type.target_capacity = params[:target_capacity]
        type.on_demand_target_capacity = params[:on_demand_target_capacity]
        type.on_demand_max_total_price = params[:on_demand_max_total_price]
        type.spot_max_total_price = params[:spot_max_total_price]
        type.terminate_instances_with_expiration = params[:terminate_instances_with_expiration]
        type.type = params[:type]
        type.valid_from = params[:valid_from]
        type.valid_until = params[:valid_until]
        type.replace_unhealthy_instances = params[:replace_unhealthy_instances]
        type.instance_interruption_behavior = params[:instance_interruption_behavior]
        type.load_balancers_config = LoadBalancersConfig.build(params[:load_balancers_config], context: "#{context}[:load_balancers_config]") unless params[:load_balancers_config].nil?
        type.instance_pools_to_use_count = params[:instance_pools_to_use_count]
        type.context = params[:context]
        type.target_capacity_unit_type = params[:target_capacity_unit_type]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type
      end
    end

    module SpotFleetRequestIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module SpotFleetTagSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpotFleetTagSpecification, context: context)
        type = Types::SpotFleetTagSpecification.new
        type.resource_type = params[:resource_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module SpotFleetTagSpecificationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SpotFleetTagSpecification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SpotInstanceRequestIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module SpotMaintenanceStrategies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpotMaintenanceStrategies, context: context)
        type = Types::SpotMaintenanceStrategies.new
        type.capacity_rebalance = SpotCapacityRebalance.build(params[:capacity_rebalance], context: "#{context}[:capacity_rebalance]") unless params[:capacity_rebalance].nil?
        type
      end
    end

    module SpotMarketOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpotMarketOptions, context: context)
        type = Types::SpotMarketOptions.new
        type.max_price = params[:max_price]
        type.spot_instance_type = params[:spot_instance_type]
        type.block_duration_minutes = params[:block_duration_minutes]
        type.valid_until = params[:valid_until]
        type.instance_interruption_behavior = params[:instance_interruption_behavior]
        type
      end
    end

    module SpotOptionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpotOptionsRequest, context: context)
        type = Types::SpotOptionsRequest.new
        type.allocation_strategy = params[:allocation_strategy]
        type.maintenance_strategies = FleetSpotMaintenanceStrategiesRequest.build(params[:maintenance_strategies], context: "#{context}[:maintenance_strategies]") unless params[:maintenance_strategies].nil?
        type.instance_interruption_behavior = params[:instance_interruption_behavior]
        type.instance_pools_to_use_count = params[:instance_pools_to_use_count]
        type.single_instance_type = params[:single_instance_type]
        type.single_availability_zone = params[:single_availability_zone]
        type.min_target_capacity = params[:min_target_capacity]
        type.max_total_price = params[:max_total_price]
        type
      end
    end

    module SpotPlacement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpotPlacement, context: context)
        type = Types::SpotPlacement.new
        type.availability_zone = params[:availability_zone]
        type.group_name = params[:group_name]
        type.tenancy = params[:tenancy]
        type
      end
    end

    module StartInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartInstancesInput, context: context)
        type = Types::StartInstancesInput.new
        type.instance_ids = InstanceIdStringList.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.additional_info = params[:additional_info]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module StartNetworkInsightsAccessScopeAnalysisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartNetworkInsightsAccessScopeAnalysisInput, context: context)
        type = Types::StartNetworkInsightsAccessScopeAnalysisInput.new
        type.network_insights_access_scope_id = params[:network_insights_access_scope_id]
        type.dry_run = params[:dry_run]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module StartNetworkInsightsAnalysisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartNetworkInsightsAnalysisInput, context: context)
        type = Types::StartNetworkInsightsAnalysisInput.new
        type.network_insights_path_id = params[:network_insights_path_id]
        type.filter_in_arns = ArnList.build(params[:filter_in_arns], context: "#{context}[:filter_in_arns]") unless params[:filter_in_arns].nil?
        type.dry_run = params[:dry_run]
        type.tag_specifications = TagSpecificationList.build(params[:tag_specifications], context: "#{context}[:tag_specifications]") unless params[:tag_specifications].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module StartVpcEndpointServicePrivateDnsVerificationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartVpcEndpointServicePrivateDnsVerificationInput, context: context)
        type = Types::StartVpcEndpointServicePrivateDnsVerificationInput.new
        type.dry_run = params[:dry_run]
        type.service_id = params[:service_id]
        type
      end
    end

    module StopInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopInstancesInput, context: context)
        type = Types::StopInstancesInput.new
        type.instance_ids = InstanceIdStringList.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.hibernate = params[:hibernate]
        type.dry_run = params[:dry_run]
        type.force = params[:force]
        type
      end
    end

    module Storage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Storage, context: context)
        type = Types::Storage.new
        type.s3 = S3Storage.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type
      end
    end

    module StorageLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageLocation, context: context)
        type = Types::StorageLocation.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type
      end
    end

    module SubnetIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagSpecification, context: context)
        type = Types::TagSpecification.new
        type.resource_type = params[:resource_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagSpecificationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagSpecification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetCapacitySpecificationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetCapacitySpecificationRequest, context: context)
        type = Types::TargetCapacitySpecificationRequest.new
        type.total_target_capacity = params[:total_target_capacity]
        type.on_demand_target_capacity = params[:on_demand_target_capacity]
        type.spot_target_capacity = params[:spot_target_capacity]
        type.default_target_capacity_type = params[:default_target_capacity_type]
        type.target_capacity_unit_type = params[:target_capacity_unit_type]
        type
      end
    end

    module TargetConfigurationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetConfigurationRequest, context: context)
        type = Types::TargetConfigurationRequest.new
        type.instance_count = params[:instance_count]
        type.offering_id = params[:offering_id]
        type
      end
    end

    module TargetConfigurationRequestSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetConfigurationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetGroup, context: context)
        type = Types::TargetGroup.new
        type.arn = params[:arn]
        type
      end
    end

    module TargetGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetGroupsConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetGroupsConfig, context: context)
        type = Types::TargetGroupsConfig.new
        type.target_groups = TargetGroups.build(params[:target_groups], context: "#{context}[:target_groups]") unless params[:target_groups].nil?
        type
      end
    end

    module TerminateClientVpnConnectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateClientVpnConnectionsInput, context: context)
        type = Types::TerminateClientVpnConnectionsInput.new
        type.client_vpn_endpoint_id = params[:client_vpn_endpoint_id]
        type.connection_id = params[:connection_id]
        type.username = params[:username]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module TerminateInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateInstancesInput, context: context)
        type = Types::TerminateInstancesInput.new
        type.instance_ids = InstanceIdStringList.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ThroughResourcesStatementRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThroughResourcesStatementRequest, context: context)
        type = Types::ThroughResourcesStatementRequest.new
        type.resource_statement = ResourceStatementRequest.build(params[:resource_statement], context: "#{context}[:resource_statement]") unless params[:resource_statement].nil?
        type
      end
    end

    module ThroughResourcesStatementRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ThroughResourcesStatementRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TotalLocalStorageGB
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TotalLocalStorageGB, context: context)
        type = Types::TotalLocalStorageGB.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module TotalLocalStorageGBRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TotalLocalStorageGBRequest, context: context)
        type = Types::TotalLocalStorageGBRequest.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module TrafficMirrorFilterIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module TrafficMirrorFilterRuleFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module TrafficMirrorNetworkServiceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module TrafficMirrorPortRangeRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrafficMirrorPortRangeRequest, context: context)
        type = Types::TrafficMirrorPortRangeRequest.new
        type.from_port = params[:from_port]
        type.to_port = params[:to_port]
        type
      end
    end

    module TrafficMirrorSessionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module TrafficMirrorSessionIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module TrafficMirrorTargetIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module TransitGatewayAttachmentIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module TransitGatewayCidrBlockStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module TransitGatewayConnectPeerIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module TransitGatewayConnectRequestBgpOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransitGatewayConnectRequestBgpOptions, context: context)
        type = Types::TransitGatewayConnectRequestBgpOptions.new
        type.peer_asn = params[:peer_asn]
        type
      end
    end

    module TransitGatewayIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module TransitGatewayMulticastDomainIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module TransitGatewayNetworkInterfaceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module TransitGatewayRequestOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransitGatewayRequestOptions, context: context)
        type = Types::TransitGatewayRequestOptions.new
        type.amazon_side_asn = params[:amazon_side_asn]
        type.auto_accept_shared_attachments = params[:auto_accept_shared_attachments]
        type.default_route_table_association = params[:default_route_table_association]
        type.default_route_table_propagation = params[:default_route_table_propagation]
        type.vpn_ecmp_support = params[:vpn_ecmp_support]
        type.dns_support = params[:dns_support]
        type.multicast_support = params[:multicast_support]
        type.transit_gateway_cidr_blocks = TransitGatewayCidrBlockStringList.build(params[:transit_gateway_cidr_blocks], context: "#{context}[:transit_gateway_cidr_blocks]") unless params[:transit_gateway_cidr_blocks].nil?
        type
      end
    end

    module TransitGatewayRouteTableIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module TransitGatewaySubnetIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module TrunkInterfaceAssociationIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module UnassignIpv6AddressesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnassignIpv6AddressesInput, context: context)
        type = Types::UnassignIpv6AddressesInput.new
        type.ipv6_addresses = Ipv6AddressList.build(params[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless params[:ipv6_addresses].nil?
        type.ipv6_prefixes = IpPrefixList.build(params[:ipv6_prefixes], context: "#{context}[:ipv6_prefixes]") unless params[:ipv6_prefixes].nil?
        type.network_interface_id = params[:network_interface_id]
        type
      end
    end

    module UnassignPrivateIpAddressesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnassignPrivateIpAddressesInput, context: context)
        type = Types::UnassignPrivateIpAddressesInput.new
        type.network_interface_id = params[:network_interface_id]
        type.private_ip_addresses = PrivateIpAddressStringList.build(params[:private_ip_addresses], context: "#{context}[:private_ip_addresses]") unless params[:private_ip_addresses].nil?
        type.ipv4_prefixes = IpPrefixList.build(params[:ipv4_prefixes], context: "#{context}[:ipv4_prefixes]") unless params[:ipv4_prefixes].nil?
        type
      end
    end

    module UnmonitorInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnmonitorInstancesInput, context: context)
        type = Types::UnmonitorInstancesInput.new
        type.instance_ids = InstanceIdStringList.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module UpdateSecurityGroupRuleDescriptionsEgressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSecurityGroupRuleDescriptionsEgressInput, context: context)
        type = Types::UpdateSecurityGroupRuleDescriptionsEgressInput.new
        type.dry_run = params[:dry_run]
        type.group_id = params[:group_id]
        type.group_name = params[:group_name]
        type.ip_permissions = IpPermissionList.build(params[:ip_permissions], context: "#{context}[:ip_permissions]") unless params[:ip_permissions].nil?
        type.security_group_rule_descriptions = SecurityGroupRuleDescriptionList.build(params[:security_group_rule_descriptions], context: "#{context}[:security_group_rule_descriptions]") unless params[:security_group_rule_descriptions].nil?
        type
      end
    end

    module UpdateSecurityGroupRuleDescriptionsIngressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSecurityGroupRuleDescriptionsIngressInput, context: context)
        type = Types::UpdateSecurityGroupRuleDescriptionsIngressInput.new
        type.dry_run = params[:dry_run]
        type.group_id = params[:group_id]
        type.group_name = params[:group_name]
        type.ip_permissions = IpPermissionList.build(params[:ip_permissions], context: "#{context}[:ip_permissions]") unless params[:ip_permissions].nil?
        type.security_group_rule_descriptions = SecurityGroupRuleDescriptionList.build(params[:security_group_rule_descriptions], context: "#{context}[:security_group_rule_descriptions]") unless params[:security_group_rule_descriptions].nil?
        type
      end
    end

    module UserBucket
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserBucket, context: context)
        type = Types::UserBucket.new
        type.s3_bucket = params[:s3_bucket]
        type.s3_key = params[:s3_key]
        type
      end
    end

    module UserData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserData, context: context)
        type = Types::UserData.new
        type.data = params[:data]
        type
      end
    end

    module UserGroupStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module UserIdGroupPair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserIdGroupPair, context: context)
        type = Types::UserIdGroupPair.new
        type.description = params[:description]
        type.group_id = params[:group_id]
        type.group_name = params[:group_name]
        type.peering_status = params[:peering_status]
        type.user_id = params[:user_id]
        type.vpc_id = params[:vpc_id]
        type.vpc_peering_connection_id = params[:vpc_peering_connection_id]
        type
      end
    end

    module UserIdGroupPairList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserIdGroupPair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module VCpuCountRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VCpuCountRange, context: context)
        type = Types::VCpuCountRange.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module VCpuCountRangeRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VCpuCountRangeRequest, context: context)
        type = Types::VCpuCountRangeRequest.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module ValueStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module VersionStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module VirtualizationTypeSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module VolumeDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VolumeDetail, context: context)
        type = Types::VolumeDetail.new
        type.size = params[:size]
        type
      end
    end

    module VolumeIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module VpcClassicLinkIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module VpcEndpointIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module VpcEndpointRouteTableIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module VpcEndpointSecurityGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module VpcEndpointServiceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module VpcEndpointSubnetIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module VpcIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module VpcPeeringConnectionIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module VpnConnectionIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module VpnConnectionOptionsSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpnConnectionOptionsSpecification, context: context)
        type = Types::VpnConnectionOptionsSpecification.new
        type.enable_acceleration = params[:enable_acceleration]
        type.static_routes_only = params[:static_routes_only]
        type.tunnel_inside_ip_version = params[:tunnel_inside_ip_version]
        type.tunnel_options = VpnTunnelOptionsSpecificationsList.build(params[:tunnel_options], context: "#{context}[:tunnel_options]") unless params[:tunnel_options].nil?
        type.local_ipv4_network_cidr = params[:local_ipv4_network_cidr]
        type.remote_ipv4_network_cidr = params[:remote_ipv4_network_cidr]
        type.local_ipv6_network_cidr = params[:local_ipv6_network_cidr]
        type.remote_ipv6_network_cidr = params[:remote_ipv6_network_cidr]
        type
      end
    end

    module VpnGatewayIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module VpnTunnelOptionsSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpnTunnelOptionsSpecification, context: context)
        type = Types::VpnTunnelOptionsSpecification.new
        type.tunnel_inside_cidr = params[:tunnel_inside_cidr]
        type.tunnel_inside_ipv6_cidr = params[:tunnel_inside_ipv6_cidr]
        type.pre_shared_key = params[:pre_shared_key]
        type.phase1_lifetime_seconds = params[:phase1_lifetime_seconds]
        type.phase2_lifetime_seconds = params[:phase2_lifetime_seconds]
        type.rekey_margin_time_seconds = params[:rekey_margin_time_seconds]
        type.rekey_fuzz_percentage = params[:rekey_fuzz_percentage]
        type.replay_window_size = params[:replay_window_size]
        type.dpd_timeout_seconds = params[:dpd_timeout_seconds]
        type.dpd_timeout_action = params[:dpd_timeout_action]
        type.phase1_encryption_algorithms = Phase1EncryptionAlgorithmsRequestList.build(params[:phase1_encryption_algorithms], context: "#{context}[:phase1_encryption_algorithms]") unless params[:phase1_encryption_algorithms].nil?
        type.phase2_encryption_algorithms = Phase2EncryptionAlgorithmsRequestList.build(params[:phase2_encryption_algorithms], context: "#{context}[:phase2_encryption_algorithms]") unless params[:phase2_encryption_algorithms].nil?
        type.phase1_integrity_algorithms = Phase1IntegrityAlgorithmsRequestList.build(params[:phase1_integrity_algorithms], context: "#{context}[:phase1_integrity_algorithms]") unless params[:phase1_integrity_algorithms].nil?
        type.phase2_integrity_algorithms = Phase2IntegrityAlgorithmsRequestList.build(params[:phase2_integrity_algorithms], context: "#{context}[:phase2_integrity_algorithms]") unless params[:phase2_integrity_algorithms].nil?
        type.phase1_dh_group_numbers = Phase1DHGroupNumbersRequestList.build(params[:phase1_dh_group_numbers], context: "#{context}[:phase1_dh_group_numbers]") unless params[:phase1_dh_group_numbers].nil?
        type.phase2_dh_group_numbers = Phase2DHGroupNumbersRequestList.build(params[:phase2_dh_group_numbers], context: "#{context}[:phase2_dh_group_numbers]") unless params[:phase2_dh_group_numbers].nil?
        type.ike_versions = IKEVersionsRequestList.build(params[:ike_versions], context: "#{context}[:ike_versions]") unless params[:ike_versions].nil?
        type.startup_action = params[:startup_action]
        type
      end
    end

    module VpnTunnelOptionsSpecificationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VpnTunnelOptionsSpecification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WithdrawByoipCidrInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WithdrawByoipCidrInput, context: context)
        type = Types::WithdrawByoipCidrInput.new
        type.cidr = params[:cidr]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ZoneIdStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ZoneNameStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

  end
end
