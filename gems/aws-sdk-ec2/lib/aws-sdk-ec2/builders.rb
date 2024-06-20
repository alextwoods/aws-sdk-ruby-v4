# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::EC2
  # @api private
  module Builders

    class AcceleratorCount
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    class AcceleratorCountRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    class AcceleratorManufacturerSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class AcceleratorNameSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class AcceleratorTotalMemoryMiB
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    class AcceleratorTotalMemoryMiBRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    class AcceleratorTypeSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class AcceptAddressTransfer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AcceptAddressTransfer'
        params['Version'] = '2016-11-15'
        params[context + 'Address'] = input[:address].to_s unless input[:address].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AcceptReservedInstancesExchangeQuote
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AcceptReservedInstancesExchangeQuote'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        ReservedInstanceIdSet.build(input[:reserved_instance_ids], params, context: context + 'ReservedInstanceId') unless input[:reserved_instance_ids].nil?
        TargetConfigurationRequestSet.build(input[:target_configurations], params, context: context + 'TargetConfiguration') unless input[:target_configurations].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AcceptTransitGatewayMulticastDomainAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AcceptTransitGatewayMulticastDomainAssociations'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayMulticastDomainId'] = input[:transit_gateway_multicast_domain_id].to_s unless input[:transit_gateway_multicast_domain_id].nil?
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        ValueStringList.build(input[:subnet_ids], params, context: context + 'SubnetIds') unless input[:subnet_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AcceptTransitGatewayPeeringAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AcceptTransitGatewayPeeringAttachment'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AcceptTransitGatewayVpcAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AcceptTransitGatewayVpcAttachment'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AcceptVpcEndpointConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AcceptVpcEndpointConnections'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ServiceId'] = input[:service_id].to_s unless input[:service_id].nil?
        VpcEndpointIdList.build(input[:vpc_endpoint_ids], params, context: context + 'VpcEndpointId') unless input[:vpc_endpoint_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AcceptVpcPeeringConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AcceptVpcPeeringConnection'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'VpcPeeringConnectionId'] = input[:vpc_peering_connection_id].to_s unless input[:vpc_peering_connection_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AccessScopePathListRequest
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          AccessScopePathRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class AccessScopePathRequest
      def self.build(input, params, context: nil)
        PathStatementRequest.build(input[:source], params, context: context + 'Source' + '.') unless input[:source].nil?
        PathStatementRequest.build(input[:destination], params, context: context + 'Destination' + '.') unless input[:destination].nil?
        ThroughResourcesStatementRequestList.build(input[:through_resources], params, context: context + 'ThroughResource') unless input[:through_resources].nil?
      end
    end

    class AccountAttributeNameStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class AddIpamOperatingRegion
      def self.build(input, params, context: nil)
        params[context + 'RegionName'] = input[:region_name].to_s unless input[:region_name].nil?
      end
    end

    class AddIpamOperatingRegionSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          AddIpamOperatingRegion.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class AddPrefixListEntries
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          AddPrefixListEntry.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class AddPrefixListEntry
      def self.build(input, params, context: nil)
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
      end
    end

    class AdvertiseByoipCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AdvertiseByoipCidr'
        params['Version'] = '2016-11-15'
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
        params[context + 'Asn'] = input[:asn].to_s unless input[:asn].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NetworkBorderGroup'] = input[:network_border_group].to_s unless input[:network_border_group].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AllocateAddress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AllocateAddress'
        params['Version'] = '2016-11-15'
        params[context + 'Domain'] = input[:domain].to_s unless input[:domain].nil?
        params[context + 'Address'] = input[:address].to_s unless input[:address].nil?
        params[context + 'PublicIpv4Pool'] = input[:public_ipv4_pool].to_s unless input[:public_ipv4_pool].nil?
        params[context + 'NetworkBorderGroup'] = input[:network_border_group].to_s unless input[:network_border_group].nil?
        params[context + 'CustomerOwnedIpv4Pool'] = input[:customer_owned_ipv4_pool].to_s unless input[:customer_owned_ipv4_pool].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AllocateHosts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AllocateHosts'
        params['Version'] = '2016-11-15'
        params[context + 'AutoPlacement'] = input[:auto_placement].to_s unless input[:auto_placement].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'InstanceFamily'] = input[:instance_family].to_s unless input[:instance_family].nil?
        params[context + 'Quantity'] = input[:quantity].to_s unless input[:quantity].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'HostRecovery'] = input[:host_recovery].to_s unless input[:host_recovery].nil?
        params[context + 'OutpostArn'] = input[:outpost_arn].to_s unless input[:outpost_arn].nil?
        params[context + 'HostMaintenance'] = input[:host_maintenance].to_s unless input[:host_maintenance].nil?
        AssetIdList.build(input[:asset_ids], params, context: context + 'AssetId') unless input[:asset_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AllocateIpamPoolCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AllocateIpamPoolCidr'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamPoolId'] = input[:ipam_pool_id].to_s unless input[:ipam_pool_id].nil?
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
        params[context + 'NetmaskLength'] = input[:netmask_length].to_s unless input[:netmask_length].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'PreviewNextCidr'] = input[:preview_next_cidr].to_s unless input[:preview_next_cidr].nil?
        IpamPoolAllocationAllowedCidrs.build(input[:allowed_cidrs], params, context: context + 'AllowedCidr') unless input[:allowed_cidrs].nil?
        IpamPoolAllocationDisallowedCidrs.build(input[:disallowed_cidrs], params, context: context + 'DisallowedCidr') unless input[:disallowed_cidrs].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AllocationIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class AllocationIds
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class AllowedInstanceTypeSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ApplySecurityGroupsToClientVpnTargetNetwork
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ApplySecurityGroupsToClientVpnTargetNetwork'
        params['Version'] = '2016-11-15'
        params[context + 'ClientVpnEndpointId'] = input[:client_vpn_endpoint_id].to_s unless input[:client_vpn_endpoint_id].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        ClientVpnSecurityGroupIdSet.build(input[:security_group_ids], params, context: context + 'SecurityGroupId') unless input[:security_group_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ArchitectureTypeSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ArnList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class AsnAuthorizationContext
      def self.build(input, params, context: nil)
        params[context + 'Message'] = input[:message].to_s unless input[:message].nil?
        params[context + 'Signature'] = input[:signature].to_s unless input[:signature].nil?
      end
    end

    class AssetIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class AssignIpv6Addresses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssignIpv6Addresses'
        params['Version'] = '2016-11-15'
        params[context + 'Ipv6AddressCount'] = input[:ipv6_address_count].to_s unless input[:ipv6_address_count].nil?
        Ipv6AddressList.build(input[:ipv6_addresses], params, context: context + 'ipv6Addresses') unless input[:ipv6_addresses].nil?
        params[context + 'Ipv6PrefixCount'] = input[:ipv6_prefix_count].to_s unless input[:ipv6_prefix_count].nil?
        IpPrefixList.build(input[:ipv6_prefixes], params, context: context + 'Ipv6Prefix') unless input[:ipv6_prefixes].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AssignPrivateIpAddresses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssignPrivateIpAddresses'
        params['Version'] = '2016-11-15'
        params[context + 'AllowReassignment'] = input[:allow_reassignment].to_s unless input[:allow_reassignment].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        PrivateIpAddressStringList.build(input[:private_ip_addresses], params, context: context + 'privateIpAddress') unless input[:private_ip_addresses].nil?
        params[context + 'SecondaryPrivateIpAddressCount'] = input[:secondary_private_ip_address_count].to_s unless input[:secondary_private_ip_address_count].nil?
        IpPrefixList.build(input[:ipv4_prefixes], params, context: context + 'Ipv4Prefix') unless input[:ipv4_prefixes].nil?
        params[context + 'Ipv4PrefixCount'] = input[:ipv4_prefix_count].to_s unless input[:ipv4_prefix_count].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AssignPrivateNatGatewayAddress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssignPrivateNatGatewayAddress'
        params['Version'] = '2016-11-15'
        params[context + 'NatGatewayId'] = input[:nat_gateway_id].to_s unless input[:nat_gateway_id].nil?
        IpList.build(input[:private_ip_addresses], params, context: context + 'PrivateIpAddress') unless input[:private_ip_addresses].nil?
        params[context + 'PrivateIpAddressCount'] = input[:private_ip_address_count].to_s unless input[:private_ip_address_count].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AssociateAddress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssociateAddress'
        params['Version'] = '2016-11-15'
        params[context + 'AllocationId'] = input[:allocation_id].to_s unless input[:allocation_id].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'PublicIp'] = input[:public_ip].to_s unless input[:public_ip].nil?
        params[context + 'AllowReassociation'] = input[:allow_reassociation].to_s unless input[:allow_reassociation].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        params[context + 'PrivateIpAddress'] = input[:private_ip_address].to_s unless input[:private_ip_address].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AssociateClientVpnTargetNetwork
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssociateClientVpnTargetNetwork'
        params['Version'] = '2016-11-15'
        params[context + 'ClientVpnEndpointId'] = input[:client_vpn_endpoint_id].to_s unless input[:client_vpn_endpoint_id].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AssociateDhcpOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssociateDhcpOptions'
        params['Version'] = '2016-11-15'
        params[context + 'DhcpOptionsId'] = input[:dhcp_options_id].to_s unless input[:dhcp_options_id].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AssociateEnclaveCertificateIamRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssociateEnclaveCertificateIamRole'
        params['Version'] = '2016-11-15'
        params[context + 'CertificateArn'] = input[:certificate_arn].to_s unless input[:certificate_arn].nil?
        params[context + 'RoleArn'] = input[:role_arn].to_s unless input[:role_arn].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AssociateIamInstanceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssociateIamInstanceProfile'
        params['Version'] = '2016-11-15'
        IamInstanceProfileSpecification.build(input[:iam_instance_profile], params, context: context + 'IamInstanceProfile' + '.') unless input[:iam_instance_profile].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AssociateInstanceEventWindow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssociateInstanceEventWindow'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceEventWindowId'] = input[:instance_event_window_id].to_s unless input[:instance_event_window_id].nil?
        InstanceEventWindowAssociationRequest.build(input[:association_target], params, context: context + 'AssociationTarget' + '.') unless input[:association_target].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AssociateIpamByoasn
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssociateIpamByoasn'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Asn'] = input[:asn].to_s unless input[:asn].nil?
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AssociateIpamResourceDiscovery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssociateIpamResourceDiscovery'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamId'] = input[:ipam_id].to_s unless input[:ipam_id].nil?
        params[context + 'IpamResourceDiscoveryId'] = input[:ipam_resource_discovery_id].to_s unless input[:ipam_resource_discovery_id].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AssociateNatGatewayAddress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssociateNatGatewayAddress'
        params['Version'] = '2016-11-15'
        params[context + 'NatGatewayId'] = input[:nat_gateway_id].to_s unless input[:nat_gateway_id].nil?
        AllocationIdList.build(input[:allocation_ids], params, context: context + 'AllocationId') unless input[:allocation_ids].nil?
        IpList.build(input[:private_ip_addresses], params, context: context + 'PrivateIpAddress') unless input[:private_ip_addresses].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AssociateRouteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssociateRouteTable'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'RouteTableId'] = input[:route_table_id].to_s unless input[:route_table_id].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'GatewayId'] = input[:gateway_id].to_s unless input[:gateway_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AssociateSubnetCidrBlock
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssociateSubnetCidrBlock'
        params['Version'] = '2016-11-15'
        params[context + 'Ipv6CidrBlock'] = input[:ipv6_cidr_block].to_s unless input[:ipv6_cidr_block].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'Ipv6IpamPoolId'] = input[:ipv6_ipam_pool_id].to_s unless input[:ipv6_ipam_pool_id].nil?
        params[context + 'Ipv6NetmaskLength'] = input[:ipv6_netmask_length].to_s unless input[:ipv6_netmask_length].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AssociateTransitGatewayMulticastDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssociateTransitGatewayMulticastDomain'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayMulticastDomainId'] = input[:transit_gateway_multicast_domain_id].to_s unless input[:transit_gateway_multicast_domain_id].nil?
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        TransitGatewaySubnetIdList.build(input[:subnet_ids], params, context: context + 'SubnetIds') unless input[:subnet_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AssociateTransitGatewayPolicyTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssociateTransitGatewayPolicyTable'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayPolicyTableId'] = input[:transit_gateway_policy_table_id].to_s unless input[:transit_gateway_policy_table_id].nil?
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AssociateTransitGatewayRouteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssociateTransitGatewayRouteTable'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayRouteTableId'] = input[:transit_gateway_route_table_id].to_s unless input[:transit_gateway_route_table_id].nil?
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AssociateTrunkInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssociateTrunkInterface'
        params['Version'] = '2016-11-15'
        params[context + 'BranchInterfaceId'] = input[:branch_interface_id].to_s unless input[:branch_interface_id].nil?
        params[context + 'TrunkInterfaceId'] = input[:trunk_interface_id].to_s unless input[:trunk_interface_id].nil?
        params[context + 'VlanId'] = input[:vlan_id].to_s unless input[:vlan_id].nil?
        params[context + 'GreKey'] = input[:gre_key].to_s unless input[:gre_key].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AssociateVpcCidrBlock
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssociateVpcCidrBlock'
        params['Version'] = '2016-11-15'
        params[context + 'AmazonProvidedIpv6CidrBlock'] = input[:amazon_provided_ipv6_cidr_block].to_s unless input[:amazon_provided_ipv6_cidr_block].nil?
        params[context + 'CidrBlock'] = input[:cidr_block].to_s unless input[:cidr_block].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'Ipv6CidrBlockNetworkBorderGroup'] = input[:ipv6_cidr_block_network_border_group].to_s unless input[:ipv6_cidr_block_network_border_group].nil?
        params[context + 'Ipv6Pool'] = input[:ipv6_pool].to_s unless input[:ipv6_pool].nil?
        params[context + 'Ipv6CidrBlock'] = input[:ipv6_cidr_block].to_s unless input[:ipv6_cidr_block].nil?
        params[context + 'Ipv4IpamPoolId'] = input[:ipv4_ipam_pool_id].to_s unless input[:ipv4_ipam_pool_id].nil?
        params[context + 'Ipv4NetmaskLength'] = input[:ipv4_netmask_length].to_s unless input[:ipv4_netmask_length].nil?
        params[context + 'Ipv6IpamPoolId'] = input[:ipv6_ipam_pool_id].to_s unless input[:ipv6_ipam_pool_id].nil?
        params[context + 'Ipv6NetmaskLength'] = input[:ipv6_netmask_length].to_s unless input[:ipv6_netmask_length].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AssociationIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class AthenaIntegration
      def self.build(input, params, context: nil)
        params[context + 'IntegrationResultS3DestinationArn'] = input[:integration_result_s3_destination_arn].to_s unless input[:integration_result_s3_destination_arn].nil?
        params[context + 'PartitionLoadFrequency'] = input[:partition_load_frequency].to_s unless input[:partition_load_frequency].nil?
        params[context + 'PartitionStartDate'] = Hearth::TimeHelper.to_date_time(input[:partition_start_date]) unless input[:partition_start_date].nil?
        params[context + 'PartitionEndDate'] = Hearth::TimeHelper.to_date_time(input[:partition_end_date]) unless input[:partition_end_date].nil?
      end
    end

    class AthenaIntegrationsSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          AthenaIntegration.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class AttachClassicLinkVpc
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AttachClassicLinkVpc'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        GroupIdStringList.build(input[:groups], params, context: context + 'SecurityGroupId') unless input[:groups].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AttachInternetGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AttachInternetGateway'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InternetGatewayId'] = input[:internet_gateway_id].to_s unless input[:internet_gateway_id].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AttachNetworkInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AttachNetworkInterface'
        params['Version'] = '2016-11-15'
        params[context + 'DeviceIndex'] = input[:device_index].to_s unless input[:device_index].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        params[context + 'NetworkCardIndex'] = input[:network_card_index].to_s unless input[:network_card_index].nil?
        EnaSrdSpecification.build(input[:ena_srd_specification], params, context: context + 'EnaSrdSpecification' + '.') unless input[:ena_srd_specification].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AttachVerifiedAccessTrustProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AttachVerifiedAccessTrustProvider'
        params['Version'] = '2016-11-15'
        params[context + 'VerifiedAccessInstanceId'] = input[:verified_access_instance_id].to_s unless input[:verified_access_instance_id].nil?
        params[context + 'VerifiedAccessTrustProviderId'] = input[:verified_access_trust_provider_id].to_s unless input[:verified_access_trust_provider_id].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AttachVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AttachVolume'
        params['Version'] = '2016-11-15'
        params[context + 'Device'] = input[:device].to_s unless input[:device].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'VolumeId'] = input[:volume_id].to_s unless input[:volume_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AttachVpnGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AttachVpnGateway'
        params['Version'] = '2016-11-15'
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'VpnGatewayId'] = input[:vpn_gateway_id].to_s unless input[:vpn_gateway_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AttributeBooleanValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    class AttributeValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    class AuthorizeClientVpnIngress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AuthorizeClientVpnIngress'
        params['Version'] = '2016-11-15'
        params[context + 'ClientVpnEndpointId'] = input[:client_vpn_endpoint_id].to_s unless input[:client_vpn_endpoint_id].nil?
        params[context + 'TargetNetworkCidr'] = input[:target_network_cidr].to_s unless input[:target_network_cidr].nil?
        params[context + 'AccessGroupId'] = input[:access_group_id].to_s unless input[:access_group_id].nil?
        params[context + 'AuthorizeAllGroups'] = input[:authorize_all_groups].to_s unless input[:authorize_all_groups].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AuthorizeSecurityGroupEgress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AuthorizeSecurityGroupEgress'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'GroupId'] = input[:group_id].to_s unless input[:group_id].nil?
        IpPermissionList.build(input[:ip_permissions], params, context: context + 'ipPermissions') unless input[:ip_permissions].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'CidrIp'] = input[:cidr_ip].to_s unless input[:cidr_ip].nil?
        params[context + 'FromPort'] = input[:from_port].to_s unless input[:from_port].nil?
        params[context + 'IpProtocol'] = input[:ip_protocol].to_s unless input[:ip_protocol].nil?
        params[context + 'ToPort'] = input[:to_port].to_s unless input[:to_port].nil?
        params[context + 'SourceSecurityGroupName'] = input[:source_security_group_name].to_s unless input[:source_security_group_name].nil?
        params[context + 'SourceSecurityGroupOwnerId'] = input[:source_security_group_owner_id].to_s unless input[:source_security_group_owner_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AuthorizeSecurityGroupIngress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AuthorizeSecurityGroupIngress'
        params['Version'] = '2016-11-15'
        params[context + 'CidrIp'] = input[:cidr_ip].to_s unless input[:cidr_ip].nil?
        params[context + 'FromPort'] = input[:from_port].to_s unless input[:from_port].nil?
        params[context + 'GroupId'] = input[:group_id].to_s unless input[:group_id].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        IpPermissionList.build(input[:ip_permissions], params, context: context + 'IpPermissions') unless input[:ip_permissions].nil?
        params[context + 'IpProtocol'] = input[:ip_protocol].to_s unless input[:ip_protocol].nil?
        params[context + 'SourceSecurityGroupName'] = input[:source_security_group_name].to_s unless input[:source_security_group_name].nil?
        params[context + 'SourceSecurityGroupOwnerId'] = input[:source_security_group_owner_id].to_s unless input[:source_security_group_owner_id].nil?
        params[context + 'ToPort'] = input[:to_port].to_s unless input[:to_port].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class AvailabilityZoneStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class BaselineEbsBandwidthMbps
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    class BaselineEbsBandwidthMbpsRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    class BillingProductList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class BlobAttributeValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = ::Base64::strict_encode64(input[:value]).strip unless input[:value].nil?
      end
    end

    class BlockDeviceMapping
      def self.build(input, params, context: nil)
        params[context + 'DeviceName'] = input[:device_name].to_s unless input[:device_name].nil?
        params[context + 'VirtualName'] = input[:virtual_name].to_s unless input[:virtual_name].nil?
        EbsBlockDevice.build(input[:ebs], params, context: context + 'Ebs' + '.') unless input[:ebs].nil?
        params[context + 'NoDevice'] = input[:no_device].to_s unless input[:no_device].nil?
      end
    end

    class BlockDeviceMappingList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          BlockDeviceMapping.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class BlockDeviceMappingRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          BlockDeviceMapping.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class BundleIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class BundleInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'BundleInstance'
        params['Version'] = '2016-11-15'
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        Storage.build(input[:storage], params, context: context + 'Storage' + '.') unless input[:storage].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CancelBundleTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CancelBundleTask'
        params['Version'] = '2016-11-15'
        params[context + 'BundleId'] = input[:bundle_id].to_s unless input[:bundle_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CancelCapacityReservation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CancelCapacityReservation'
        params['Version'] = '2016-11-15'
        params[context + 'CapacityReservationId'] = input[:capacity_reservation_id].to_s unless input[:capacity_reservation_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CancelCapacityReservationFleets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CancelCapacityReservationFleets'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        CapacityReservationFleetIdSet.build(input[:capacity_reservation_fleet_ids], params, context: context + 'CapacityReservationFleetId') unless input[:capacity_reservation_fleet_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CancelConversionTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CancelConversionTask'
        params['Version'] = '2016-11-15'
        params[context + 'ConversionTaskId'] = input[:conversion_task_id].to_s unless input[:conversion_task_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ReasonMessage'] = input[:reason_message].to_s unless input[:reason_message].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CancelExportTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CancelExportTask'
        params['Version'] = '2016-11-15'
        params[context + 'ExportTaskId'] = input[:export_task_id].to_s unless input[:export_task_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CancelImageLaunchPermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CancelImageLaunchPermission'
        params['Version'] = '2016-11-15'
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CancelImportTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CancelImportTask'
        params['Version'] = '2016-11-15'
        params[context + 'CancelReason'] = input[:cancel_reason].to_s unless input[:cancel_reason].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ImportTaskId'] = input[:import_task_id].to_s unless input[:import_task_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CancelReservedInstancesListing
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CancelReservedInstancesListing'
        params['Version'] = '2016-11-15'
        params[context + 'ReservedInstancesListingId'] = input[:reserved_instances_listing_id].to_s unless input[:reserved_instances_listing_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CancelSpotFleetRequests
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CancelSpotFleetRequests'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        SpotFleetRequestIdList.build(input[:spot_fleet_request_ids], params, context: context + 'spotFleetRequestId') unless input[:spot_fleet_request_ids].nil?
        params[context + 'TerminateInstances'] = input[:terminate_instances].to_s unless input[:terminate_instances].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CancelSpotInstanceRequests
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CancelSpotInstanceRequests'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        SpotInstanceRequestIdList.build(input[:spot_instance_request_ids], params, context: context + 'SpotInstanceRequestId') unless input[:spot_instance_request_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CapacityReservationFleetIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class CapacityReservationIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class CapacityReservationOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'UsageStrategy'] = input[:usage_strategy].to_s unless input[:usage_strategy].nil?
      end
    end

    class CapacityReservationSpecification
      def self.build(input, params, context: nil)
        params[context + 'CapacityReservationPreference'] = input[:capacity_reservation_preference].to_s unless input[:capacity_reservation_preference].nil?
        CapacityReservationTarget.build(input[:capacity_reservation_target], params, context: context + 'CapacityReservationTarget' + '.') unless input[:capacity_reservation_target].nil?
      end
    end

    class CapacityReservationTarget
      def self.build(input, params, context: nil)
        params[context + 'CapacityReservationId'] = input[:capacity_reservation_id].to_s unless input[:capacity_reservation_id].nil?
        params[context + 'CapacityReservationResourceGroupArn'] = input[:capacity_reservation_resource_group_arn].to_s unless input[:capacity_reservation_resource_group_arn].nil?
      end
    end

    class CarrierGatewayIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class CertificateAuthenticationRequest
      def self.build(input, params, context: nil)
        params[context + 'ClientRootCertificateChainArn'] = input[:client_root_certificate_chain_arn].to_s unless input[:client_root_certificate_chain_arn].nil?
      end
    end

    class CidrAuthorizationContext
      def self.build(input, params, context: nil)
        params[context + 'Message'] = input[:message].to_s unless input[:message].nil?
        params[context + 'Signature'] = input[:signature].to_s unless input[:signature].nil?
      end
    end

    class ClassicLoadBalancer
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
      end
    end

    class ClassicLoadBalancers
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          ClassicLoadBalancer.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ClassicLoadBalancersConfig
      def self.build(input, params, context: nil)
        ClassicLoadBalancers.build(input[:classic_load_balancers], params, context: context + 'classicLoadBalancers') unless input[:classic_load_balancers].nil?
      end
    end

    class ClientConnectOptions
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        params[context + 'LambdaFunctionArn'] = input[:lambda_function_arn].to_s unless input[:lambda_function_arn].nil?
      end
    end

    class ClientData
      def self.build(input, params, context: nil)
        params[context + 'Comment'] = input[:comment].to_s unless input[:comment].nil?
        params[context + 'UploadEnd'] = Hearth::TimeHelper.to_date_time(input[:upload_end]) unless input[:upload_end].nil?
        params[context + 'UploadSize'] = Hearth::NumberHelper.serialize(input[:upload_size]).to_s unless input[:upload_size].nil?
        params[context + 'UploadStart'] = Hearth::TimeHelper.to_date_time(input[:upload_start]) unless input[:upload_start].nil?
      end
    end

    class ClientLoginBannerOptions
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        params[context + 'BannerText'] = input[:banner_text].to_s unless input[:banner_text].nil?
      end
    end

    class ClientVpnAuthenticationRequest
      def self.build(input, params, context: nil)
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        DirectoryServiceAuthenticationRequest.build(input[:active_directory], params, context: context + 'ActiveDirectory' + '.') unless input[:active_directory].nil?
        CertificateAuthenticationRequest.build(input[:mutual_authentication], params, context: context + 'MutualAuthentication' + '.') unless input[:mutual_authentication].nil?
        FederatedAuthenticationRequest.build(input[:federated_authentication], params, context: context + 'FederatedAuthentication' + '.') unless input[:federated_authentication].nil?
      end
    end

    class ClientVpnAuthenticationRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          ClientVpnAuthenticationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ClientVpnEndpointIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ClientVpnSecurityGroupIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class CloudWatchLogOptionsSpecification
      def self.build(input, params, context: nil)
        params[context + 'LogEnabled'] = input[:log_enabled].to_s unless input[:log_enabled].nil?
        params[context + 'LogGroupArn'] = input[:log_group_arn].to_s unless input[:log_group_arn].nil?
        params[context + 'LogOutputFormat'] = input[:log_output_format].to_s unless input[:log_output_format].nil?
      end
    end

    class CoipPoolIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ConfirmProductInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ConfirmProductInstance'
        params['Version'] = '2016-11-15'
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'ProductCode'] = input[:product_code].to_s unless input[:product_code].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ConnectionLogOptions
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        params[context + 'CloudwatchLogGroup'] = input[:cloudwatch_log_group].to_s unless input[:cloudwatch_log_group].nil?
        params[context + 'CloudwatchLogStream'] = input[:cloudwatch_log_stream].to_s unless input[:cloudwatch_log_stream].nil?
      end
    end

    class ConnectionNotificationIdsList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ConnectionTrackingSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'TcpEstablishedTimeout'] = input[:tcp_established_timeout].to_s unless input[:tcp_established_timeout].nil?
        params[context + 'UdpStreamTimeout'] = input[:udp_stream_timeout].to_s unless input[:udp_stream_timeout].nil?
        params[context + 'UdpTimeout'] = input[:udp_timeout].to_s unless input[:udp_timeout].nil?
      end
    end

    class ConversionIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class CopyFpgaImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CopyFpgaImage'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'SourceFpgaImageId'] = input[:source_fpga_image_id].to_s unless input[:source_fpga_image_id].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'SourceRegion'] = input[:source_region].to_s unless input[:source_region].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CopyImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CopyImage'
        params['Version'] = '2016-11-15'
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'Encrypted'] = input[:encrypted].to_s unless input[:encrypted].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'SourceImageId'] = input[:source_image_id].to_s unless input[:source_image_id].nil?
        params[context + 'SourceRegion'] = input[:source_region].to_s unless input[:source_region].nil?
        params[context + 'DestinationOutpostArn'] = input[:destination_outpost_arn].to_s unless input[:destination_outpost_arn].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'CopyImageTags'] = input[:copy_image_tags].to_s unless input[:copy_image_tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CopySnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CopySnapshot'
        params['Version'] = '2016-11-15'
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DestinationOutpostArn'] = input[:destination_outpost_arn].to_s unless input[:destination_outpost_arn].nil?
        params[context + 'DestinationRegion'] = input[:destination_region].to_s unless input[:destination_region].nil?
        params[context + 'Encrypted'] = input[:encrypted].to_s unless input[:encrypted].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'PresignedUrl'] = input[:presigned_url].to_s unless input[:presigned_url].nil?
        params[context + 'SourceRegion'] = input[:source_region].to_s unless input[:source_region].nil?
        params[context + 'SourceSnapshotId'] = input[:source_snapshot_id].to_s unless input[:source_snapshot_id].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CpuManufacturerSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class CpuOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'CoreCount'] = input[:core_count].to_s unless input[:core_count].nil?
        params[context + 'ThreadsPerCore'] = input[:threads_per_core].to_s unless input[:threads_per_core].nil?
        params[context + 'AmdSevSnp'] = input[:amd_sev_snp].to_s unless input[:amd_sev_snp].nil?
      end
    end

    class CreateCapacityReservation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateCapacityReservation'
        params['Version'] = '2016-11-15'
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'InstancePlatform'] = input[:instance_platform].to_s unless input[:instance_platform].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'AvailabilityZoneId'] = input[:availability_zone_id].to_s unless input[:availability_zone_id].nil?
        params[context + 'Tenancy'] = input[:tenancy].to_s unless input[:tenancy].nil?
        params[context + 'InstanceCount'] = input[:instance_count].to_s unless input[:instance_count].nil?
        params[context + 'EbsOptimized'] = input[:ebs_optimized].to_s unless input[:ebs_optimized].nil?
        params[context + 'EphemeralStorage'] = input[:ephemeral_storage].to_s unless input[:ephemeral_storage].nil?
        params[context + 'EndDate'] = Hearth::TimeHelper.to_date_time(input[:end_date]) unless input[:end_date].nil?
        params[context + 'EndDateType'] = input[:end_date_type].to_s unless input[:end_date_type].nil?
        params[context + 'InstanceMatchCriteria'] = input[:instance_match_criteria].to_s unless input[:instance_match_criteria].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecifications') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'OutpostArn'] = input[:outpost_arn].to_s unless input[:outpost_arn].nil?
        params[context + 'PlacementGroupArn'] = input[:placement_group_arn].to_s unless input[:placement_group_arn].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateCapacityReservationFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateCapacityReservationFleet'
        params['Version'] = '2016-11-15'
        params[context + 'AllocationStrategy'] = input[:allocation_strategy].to_s unless input[:allocation_strategy].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        ReservationFleetInstanceSpecificationList.build(input[:instance_type_specifications], params, context: context + 'InstanceTypeSpecification') unless input[:instance_type_specifications].nil?
        params[context + 'Tenancy'] = input[:tenancy].to_s unless input[:tenancy].nil?
        params[context + 'TotalTargetCapacity'] = input[:total_target_capacity].to_s unless input[:total_target_capacity].nil?
        params[context + 'EndDate'] = Hearth::TimeHelper.to_date_time(input[:end_date]) unless input[:end_date].nil?
        params[context + 'InstanceMatchCriteria'] = input[:instance_match_criteria].to_s unless input[:instance_match_criteria].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateCarrierGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateCarrierGateway'
        params['Version'] = '2016-11-15'
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateClientVpnEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateClientVpnEndpoint'
        params['Version'] = '2016-11-15'
        params[context + 'ClientCidrBlock'] = input[:client_cidr_block].to_s unless input[:client_cidr_block].nil?
        params[context + 'ServerCertificateArn'] = input[:server_certificate_arn].to_s unless input[:server_certificate_arn].nil?
        ClientVpnAuthenticationRequestList.build(input[:authentication_options], params, context: context + 'Authentication') unless input[:authentication_options].nil?
        ConnectionLogOptions.build(input[:connection_log_options], params, context: context + 'ConnectionLogOptions' + '.') unless input[:connection_log_options].nil?
        ValueStringList.build(input[:dns_servers], params, context: context + 'DnsServers') unless input[:dns_servers].nil?
        params[context + 'TransportProtocol'] = input[:transport_protocol].to_s unless input[:transport_protocol].nil?
        params[context + 'VpnPort'] = input[:vpn_port].to_s unless input[:vpn_port].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'SplitTunnel'] = input[:split_tunnel].to_s unless input[:split_tunnel].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        ClientVpnSecurityGroupIdSet.build(input[:security_group_ids], params, context: context + 'SecurityGroupId') unless input[:security_group_ids].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'SelfServicePortal'] = input[:self_service_portal].to_s unless input[:self_service_portal].nil?
        ClientConnectOptions.build(input[:client_connect_options], params, context: context + 'ClientConnectOptions' + '.') unless input[:client_connect_options].nil?
        params[context + 'SessionTimeoutHours'] = input[:session_timeout_hours].to_s unless input[:session_timeout_hours].nil?
        ClientLoginBannerOptions.build(input[:client_login_banner_options], params, context: context + 'ClientLoginBannerOptions' + '.') unless input[:client_login_banner_options].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateClientVpnRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateClientVpnRoute'
        params['Version'] = '2016-11-15'
        params[context + 'ClientVpnEndpointId'] = input[:client_vpn_endpoint_id].to_s unless input[:client_vpn_endpoint_id].nil?
        params[context + 'DestinationCidrBlock'] = input[:destination_cidr_block].to_s unless input[:destination_cidr_block].nil?
        params[context + 'TargetVpcSubnetId'] = input[:target_vpc_subnet_id].to_s unless input[:target_vpc_subnet_id].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateCoipCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateCoipCidr'
        params['Version'] = '2016-11-15'
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
        params[context + 'CoipPoolId'] = input[:coip_pool_id].to_s unless input[:coip_pool_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateCoipPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateCoipPool'
        params['Version'] = '2016-11-15'
        params[context + 'LocalGatewayRouteTableId'] = input[:local_gateway_route_table_id].to_s unless input[:local_gateway_route_table_id].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateCustomerGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateCustomerGateway'
        params['Version'] = '2016-11-15'
        params[context + 'BgpAsn'] = input[:bgp_asn].to_s unless input[:bgp_asn].nil?
        params[context + 'PublicIp'] = input[:public_ip].to_s unless input[:public_ip].nil?
        params[context + 'CertificateArn'] = input[:certificate_arn].to_s unless input[:certificate_arn].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DeviceName'] = input[:device_name].to_s unless input[:device_name].nil?
        params[context + 'IpAddress'] = input[:ip_address].to_s unless input[:ip_address].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateDefaultSubnet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateDefaultSubnet'
        params['Version'] = '2016-11-15'
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Ipv6Native'] = input[:ipv6_native].to_s unless input[:ipv6_native].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateDefaultVpc
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateDefaultVpc'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateDhcpOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateDhcpOptions'
        params['Version'] = '2016-11-15'
        NewDhcpConfigurationList.build(input[:dhcp_configurations], params, context: context + 'dhcpConfiguration') unless input[:dhcp_configurations].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateEgressOnlyInternetGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateEgressOnlyInternetGateway'
        params['Version'] = '2016-11-15'
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateFleet'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        SpotOptionsRequest.build(input[:spot_options], params, context: context + 'SpotOptions' + '.') unless input[:spot_options].nil?
        OnDemandOptionsRequest.build(input[:on_demand_options], params, context: context + 'OnDemandOptions' + '.') unless input[:on_demand_options].nil?
        params[context + 'ExcessCapacityTerminationPolicy'] = input[:excess_capacity_termination_policy].to_s unless input[:excess_capacity_termination_policy].nil?
        FleetLaunchTemplateConfigListRequest.build(input[:launch_template_configs], params, context: context + 'LaunchTemplateConfigs') unless input[:launch_template_configs].nil?
        TargetCapacitySpecificationRequest.build(input[:target_capacity_specification], params, context: context + 'TargetCapacitySpecification' + '.') unless input[:target_capacity_specification].nil?
        params[context + 'TerminateInstancesWithExpiration'] = input[:terminate_instances_with_expiration].to_s unless input[:terminate_instances_with_expiration].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'ValidFrom'] = Hearth::TimeHelper.to_date_time(input[:valid_from]) unless input[:valid_from].nil?
        params[context + 'ValidUntil'] = Hearth::TimeHelper.to_date_time(input[:valid_until]) unless input[:valid_until].nil?
        params[context + 'ReplaceUnhealthyInstances'] = input[:replace_unhealthy_instances].to_s unless input[:replace_unhealthy_instances].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'Context'] = input[:context].to_s unless input[:context].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateFlowLogs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateFlowLogs'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DeliverLogsPermissionArn'] = input[:deliver_logs_permission_arn].to_s unless input[:deliver_logs_permission_arn].nil?
        params[context + 'DeliverCrossAccountRole'] = input[:deliver_cross_account_role].to_s unless input[:deliver_cross_account_role].nil?
        params[context + 'LogGroupName'] = input[:log_group_name].to_s unless input[:log_group_name].nil?
        FlowLogResourceIds.build(input[:resource_ids], params, context: context + 'ResourceId') unless input[:resource_ids].nil?
        params[context + 'ResourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        params[context + 'TrafficType'] = input[:traffic_type].to_s unless input[:traffic_type].nil?
        params[context + 'LogDestinationType'] = input[:log_destination_type].to_s unless input[:log_destination_type].nil?
        params[context + 'LogDestination'] = input[:log_destination].to_s unless input[:log_destination].nil?
        params[context + 'LogFormat'] = input[:log_format].to_s unless input[:log_format].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'MaxAggregationInterval'] = input[:max_aggregation_interval].to_s unless input[:max_aggregation_interval].nil?
        DestinationOptionsRequest.build(input[:destination_options], params, context: context + 'DestinationOptions' + '.') unless input[:destination_options].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateFpgaImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateFpgaImage'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        StorageLocation.build(input[:input_storage_location], params, context: context + 'InputStorageLocation' + '.') unless input[:input_storage_location].nil?
        StorageLocation.build(input[:logs_storage_location], params, context: context + 'LogsStorageLocation' + '.') unless input[:logs_storage_location].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateImage'
        params['Version'] = '2016-11-15'
        BlockDeviceMappingRequestList.build(input[:block_device_mappings], params, context: context + 'blockDeviceMapping') unless input[:block_device_mappings].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'NoReboot'] = input[:no_reboot].to_s unless input[:no_reboot].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateInstanceConnectEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateInstanceConnectEndpoint'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        SecurityGroupIdStringListRequest.build(input[:security_group_ids], params, context: context + 'SecurityGroupId') unless input[:security_group_ids].nil?
        params[context + 'PreserveClientIp'] = input[:preserve_client_ip].to_s unless input[:preserve_client_ip].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateInstanceEventWindow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateInstanceEventWindow'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        InstanceEventWindowTimeRangeRequestSet.build(input[:time_ranges], params, context: context + 'TimeRange') unless input[:time_ranges].nil?
        params[context + 'CronExpression'] = input[:cron_expression].to_s unless input[:cron_expression].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateInstanceExportTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateInstanceExportTask'
        params['Version'] = '2016-11-15'
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        ExportToS3TaskSpecification.build(input[:export_to_s3_task], params, context: context + 'ExportToS3' + '.') unless input[:export_to_s3_task].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'TargetEnvironment'] = input[:target_environment].to_s unless input[:target_environment].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateInternetGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateInternetGateway'
        params['Version'] = '2016-11-15'
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateIpam
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateIpam'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        AddIpamOperatingRegionSet.build(input[:operating_regions], params, context: context + 'OperatingRegion') unless input[:operating_regions].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'Tier'] = input[:tier].to_s unless input[:tier].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateIpamPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateIpamPool'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamScopeId'] = input[:ipam_scope_id].to_s unless input[:ipam_scope_id].nil?
        params[context + 'Locale'] = input[:locale].to_s unless input[:locale].nil?
        params[context + 'SourceIpamPoolId'] = input[:source_ipam_pool_id].to_s unless input[:source_ipam_pool_id].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'AddressFamily'] = input[:address_family].to_s unless input[:address_family].nil?
        params[context + 'AutoImport'] = input[:auto_import].to_s unless input[:auto_import].nil?
        params[context + 'PubliclyAdvertisable'] = input[:publicly_advertisable].to_s unless input[:publicly_advertisable].nil?
        params[context + 'AllocationMinNetmaskLength'] = input[:allocation_min_netmask_length].to_s unless input[:allocation_min_netmask_length].nil?
        params[context + 'AllocationMaxNetmaskLength'] = input[:allocation_max_netmask_length].to_s unless input[:allocation_max_netmask_length].nil?
        params[context + 'AllocationDefaultNetmaskLength'] = input[:allocation_default_netmask_length].to_s unless input[:allocation_default_netmask_length].nil?
        RequestIpamResourceTagList.build(input[:allocation_resource_tags], params, context: context + 'AllocationResourceTag') unless input[:allocation_resource_tags].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'AwsService'] = input[:aws_service].to_s unless input[:aws_service].nil?
        params[context + 'PublicIpSource'] = input[:public_ip_source].to_s unless input[:public_ip_source].nil?
        IpamPoolSourceResourceRequest.build(input[:source_resource], params, context: context + 'SourceResource' + '.') unless input[:source_resource].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateIpamResourceDiscovery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateIpamResourceDiscovery'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        AddIpamOperatingRegionSet.build(input[:operating_regions], params, context: context + 'OperatingRegion') unless input[:operating_regions].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateIpamScope
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateIpamScope'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamId'] = input[:ipam_id].to_s unless input[:ipam_id].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateKeyPair
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateKeyPair'
        params['Version'] = '2016-11-15'
        params[context + 'KeyName'] = input[:key_name].to_s unless input[:key_name].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'KeyType'] = input[:key_type].to_s unless input[:key_type].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'KeyFormat'] = input[:key_format].to_s unless input[:key_format].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateLaunchTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateLaunchTemplate'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'LaunchTemplateName'] = input[:launch_template_name].to_s unless input[:launch_template_name].nil?
        params[context + 'VersionDescription'] = input[:version_description].to_s unless input[:version_description].nil?
        RequestLaunchTemplateData.build(input[:launch_template_data], params, context: context + 'LaunchTemplateData' + '.') unless input[:launch_template_data].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateLaunchTemplateVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateLaunchTemplateVersion'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'LaunchTemplateId'] = input[:launch_template_id].to_s unless input[:launch_template_id].nil?
        params[context + 'LaunchTemplateName'] = input[:launch_template_name].to_s unless input[:launch_template_name].nil?
        params[context + 'SourceVersion'] = input[:source_version].to_s unless input[:source_version].nil?
        params[context + 'VersionDescription'] = input[:version_description].to_s unless input[:version_description].nil?
        RequestLaunchTemplateData.build(input[:launch_template_data], params, context: context + 'LaunchTemplateData' + '.') unless input[:launch_template_data].nil?
        params[context + 'ResolveAlias'] = input[:resolve_alias].to_s unless input[:resolve_alias].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateLocalGatewayRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateLocalGatewayRoute'
        params['Version'] = '2016-11-15'
        params[context + 'DestinationCidrBlock'] = input[:destination_cidr_block].to_s unless input[:destination_cidr_block].nil?
        params[context + 'LocalGatewayRouteTableId'] = input[:local_gateway_route_table_id].to_s unless input[:local_gateway_route_table_id].nil?
        params[context + 'LocalGatewayVirtualInterfaceGroupId'] = input[:local_gateway_virtual_interface_group_id].to_s unless input[:local_gateway_virtual_interface_group_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        params[context + 'DestinationPrefixListId'] = input[:destination_prefix_list_id].to_s unless input[:destination_prefix_list_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateLocalGatewayRouteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateLocalGatewayRouteTable'
        params['Version'] = '2016-11-15'
        params[context + 'LocalGatewayId'] = input[:local_gateway_id].to_s unless input[:local_gateway_id].nil?
        params[context + 'Mode'] = input[:mode].to_s unless input[:mode].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociation'
        params['Version'] = '2016-11-15'
        params[context + 'LocalGatewayRouteTableId'] = input[:local_gateway_route_table_id].to_s unless input[:local_gateway_route_table_id].nil?
        params[context + 'LocalGatewayVirtualInterfaceGroupId'] = input[:local_gateway_virtual_interface_group_id].to_s unless input[:local_gateway_virtual_interface_group_id].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateLocalGatewayRouteTableVpcAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateLocalGatewayRouteTableVpcAssociation'
        params['Version'] = '2016-11-15'
        params[context + 'LocalGatewayRouteTableId'] = input[:local_gateway_route_table_id].to_s unless input[:local_gateway_route_table_id].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateManagedPrefixList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateManagedPrefixList'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'PrefixListName'] = input[:prefix_list_name].to_s unless input[:prefix_list_name].nil?
        AddPrefixListEntries.build(input[:entries], params, context: context + 'Entry') unless input[:entries].nil?
        params[context + 'MaxEntries'] = input[:max_entries].to_s unless input[:max_entries].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'AddressFamily'] = input[:address_family].to_s unless input[:address_family].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateNatGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateNatGateway'
        params['Version'] = '2016-11-15'
        params[context + 'AllocationId'] = input[:allocation_id].to_s unless input[:allocation_id].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ConnectivityType'] = input[:connectivity_type].to_s unless input[:connectivity_type].nil?
        params[context + 'PrivateIpAddress'] = input[:private_ip_address].to_s unless input[:private_ip_address].nil?
        AllocationIdList.build(input[:secondary_allocation_ids], params, context: context + 'SecondaryAllocationId') unless input[:secondary_allocation_ids].nil?
        IpList.build(input[:secondary_private_ip_addresses], params, context: context + 'SecondaryPrivateIpAddress') unless input[:secondary_private_ip_addresses].nil?
        params[context + 'SecondaryPrivateIpAddressCount'] = input[:secondary_private_ip_address_count].to_s unless input[:secondary_private_ip_address_count].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateNetworkAcl
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateNetworkAcl'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateNetworkAclEntry
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateNetworkAclEntry'
        params['Version'] = '2016-11-15'
        params[context + 'CidrBlock'] = input[:cidr_block].to_s unless input[:cidr_block].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Egress'] = input[:egress].to_s unless input[:egress].nil?
        IcmpTypeCode.build(input[:icmp_type_code], params, context: context + 'Icmp' + '.') unless input[:icmp_type_code].nil?
        params[context + 'Ipv6CidrBlock'] = input[:ipv6_cidr_block].to_s unless input[:ipv6_cidr_block].nil?
        params[context + 'NetworkAclId'] = input[:network_acl_id].to_s unless input[:network_acl_id].nil?
        PortRange.build(input[:port_range], params, context: context + 'PortRange' + '.') unless input[:port_range].nil?
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
        params[context + 'RuleAction'] = input[:rule_action].to_s unless input[:rule_action].nil?
        params[context + 'RuleNumber'] = input[:rule_number].to_s unless input[:rule_number].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateNetworkInsightsAccessScope
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateNetworkInsightsAccessScope'
        params['Version'] = '2016-11-15'
        AccessScopePathListRequest.build(input[:match_paths], params, context: context + 'MatchPath') unless input[:match_paths].nil?
        AccessScopePathListRequest.build(input[:exclude_paths], params, context: context + 'ExcludePath') unless input[:exclude_paths].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateNetworkInsightsPath
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateNetworkInsightsPath'
        params['Version'] = '2016-11-15'
        params[context + 'SourceIp'] = input[:source_ip].to_s unless input[:source_ip].nil?
        params[context + 'DestinationIp'] = input[:destination_ip].to_s unless input[:destination_ip].nil?
        params[context + 'Source'] = input[:source].to_s unless input[:source].nil?
        params[context + 'Destination'] = input[:destination].to_s unless input[:destination].nil?
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
        params[context + 'DestinationPort'] = input[:destination_port].to_s unless input[:destination_port].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        PathRequestFilter.build(input[:filter_at_source], params, context: context + 'FilterAtSource' + '.') unless input[:filter_at_source].nil?
        PathRequestFilter.build(input[:filter_at_destination], params, context: context + 'FilterAtDestination' + '.') unless input[:filter_at_destination].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateNetworkInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateNetworkInterface'
        params['Version'] = '2016-11-15'
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        SecurityGroupIdStringList.build(input[:groups], params, context: context + 'SecurityGroupId') unless input[:groups].nil?
        params[context + 'Ipv6AddressCount'] = input[:ipv6_address_count].to_s unless input[:ipv6_address_count].nil?
        InstanceIpv6AddressList.build(input[:ipv6_addresses], params, context: context + 'ipv6Addresses') unless input[:ipv6_addresses].nil?
        params[context + 'PrivateIpAddress'] = input[:private_ip_address].to_s unless input[:private_ip_address].nil?
        PrivateIpAddressSpecificationList.build(input[:private_ip_addresses], params, context: context + 'privateIpAddresses') unless input[:private_ip_addresses].nil?
        params[context + 'SecondaryPrivateIpAddressCount'] = input[:secondary_private_ip_address_count].to_s unless input[:secondary_private_ip_address_count].nil?
        Ipv4PrefixList.build(input[:ipv4_prefixes], params, context: context + 'Ipv4Prefix') unless input[:ipv4_prefixes].nil?
        params[context + 'Ipv4PrefixCount'] = input[:ipv4_prefix_count].to_s unless input[:ipv4_prefix_count].nil?
        Ipv6PrefixList.build(input[:ipv6_prefixes], params, context: context + 'Ipv6Prefix') unless input[:ipv6_prefixes].nil?
        params[context + 'Ipv6PrefixCount'] = input[:ipv6_prefix_count].to_s unless input[:ipv6_prefix_count].nil?
        params[context + 'InterfaceType'] = input[:interface_type].to_s unless input[:interface_type].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'EnablePrimaryIpv6'] = input[:enable_primary_ipv6].to_s unless input[:enable_primary_ipv6].nil?
        ConnectionTrackingSpecificationRequest.build(input[:connection_tracking_specification], params, context: context + 'ConnectionTrackingSpecification' + '.') unless input[:connection_tracking_specification].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateNetworkInterfacePermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateNetworkInterfacePermission'
        params['Version'] = '2016-11-15'
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        params[context + 'AwsAccountId'] = input[:aws_account_id].to_s unless input[:aws_account_id].nil?
        params[context + 'AwsService'] = input[:aws_service].to_s unless input[:aws_service].nil?
        params[context + 'Permission'] = input[:permission].to_s unless input[:permission].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreatePlacementGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreatePlacementGroup'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'Strategy'] = input[:strategy].to_s unless input[:strategy].nil?
        params[context + 'PartitionCount'] = input[:partition_count].to_s unless input[:partition_count].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'SpreadLevel'] = input[:spread_level].to_s unless input[:spread_level].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreatePublicIpv4Pool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreatePublicIpv4Pool'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateReplaceRootVolumeTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateReplaceRootVolumeTask'
        params['Version'] = '2016-11-15'
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'SnapshotId'] = input[:snapshot_id].to_s unless input[:snapshot_id].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'DeleteReplacedRootVolume'] = input[:delete_replaced_root_volume].to_s unless input[:delete_replaced_root_volume].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateReservedInstancesListing
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateReservedInstancesListing'
        params['Version'] = '2016-11-15'
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'InstanceCount'] = input[:instance_count].to_s unless input[:instance_count].nil?
        PriceScheduleSpecificationList.build(input[:price_schedules], params, context: context + 'priceSchedules') unless input[:price_schedules].nil?
        params[context + 'ReservedInstancesId'] = input[:reserved_instances_id].to_s unless input[:reserved_instances_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateRestoreImageTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateRestoreImageTask'
        params['Version'] = '2016-11-15'
        params[context + 'Bucket'] = input[:bucket].to_s unless input[:bucket].nil?
        params[context + 'ObjectKey'] = input[:object_key].to_s unless input[:object_key].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateRoute'
        params['Version'] = '2016-11-15'
        params[context + 'DestinationCidrBlock'] = input[:destination_cidr_block].to_s unless input[:destination_cidr_block].nil?
        params[context + 'DestinationIpv6CidrBlock'] = input[:destination_ipv6_cidr_block].to_s unless input[:destination_ipv6_cidr_block].nil?
        params[context + 'DestinationPrefixListId'] = input[:destination_prefix_list_id].to_s unless input[:destination_prefix_list_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'VpcEndpointId'] = input[:vpc_endpoint_id].to_s unless input[:vpc_endpoint_id].nil?
        params[context + 'EgressOnlyInternetGatewayId'] = input[:egress_only_internet_gateway_id].to_s unless input[:egress_only_internet_gateway_id].nil?
        params[context + 'GatewayId'] = input[:gateway_id].to_s unless input[:gateway_id].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'NatGatewayId'] = input[:nat_gateway_id].to_s unless input[:nat_gateway_id].nil?
        params[context + 'TransitGatewayId'] = input[:transit_gateway_id].to_s unless input[:transit_gateway_id].nil?
        params[context + 'LocalGatewayId'] = input[:local_gateway_id].to_s unless input[:local_gateway_id].nil?
        params[context + 'CarrierGatewayId'] = input[:carrier_gateway_id].to_s unless input[:carrier_gateway_id].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        params[context + 'RouteTableId'] = input[:route_table_id].to_s unless input[:route_table_id].nil?
        params[context + 'VpcPeeringConnectionId'] = input[:vpc_peering_connection_id].to_s unless input[:vpc_peering_connection_id].nil?
        params[context + 'CoreNetworkArn'] = input[:core_network_arn].to_s unless input[:core_network_arn].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateRouteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateRouteTable'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateSecurityGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateSecurityGroup'
        params['Version'] = '2016-11-15'
        params[context + 'GroupDescription'] = input[:description].to_s unless input[:description].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateSnapshot'
        params['Version'] = '2016-11-15'
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'OutpostArn'] = input[:outpost_arn].to_s unless input[:outpost_arn].nil?
        params[context + 'VolumeId'] = input[:volume_id].to_s unless input[:volume_id].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateSnapshots'
        params['Version'] = '2016-11-15'
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        InstanceSpecification.build(input[:instance_specification], params, context: context + 'InstanceSpecification' + '.') unless input[:instance_specification].nil?
        params[context + 'OutpostArn'] = input[:outpost_arn].to_s unless input[:outpost_arn].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'CopyTagsFromSource'] = input[:copy_tags_from_source].to_s unless input[:copy_tags_from_source].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateSpotDatafeedSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateSpotDatafeedSubscription'
        params['Version'] = '2016-11-15'
        params[context + 'Bucket'] = input[:bucket].to_s unless input[:bucket].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Prefix'] = input[:prefix].to_s unless input[:prefix].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateStoreImageTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateStoreImageTask'
        params['Version'] = '2016-11-15'
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'Bucket'] = input[:bucket].to_s unless input[:bucket].nil?
        S3ObjectTagList.build(input[:s3_object_tags], params, context: context + 'S3ObjectTag') unless input[:s3_object_tags].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateSubnet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateSubnet'
        params['Version'] = '2016-11-15'
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'AvailabilityZoneId'] = input[:availability_zone_id].to_s unless input[:availability_zone_id].nil?
        params[context + 'CidrBlock'] = input[:cidr_block].to_s unless input[:cidr_block].nil?
        params[context + 'Ipv6CidrBlock'] = input[:ipv6_cidr_block].to_s unless input[:ipv6_cidr_block].nil?
        params[context + 'OutpostArn'] = input[:outpost_arn].to_s unless input[:outpost_arn].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Ipv6Native'] = input[:ipv6_native].to_s unless input[:ipv6_native].nil?
        params[context + 'Ipv4IpamPoolId'] = input[:ipv4_ipam_pool_id].to_s unless input[:ipv4_ipam_pool_id].nil?
        params[context + 'Ipv4NetmaskLength'] = input[:ipv4_netmask_length].to_s unless input[:ipv4_netmask_length].nil?
        params[context + 'Ipv6IpamPoolId'] = input[:ipv6_ipam_pool_id].to_s unless input[:ipv6_ipam_pool_id].nil?
        params[context + 'Ipv6NetmaskLength'] = input[:ipv6_netmask_length].to_s unless input[:ipv6_netmask_length].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateSubnetCidrReservation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateSubnetCidrReservation'
        params['Version'] = '2016-11-15'
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
        params[context + 'ReservationType'] = input[:reservation_type].to_s unless input[:reservation_type].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTags'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        ResourceIdList.build(input[:resources], params, context: context + 'ResourceId') unless input[:resources].nil?
        TagList.build(input[:tags], params, context: context + 'Tag') unless input[:tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateTrafficMirrorFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTrafficMirrorFilter'
        params['Version'] = '2016-11-15'
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateTrafficMirrorFilterRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTrafficMirrorFilterRule'
        params['Version'] = '2016-11-15'
        params[context + 'TrafficMirrorFilterId'] = input[:traffic_mirror_filter_id].to_s unless input[:traffic_mirror_filter_id].nil?
        params[context + 'TrafficDirection'] = input[:traffic_direction].to_s unless input[:traffic_direction].nil?
        params[context + 'RuleNumber'] = input[:rule_number].to_s unless input[:rule_number].nil?
        params[context + 'RuleAction'] = input[:rule_action].to_s unless input[:rule_action].nil?
        TrafficMirrorPortRangeRequest.build(input[:destination_port_range], params, context: context + 'DestinationPortRange' + '.') unless input[:destination_port_range].nil?
        TrafficMirrorPortRangeRequest.build(input[:source_port_range], params, context: context + 'SourcePortRange' + '.') unless input[:source_port_range].nil?
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
        params[context + 'DestinationCidrBlock'] = input[:destination_cidr_block].to_s unless input[:destination_cidr_block].nil?
        params[context + 'SourceCidrBlock'] = input[:source_cidr_block].to_s unless input[:source_cidr_block].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateTrafficMirrorSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTrafficMirrorSession'
        params['Version'] = '2016-11-15'
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        params[context + 'TrafficMirrorTargetId'] = input[:traffic_mirror_target_id].to_s unless input[:traffic_mirror_target_id].nil?
        params[context + 'TrafficMirrorFilterId'] = input[:traffic_mirror_filter_id].to_s unless input[:traffic_mirror_filter_id].nil?
        params[context + 'PacketLength'] = input[:packet_length].to_s unless input[:packet_length].nil?
        params[context + 'SessionNumber'] = input[:session_number].to_s unless input[:session_number].nil?
        params[context + 'VirtualNetworkId'] = input[:virtual_network_id].to_s unless input[:virtual_network_id].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateTrafficMirrorTarget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTrafficMirrorTarget'
        params['Version'] = '2016-11-15'
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        params[context + 'NetworkLoadBalancerArn'] = input[:network_load_balancer_arn].to_s unless input[:network_load_balancer_arn].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'GatewayLoadBalancerEndpointId'] = input[:gateway_load_balancer_endpoint_id].to_s unless input[:gateway_load_balancer_endpoint_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateTransitGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTransitGateway'
        params['Version'] = '2016-11-15'
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        TransitGatewayRequestOptions.build(input[:options], params, context: context + 'Options' + '.') unless input[:options].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateTransitGatewayConnect
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTransitGatewayConnect'
        params['Version'] = '2016-11-15'
        params[context + 'TransportTransitGatewayAttachmentId'] = input[:transport_transit_gateway_attachment_id].to_s unless input[:transport_transit_gateway_attachment_id].nil?
        CreateTransitGatewayConnectRequestOptions.build(input[:options], params, context: context + 'Options' + '.') unless input[:options].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateTransitGatewayConnectPeer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTransitGatewayConnectPeer'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        params[context + 'TransitGatewayAddress'] = input[:transit_gateway_address].to_s unless input[:transit_gateway_address].nil?
        params[context + 'PeerAddress'] = input[:peer_address].to_s unless input[:peer_address].nil?
        TransitGatewayConnectRequestBgpOptions.build(input[:bgp_options], params, context: context + 'BgpOptions' + '.') unless input[:bgp_options].nil?
        InsideCidrBlocksStringList.build(input[:inside_cidr_blocks], params, context: context + 'InsideCidrBlocks') unless input[:inside_cidr_blocks].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateTransitGatewayConnectRequestOptions
      def self.build(input, params, context: nil)
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
      end
    end

    class CreateTransitGatewayMulticastDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTransitGatewayMulticastDomain'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayId'] = input[:transit_gateway_id].to_s unless input[:transit_gateway_id].nil?
        CreateTransitGatewayMulticastDomainRequestOptions.build(input[:options], params, context: context + 'Options' + '.') unless input[:options].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateTransitGatewayMulticastDomainRequestOptions
      def self.build(input, params, context: nil)
        params[context + 'Igmpv2Support'] = input[:igmpv2_support].to_s unless input[:igmpv2_support].nil?
        params[context + 'StaticSourcesSupport'] = input[:static_sources_support].to_s unless input[:static_sources_support].nil?
        params[context + 'AutoAcceptSharedAssociations'] = input[:auto_accept_shared_associations].to_s unless input[:auto_accept_shared_associations].nil?
      end
    end

    class CreateTransitGatewayPeeringAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTransitGatewayPeeringAttachment'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayId'] = input[:transit_gateway_id].to_s unless input[:transit_gateway_id].nil?
        params[context + 'PeerTransitGatewayId'] = input[:peer_transit_gateway_id].to_s unless input[:peer_transit_gateway_id].nil?
        params[context + 'PeerAccountId'] = input[:peer_account_id].to_s unless input[:peer_account_id].nil?
        params[context + 'PeerRegion'] = input[:peer_region].to_s unless input[:peer_region].nil?
        CreateTransitGatewayPeeringAttachmentRequestOptions.build(input[:options], params, context: context + 'Options' + '.') unless input[:options].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateTransitGatewayPeeringAttachmentRequestOptions
      def self.build(input, params, context: nil)
        params[context + 'DynamicRouting'] = input[:dynamic_routing].to_s unless input[:dynamic_routing].nil?
      end
    end

    class CreateTransitGatewayPolicyTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTransitGatewayPolicyTable'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayId'] = input[:transit_gateway_id].to_s unless input[:transit_gateway_id].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecifications') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateTransitGatewayPrefixListReference
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTransitGatewayPrefixListReference'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayRouteTableId'] = input[:transit_gateway_route_table_id].to_s unless input[:transit_gateway_route_table_id].nil?
        params[context + 'PrefixListId'] = input[:prefix_list_id].to_s unless input[:prefix_list_id].nil?
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        params[context + 'Blackhole'] = input[:blackhole].to_s unless input[:blackhole].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateTransitGatewayRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTransitGatewayRoute'
        params['Version'] = '2016-11-15'
        params[context + 'DestinationCidrBlock'] = input[:destination_cidr_block].to_s unless input[:destination_cidr_block].nil?
        params[context + 'TransitGatewayRouteTableId'] = input[:transit_gateway_route_table_id].to_s unless input[:transit_gateway_route_table_id].nil?
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        params[context + 'Blackhole'] = input[:blackhole].to_s unless input[:blackhole].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateTransitGatewayRouteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTransitGatewayRouteTable'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayId'] = input[:transit_gateway_id].to_s unless input[:transit_gateway_id].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecifications') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateTransitGatewayRouteTableAnnouncement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTransitGatewayRouteTableAnnouncement'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayRouteTableId'] = input[:transit_gateway_route_table_id].to_s unless input[:transit_gateway_route_table_id].nil?
        params[context + 'PeeringAttachmentId'] = input[:peering_attachment_id].to_s unless input[:peering_attachment_id].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateTransitGatewayVpcAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTransitGatewayVpcAttachment'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayId'] = input[:transit_gateway_id].to_s unless input[:transit_gateway_id].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        TransitGatewaySubnetIdList.build(input[:subnet_ids], params, context: context + 'SubnetIds') unless input[:subnet_ids].nil?
        CreateTransitGatewayVpcAttachmentRequestOptions.build(input[:options], params, context: context + 'Options' + '.') unless input[:options].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecifications') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateTransitGatewayVpcAttachmentRequestOptions
      def self.build(input, params, context: nil)
        params[context + 'DnsSupport'] = input[:dns_support].to_s unless input[:dns_support].nil?
        params[context + 'SecurityGroupReferencingSupport'] = input[:security_group_referencing_support].to_s unless input[:security_group_referencing_support].nil?
        params[context + 'Ipv6Support'] = input[:ipv6_support].to_s unless input[:ipv6_support].nil?
        params[context + 'ApplianceModeSupport'] = input[:appliance_mode_support].to_s unless input[:appliance_mode_support].nil?
      end
    end

    class CreateVerifiedAccessEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateVerifiedAccessEndpoint'
        params['Version'] = '2016-11-15'
        params[context + 'VerifiedAccessGroupId'] = input[:verified_access_group_id].to_s unless input[:verified_access_group_id].nil?
        params[context + 'EndpointType'] = input[:endpoint_type].to_s unless input[:endpoint_type].nil?
        params[context + 'AttachmentType'] = input[:attachment_type].to_s unless input[:attachment_type].nil?
        params[context + 'DomainCertificateArn'] = input[:domain_certificate_arn].to_s unless input[:domain_certificate_arn].nil?
        params[context + 'ApplicationDomain'] = input[:application_domain].to_s unless input[:application_domain].nil?
        params[context + 'EndpointDomainPrefix'] = input[:endpoint_domain_prefix].to_s unless input[:endpoint_domain_prefix].nil?
        SecurityGroupIdList.build(input[:security_group_ids], params, context: context + 'SecurityGroupId') unless input[:security_group_ids].nil?
        CreateVerifiedAccessEndpointLoadBalancerOptions.build(input[:load_balancer_options], params, context: context + 'LoadBalancerOptions' + '.') unless input[:load_balancer_options].nil?
        CreateVerifiedAccessEndpointEniOptions.build(input[:network_interface_options], params, context: context + 'NetworkInterfaceOptions' + '.') unless input[:network_interface_options].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'PolicyDocument'] = input[:policy_document].to_s unless input[:policy_document].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        VerifiedAccessSseSpecificationRequest.build(input[:sse_specification], params, context: context + 'SseSpecification' + '.') unless input[:sse_specification].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateVerifiedAccessEndpointEniOptions
      def self.build(input, params, context: nil)
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
      end
    end

    class CreateVerifiedAccessEndpointLoadBalancerOptions
      def self.build(input, params, context: nil)
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'LoadBalancerArn'] = input[:load_balancer_arn].to_s unless input[:load_balancer_arn].nil?
        CreateVerifiedAccessEndpointSubnetIdList.build(input[:subnet_ids], params, context: context + 'SubnetId') unless input[:subnet_ids].nil?
      end
    end

    class CreateVerifiedAccessEndpointSubnetIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class CreateVerifiedAccessGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateVerifiedAccessGroup'
        params['Version'] = '2016-11-15'
        params[context + 'VerifiedAccessInstanceId'] = input[:verified_access_instance_id].to_s unless input[:verified_access_instance_id].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'PolicyDocument'] = input[:policy_document].to_s unless input[:policy_document].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        VerifiedAccessSseSpecificationRequest.build(input[:sse_specification], params, context: context + 'SseSpecification' + '.') unless input[:sse_specification].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateVerifiedAccessInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateVerifiedAccessInstance'
        params['Version'] = '2016-11-15'
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'FIPSEnabled'] = input[:fips_enabled].to_s unless input[:fips_enabled].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateVerifiedAccessTrustProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateVerifiedAccessTrustProvider'
        params['Version'] = '2016-11-15'
        params[context + 'TrustProviderType'] = input[:trust_provider_type].to_s unless input[:trust_provider_type].nil?
        params[context + 'UserTrustProviderType'] = input[:user_trust_provider_type].to_s unless input[:user_trust_provider_type].nil?
        params[context + 'DeviceTrustProviderType'] = input[:device_trust_provider_type].to_s unless input[:device_trust_provider_type].nil?
        CreateVerifiedAccessTrustProviderOidcOptions.build(input[:oidc_options], params, context: context + 'OidcOptions' + '.') unless input[:oidc_options].nil?
        CreateVerifiedAccessTrustProviderDeviceOptions.build(input[:device_options], params, context: context + 'DeviceOptions' + '.') unless input[:device_options].nil?
        params[context + 'PolicyReferenceName'] = input[:policy_reference_name].to_s unless input[:policy_reference_name].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        VerifiedAccessSseSpecificationRequest.build(input[:sse_specification], params, context: context + 'SseSpecification' + '.') unless input[:sse_specification].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateVerifiedAccessTrustProviderDeviceOptions
      def self.build(input, params, context: nil)
        params[context + 'TenantId'] = input[:tenant_id].to_s unless input[:tenant_id].nil?
        params[context + 'PublicSigningKeyUrl'] = input[:public_signing_key_url].to_s unless input[:public_signing_key_url].nil?
      end
    end

    class CreateVerifiedAccessTrustProviderOidcOptions
      def self.build(input, params, context: nil)
        params[context + 'Issuer'] = input[:issuer].to_s unless input[:issuer].nil?
        params[context + 'AuthorizationEndpoint'] = input[:authorization_endpoint].to_s unless input[:authorization_endpoint].nil?
        params[context + 'TokenEndpoint'] = input[:token_endpoint].to_s unless input[:token_endpoint].nil?
        params[context + 'UserInfoEndpoint'] = input[:user_info_endpoint].to_s unless input[:user_info_endpoint].nil?
        params[context + 'ClientId'] = input[:client_id].to_s unless input[:client_id].nil?
        params[context + 'ClientSecret'] = input[:client_secret].to_s unless input[:client_secret].nil?
        params[context + 'Scope'] = input[:scope].to_s unless input[:scope].nil?
      end
    end

    class CreateVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateVolume'
        params['Version'] = '2016-11-15'
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'Encrypted'] = input[:encrypted].to_s unless input[:encrypted].nil?
        params[context + 'Iops'] = input[:iops].to_s unless input[:iops].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'OutpostArn'] = input[:outpost_arn].to_s unless input[:outpost_arn].nil?
        params[context + 'Size'] = input[:size].to_s unless input[:size].nil?
        params[context + 'SnapshotId'] = input[:snapshot_id].to_s unless input[:snapshot_id].nil?
        params[context + 'VolumeType'] = input[:volume_type].to_s unless input[:volume_type].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'MultiAttachEnabled'] = input[:multi_attach_enabled].to_s unless input[:multi_attach_enabled].nil?
        params[context + 'Throughput'] = input[:throughput].to_s unless input[:throughput].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateVolumePermission
      def self.build(input, params, context: nil)
        params[context + 'Group'] = input[:group].to_s unless input[:group].nil?
        params[context + 'UserId'] = input[:user_id].to_s unless input[:user_id].nil?
      end
    end

    class CreateVolumePermissionList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          CreateVolumePermission.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class CreateVolumePermissionModifications
      def self.build(input, params, context: nil)
        CreateVolumePermissionList.build(input[:add], params, context: context + 'Add') unless input[:add].nil?
        CreateVolumePermissionList.build(input[:remove], params, context: context + 'Remove') unless input[:remove].nil?
      end
    end

    class CreateVpc
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateVpc'
        params['Version'] = '2016-11-15'
        params[context + 'CidrBlock'] = input[:cidr_block].to_s unless input[:cidr_block].nil?
        params[context + 'AmazonProvidedIpv6CidrBlock'] = input[:amazon_provided_ipv6_cidr_block].to_s unless input[:amazon_provided_ipv6_cidr_block].nil?
        params[context + 'Ipv6Pool'] = input[:ipv6_pool].to_s unless input[:ipv6_pool].nil?
        params[context + 'Ipv6CidrBlock'] = input[:ipv6_cidr_block].to_s unless input[:ipv6_cidr_block].nil?
        params[context + 'Ipv4IpamPoolId'] = input[:ipv4_ipam_pool_id].to_s unless input[:ipv4_ipam_pool_id].nil?
        params[context + 'Ipv4NetmaskLength'] = input[:ipv4_netmask_length].to_s unless input[:ipv4_netmask_length].nil?
        params[context + 'Ipv6IpamPoolId'] = input[:ipv6_ipam_pool_id].to_s unless input[:ipv6_ipam_pool_id].nil?
        params[context + 'Ipv6NetmaskLength'] = input[:ipv6_netmask_length].to_s unless input[:ipv6_netmask_length].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceTenancy'] = input[:instance_tenancy].to_s unless input[:instance_tenancy].nil?
        params[context + 'Ipv6CidrBlockNetworkBorderGroup'] = input[:ipv6_cidr_block_network_border_group].to_s unless input[:ipv6_cidr_block_network_border_group].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateVpcEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateVpcEndpoint'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'VpcEndpointType'] = input[:vpc_endpoint_type].to_s unless input[:vpc_endpoint_type].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'ServiceName'] = input[:service_name].to_s unless input[:service_name].nil?
        params[context + 'PolicyDocument'] = input[:policy_document].to_s unless input[:policy_document].nil?
        VpcEndpointRouteTableIdList.build(input[:route_table_ids], params, context: context + 'RouteTableId') unless input[:route_table_ids].nil?
        VpcEndpointSubnetIdList.build(input[:subnet_ids], params, context: context + 'SubnetId') unless input[:subnet_ids].nil?
        VpcEndpointSecurityGroupIdList.build(input[:security_group_ids], params, context: context + 'SecurityGroupId') unless input[:security_group_ids].nil?
        params[context + 'IpAddressType'] = input[:ip_address_type].to_s unless input[:ip_address_type].nil?
        DnsOptionsSpecification.build(input[:dns_options], params, context: context + 'DnsOptions' + '.') unless input[:dns_options].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'PrivateDnsEnabled'] = input[:private_dns_enabled].to_s unless input[:private_dns_enabled].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        SubnetConfigurationsList.build(input[:subnet_configurations], params, context: context + 'SubnetConfiguration') unless input[:subnet_configurations].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateVpcEndpointConnectionNotification
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateVpcEndpointConnectionNotification'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ServiceId'] = input[:service_id].to_s unless input[:service_id].nil?
        params[context + 'VpcEndpointId'] = input[:vpc_endpoint_id].to_s unless input[:vpc_endpoint_id].nil?
        params[context + 'ConnectionNotificationArn'] = input[:connection_notification_arn].to_s unless input[:connection_notification_arn].nil?
        ValueStringList.build(input[:connection_events], params, context: context + 'ConnectionEvents') unless input[:connection_events].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateVpcEndpointServiceConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateVpcEndpointServiceConfiguration'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'AcceptanceRequired'] = input[:acceptance_required].to_s unless input[:acceptance_required].nil?
        params[context + 'PrivateDnsName'] = input[:private_dns_name].to_s unless input[:private_dns_name].nil?
        ValueStringList.build(input[:network_load_balancer_arns], params, context: context + 'NetworkLoadBalancerArn') unless input[:network_load_balancer_arns].nil?
        ValueStringList.build(input[:gateway_load_balancer_arns], params, context: context + 'GatewayLoadBalancerArn') unless input[:gateway_load_balancer_arns].nil?
        ValueStringList.build(input[:supported_ip_address_types], params, context: context + 'SupportedIpAddressType') unless input[:supported_ip_address_types].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateVpcPeeringConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateVpcPeeringConnection'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'PeerOwnerId'] = input[:peer_owner_id].to_s unless input[:peer_owner_id].nil?
        params[context + 'PeerVpcId'] = input[:peer_vpc_id].to_s unless input[:peer_vpc_id].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'PeerRegion'] = input[:peer_region].to_s unless input[:peer_region].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateVpnConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateVpnConnection'
        params['Version'] = '2016-11-15'
        params[context + 'CustomerGatewayId'] = input[:customer_gateway_id].to_s unless input[:customer_gateway_id].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'VpnGatewayId'] = input[:vpn_gateway_id].to_s unless input[:vpn_gateway_id].nil?
        params[context + 'TransitGatewayId'] = input[:transit_gateway_id].to_s unless input[:transit_gateway_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        VpnConnectionOptionsSpecification.build(input[:options], params, context: context + 'Options' + '.') unless input[:options].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateVpnConnectionRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateVpnConnectionRoute'
        params['Version'] = '2016-11-15'
        params[context + 'DestinationCidrBlock'] = input[:destination_cidr_block].to_s unless input[:destination_cidr_block].nil?
        params[context + 'VpnConnectionId'] = input[:vpn_connection_id].to_s unless input[:vpn_connection_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreateVpnGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateVpnGateway'
        params['Version'] = '2016-11-15'
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'AmazonSideAsn'] = input[:amazon_side_asn].to_s unless input[:amazon_side_asn].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class CreditSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'CpuCredits'] = input[:cpu_credits].to_s unless input[:cpu_credits].nil?
      end
    end

    class CustomerGatewayIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class DataQueries
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          DataQuery.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class DataQuery
      def self.build(input, params, context: nil)
        params[context + 'Id'] = input[:id].to_s unless input[:id].nil?
        params[context + 'Source'] = input[:source].to_s unless input[:source].nil?
        params[context + 'Destination'] = input[:destination].to_s unless input[:destination].nil?
        params[context + 'Metric'] = input[:metric].to_s unless input[:metric].nil?
        params[context + 'Statistic'] = input[:statistic].to_s unless input[:statistic].nil?
        params[context + 'Period'] = input[:period].to_s unless input[:period].nil?
      end
    end

    class DedicatedHostIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class DeleteCarrierGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteCarrierGateway'
        params['Version'] = '2016-11-15'
        params[context + 'CarrierGatewayId'] = input[:carrier_gateway_id].to_s unless input[:carrier_gateway_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteClientVpnEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteClientVpnEndpoint'
        params['Version'] = '2016-11-15'
        params[context + 'ClientVpnEndpointId'] = input[:client_vpn_endpoint_id].to_s unless input[:client_vpn_endpoint_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteClientVpnRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteClientVpnRoute'
        params['Version'] = '2016-11-15'
        params[context + 'ClientVpnEndpointId'] = input[:client_vpn_endpoint_id].to_s unless input[:client_vpn_endpoint_id].nil?
        params[context + 'TargetVpcSubnetId'] = input[:target_vpc_subnet_id].to_s unless input[:target_vpc_subnet_id].nil?
        params[context + 'DestinationCidrBlock'] = input[:destination_cidr_block].to_s unless input[:destination_cidr_block].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteCoipCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteCoipCidr'
        params['Version'] = '2016-11-15'
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
        params[context + 'CoipPoolId'] = input[:coip_pool_id].to_s unless input[:coip_pool_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteCoipPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteCoipPool'
        params['Version'] = '2016-11-15'
        params[context + 'CoipPoolId'] = input[:coip_pool_id].to_s unless input[:coip_pool_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteCustomerGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteCustomerGateway'
        params['Version'] = '2016-11-15'
        params[context + 'CustomerGatewayId'] = input[:customer_gateway_id].to_s unless input[:customer_gateway_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteDhcpOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteDhcpOptions'
        params['Version'] = '2016-11-15'
        params[context + 'DhcpOptionsId'] = input[:dhcp_options_id].to_s unless input[:dhcp_options_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteEgressOnlyInternetGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteEgressOnlyInternetGateway'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'EgressOnlyInternetGatewayId'] = input[:egress_only_internet_gateway_id].to_s unless input[:egress_only_internet_gateway_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteFleets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteFleets'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FleetIdSet.build(input[:fleet_ids], params, context: context + 'FleetId') unless input[:fleet_ids].nil?
        params[context + 'TerminateInstances'] = input[:terminate_instances].to_s unless input[:terminate_instances].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteFlowLogs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteFlowLogs'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FlowLogIdList.build(input[:flow_log_ids], params, context: context + 'FlowLogId') unless input[:flow_log_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteFpgaImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteFpgaImage'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'FpgaImageId'] = input[:fpga_image_id].to_s unless input[:fpga_image_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteInstanceConnectEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteInstanceConnectEndpoint'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceConnectEndpointId'] = input[:instance_connect_endpoint_id].to_s unless input[:instance_connect_endpoint_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteInstanceEventWindow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteInstanceEventWindow'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ForceDelete'] = input[:force_delete].to_s unless input[:force_delete].nil?
        params[context + 'InstanceEventWindowId'] = input[:instance_event_window_id].to_s unless input[:instance_event_window_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteInternetGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteInternetGateway'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InternetGatewayId'] = input[:internet_gateway_id].to_s unless input[:internet_gateway_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteIpam
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteIpam'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamId'] = input[:ipam_id].to_s unless input[:ipam_id].nil?
        params[context + 'Cascade'] = input[:cascade].to_s unless input[:cascade].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteIpamPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteIpamPool'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamPoolId'] = input[:ipam_pool_id].to_s unless input[:ipam_pool_id].nil?
        params[context + 'Cascade'] = input[:cascade].to_s unless input[:cascade].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteIpamResourceDiscovery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteIpamResourceDiscovery'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamResourceDiscoveryId'] = input[:ipam_resource_discovery_id].to_s unless input[:ipam_resource_discovery_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteIpamScope
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteIpamScope'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamScopeId'] = input[:ipam_scope_id].to_s unless input[:ipam_scope_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteKeyPair
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteKeyPair'
        params['Version'] = '2016-11-15'
        params[context + 'KeyName'] = input[:key_name].to_s unless input[:key_name].nil?
        params[context + 'KeyPairId'] = input[:key_pair_id].to_s unless input[:key_pair_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteLaunchTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteLaunchTemplate'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'LaunchTemplateId'] = input[:launch_template_id].to_s unless input[:launch_template_id].nil?
        params[context + 'LaunchTemplateName'] = input[:launch_template_name].to_s unless input[:launch_template_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteLaunchTemplateVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteLaunchTemplateVersions'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'LaunchTemplateId'] = input[:launch_template_id].to_s unless input[:launch_template_id].nil?
        params[context + 'LaunchTemplateName'] = input[:launch_template_name].to_s unless input[:launch_template_name].nil?
        VersionStringList.build(input[:versions], params, context: context + 'LaunchTemplateVersion') unless input[:versions].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteLocalGatewayRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteLocalGatewayRoute'
        params['Version'] = '2016-11-15'
        params[context + 'DestinationCidrBlock'] = input[:destination_cidr_block].to_s unless input[:destination_cidr_block].nil?
        params[context + 'LocalGatewayRouteTableId'] = input[:local_gateway_route_table_id].to_s unless input[:local_gateway_route_table_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'DestinationPrefixListId'] = input[:destination_prefix_list_id].to_s unless input[:destination_prefix_list_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteLocalGatewayRouteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteLocalGatewayRouteTable'
        params['Version'] = '2016-11-15'
        params[context + 'LocalGatewayRouteTableId'] = input[:local_gateway_route_table_id].to_s unless input[:local_gateway_route_table_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation'
        params['Version'] = '2016-11-15'
        params[context + 'LocalGatewayRouteTableVirtualInterfaceGroupAssociationId'] = input[:local_gateway_route_table_virtual_interface_group_association_id].to_s unless input[:local_gateway_route_table_virtual_interface_group_association_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteLocalGatewayRouteTableVpcAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteLocalGatewayRouteTableVpcAssociation'
        params['Version'] = '2016-11-15'
        params[context + 'LocalGatewayRouteTableVpcAssociationId'] = input[:local_gateway_route_table_vpc_association_id].to_s unless input[:local_gateway_route_table_vpc_association_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteManagedPrefixList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteManagedPrefixList'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'PrefixListId'] = input[:prefix_list_id].to_s unless input[:prefix_list_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteNatGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteNatGateway'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NatGatewayId'] = input[:nat_gateway_id].to_s unless input[:nat_gateway_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteNetworkAcl
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteNetworkAcl'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NetworkAclId'] = input[:network_acl_id].to_s unless input[:network_acl_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteNetworkAclEntry
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteNetworkAclEntry'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Egress'] = input[:egress].to_s unless input[:egress].nil?
        params[context + 'NetworkAclId'] = input[:network_acl_id].to_s unless input[:network_acl_id].nil?
        params[context + 'RuleNumber'] = input[:rule_number].to_s unless input[:rule_number].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteNetworkInsightsAccessScope
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteNetworkInsightsAccessScope'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NetworkInsightsAccessScopeId'] = input[:network_insights_access_scope_id].to_s unless input[:network_insights_access_scope_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteNetworkInsightsAccessScopeAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteNetworkInsightsAccessScopeAnalysis'
        params['Version'] = '2016-11-15'
        params[context + 'NetworkInsightsAccessScopeAnalysisId'] = input[:network_insights_access_scope_analysis_id].to_s unless input[:network_insights_access_scope_analysis_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteNetworkInsightsAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteNetworkInsightsAnalysis'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NetworkInsightsAnalysisId'] = input[:network_insights_analysis_id].to_s unless input[:network_insights_analysis_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteNetworkInsightsPath
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteNetworkInsightsPath'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NetworkInsightsPathId'] = input[:network_insights_path_id].to_s unless input[:network_insights_path_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteNetworkInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteNetworkInterface'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteNetworkInterfacePermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteNetworkInterfacePermission'
        params['Version'] = '2016-11-15'
        params[context + 'NetworkInterfacePermissionId'] = input[:network_interface_permission_id].to_s unless input[:network_interface_permission_id].nil?
        params[context + 'Force'] = input[:force].to_s unless input[:force].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeletePlacementGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeletePlacementGroup'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeletePublicIpv4Pool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeletePublicIpv4Pool'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'PoolId'] = input[:pool_id].to_s unless input[:pool_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteQueuedReservedInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteQueuedReservedInstances'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        DeleteQueuedReservedInstancesIdList.build(input[:reserved_instances_ids], params, context: context + 'ReservedInstancesId') unless input[:reserved_instances_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteQueuedReservedInstancesIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class DeleteRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteRoute'
        params['Version'] = '2016-11-15'
        params[context + 'DestinationCidrBlock'] = input[:destination_cidr_block].to_s unless input[:destination_cidr_block].nil?
        params[context + 'DestinationIpv6CidrBlock'] = input[:destination_ipv6_cidr_block].to_s unless input[:destination_ipv6_cidr_block].nil?
        params[context + 'DestinationPrefixListId'] = input[:destination_prefix_list_id].to_s unless input[:destination_prefix_list_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'RouteTableId'] = input[:route_table_id].to_s unless input[:route_table_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteRouteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteRouteTable'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'RouteTableId'] = input[:route_table_id].to_s unless input[:route_table_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteSecurityGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteSecurityGroup'
        params['Version'] = '2016-11-15'
        params[context + 'GroupId'] = input[:group_id].to_s unless input[:group_id].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteSnapshot'
        params['Version'] = '2016-11-15'
        params[context + 'SnapshotId'] = input[:snapshot_id].to_s unless input[:snapshot_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteSpotDatafeedSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteSpotDatafeedSubscription'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteSubnet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteSubnet'
        params['Version'] = '2016-11-15'
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteSubnetCidrReservation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteSubnetCidrReservation'
        params['Version'] = '2016-11-15'
        params[context + 'SubnetCidrReservationId'] = input[:subnet_cidr_reservation_id].to_s unless input[:subnet_cidr_reservation_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTags'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        ResourceIdList.build(input[:resources], params, context: context + 'resourceId') unless input[:resources].nil?
        TagList.build(input[:tags], params, context: context + 'tag') unless input[:tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteTrafficMirrorFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTrafficMirrorFilter'
        params['Version'] = '2016-11-15'
        params[context + 'TrafficMirrorFilterId'] = input[:traffic_mirror_filter_id].to_s unless input[:traffic_mirror_filter_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteTrafficMirrorFilterRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTrafficMirrorFilterRule'
        params['Version'] = '2016-11-15'
        params[context + 'TrafficMirrorFilterRuleId'] = input[:traffic_mirror_filter_rule_id].to_s unless input[:traffic_mirror_filter_rule_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteTrafficMirrorSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTrafficMirrorSession'
        params['Version'] = '2016-11-15'
        params[context + 'TrafficMirrorSessionId'] = input[:traffic_mirror_session_id].to_s unless input[:traffic_mirror_session_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteTrafficMirrorTarget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTrafficMirrorTarget'
        params['Version'] = '2016-11-15'
        params[context + 'TrafficMirrorTargetId'] = input[:traffic_mirror_target_id].to_s unless input[:traffic_mirror_target_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteTransitGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTransitGateway'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayId'] = input[:transit_gateway_id].to_s unless input[:transit_gateway_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteTransitGatewayConnect
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTransitGatewayConnect'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteTransitGatewayConnectPeer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTransitGatewayConnectPeer'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayConnectPeerId'] = input[:transit_gateway_connect_peer_id].to_s unless input[:transit_gateway_connect_peer_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteTransitGatewayMulticastDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTransitGatewayMulticastDomain'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayMulticastDomainId'] = input[:transit_gateway_multicast_domain_id].to_s unless input[:transit_gateway_multicast_domain_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteTransitGatewayPeeringAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTransitGatewayPeeringAttachment'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteTransitGatewayPolicyTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTransitGatewayPolicyTable'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayPolicyTableId'] = input[:transit_gateway_policy_table_id].to_s unless input[:transit_gateway_policy_table_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteTransitGatewayPrefixListReference
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTransitGatewayPrefixListReference'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayRouteTableId'] = input[:transit_gateway_route_table_id].to_s unless input[:transit_gateway_route_table_id].nil?
        params[context + 'PrefixListId'] = input[:prefix_list_id].to_s unless input[:prefix_list_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteTransitGatewayRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTransitGatewayRoute'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayRouteTableId'] = input[:transit_gateway_route_table_id].to_s unless input[:transit_gateway_route_table_id].nil?
        params[context + 'DestinationCidrBlock'] = input[:destination_cidr_block].to_s unless input[:destination_cidr_block].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteTransitGatewayRouteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTransitGatewayRouteTable'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayRouteTableId'] = input[:transit_gateway_route_table_id].to_s unless input[:transit_gateway_route_table_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteTransitGatewayRouteTableAnnouncement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTransitGatewayRouteTableAnnouncement'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayRouteTableAnnouncementId'] = input[:transit_gateway_route_table_announcement_id].to_s unless input[:transit_gateway_route_table_announcement_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteTransitGatewayVpcAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTransitGatewayVpcAttachment'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteVerifiedAccessEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteVerifiedAccessEndpoint'
        params['Version'] = '2016-11-15'
        params[context + 'VerifiedAccessEndpointId'] = input[:verified_access_endpoint_id].to_s unless input[:verified_access_endpoint_id].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteVerifiedAccessGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteVerifiedAccessGroup'
        params['Version'] = '2016-11-15'
        params[context + 'VerifiedAccessGroupId'] = input[:verified_access_group_id].to_s unless input[:verified_access_group_id].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteVerifiedAccessInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteVerifiedAccessInstance'
        params['Version'] = '2016-11-15'
        params[context + 'VerifiedAccessInstanceId'] = input[:verified_access_instance_id].to_s unless input[:verified_access_instance_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteVerifiedAccessTrustProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteVerifiedAccessTrustProvider'
        params['Version'] = '2016-11-15'
        params[context + 'VerifiedAccessTrustProviderId'] = input[:verified_access_trust_provider_id].to_s unless input[:verified_access_trust_provider_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteVolume'
        params['Version'] = '2016-11-15'
        params[context + 'VolumeId'] = input[:volume_id].to_s unless input[:volume_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteVpc
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteVpc'
        params['Version'] = '2016-11-15'
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteVpcEndpointConnectionNotifications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteVpcEndpointConnectionNotifications'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        ConnectionNotificationIdsList.build(input[:connection_notification_ids], params, context: context + 'ConnectionNotificationId') unless input[:connection_notification_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteVpcEndpointServiceConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteVpcEndpointServiceConfigurations'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        VpcEndpointServiceIdList.build(input[:service_ids], params, context: context + 'ServiceId') unless input[:service_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteVpcEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteVpcEndpoints'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        VpcEndpointIdList.build(input[:vpc_endpoint_ids], params, context: context + 'VpcEndpointId') unless input[:vpc_endpoint_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteVpcPeeringConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteVpcPeeringConnection'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'VpcPeeringConnectionId'] = input[:vpc_peering_connection_id].to_s unless input[:vpc_peering_connection_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteVpnConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteVpnConnection'
        params['Version'] = '2016-11-15'
        params[context + 'VpnConnectionId'] = input[:vpn_connection_id].to_s unless input[:vpn_connection_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteVpnConnectionRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteVpnConnectionRoute'
        params['Version'] = '2016-11-15'
        params[context + 'DestinationCidrBlock'] = input[:destination_cidr_block].to_s unless input[:destination_cidr_block].nil?
        params[context + 'VpnConnectionId'] = input[:vpn_connection_id].to_s unless input[:vpn_connection_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteVpnGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteVpnGateway'
        params['Version'] = '2016-11-15'
        params[context + 'VpnGatewayId'] = input[:vpn_gateway_id].to_s unless input[:vpn_gateway_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeprovisionByoipCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeprovisionByoipCidr'
        params['Version'] = '2016-11-15'
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeprovisionIpamByoasn
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeprovisionIpamByoasn'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamId'] = input[:ipam_id].to_s unless input[:ipam_id].nil?
        params[context + 'Asn'] = input[:asn].to_s unless input[:asn].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeprovisionIpamPoolCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeprovisionIpamPoolCidr'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamPoolId'] = input[:ipam_pool_id].to_s unless input[:ipam_pool_id].nil?
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeprovisionPublicIpv4PoolCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeprovisionPublicIpv4PoolCidr'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'PoolId'] = input[:pool_id].to_s unless input[:pool_id].nil?
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeregisterImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeregisterImage'
        params['Version'] = '2016-11-15'
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeregisterInstanceEventNotificationAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeregisterInstanceEventNotificationAttributes'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        DeregisterInstanceTagAttributeRequest.build(input[:instance_tag_attribute], params, context: context + 'InstanceTagAttribute' + '.') unless input[:instance_tag_attribute].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeregisterInstanceTagAttributeRequest
      def self.build(input, params, context: nil)
        params[context + 'IncludeAllTagsOfInstance'] = input[:include_all_tags_of_instance].to_s unless input[:include_all_tags_of_instance].nil?
        InstanceTagKeySet.build(input[:instance_tag_keys], params, context: context + 'InstanceTagKey') unless input[:instance_tag_keys].nil?
      end
    end

    class DeregisterTransitGatewayMulticastGroupMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeregisterTransitGatewayMulticastGroupMembers'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayMulticastDomainId'] = input[:transit_gateway_multicast_domain_id].to_s unless input[:transit_gateway_multicast_domain_id].nil?
        params[context + 'GroupIpAddress'] = input[:group_ip_address].to_s unless input[:group_ip_address].nil?
        TransitGatewayNetworkInterfaceIdList.build(input[:network_interface_ids], params, context: context + 'NetworkInterfaceIds') unless input[:network_interface_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeregisterTransitGatewayMulticastGroupSources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeregisterTransitGatewayMulticastGroupSources'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayMulticastDomainId'] = input[:transit_gateway_multicast_domain_id].to_s unless input[:transit_gateway_multicast_domain_id].nil?
        params[context + 'GroupIpAddress'] = input[:group_ip_address].to_s unless input[:group_ip_address].nil?
        TransitGatewayNetworkInterfaceIdList.build(input[:network_interface_ids], params, context: context + 'NetworkInterfaceIds') unless input[:network_interface_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeAccountAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAccountAttributes'
        params['Version'] = '2016-11-15'
        AccountAttributeNameStringList.build(input[:attribute_names], params, context: context + 'attributeName') unless input[:attribute_names].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeAddressTransfers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAddressTransfers'
        params['Version'] = '2016-11-15'
        AllocationIdList.build(input[:allocation_ids], params, context: context + 'AllocationId') unless input[:allocation_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeAddresses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAddresses'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        PublicIpStringList.build(input[:public_ips], params, context: context + 'PublicIp') unless input[:public_ips].nil?
        AllocationIdList.build(input[:allocation_ids], params, context: context + 'AllocationId') unless input[:allocation_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeAddressesAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAddressesAttribute'
        params['Version'] = '2016-11-15'
        AllocationIds.build(input[:allocation_ids], params, context: context + 'AllocationId') unless input[:allocation_ids].nil?
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeAggregateIdFormat
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAggregateIdFormat'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeAvailabilityZones
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAvailabilityZones'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        ZoneNameStringList.build(input[:zone_names], params, context: context + 'ZoneName') unless input[:zone_names].nil?
        ZoneIdStringList.build(input[:zone_ids], params, context: context + 'ZoneId') unless input[:zone_ids].nil?
        params[context + 'AllAvailabilityZones'] = input[:all_availability_zones].to_s unless input[:all_availability_zones].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeAwsNetworkPerformanceMetricSubscriptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAwsNetworkPerformanceMetricSubscriptions'
        params['Version'] = '2016-11-15'
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeBundleTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeBundleTasks'
        params['Version'] = '2016-11-15'
        BundleIdStringList.build(input[:bundle_ids], params, context: context + 'BundleId') unless input[:bundle_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeByoipCidrs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeByoipCidrs'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeCapacityBlockOfferings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeCapacityBlockOfferings'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'InstanceCount'] = input[:instance_count].to_s unless input[:instance_count].nil?
        params[context + 'StartDateRange'] = Hearth::TimeHelper.to_date_time(input[:start_date_range]) unless input[:start_date_range].nil?
        params[context + 'EndDateRange'] = Hearth::TimeHelper.to_date_time(input[:end_date_range]) unless input[:end_date_range].nil?
        params[context + 'CapacityDurationHours'] = input[:capacity_duration_hours].to_s unless input[:capacity_duration_hours].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeCapacityReservationFleets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeCapacityReservationFleets'
        params['Version'] = '2016-11-15'
        CapacityReservationFleetIdSet.build(input[:capacity_reservation_fleet_ids], params, context: context + 'CapacityReservationFleetId') unless input[:capacity_reservation_fleet_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeCapacityReservations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeCapacityReservations'
        params['Version'] = '2016-11-15'
        CapacityReservationIdSet.build(input[:capacity_reservation_ids], params, context: context + 'CapacityReservationId') unless input[:capacity_reservation_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeCarrierGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeCarrierGateways'
        params['Version'] = '2016-11-15'
        CarrierGatewayIdSet.build(input[:carrier_gateway_ids], params, context: context + 'CarrierGatewayId') unless input[:carrier_gateway_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeClassicLinkInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeClassicLinkInstances'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeClientVpnAuthorizationRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeClientVpnAuthorizationRules'
        params['Version'] = '2016-11-15'
        params[context + 'ClientVpnEndpointId'] = input[:client_vpn_endpoint_id].to_s unless input[:client_vpn_endpoint_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeClientVpnConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeClientVpnConnections'
        params['Version'] = '2016-11-15'
        params[context + 'ClientVpnEndpointId'] = input[:client_vpn_endpoint_id].to_s unless input[:client_vpn_endpoint_id].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeClientVpnEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeClientVpnEndpoints'
        params['Version'] = '2016-11-15'
        ClientVpnEndpointIdList.build(input[:client_vpn_endpoint_ids], params, context: context + 'ClientVpnEndpointId') unless input[:client_vpn_endpoint_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeClientVpnRoutes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeClientVpnRoutes'
        params['Version'] = '2016-11-15'
        params[context + 'ClientVpnEndpointId'] = input[:client_vpn_endpoint_id].to_s unless input[:client_vpn_endpoint_id].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeClientVpnTargetNetworks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeClientVpnTargetNetworks'
        params['Version'] = '2016-11-15'
        params[context + 'ClientVpnEndpointId'] = input[:client_vpn_endpoint_id].to_s unless input[:client_vpn_endpoint_id].nil?
        ValueStringList.build(input[:association_ids], params, context: context + 'AssociationIds') unless input[:association_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeCoipPools
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeCoipPools'
        params['Version'] = '2016-11-15'
        CoipPoolIdSet.build(input[:pool_ids], params, context: context + 'PoolId') unless input[:pool_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeConversionTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeConversionTasks'
        params['Version'] = '2016-11-15'
        ConversionIdStringList.build(input[:conversion_task_ids], params, context: context + 'conversionTaskId') unless input[:conversion_task_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeCustomerGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeCustomerGateways'
        params['Version'] = '2016-11-15'
        CustomerGatewayIdStringList.build(input[:customer_gateway_ids], params, context: context + 'CustomerGatewayId') unless input[:customer_gateway_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeDhcpOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDhcpOptions'
        params['Version'] = '2016-11-15'
        DhcpOptionsIdStringList.build(input[:dhcp_options_ids], params, context: context + 'DhcpOptionsId') unless input[:dhcp_options_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeEgressOnlyInternetGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeEgressOnlyInternetGateways'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        EgressOnlyInternetGatewayIdList.build(input[:egress_only_internet_gateway_ids], params, context: context + 'EgressOnlyInternetGatewayId') unless input[:egress_only_internet_gateway_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeElasticGpus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeElasticGpus'
        params['Version'] = '2016-11-15'
        ElasticGpuIdSet.build(input[:elastic_gpu_ids], params, context: context + 'ElasticGpuId') unless input[:elastic_gpu_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeExportImageTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeExportImageTasks'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        ExportImageTaskIdList.build(input[:export_image_task_ids], params, context: context + 'ExportImageTaskId') unless input[:export_image_task_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeExportTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeExportTasks'
        params['Version'] = '2016-11-15'
        ExportTaskIdStringList.build(input[:export_task_ids], params, context: context + 'exportTaskId') unless input[:export_task_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeFastLaunchImages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeFastLaunchImages'
        params['Version'] = '2016-11-15'
        FastLaunchImageIdList.build(input[:image_ids], params, context: context + 'ImageId') unless input[:image_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeFastSnapshotRestores
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeFastSnapshotRestores'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeFleetHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeFleetHistory'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'EventType'] = input[:event_type].to_s unless input[:event_type].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'FleetId'] = input[:fleet_id].to_s unless input[:fleet_id].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeFleetInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeFleetInstances'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'FleetId'] = input[:fleet_id].to_s unless input[:fleet_id].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeFleets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeFleets'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        FleetIdSet.build(input[:fleet_ids], params, context: context + 'FleetId') unless input[:fleet_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeFlowLogs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeFlowLogs'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filter], params, context: context + 'Filter') unless input[:filter].nil?
        FlowLogIdList.build(input[:flow_log_ids], params, context: context + 'FlowLogId') unless input[:flow_log_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeFpgaImageAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeFpgaImageAttribute'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'FpgaImageId'] = input[:fpga_image_id].to_s unless input[:fpga_image_id].nil?
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeFpgaImages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeFpgaImages'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FpgaImageIdList.build(input[:fpga_image_ids], params, context: context + 'FpgaImageId') unless input[:fpga_image_ids].nil?
        OwnerStringList.build(input[:owners], params, context: context + 'Owner') unless input[:owners].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeHostReservationOfferings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeHostReservationOfferings'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filter], params, context: context + 'Filter') unless input[:filter].nil?
        params[context + 'MaxDuration'] = input[:max_duration].to_s unless input[:max_duration].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'MinDuration'] = input[:min_duration].to_s unless input[:min_duration].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'OfferingId'] = input[:offering_id].to_s unless input[:offering_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeHostReservations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeHostReservations'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filter], params, context: context + 'Filter') unless input[:filter].nil?
        HostReservationIdSet.build(input[:host_reservation_id_set], params, context: context + 'HostReservationIdSet') unless input[:host_reservation_id_set].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeHosts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeHosts'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filter], params, context: context + 'filter') unless input[:filter].nil?
        RequestHostIdList.build(input[:host_ids], params, context: context + 'hostId') unless input[:host_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeIamInstanceProfileAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeIamInstanceProfileAssociations'
        params['Version'] = '2016-11-15'
        AssociationIdList.build(input[:association_ids], params, context: context + 'AssociationId') unless input[:association_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeIdFormat
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeIdFormat'
        params['Version'] = '2016-11-15'
        params[context + 'Resource'] = input[:resource].to_s unless input[:resource].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeIdentityIdFormat
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeIdentityIdFormat'
        params['Version'] = '2016-11-15'
        params[context + 'PrincipalArn'] = input[:principal_arn].to_s unless input[:principal_arn].nil?
        params[context + 'Resource'] = input[:resource].to_s unless input[:resource].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeImageAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeImageAttribute'
        params['Version'] = '2016-11-15'
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeImages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeImages'
        params['Version'] = '2016-11-15'
        ExecutableByStringList.build(input[:executable_users], params, context: context + 'ExecutableBy') unless input[:executable_users].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        ImageIdStringList.build(input[:image_ids], params, context: context + 'ImageId') unless input[:image_ids].nil?
        OwnerStringList.build(input[:owners], params, context: context + 'Owner') unless input[:owners].nil?
        params[context + 'IncludeDeprecated'] = input[:include_deprecated].to_s unless input[:include_deprecated].nil?
        params[context + 'IncludeDisabled'] = input[:include_disabled].to_s unless input[:include_disabled].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeImportImageTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeImportImageTasks'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filters') unless input[:filters].nil?
        ImportTaskIdList.build(input[:import_task_ids], params, context: context + 'ImportTaskId') unless input[:import_task_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeImportSnapshotTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeImportSnapshotTasks'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filters') unless input[:filters].nil?
        ImportSnapshotTaskIdList.build(input[:import_task_ids], params, context: context + 'ImportTaskId') unless input[:import_task_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeInstanceAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeInstanceAttribute'
        params['Version'] = '2016-11-15'
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeInstanceConnectEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeInstanceConnectEndpoints'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        ValueStringList.build(input[:instance_connect_endpoint_ids], params, context: context + 'InstanceConnectEndpointId') unless input[:instance_connect_endpoint_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeInstanceCreditSpecifications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeInstanceCreditSpecifications'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeInstanceEventNotificationAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeInstanceEventNotificationAttributes'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeInstanceEventWindows
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeInstanceEventWindows'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        InstanceEventWindowIdSet.build(input[:instance_event_window_ids], params, context: context + 'InstanceEventWindowId') unless input[:instance_event_window_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeInstanceStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeInstanceStatus'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IncludeAllInstances'] = input[:include_all_instances].to_s unless input[:include_all_instances].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeInstanceTopology
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeInstanceTopology'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        DescribeInstanceTopologyInstanceIdSet.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        DescribeInstanceTopologyGroupNameSet.build(input[:group_names], params, context: context + 'GroupName') unless input[:group_names].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeInstanceTopologyGroupNameSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class DescribeInstanceTopologyInstanceIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class DescribeInstanceTypeOfferings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeInstanceTypeOfferings'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'LocationType'] = input[:location_type].to_s unless input[:location_type].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeInstanceTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeInstanceTypes'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        RequestInstanceTypeList.build(input[:instance_types], params, context: context + 'InstanceType') unless input[:instance_types].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeInstances'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeInternetGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeInternetGateways'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        InternetGatewayIdList.build(input[:internet_gateway_ids], params, context: context + 'internetGatewayId') unless input[:internet_gateway_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeIpamByoasn
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeIpamByoasn'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeIpamPools
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeIpamPools'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        ValueStringList.build(input[:ipam_pool_ids], params, context: context + 'IpamPoolId') unless input[:ipam_pool_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeIpamResourceDiscoveries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeIpamResourceDiscoveries'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        ValueStringList.build(input[:ipam_resource_discovery_ids], params, context: context + 'IpamResourceDiscoveryId') unless input[:ipam_resource_discovery_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeIpamResourceDiscoveryAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeIpamResourceDiscoveryAssociations'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        ValueStringList.build(input[:ipam_resource_discovery_association_ids], params, context: context + 'IpamResourceDiscoveryAssociationId') unless input[:ipam_resource_discovery_association_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeIpamScopes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeIpamScopes'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        ValueStringList.build(input[:ipam_scope_ids], params, context: context + 'IpamScopeId') unless input[:ipam_scope_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeIpams
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeIpams'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        ValueStringList.build(input[:ipam_ids], params, context: context + 'IpamId') unless input[:ipam_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeIpv6Pools
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeIpv6Pools'
        params['Version'] = '2016-11-15'
        Ipv6PoolIdList.build(input[:pool_ids], params, context: context + 'PoolId') unless input[:pool_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeKeyPairs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeKeyPairs'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        KeyNameStringList.build(input[:key_names], params, context: context + 'KeyName') unless input[:key_names].nil?
        KeyPairIdStringList.build(input[:key_pair_ids], params, context: context + 'KeyPairId') unless input[:key_pair_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IncludePublicKey'] = input[:include_public_key].to_s unless input[:include_public_key].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeLaunchTemplateVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLaunchTemplateVersions'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'LaunchTemplateId'] = input[:launch_template_id].to_s unless input[:launch_template_id].nil?
        params[context + 'LaunchTemplateName'] = input[:launch_template_name].to_s unless input[:launch_template_name].nil?
        VersionStringList.build(input[:versions], params, context: context + 'LaunchTemplateVersion') unless input[:versions].nil?
        params[context + 'MinVersion'] = input[:min_version].to_s unless input[:min_version].nil?
        params[context + 'MaxVersion'] = input[:max_version].to_s unless input[:max_version].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'ResolveAlias'] = input[:resolve_alias].to_s unless input[:resolve_alias].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeLaunchTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLaunchTemplates'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        LaunchTemplateIdStringList.build(input[:launch_template_ids], params, context: context + 'LaunchTemplateId') unless input[:launch_template_ids].nil?
        LaunchTemplateNameStringList.build(input[:launch_template_names], params, context: context + 'LaunchTemplateName') unless input[:launch_template_names].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations'
        params['Version'] = '2016-11-15'
        LocalGatewayRouteTableVirtualInterfaceGroupAssociationIdSet.build(input[:local_gateway_route_table_virtual_interface_group_association_ids], params, context: context + 'LocalGatewayRouteTableVirtualInterfaceGroupAssociationId') unless input[:local_gateway_route_table_virtual_interface_group_association_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeLocalGatewayRouteTableVpcAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLocalGatewayRouteTableVpcAssociations'
        params['Version'] = '2016-11-15'
        LocalGatewayRouteTableVpcAssociationIdSet.build(input[:local_gateway_route_table_vpc_association_ids], params, context: context + 'LocalGatewayRouteTableVpcAssociationId') unless input[:local_gateway_route_table_vpc_association_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeLocalGatewayRouteTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLocalGatewayRouteTables'
        params['Version'] = '2016-11-15'
        LocalGatewayRouteTableIdSet.build(input[:local_gateway_route_table_ids], params, context: context + 'LocalGatewayRouteTableId') unless input[:local_gateway_route_table_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeLocalGatewayVirtualInterfaceGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLocalGatewayVirtualInterfaceGroups'
        params['Version'] = '2016-11-15'
        LocalGatewayVirtualInterfaceGroupIdSet.build(input[:local_gateway_virtual_interface_group_ids], params, context: context + 'LocalGatewayVirtualInterfaceGroupId') unless input[:local_gateway_virtual_interface_group_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeLocalGatewayVirtualInterfaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLocalGatewayVirtualInterfaces'
        params['Version'] = '2016-11-15'
        LocalGatewayVirtualInterfaceIdSet.build(input[:local_gateway_virtual_interface_ids], params, context: context + 'LocalGatewayVirtualInterfaceId') unless input[:local_gateway_virtual_interface_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeLocalGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLocalGateways'
        params['Version'] = '2016-11-15'
        LocalGatewayIdSet.build(input[:local_gateway_ids], params, context: context + 'LocalGatewayId') unless input[:local_gateway_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeLockedSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLockedSnapshots'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        SnapshotIdStringList.build(input[:snapshot_ids], params, context: context + 'SnapshotId') unless input[:snapshot_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeManagedPrefixLists
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeManagedPrefixLists'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        ValueStringList.build(input[:prefix_list_ids], params, context: context + 'PrefixListId') unless input[:prefix_list_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeMovingAddresses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeMovingAddresses'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        ValueStringList.build(input[:public_ips], params, context: context + 'publicIp') unless input[:public_ips].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeNatGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeNatGateways'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filter], params, context: context + 'Filter') unless input[:filter].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        NatGatewayIdStringList.build(input[:nat_gateway_ids], params, context: context + 'NatGatewayId') unless input[:nat_gateway_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeNetworkAcls
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeNetworkAcls'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        NetworkAclIdStringList.build(input[:network_acl_ids], params, context: context + 'NetworkAclId') unless input[:network_acl_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeNetworkInsightsAccessScopeAnalyses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeNetworkInsightsAccessScopeAnalyses'
        params['Version'] = '2016-11-15'
        NetworkInsightsAccessScopeAnalysisIdList.build(input[:network_insights_access_scope_analysis_ids], params, context: context + 'NetworkInsightsAccessScopeAnalysisId') unless input[:network_insights_access_scope_analysis_ids].nil?
        params[context + 'NetworkInsightsAccessScopeId'] = input[:network_insights_access_scope_id].to_s unless input[:network_insights_access_scope_id].nil?
        params[context + 'AnalysisStartTimeBegin'] = Hearth::TimeHelper.to_date_time(input[:analysis_start_time_begin]) unless input[:analysis_start_time_begin].nil?
        params[context + 'AnalysisStartTimeEnd'] = Hearth::TimeHelper.to_date_time(input[:analysis_start_time_end]) unless input[:analysis_start_time_end].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeNetworkInsightsAccessScopes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeNetworkInsightsAccessScopes'
        params['Version'] = '2016-11-15'
        NetworkInsightsAccessScopeIdList.build(input[:network_insights_access_scope_ids], params, context: context + 'NetworkInsightsAccessScopeId') unless input[:network_insights_access_scope_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeNetworkInsightsAnalyses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeNetworkInsightsAnalyses'
        params['Version'] = '2016-11-15'
        NetworkInsightsAnalysisIdList.build(input[:network_insights_analysis_ids], params, context: context + 'NetworkInsightsAnalysisId') unless input[:network_insights_analysis_ids].nil?
        params[context + 'NetworkInsightsPathId'] = input[:network_insights_path_id].to_s unless input[:network_insights_path_id].nil?
        params[context + 'AnalysisStartTime'] = Hearth::TimeHelper.to_date_time(input[:analysis_start_time]) unless input[:analysis_start_time].nil?
        params[context + 'AnalysisEndTime'] = Hearth::TimeHelper.to_date_time(input[:analysis_end_time]) unless input[:analysis_end_time].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeNetworkInsightsPaths
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeNetworkInsightsPaths'
        params['Version'] = '2016-11-15'
        NetworkInsightsPathIdList.build(input[:network_insights_path_ids], params, context: context + 'NetworkInsightsPathId') unless input[:network_insights_path_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeNetworkInterfaceAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeNetworkInterfaceAttribute'
        params['Version'] = '2016-11-15'
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeNetworkInterfacePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeNetworkInterfacePermissions'
        params['Version'] = '2016-11-15'
        NetworkInterfacePermissionIdList.build(input[:network_interface_permission_ids], params, context: context + 'NetworkInterfacePermissionId') unless input[:network_interface_permission_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeNetworkInterfaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeNetworkInterfaces'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        NetworkInterfaceIdList.build(input[:network_interface_ids], params, context: context + 'NetworkInterfaceId') unless input[:network_interface_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribePlacementGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribePlacementGroups'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        PlacementGroupStringList.build(input[:group_names], params, context: context + 'groupName') unless input[:group_names].nil?
        PlacementGroupIdStringList.build(input[:group_ids], params, context: context + 'GroupId') unless input[:group_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribePrefixLists
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribePrefixLists'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        PrefixListResourceIdStringList.build(input[:prefix_list_ids], params, context: context + 'PrefixListId') unless input[:prefix_list_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribePrincipalIdFormat
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribePrincipalIdFormat'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        ResourceList.build(input[:resources], params, context: context + 'Resource') unless input[:resources].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribePublicIpv4Pools
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribePublicIpv4Pools'
        params['Version'] = '2016-11-15'
        PublicIpv4PoolIdStringList.build(input[:pool_ids], params, context: context + 'PoolId') unless input[:pool_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeRegions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeRegions'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        RegionNameStringList.build(input[:region_names], params, context: context + 'RegionName') unless input[:region_names].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'AllRegions'] = input[:all_regions].to_s unless input[:all_regions].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeReplaceRootVolumeTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeReplaceRootVolumeTasks'
        params['Version'] = '2016-11-15'
        ReplaceRootVolumeTaskIds.build(input[:replace_root_volume_task_ids], params, context: context + 'ReplaceRootVolumeTaskId') unless input[:replace_root_volume_task_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeReservedInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeReservedInstances'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'OfferingClass'] = input[:offering_class].to_s unless input[:offering_class].nil?
        ReservedInstancesIdStringList.build(input[:reserved_instances_ids], params, context: context + 'ReservedInstancesId') unless input[:reserved_instances_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'OfferingType'] = input[:offering_type].to_s unless input[:offering_type].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeReservedInstancesListings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeReservedInstancesListings'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'ReservedInstancesId'] = input[:reserved_instances_id].to_s unless input[:reserved_instances_id].nil?
        params[context + 'ReservedInstancesListingId'] = input[:reserved_instances_listing_id].to_s unless input[:reserved_instances_listing_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeReservedInstancesModifications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeReservedInstancesModifications'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        ReservedInstancesModificationIdStringList.build(input[:reserved_instances_modification_ids], params, context: context + 'ReservedInstancesModificationId') unless input[:reserved_instances_modification_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeReservedInstancesOfferings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeReservedInstancesOfferings'
        params['Version'] = '2016-11-15'
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'IncludeMarketplace'] = input[:include_marketplace].to_s unless input[:include_marketplace].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'MaxDuration'] = input[:max_duration].to_s unless input[:max_duration].nil?
        params[context + 'MaxInstanceCount'] = input[:max_instance_count].to_s unless input[:max_instance_count].nil?
        params[context + 'MinDuration'] = input[:min_duration].to_s unless input[:min_duration].nil?
        params[context + 'OfferingClass'] = input[:offering_class].to_s unless input[:offering_class].nil?
        params[context + 'ProductDescription'] = input[:product_description].to_s unless input[:product_description].nil?
        ReservedInstancesOfferingIdStringList.build(input[:reserved_instances_offering_ids], params, context: context + 'ReservedInstancesOfferingId') unless input[:reserved_instances_offering_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceTenancy'] = input[:instance_tenancy].to_s unless input[:instance_tenancy].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'OfferingType'] = input[:offering_type].to_s unless input[:offering_type].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeRouteTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeRouteTables'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        RouteTableIdStringList.build(input[:route_table_ids], params, context: context + 'RouteTableId') unless input[:route_table_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeScheduledInstanceAvailability
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeScheduledInstanceAvailability'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        SlotDateTimeRangeRequest.build(input[:first_slot_start_time_range], params, context: context + 'FirstSlotStartTimeRange' + '.') unless input[:first_slot_start_time_range].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'MaxSlotDurationInHours'] = input[:max_slot_duration_in_hours].to_s unless input[:max_slot_duration_in_hours].nil?
        params[context + 'MinSlotDurationInHours'] = input[:min_slot_duration_in_hours].to_s unless input[:min_slot_duration_in_hours].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        ScheduledInstanceRecurrenceRequest.build(input[:recurrence], params, context: context + 'Recurrence' + '.') unless input[:recurrence].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeScheduledInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeScheduledInstances'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        ScheduledInstanceIdRequestSet.build(input[:scheduled_instance_ids], params, context: context + 'ScheduledInstanceId') unless input[:scheduled_instance_ids].nil?
        SlotStartTimeRangeRequest.build(input[:slot_start_time_range], params, context: context + 'SlotStartTimeRange' + '.') unless input[:slot_start_time_range].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeSecurityGroupReferences
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSecurityGroupReferences'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        GroupIds.build(input[:group_id], params, context: context + 'GroupId') unless input[:group_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeSecurityGroupRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSecurityGroupRules'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        SecurityGroupRuleIdList.build(input[:security_group_rule_ids], params, context: context + 'SecurityGroupRuleId') unless input[:security_group_rule_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeSecurityGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSecurityGroups'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        GroupIdStringList.build(input[:group_ids], params, context: context + 'GroupId') unless input[:group_ids].nil?
        GroupNameStringList.build(input[:group_names], params, context: context + 'GroupName') unless input[:group_names].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeSnapshotAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSnapshotAttribute'
        params['Version'] = '2016-11-15'
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        params[context + 'SnapshotId'] = input[:snapshot_id].to_s unless input[:snapshot_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeSnapshotTierStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSnapshotTierStatus'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSnapshots'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        OwnerStringList.build(input[:owner_ids], params, context: context + 'Owner') unless input[:owner_ids].nil?
        RestorableByStringList.build(input[:restorable_by_user_ids], params, context: context + 'RestorableBy') unless input[:restorable_by_user_ids].nil?
        SnapshotIdStringList.build(input[:snapshot_ids], params, context: context + 'SnapshotId') unless input[:snapshot_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeSpotDatafeedSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSpotDatafeedSubscription'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeSpotFleetInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSpotFleetInstances'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'SpotFleetRequestId'] = input[:spot_fleet_request_id].to_s unless input[:spot_fleet_request_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeSpotFleetRequestHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSpotFleetRequestHistory'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'EventType'] = input[:event_type].to_s unless input[:event_type].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'SpotFleetRequestId'] = input[:spot_fleet_request_id].to_s unless input[:spot_fleet_request_id].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeSpotFleetRequests
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSpotFleetRequests'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        SpotFleetRequestIdList.build(input[:spot_fleet_request_ids], params, context: context + 'spotFleetRequestId') unless input[:spot_fleet_request_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeSpotInstanceRequests
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSpotInstanceRequests'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        SpotInstanceRequestIdList.build(input[:spot_instance_request_ids], params, context: context + 'SpotInstanceRequestId') unless input[:spot_instance_request_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeSpotPriceHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSpotPriceHistory'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        InstanceTypeList.build(input[:instance_types], params, context: context + 'InstanceType') unless input[:instance_types].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        ProductDescriptionList.build(input[:product_descriptions], params, context: context + 'ProductDescription') unless input[:product_descriptions].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeStaleSecurityGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeStaleSecurityGroups'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeStoreImageTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeStoreImageTasks'
        params['Version'] = '2016-11-15'
        ImageIdList.build(input[:image_ids], params, context: context + 'ImageId') unless input[:image_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeSubnets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSubnets'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        SubnetIdStringList.build(input[:subnet_ids], params, context: context + 'SubnetId') unless input[:subnet_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTags'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeTrafficMirrorFilters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTrafficMirrorFilters'
        params['Version'] = '2016-11-15'
        TrafficMirrorFilterIdList.build(input[:traffic_mirror_filter_ids], params, context: context + 'TrafficMirrorFilterId') unless input[:traffic_mirror_filter_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeTrafficMirrorSessions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTrafficMirrorSessions'
        params['Version'] = '2016-11-15'
        TrafficMirrorSessionIdList.build(input[:traffic_mirror_session_ids], params, context: context + 'TrafficMirrorSessionId') unless input[:traffic_mirror_session_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeTrafficMirrorTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTrafficMirrorTargets'
        params['Version'] = '2016-11-15'
        TrafficMirrorTargetIdList.build(input[:traffic_mirror_target_ids], params, context: context + 'TrafficMirrorTargetId') unless input[:traffic_mirror_target_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeTransitGatewayAttachments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTransitGatewayAttachments'
        params['Version'] = '2016-11-15'
        TransitGatewayAttachmentIdStringList.build(input[:transit_gateway_attachment_ids], params, context: context + 'TransitGatewayAttachmentIds') unless input[:transit_gateway_attachment_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeTransitGatewayConnectPeers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTransitGatewayConnectPeers'
        params['Version'] = '2016-11-15'
        TransitGatewayConnectPeerIdStringList.build(input[:transit_gateway_connect_peer_ids], params, context: context + 'TransitGatewayConnectPeerIds') unless input[:transit_gateway_connect_peer_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeTransitGatewayConnects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTransitGatewayConnects'
        params['Version'] = '2016-11-15'
        TransitGatewayAttachmentIdStringList.build(input[:transit_gateway_attachment_ids], params, context: context + 'TransitGatewayAttachmentIds') unless input[:transit_gateway_attachment_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeTransitGatewayMulticastDomains
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTransitGatewayMulticastDomains'
        params['Version'] = '2016-11-15'
        TransitGatewayMulticastDomainIdStringList.build(input[:transit_gateway_multicast_domain_ids], params, context: context + 'TransitGatewayMulticastDomainIds') unless input[:transit_gateway_multicast_domain_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeTransitGatewayPeeringAttachments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTransitGatewayPeeringAttachments'
        params['Version'] = '2016-11-15'
        TransitGatewayAttachmentIdStringList.build(input[:transit_gateway_attachment_ids], params, context: context + 'TransitGatewayAttachmentIds') unless input[:transit_gateway_attachment_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeTransitGatewayPolicyTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTransitGatewayPolicyTables'
        params['Version'] = '2016-11-15'
        TransitGatewayPolicyTableIdStringList.build(input[:transit_gateway_policy_table_ids], params, context: context + 'TransitGatewayPolicyTableIds') unless input[:transit_gateway_policy_table_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeTransitGatewayRouteTableAnnouncements
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTransitGatewayRouteTableAnnouncements'
        params['Version'] = '2016-11-15'
        TransitGatewayRouteTableAnnouncementIdStringList.build(input[:transit_gateway_route_table_announcement_ids], params, context: context + 'TransitGatewayRouteTableAnnouncementIds') unless input[:transit_gateway_route_table_announcement_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeTransitGatewayRouteTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTransitGatewayRouteTables'
        params['Version'] = '2016-11-15'
        TransitGatewayRouteTableIdStringList.build(input[:transit_gateway_route_table_ids], params, context: context + 'TransitGatewayRouteTableIds') unless input[:transit_gateway_route_table_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeTransitGatewayVpcAttachments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTransitGatewayVpcAttachments'
        params['Version'] = '2016-11-15'
        TransitGatewayAttachmentIdStringList.build(input[:transit_gateway_attachment_ids], params, context: context + 'TransitGatewayAttachmentIds') unless input[:transit_gateway_attachment_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeTransitGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTransitGateways'
        params['Version'] = '2016-11-15'
        TransitGatewayIdStringList.build(input[:transit_gateway_ids], params, context: context + 'TransitGatewayIds') unless input[:transit_gateway_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeTrunkInterfaceAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTrunkInterfaceAssociations'
        params['Version'] = '2016-11-15'
        TrunkInterfaceAssociationIdList.build(input[:association_ids], params, context: context + 'AssociationId') unless input[:association_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVerifiedAccessEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVerifiedAccessEndpoints'
        params['Version'] = '2016-11-15'
        VerifiedAccessEndpointIdList.build(input[:verified_access_endpoint_ids], params, context: context + 'VerifiedAccessEndpointId') unless input[:verified_access_endpoint_ids].nil?
        params[context + 'VerifiedAccessInstanceId'] = input[:verified_access_instance_id].to_s unless input[:verified_access_instance_id].nil?
        params[context + 'VerifiedAccessGroupId'] = input[:verified_access_group_id].to_s unless input[:verified_access_group_id].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVerifiedAccessGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVerifiedAccessGroups'
        params['Version'] = '2016-11-15'
        VerifiedAccessGroupIdList.build(input[:verified_access_group_ids], params, context: context + 'VerifiedAccessGroupId') unless input[:verified_access_group_ids].nil?
        params[context + 'VerifiedAccessInstanceId'] = input[:verified_access_instance_id].to_s unless input[:verified_access_instance_id].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVerifiedAccessInstanceLoggingConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVerifiedAccessInstanceLoggingConfigurations'
        params['Version'] = '2016-11-15'
        VerifiedAccessInstanceIdList.build(input[:verified_access_instance_ids], params, context: context + 'VerifiedAccessInstanceId') unless input[:verified_access_instance_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVerifiedAccessInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVerifiedAccessInstances'
        params['Version'] = '2016-11-15'
        VerifiedAccessInstanceIdList.build(input[:verified_access_instance_ids], params, context: context + 'VerifiedAccessInstanceId') unless input[:verified_access_instance_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVerifiedAccessTrustProviders
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVerifiedAccessTrustProviders'
        params['Version'] = '2016-11-15'
        VerifiedAccessTrustProviderIdList.build(input[:verified_access_trust_provider_ids], params, context: context + 'VerifiedAccessTrustProviderId') unless input[:verified_access_trust_provider_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVolumeAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVolumeAttribute'
        params['Version'] = '2016-11-15'
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        params[context + 'VolumeId'] = input[:volume_id].to_s unless input[:volume_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVolumeStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVolumeStatus'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        VolumeIdStringList.build(input[:volume_ids], params, context: context + 'VolumeId') unless input[:volume_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVolumes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVolumes'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        VolumeIdStringList.build(input[:volume_ids], params, context: context + 'VolumeId') unless input[:volume_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVolumesModifications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVolumesModifications'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        VolumeIdStringList.build(input[:volume_ids], params, context: context + 'VolumeId') unless input[:volume_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVpcAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVpcAttribute'
        params['Version'] = '2016-11-15'
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVpcClassicLink
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVpcClassicLink'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        VpcClassicLinkIdList.build(input[:vpc_ids], params, context: context + 'VpcId') unless input[:vpc_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVpcClassicLinkDnsSupport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVpcClassicLinkDnsSupport'
        params['Version'] = '2016-11-15'
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        VpcClassicLinkIdList.build(input[:vpc_ids], params, context: context + 'VpcIds') unless input[:vpc_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVpcEndpointConnectionNotifications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVpcEndpointConnectionNotifications'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ConnectionNotificationId'] = input[:connection_notification_id].to_s unless input[:connection_notification_id].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVpcEndpointConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVpcEndpointConnections'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVpcEndpointServiceConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVpcEndpointServiceConfigurations'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        VpcEndpointServiceIdList.build(input[:service_ids], params, context: context + 'ServiceId') unless input[:service_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVpcEndpointServicePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVpcEndpointServicePermissions'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ServiceId'] = input[:service_id].to_s unless input[:service_id].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVpcEndpointServices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVpcEndpointServices'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        ValueStringList.build(input[:service_names], params, context: context + 'ServiceName') unless input[:service_names].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVpcEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVpcEndpoints'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        VpcEndpointIdList.build(input[:vpc_endpoint_ids], params, context: context + 'VpcEndpointId') unless input[:vpc_endpoint_ids].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVpcPeeringConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVpcPeeringConnections'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        VpcPeeringConnectionIdList.build(input[:vpc_peering_connection_ids], params, context: context + 'VpcPeeringConnectionId') unless input[:vpc_peering_connection_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVpcs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVpcs'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        VpcIdStringList.build(input[:vpc_ids], params, context: context + 'VpcId') unless input[:vpc_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVpnConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVpnConnections'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        VpnConnectionIdStringList.build(input[:vpn_connection_ids], params, context: context + 'VpnConnectionId') unless input[:vpn_connection_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeVpnGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVpnGateways'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        VpnGatewayIdStringList.build(input[:vpn_gateway_ids], params, context: context + 'VpnGatewayId') unless input[:vpn_gateway_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DestinationOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'FileFormat'] = input[:file_format].to_s unless input[:file_format].nil?
        params[context + 'HiveCompatiblePartitions'] = input[:hive_compatible_partitions].to_s unless input[:hive_compatible_partitions].nil?
        params[context + 'PerHourPartition'] = input[:per_hour_partition].to_s unless input[:per_hour_partition].nil?
      end
    end

    class DetachClassicLinkVpc
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DetachClassicLinkVpc'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DetachInternetGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DetachInternetGateway'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InternetGatewayId'] = input[:internet_gateway_id].to_s unless input[:internet_gateway_id].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DetachNetworkInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DetachNetworkInterface'
        params['Version'] = '2016-11-15'
        params[context + 'AttachmentId'] = input[:attachment_id].to_s unless input[:attachment_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Force'] = input[:force].to_s unless input[:force].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DetachVerifiedAccessTrustProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DetachVerifiedAccessTrustProvider'
        params['Version'] = '2016-11-15'
        params[context + 'VerifiedAccessInstanceId'] = input[:verified_access_instance_id].to_s unless input[:verified_access_instance_id].nil?
        params[context + 'VerifiedAccessTrustProviderId'] = input[:verified_access_trust_provider_id].to_s unless input[:verified_access_trust_provider_id].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DetachVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DetachVolume'
        params['Version'] = '2016-11-15'
        params[context + 'Device'] = input[:device].to_s unless input[:device].nil?
        params[context + 'Force'] = input[:force].to_s unless input[:force].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'VolumeId'] = input[:volume_id].to_s unless input[:volume_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DetachVpnGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DetachVpnGateway'
        params['Version'] = '2016-11-15'
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'VpnGatewayId'] = input[:vpn_gateway_id].to_s unless input[:vpn_gateway_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DhcpOptionsIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class DirectoryServiceAuthenticationRequest
      def self.build(input, params, context: nil)
        params[context + 'DirectoryId'] = input[:directory_id].to_s unless input[:directory_id].nil?
      end
    end

    class DisableAddressTransfer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableAddressTransfer'
        params['Version'] = '2016-11-15'
        params[context + 'AllocationId'] = input[:allocation_id].to_s unless input[:allocation_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisableAwsNetworkPerformanceMetricSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableAwsNetworkPerformanceMetricSubscription'
        params['Version'] = '2016-11-15'
        params[context + 'Source'] = input[:source].to_s unless input[:source].nil?
        params[context + 'Destination'] = input[:destination].to_s unless input[:destination].nil?
        params[context + 'Metric'] = input[:metric].to_s unless input[:metric].nil?
        params[context + 'Statistic'] = input[:statistic].to_s unless input[:statistic].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisableEbsEncryptionByDefault
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableEbsEncryptionByDefault'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisableFastLaunch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableFastLaunch'
        params['Version'] = '2016-11-15'
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'Force'] = input[:force].to_s unless input[:force].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisableFastSnapshotRestores
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableFastSnapshotRestores'
        params['Version'] = '2016-11-15'
        AvailabilityZoneStringList.build(input[:availability_zones], params, context: context + 'AvailabilityZone') unless input[:availability_zones].nil?
        SnapshotIdStringList.build(input[:source_snapshot_ids], params, context: context + 'SourceSnapshotId') unless input[:source_snapshot_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisableImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableImage'
        params['Version'] = '2016-11-15'
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisableImageBlockPublicAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableImageBlockPublicAccess'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisableImageDeprecation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableImageDeprecation'
        params['Version'] = '2016-11-15'
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisableIpamOrganizationAdminAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableIpamOrganizationAdminAccount'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'DelegatedAdminAccountId'] = input[:delegated_admin_account_id].to_s unless input[:delegated_admin_account_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisableSerialConsoleAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableSerialConsoleAccess'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisableSnapshotBlockPublicAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableSnapshotBlockPublicAccess'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisableTransitGatewayRouteTablePropagation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableTransitGatewayRouteTablePropagation'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayRouteTableId'] = input[:transit_gateway_route_table_id].to_s unless input[:transit_gateway_route_table_id].nil?
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'TransitGatewayRouteTableAnnouncementId'] = input[:transit_gateway_route_table_announcement_id].to_s unless input[:transit_gateway_route_table_announcement_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisableVgwRoutePropagation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableVgwRoutePropagation'
        params['Version'] = '2016-11-15'
        params[context + 'GatewayId'] = input[:gateway_id].to_s unless input[:gateway_id].nil?
        params[context + 'RouteTableId'] = input[:route_table_id].to_s unless input[:route_table_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisableVpcClassicLink
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableVpcClassicLink'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisableVpcClassicLinkDnsSupport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableVpcClassicLinkDnsSupport'
        params['Version'] = '2016-11-15'
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisassociateAddress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisassociateAddress'
        params['Version'] = '2016-11-15'
        params[context + 'AssociationId'] = input[:association_id].to_s unless input[:association_id].nil?
        params[context + 'PublicIp'] = input[:public_ip].to_s unless input[:public_ip].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisassociateClientVpnTargetNetwork
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisassociateClientVpnTargetNetwork'
        params['Version'] = '2016-11-15'
        params[context + 'ClientVpnEndpointId'] = input[:client_vpn_endpoint_id].to_s unless input[:client_vpn_endpoint_id].nil?
        params[context + 'AssociationId'] = input[:association_id].to_s unless input[:association_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisassociateEnclaveCertificateIamRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisassociateEnclaveCertificateIamRole'
        params['Version'] = '2016-11-15'
        params[context + 'CertificateArn'] = input[:certificate_arn].to_s unless input[:certificate_arn].nil?
        params[context + 'RoleArn'] = input[:role_arn].to_s unless input[:role_arn].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisassociateIamInstanceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisassociateIamInstanceProfile'
        params['Version'] = '2016-11-15'
        params[context + 'AssociationId'] = input[:association_id].to_s unless input[:association_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisassociateInstanceEventWindow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisassociateInstanceEventWindow'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceEventWindowId'] = input[:instance_event_window_id].to_s unless input[:instance_event_window_id].nil?
        InstanceEventWindowDisassociationRequest.build(input[:association_target], params, context: context + 'AssociationTarget' + '.') unless input[:association_target].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisassociateIpamByoasn
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisassociateIpamByoasn'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Asn'] = input[:asn].to_s unless input[:asn].nil?
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisassociateIpamResourceDiscovery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisassociateIpamResourceDiscovery'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamResourceDiscoveryAssociationId'] = input[:ipam_resource_discovery_association_id].to_s unless input[:ipam_resource_discovery_association_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisassociateNatGatewayAddress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisassociateNatGatewayAddress'
        params['Version'] = '2016-11-15'
        params[context + 'NatGatewayId'] = input[:nat_gateway_id].to_s unless input[:nat_gateway_id].nil?
        EipAssociationIdList.build(input[:association_ids], params, context: context + 'AssociationId') unless input[:association_ids].nil?
        params[context + 'MaxDrainDurationSeconds'] = input[:max_drain_duration_seconds].to_s unless input[:max_drain_duration_seconds].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisassociateRouteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisassociateRouteTable'
        params['Version'] = '2016-11-15'
        params[context + 'AssociationId'] = input[:association_id].to_s unless input[:association_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisassociateSubnetCidrBlock
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisassociateSubnetCidrBlock'
        params['Version'] = '2016-11-15'
        params[context + 'AssociationId'] = input[:association_id].to_s unless input[:association_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisassociateTransitGatewayMulticastDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisassociateTransitGatewayMulticastDomain'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayMulticastDomainId'] = input[:transit_gateway_multicast_domain_id].to_s unless input[:transit_gateway_multicast_domain_id].nil?
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        TransitGatewaySubnetIdList.build(input[:subnet_ids], params, context: context + 'SubnetIds') unless input[:subnet_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisassociateTransitGatewayPolicyTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisassociateTransitGatewayPolicyTable'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayPolicyTableId'] = input[:transit_gateway_policy_table_id].to_s unless input[:transit_gateway_policy_table_id].nil?
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisassociateTransitGatewayRouteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisassociateTransitGatewayRouteTable'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayRouteTableId'] = input[:transit_gateway_route_table_id].to_s unless input[:transit_gateway_route_table_id].nil?
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisassociateTrunkInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisassociateTrunkInterface'
        params['Version'] = '2016-11-15'
        params[context + 'AssociationId'] = input[:association_id].to_s unless input[:association_id].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisassociateVpcCidrBlock
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisassociateVpcCidrBlock'
        params['Version'] = '2016-11-15'
        params[context + 'AssociationId'] = input[:association_id].to_s unless input[:association_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DiskImage
      def self.build(input, params, context: nil)
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        DiskImageDetail.build(input[:image], params, context: context + 'Image' + '.') unless input[:image].nil?
        VolumeDetail.build(input[:volume], params, context: context + 'Volume' + '.') unless input[:volume].nil?
      end
    end

    class DiskImageDetail
      def self.build(input, params, context: nil)
        params[context + 'Bytes'] = input[:bytes].to_s unless input[:bytes].nil?
        params[context + 'Format'] = input[:format].to_s unless input[:format].nil?
        params[context + 'ImportManifestUrl'] = input[:import_manifest_url].to_s unless input[:import_manifest_url].nil?
      end
    end

    class DiskImageList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          DiskImage.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class DnsOptionsSpecification
      def self.build(input, params, context: nil)
        params[context + 'DnsRecordIpType'] = input[:dns_record_ip_type].to_s unless input[:dns_record_ip_type].nil?
        params[context + 'PrivateDnsOnlyForInboundResolverEndpoint'] = input[:private_dns_only_for_inbound_resolver_endpoint].to_s unless input[:private_dns_only_for_inbound_resolver_endpoint].nil?
      end
    end

    class DnsServersOptionsModifyStructure
      def self.build(input, params, context: nil)
        ValueStringList.build(input[:custom_dns_servers], params, context: context + 'CustomDnsServers') unless input[:custom_dns_servers].nil?
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
      end
    end

    class EbsBlockDevice
      def self.build(input, params, context: nil)
        params[context + 'DeleteOnTermination'] = input[:delete_on_termination].to_s unless input[:delete_on_termination].nil?
        params[context + 'Iops'] = input[:iops].to_s unless input[:iops].nil?
        params[context + 'SnapshotId'] = input[:snapshot_id].to_s unless input[:snapshot_id].nil?
        params[context + 'VolumeSize'] = input[:volume_size].to_s unless input[:volume_size].nil?
        params[context + 'VolumeType'] = input[:volume_type].to_s unless input[:volume_type].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'Throughput'] = input[:throughput].to_s unless input[:throughput].nil?
        params[context + 'OutpostArn'] = input[:outpost_arn].to_s unless input[:outpost_arn].nil?
        params[context + 'Encrypted'] = input[:encrypted].to_s unless input[:encrypted].nil?
      end
    end

    class EbsInstanceBlockDeviceSpecification
      def self.build(input, params, context: nil)
        params[context + 'DeleteOnTermination'] = input[:delete_on_termination].to_s unless input[:delete_on_termination].nil?
        params[context + 'VolumeId'] = input[:volume_id].to_s unless input[:volume_id].nil?
      end
    end

    class EgressOnlyInternetGatewayIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class EipAssociationIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ElasticGpuIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ElasticGpuSpecification
      def self.build(input, params, context: nil)
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
      end
    end

    class ElasticGpuSpecificationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          ElasticGpuSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ElasticGpuSpecifications
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          ElasticGpuSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ElasticInferenceAccelerator
      def self.build(input, params, context: nil)
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'Count'] = input[:count].to_s unless input[:count].nil?
      end
    end

    class ElasticInferenceAccelerators
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          ElasticInferenceAccelerator.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class EnaSrdSpecification
      def self.build(input, params, context: nil)
        params[context + 'EnaSrdEnabled'] = input[:ena_srd_enabled].to_s unless input[:ena_srd_enabled].nil?
        EnaSrdUdpSpecification.build(input[:ena_srd_udp_specification], params, context: context + 'EnaSrdUdpSpecification' + '.') unless input[:ena_srd_udp_specification].nil?
      end
    end

    class EnaSrdSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'EnaSrdEnabled'] = input[:ena_srd_enabled].to_s unless input[:ena_srd_enabled].nil?
        EnaSrdUdpSpecificationRequest.build(input[:ena_srd_udp_specification], params, context: context + 'EnaSrdUdpSpecification' + '.') unless input[:ena_srd_udp_specification].nil?
      end
    end

    class EnaSrdUdpSpecification
      def self.build(input, params, context: nil)
        params[context + 'EnaSrdUdpEnabled'] = input[:ena_srd_udp_enabled].to_s unless input[:ena_srd_udp_enabled].nil?
      end
    end

    class EnaSrdUdpSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'EnaSrdUdpEnabled'] = input[:ena_srd_udp_enabled].to_s unless input[:ena_srd_udp_enabled].nil?
      end
    end

    class EnableAddressTransfer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableAddressTransfer'
        params['Version'] = '2016-11-15'
        params[context + 'AllocationId'] = input[:allocation_id].to_s unless input[:allocation_id].nil?
        params[context + 'TransferAccountId'] = input[:transfer_account_id].to_s unless input[:transfer_account_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class EnableAwsNetworkPerformanceMetricSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableAwsNetworkPerformanceMetricSubscription'
        params['Version'] = '2016-11-15'
        params[context + 'Source'] = input[:source].to_s unless input[:source].nil?
        params[context + 'Destination'] = input[:destination].to_s unless input[:destination].nil?
        params[context + 'Metric'] = input[:metric].to_s unless input[:metric].nil?
        params[context + 'Statistic'] = input[:statistic].to_s unless input[:statistic].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class EnableEbsEncryptionByDefault
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableEbsEncryptionByDefault'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class EnableFastLaunch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableFastLaunch'
        params['Version'] = '2016-11-15'
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'ResourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        FastLaunchSnapshotConfigurationRequest.build(input[:snapshot_configuration], params, context: context + 'SnapshotConfiguration' + '.') unless input[:snapshot_configuration].nil?
        FastLaunchLaunchTemplateSpecificationRequest.build(input[:launch_template], params, context: context + 'LaunchTemplate' + '.') unless input[:launch_template].nil?
        params[context + 'MaxParallelLaunches'] = input[:max_parallel_launches].to_s unless input[:max_parallel_launches].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class EnableFastSnapshotRestores
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableFastSnapshotRestores'
        params['Version'] = '2016-11-15'
        AvailabilityZoneStringList.build(input[:availability_zones], params, context: context + 'AvailabilityZone') unless input[:availability_zones].nil?
        SnapshotIdStringList.build(input[:source_snapshot_ids], params, context: context + 'SourceSnapshotId') unless input[:source_snapshot_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class EnableImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableImage'
        params['Version'] = '2016-11-15'
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class EnableImageBlockPublicAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableImageBlockPublicAccess'
        params['Version'] = '2016-11-15'
        params[context + 'ImageBlockPublicAccessState'] = input[:image_block_public_access_state].to_s unless input[:image_block_public_access_state].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class EnableImageDeprecation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableImageDeprecation'
        params['Version'] = '2016-11-15'
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'DeprecateAt'] = Hearth::TimeHelper.to_date_time(input[:deprecate_at]) unless input[:deprecate_at].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class EnableIpamOrganizationAdminAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableIpamOrganizationAdminAccount'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'DelegatedAdminAccountId'] = input[:delegated_admin_account_id].to_s unless input[:delegated_admin_account_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class EnableReachabilityAnalyzerOrganizationSharing
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableReachabilityAnalyzerOrganizationSharing'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class EnableSerialConsoleAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableSerialConsoleAccess'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class EnableSnapshotBlockPublicAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableSnapshotBlockPublicAccess'
        params['Version'] = '2016-11-15'
        params[context + 'State'] = input[:state].to_s unless input[:state].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class EnableTransitGatewayRouteTablePropagation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableTransitGatewayRouteTablePropagation'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayRouteTableId'] = input[:transit_gateway_route_table_id].to_s unless input[:transit_gateway_route_table_id].nil?
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'TransitGatewayRouteTableAnnouncementId'] = input[:transit_gateway_route_table_announcement_id].to_s unless input[:transit_gateway_route_table_announcement_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class EnableVgwRoutePropagation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableVgwRoutePropagation'
        params['Version'] = '2016-11-15'
        params[context + 'GatewayId'] = input[:gateway_id].to_s unless input[:gateway_id].nil?
        params[context + 'RouteTableId'] = input[:route_table_id].to_s unless input[:route_table_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class EnableVolumeIO
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableVolumeIO'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'VolumeId'] = input[:volume_id].to_s unless input[:volume_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class EnableVpcClassicLink
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableVpcClassicLink'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class EnableVpcClassicLinkDnsSupport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableVpcClassicLinkDnsSupport'
        params['Version'] = '2016-11-15'
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class EnclaveOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
      end
    end

    class ExcludedInstanceTypeSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ExecutableByStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ExportClientVpnClientCertificateRevocationList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ExportClientVpnClientCertificateRevocationList'
        params['Version'] = '2016-11-15'
        params[context + 'ClientVpnEndpointId'] = input[:client_vpn_endpoint_id].to_s unless input[:client_vpn_endpoint_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ExportClientVpnClientConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ExportClientVpnClientConfiguration'
        params['Version'] = '2016-11-15'
        params[context + 'ClientVpnEndpointId'] = input[:client_vpn_endpoint_id].to_s unless input[:client_vpn_endpoint_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ExportImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ExportImage'
        params['Version'] = '2016-11-15'
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DiskImageFormat'] = input[:disk_image_format].to_s unless input[:disk_image_format].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        ExportTaskS3LocationRequest.build(input[:s3_export_location], params, context: context + 'S3ExportLocation' + '.') unless input[:s3_export_location].nil?
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ExportImageTaskIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ExportTaskIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ExportTaskS3LocationRequest
      def self.build(input, params, context: nil)
        params[context + 'S3Bucket'] = input[:s3_bucket].to_s unless input[:s3_bucket].nil?
        params[context + 'S3Prefix'] = input[:s3_prefix].to_s unless input[:s3_prefix].nil?
      end
    end

    class ExportToS3TaskSpecification
      def self.build(input, params, context: nil)
        params[context + 'ContainerFormat'] = input[:container_format].to_s unless input[:container_format].nil?
        params[context + 'DiskImageFormat'] = input[:disk_image_format].to_s unless input[:disk_image_format].nil?
        params[context + 'S3Bucket'] = input[:s3_bucket].to_s unless input[:s3_bucket].nil?
        params[context + 'S3Prefix'] = input[:s3_prefix].to_s unless input[:s3_prefix].nil?
      end
    end

    class ExportTransitGatewayRoutes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ExportTransitGatewayRoutes'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayRouteTableId'] = input[:transit_gateway_route_table_id].to_s unless input[:transit_gateway_route_table_id].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'S3Bucket'] = input[:s3_bucket].to_s unless input[:s3_bucket].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class FastLaunchImageIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class FastLaunchLaunchTemplateSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'LaunchTemplateId'] = input[:launch_template_id].to_s unless input[:launch_template_id].nil?
        params[context + 'LaunchTemplateName'] = input[:launch_template_name].to_s unless input[:launch_template_name].nil?
        params[context + 'Version'] = input[:version].to_s unless input[:version].nil?
      end
    end

    class FastLaunchSnapshotConfigurationRequest
      def self.build(input, params, context: nil)
        params[context + 'TargetResourceCount'] = input[:target_resource_count].to_s unless input[:target_resource_count].nil?
      end
    end

    class FederatedAuthenticationRequest
      def self.build(input, params, context: nil)
        params[context + 'SAMLProviderArn'] = input[:saml_provider_arn].to_s unless input[:saml_provider_arn].nil?
        params[context + 'SelfServiceSAMLProviderArn'] = input[:self_service_saml_provider_arn].to_s unless input[:self_service_saml_provider_arn].nil?
      end
    end

    class Filter
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        ValueStringList.build(input[:values], params, context: context + 'Value') unless input[:values].nil?
      end
    end

    class FilterList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Filter.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class FleetIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class FleetLaunchTemplateConfigListRequest
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          FleetLaunchTemplateConfigRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class FleetLaunchTemplateConfigRequest
      def self.build(input, params, context: nil)
        FleetLaunchTemplateSpecificationRequest.build(input[:launch_template_specification], params, context: context + 'LaunchTemplateSpecification' + '.') unless input[:launch_template_specification].nil?
        FleetLaunchTemplateOverridesListRequest.build(input[:overrides], params, context: context + 'Overrides') unless input[:overrides].nil?
      end
    end

    class FleetLaunchTemplateOverridesListRequest
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          FleetLaunchTemplateOverridesRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class FleetLaunchTemplateOverridesRequest
      def self.build(input, params, context: nil)
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'MaxPrice'] = input[:max_price].to_s unless input[:max_price].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'WeightedCapacity'] = Hearth::NumberHelper.serialize(input[:weighted_capacity]).to_s unless input[:weighted_capacity].nil?
        params[context + 'Priority'] = Hearth::NumberHelper.serialize(input[:priority]).to_s unless input[:priority].nil?
        Placement.build(input[:placement], params, context: context + 'Placement' + '.') unless input[:placement].nil?
        InstanceRequirementsRequest.build(input[:instance_requirements], params, context: context + 'InstanceRequirements' + '.') unless input[:instance_requirements].nil?
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
      end
    end

    class FleetLaunchTemplateSpecification
      def self.build(input, params, context: nil)
        params[context + 'LaunchTemplateId'] = input[:launch_template_id].to_s unless input[:launch_template_id].nil?
        params[context + 'LaunchTemplateName'] = input[:launch_template_name].to_s unless input[:launch_template_name].nil?
        params[context + 'Version'] = input[:version].to_s unless input[:version].nil?
      end
    end

    class FleetLaunchTemplateSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'LaunchTemplateId'] = input[:launch_template_id].to_s unless input[:launch_template_id].nil?
        params[context + 'LaunchTemplateName'] = input[:launch_template_name].to_s unless input[:launch_template_name].nil?
        params[context + 'Version'] = input[:version].to_s unless input[:version].nil?
      end
    end

    class FleetSpotCapacityRebalanceRequest
      def self.build(input, params, context: nil)
        params[context + 'ReplacementStrategy'] = input[:replacement_strategy].to_s unless input[:replacement_strategy].nil?
        params[context + 'TerminationDelay'] = input[:termination_delay].to_s unless input[:termination_delay].nil?
      end
    end

    class FleetSpotMaintenanceStrategiesRequest
      def self.build(input, params, context: nil)
        FleetSpotCapacityRebalanceRequest.build(input[:capacity_rebalance], params, context: context + 'CapacityRebalance' + '.') unless input[:capacity_rebalance].nil?
      end
    end

    class FlowLogIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class FlowLogResourceIds
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class FpgaImageIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class GetAssociatedEnclaveCertificateIamRoles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetAssociatedEnclaveCertificateIamRoles'
        params['Version'] = '2016-11-15'
        params[context + 'CertificateArn'] = input[:certificate_arn].to_s unless input[:certificate_arn].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetAssociatedIpv6PoolCidrs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetAssociatedIpv6PoolCidrs'
        params['Version'] = '2016-11-15'
        params[context + 'PoolId'] = input[:pool_id].to_s unless input[:pool_id].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetAwsNetworkPerformanceData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetAwsNetworkPerformanceData'
        params['Version'] = '2016-11-15'
        DataQueries.build(input[:data_queries], params, context: context + 'DataQuery') unless input[:data_queries].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetCapacityReservationUsage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetCapacityReservationUsage'
        params['Version'] = '2016-11-15'
        params[context + 'CapacityReservationId'] = input[:capacity_reservation_id].to_s unless input[:capacity_reservation_id].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetCoipPoolUsage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetCoipPoolUsage'
        params['Version'] = '2016-11-15'
        params[context + 'PoolId'] = input[:pool_id].to_s unless input[:pool_id].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetConsoleOutput
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetConsoleOutput'
        params['Version'] = '2016-11-15'
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Latest'] = input[:latest].to_s unless input[:latest].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetConsoleScreenshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetConsoleScreenshot'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'WakeUp'] = input[:wake_up].to_s unless input[:wake_up].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetDefaultCreditSpecification
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetDefaultCreditSpecification'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceFamily'] = input[:instance_family].to_s unless input[:instance_family].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetEbsDefaultKmsKeyId
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetEbsDefaultKmsKeyId'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetEbsEncryptionByDefault
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetEbsEncryptionByDefault'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetFlowLogsIntegrationTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetFlowLogsIntegrationTemplate'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'FlowLogId'] = input[:flow_log_id].to_s unless input[:flow_log_id].nil?
        params[context + 'ConfigDeliveryS3DestinationArn'] = input[:config_delivery_s3_destination_arn].to_s unless input[:config_delivery_s3_destination_arn].nil?
        IntegrateServices.build(input[:integrate_services], params, context: context + 'IntegrateService' + '.') unless input[:integrate_services].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetGroupsForCapacityReservation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetGroupsForCapacityReservation'
        params['Version'] = '2016-11-15'
        params[context + 'CapacityReservationId'] = input[:capacity_reservation_id].to_s unless input[:capacity_reservation_id].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetHostReservationPurchasePreview
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetHostReservationPurchasePreview'
        params['Version'] = '2016-11-15'
        RequestHostIdSet.build(input[:host_id_set], params, context: context + 'HostIdSet') unless input[:host_id_set].nil?
        params[context + 'OfferingId'] = input[:offering_id].to_s unless input[:offering_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetImageBlockPublicAccessState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetImageBlockPublicAccessState'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetInstanceTypesFromInstanceRequirements
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetInstanceTypesFromInstanceRequirements'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        ArchitectureTypeSet.build(input[:architecture_types], params, context: context + 'ArchitectureType') unless input[:architecture_types].nil?
        VirtualizationTypeSet.build(input[:virtualization_types], params, context: context + 'VirtualizationType') unless input[:virtualization_types].nil?
        InstanceRequirementsRequest.build(input[:instance_requirements], params, context: context + 'InstanceRequirements' + '.') unless input[:instance_requirements].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetInstanceUefiData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetInstanceUefiData'
        params['Version'] = '2016-11-15'
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetIpamAddressHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetIpamAddressHistory'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
        params[context + 'IpamScopeId'] = input[:ipam_scope_id].to_s unless input[:ipam_scope_id].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetIpamDiscoveredAccounts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetIpamDiscoveredAccounts'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamResourceDiscoveryId'] = input[:ipam_resource_discovery_id].to_s unless input[:ipam_resource_discovery_id].nil?
        params[context + 'DiscoveryRegion'] = input[:discovery_region].to_s unless input[:discovery_region].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetIpamDiscoveredPublicAddresses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetIpamDiscoveredPublicAddresses'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamResourceDiscoveryId'] = input[:ipam_resource_discovery_id].to_s unless input[:ipam_resource_discovery_id].nil?
        params[context + 'AddressRegion'] = input[:address_region].to_s unless input[:address_region].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetIpamDiscoveredResourceCidrs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetIpamDiscoveredResourceCidrs'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamResourceDiscoveryId'] = input[:ipam_resource_discovery_id].to_s unless input[:ipam_resource_discovery_id].nil?
        params[context + 'ResourceRegion'] = input[:resource_region].to_s unless input[:resource_region].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetIpamPoolAllocations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetIpamPoolAllocations'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamPoolId'] = input[:ipam_pool_id].to_s unless input[:ipam_pool_id].nil?
        params[context + 'IpamPoolAllocationId'] = input[:ipam_pool_allocation_id].to_s unless input[:ipam_pool_allocation_id].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetIpamPoolCidrs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetIpamPoolCidrs'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamPoolId'] = input[:ipam_pool_id].to_s unless input[:ipam_pool_id].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetIpamResourceCidrs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetIpamResourceCidrs'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'IpamScopeId'] = input[:ipam_scope_id].to_s unless input[:ipam_scope_id].nil?
        params[context + 'IpamPoolId'] = input[:ipam_pool_id].to_s unless input[:ipam_pool_id].nil?
        params[context + 'ResourceId'] = input[:resource_id].to_s unless input[:resource_id].nil?
        params[context + 'ResourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        RequestIpamResourceTag.build(input[:resource_tag], params, context: context + 'ResourceTag' + '.') unless input[:resource_tag].nil?
        params[context + 'ResourceOwner'] = input[:resource_owner].to_s unless input[:resource_owner].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetLaunchTemplateData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetLaunchTemplateData'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetManagedPrefixListAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetManagedPrefixListAssociations'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'PrefixListId'] = input[:prefix_list_id].to_s unless input[:prefix_list_id].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetManagedPrefixListEntries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetManagedPrefixListEntries'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'PrefixListId'] = input[:prefix_list_id].to_s unless input[:prefix_list_id].nil?
        params[context + 'TargetVersion'] = input[:target_version].to_s unless input[:target_version].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetNetworkInsightsAccessScopeAnalysisFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetNetworkInsightsAccessScopeAnalysisFindings'
        params['Version'] = '2016-11-15'
        params[context + 'NetworkInsightsAccessScopeAnalysisId'] = input[:network_insights_access_scope_analysis_id].to_s unless input[:network_insights_access_scope_analysis_id].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetNetworkInsightsAccessScopeContent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetNetworkInsightsAccessScopeContent'
        params['Version'] = '2016-11-15'
        params[context + 'NetworkInsightsAccessScopeId'] = input[:network_insights_access_scope_id].to_s unless input[:network_insights_access_scope_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetPasswordData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetPasswordData'
        params['Version'] = '2016-11-15'
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetReservedInstancesExchangeQuote
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetReservedInstancesExchangeQuote'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        ReservedInstanceIdSet.build(input[:reserved_instance_ids], params, context: context + 'ReservedInstanceId') unless input[:reserved_instance_ids].nil?
        TargetConfigurationRequestSet.build(input[:target_configurations], params, context: context + 'TargetConfiguration') unless input[:target_configurations].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetSecurityGroupsForVpc
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetSecurityGroupsForVpc'
        params['Version'] = '2016-11-15'
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetSerialConsoleAccessStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetSerialConsoleAccessStatus'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetSnapshotBlockPublicAccessState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetSnapshotBlockPublicAccessState'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetSpotPlacementScores
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetSpotPlacementScores'
        params['Version'] = '2016-11-15'
        InstanceTypes.build(input[:instance_types], params, context: context + 'InstanceType') unless input[:instance_types].nil?
        params[context + 'TargetCapacity'] = input[:target_capacity].to_s unless input[:target_capacity].nil?
        params[context + 'TargetCapacityUnitType'] = input[:target_capacity_unit_type].to_s unless input[:target_capacity_unit_type].nil?
        params[context + 'SingleAvailabilityZone'] = input[:single_availability_zone].to_s unless input[:single_availability_zone].nil?
        RegionNames.build(input[:region_names], params, context: context + 'RegionName') unless input[:region_names].nil?
        InstanceRequirementsWithMetadataRequest.build(input[:instance_requirements_with_metadata], params, context: context + 'InstanceRequirementsWithMetadata' + '.') unless input[:instance_requirements_with_metadata].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetSubnetCidrReservations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetSubnetCidrReservations'
        params['Version'] = '2016-11-15'
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetTransitGatewayAttachmentPropagations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetTransitGatewayAttachmentPropagations'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetTransitGatewayMulticastDomainAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetTransitGatewayMulticastDomainAssociations'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayMulticastDomainId'] = input[:transit_gateway_multicast_domain_id].to_s unless input[:transit_gateway_multicast_domain_id].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetTransitGatewayPolicyTableAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetTransitGatewayPolicyTableAssociations'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayPolicyTableId'] = input[:transit_gateway_policy_table_id].to_s unless input[:transit_gateway_policy_table_id].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetTransitGatewayPolicyTableEntries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetTransitGatewayPolicyTableEntries'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayPolicyTableId'] = input[:transit_gateway_policy_table_id].to_s unless input[:transit_gateway_policy_table_id].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetTransitGatewayPrefixListReferences
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetTransitGatewayPrefixListReferences'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayRouteTableId'] = input[:transit_gateway_route_table_id].to_s unless input[:transit_gateway_route_table_id].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetTransitGatewayRouteTableAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetTransitGatewayRouteTableAssociations'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayRouteTableId'] = input[:transit_gateway_route_table_id].to_s unless input[:transit_gateway_route_table_id].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetTransitGatewayRouteTablePropagations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetTransitGatewayRouteTablePropagations'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayRouteTableId'] = input[:transit_gateway_route_table_id].to_s unless input[:transit_gateway_route_table_id].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetVerifiedAccessEndpointPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetVerifiedAccessEndpointPolicy'
        params['Version'] = '2016-11-15'
        params[context + 'VerifiedAccessEndpointId'] = input[:verified_access_endpoint_id].to_s unless input[:verified_access_endpoint_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetVerifiedAccessGroupPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetVerifiedAccessGroupPolicy'
        params['Version'] = '2016-11-15'
        params[context + 'VerifiedAccessGroupId'] = input[:verified_access_group_id].to_s unless input[:verified_access_group_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetVpnConnectionDeviceSampleConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetVpnConnectionDeviceSampleConfiguration'
        params['Version'] = '2016-11-15'
        params[context + 'VpnConnectionId'] = input[:vpn_connection_id].to_s unless input[:vpn_connection_id].nil?
        params[context + 'VpnConnectionDeviceTypeId'] = input[:vpn_connection_device_type_id].to_s unless input[:vpn_connection_device_type_id].nil?
        params[context + 'InternetKeyExchangeVersion'] = input[:internet_key_exchange_version].to_s unless input[:internet_key_exchange_version].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetVpnConnectionDeviceTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetVpnConnectionDeviceTypes'
        params['Version'] = '2016-11-15'
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetVpnTunnelReplacementStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetVpnTunnelReplacementStatus'
        params['Version'] = '2016-11-15'
        params[context + 'VpnConnectionId'] = input[:vpn_connection_id].to_s unless input[:vpn_connection_id].nil?
        params[context + 'VpnTunnelOutsideIpAddress'] = input[:vpn_tunnel_outside_ip_address].to_s unless input[:vpn_tunnel_outside_ip_address].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GroupIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class GroupIdentifier
      def self.build(input, params, context: nil)
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'GroupId'] = input[:group_id].to_s unless input[:group_id].nil?
      end
    end

    class GroupIdentifierList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          GroupIdentifier.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class GroupIds
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class GroupNameStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class HibernationOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'Configured'] = input[:configured].to_s unless input[:configured].nil?
      end
    end

    class HostReservationIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class IKEVersionsRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          IKEVersionsRequestListValue.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class IKEVersionsRequestListValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    class IamInstanceProfileSpecification
      def self.build(input, params, context: nil)
        params[context + 'Arn'] = input[:arn].to_s unless input[:arn].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
      end
    end

    class IcmpTypeCode
      def self.build(input, params, context: nil)
        params[context + 'Code'] = input[:code].to_s unless input[:code].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
      end
    end

    class ImageDiskContainer
      def self.build(input, params, context: nil)
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DeviceName'] = input[:device_name].to_s unless input[:device_name].nil?
        params[context + 'Format'] = input[:format].to_s unless input[:format].nil?
        params[context + 'SnapshotId'] = input[:snapshot_id].to_s unless input[:snapshot_id].nil?
        params[context + 'Url'] = input[:url].to_s unless input[:url].nil?
        UserBucket.build(input[:user_bucket], params, context: context + 'UserBucket' + '.') unless input[:user_bucket].nil?
      end
    end

    class ImageDiskContainerList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          ImageDiskContainer.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ImageIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ImageIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ImportClientVpnClientCertificateRevocationList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ImportClientVpnClientCertificateRevocationList'
        params['Version'] = '2016-11-15'
        params[context + 'ClientVpnEndpointId'] = input[:client_vpn_endpoint_id].to_s unless input[:client_vpn_endpoint_id].nil?
        params[context + 'CertificateRevocationList'] = input[:certificate_revocation_list].to_s unless input[:certificate_revocation_list].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ImportImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ImportImage'
        params['Version'] = '2016-11-15'
        params[context + 'Architecture'] = input[:architecture].to_s unless input[:architecture].nil?
        ClientData.build(input[:client_data], params, context: context + 'ClientData' + '.') unless input[:client_data].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        ImageDiskContainerList.build(input[:disk_containers], params, context: context + 'DiskContainer') unless input[:disk_containers].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Encrypted'] = input[:encrypted].to_s unless input[:encrypted].nil?
        params[context + 'Hypervisor'] = input[:hypervisor].to_s unless input[:hypervisor].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'LicenseType'] = input[:license_type].to_s unless input[:license_type].nil?
        params[context + 'Platform'] = input[:platform].to_s unless input[:platform].nil?
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        ImportImageLicenseSpecificationListRequest.build(input[:license_specifications], params, context: context + 'LicenseSpecifications') unless input[:license_specifications].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'UsageOperation'] = input[:usage_operation].to_s unless input[:usage_operation].nil?
        params[context + 'BootMode'] = input[:boot_mode].to_s unless input[:boot_mode].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ImportImageLicenseConfigurationRequest
      def self.build(input, params, context: nil)
        params[context + 'LicenseConfigurationArn'] = input[:license_configuration_arn].to_s unless input[:license_configuration_arn].nil?
      end
    end

    class ImportImageLicenseSpecificationListRequest
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          ImportImageLicenseConfigurationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ImportInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ImportInstance'
        params['Version'] = '2016-11-15'
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        DiskImageList.build(input[:disk_images], params, context: context + 'diskImage') unless input[:disk_images].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        ImportInstanceLaunchSpecification.build(input[:launch_specification], params, context: context + 'LaunchSpecification' + '.') unless input[:launch_specification].nil?
        params[context + 'Platform'] = input[:platform].to_s unless input[:platform].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ImportInstanceLaunchSpecification
      def self.build(input, params, context: nil)
        params[context + 'AdditionalInfo'] = input[:additional_info].to_s unless input[:additional_info].nil?
        params[context + 'Architecture'] = input[:architecture].to_s unless input[:architecture].nil?
        SecurityGroupIdStringList.build(input[:group_ids], params, context: context + 'GroupId') unless input[:group_ids].nil?
        SecurityGroupStringList.build(input[:group_names], params, context: context + 'GroupName') unless input[:group_names].nil?
        params[context + 'InstanceInitiatedShutdownBehavior'] = input[:instance_initiated_shutdown_behavior].to_s unless input[:instance_initiated_shutdown_behavior].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'Monitoring'] = input[:monitoring].to_s unless input[:monitoring].nil?
        Placement.build(input[:placement], params, context: context + 'Placement' + '.') unless input[:placement].nil?
        params[context + 'PrivateIpAddress'] = input[:private_ip_address].to_s unless input[:private_ip_address].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        UserData.build(input[:user_data], params, context: context + 'UserData' + '.') unless input[:user_data].nil?
      end
    end

    class ImportKeyPair
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ImportKeyPair'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'KeyName'] = input[:key_name].to_s unless input[:key_name].nil?
        params[context + 'PublicKeyMaterial'] = ::Base64::strict_encode64(input[:public_key_material]).strip unless input[:public_key_material].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ImportSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ImportSnapshot'
        params['Version'] = '2016-11-15'
        ClientData.build(input[:client_data], params, context: context + 'ClientData' + '.') unless input[:client_data].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        SnapshotDiskContainer.build(input[:disk_container], params, context: context + 'DiskContainer' + '.') unless input[:disk_container].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Encrypted'] = input[:encrypted].to_s unless input[:encrypted].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ImportSnapshotTaskIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ImportTaskIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ImportVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ImportVolume'
        params['Version'] = '2016-11-15'
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        DiskImageDetail.build(input[:image], params, context: context + 'Image' + '.') unless input[:image].nil?
        VolumeDetail.build(input[:volume], params, context: context + 'Volume' + '.') unless input[:volume].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class InsideCidrBlocksStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class InstanceBlockDeviceMappingSpecification
      def self.build(input, params, context: nil)
        params[context + 'DeviceName'] = input[:device_name].to_s unless input[:device_name].nil?
        EbsInstanceBlockDeviceSpecification.build(input[:ebs], params, context: context + 'Ebs' + '.') unless input[:ebs].nil?
        params[context + 'NoDevice'] = input[:no_device].to_s unless input[:no_device].nil?
        params[context + 'VirtualName'] = input[:virtual_name].to_s unless input[:virtual_name].nil?
      end
    end

    class InstanceBlockDeviceMappingSpecificationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          InstanceBlockDeviceMappingSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class InstanceCreditSpecificationListRequest
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          InstanceCreditSpecificationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class InstanceCreditSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'CpuCredits'] = input[:cpu_credits].to_s unless input[:cpu_credits].nil?
      end
    end

    class InstanceEventWindowAssociationRequest
      def self.build(input, params, context: nil)
        InstanceIdList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        TagList.build(input[:instance_tags], params, context: context + 'InstanceTag') unless input[:instance_tags].nil?
        DedicatedHostIdList.build(input[:dedicated_host_ids], params, context: context + 'DedicatedHostId') unless input[:dedicated_host_ids].nil?
      end
    end

    class InstanceEventWindowDisassociationRequest
      def self.build(input, params, context: nil)
        InstanceIdList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        TagList.build(input[:instance_tags], params, context: context + 'InstanceTag') unless input[:instance_tags].nil?
        DedicatedHostIdList.build(input[:dedicated_host_ids], params, context: context + 'DedicatedHostId') unless input[:dedicated_host_ids].nil?
      end
    end

    class InstanceEventWindowIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class InstanceEventWindowTimeRangeRequest
      def self.build(input, params, context: nil)
        params[context + 'StartWeekDay'] = input[:start_week_day].to_s unless input[:start_week_day].nil?
        params[context + 'StartHour'] = input[:start_hour].to_s unless input[:start_hour].nil?
        params[context + 'EndWeekDay'] = input[:end_week_day].to_s unless input[:end_week_day].nil?
        params[context + 'EndHour'] = input[:end_hour].to_s unless input[:end_hour].nil?
      end
    end

    class InstanceEventWindowTimeRangeRequestSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          InstanceEventWindowTimeRangeRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class InstanceGenerationSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class InstanceIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class InstanceIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class InstanceIpv6Address
      def self.build(input, params, context: nil)
        params[context + 'Ipv6Address'] = input[:ipv6_address].to_s unless input[:ipv6_address].nil?
        params[context + 'IsPrimaryIpv6'] = input[:is_primary_ipv6].to_s unless input[:is_primary_ipv6].nil?
      end
    end

    class InstanceIpv6AddressList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          InstanceIpv6Address.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class InstanceIpv6AddressListRequest
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          InstanceIpv6AddressRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class InstanceIpv6AddressRequest
      def self.build(input, params, context: nil)
        params[context + 'Ipv6Address'] = input[:ipv6_address].to_s unless input[:ipv6_address].nil?
      end
    end

    class InstanceMaintenanceOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'AutoRecovery'] = input[:auto_recovery].to_s unless input[:auto_recovery].nil?
      end
    end

    class InstanceMarketOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'MarketType'] = input[:market_type].to_s unless input[:market_type].nil?
        SpotMarketOptions.build(input[:spot_options], params, context: context + 'SpotOptions' + '.') unless input[:spot_options].nil?
      end
    end

    class InstanceMetadataOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'HttpTokens'] = input[:http_tokens].to_s unless input[:http_tokens].nil?
        params[context + 'HttpPutResponseHopLimit'] = input[:http_put_response_hop_limit].to_s unless input[:http_put_response_hop_limit].nil?
        params[context + 'HttpEndpoint'] = input[:http_endpoint].to_s unless input[:http_endpoint].nil?
        params[context + 'HttpProtocolIpv6'] = input[:http_protocol_ipv6].to_s unless input[:http_protocol_ipv6].nil?
        params[context + 'InstanceMetadataTags'] = input[:instance_metadata_tags].to_s unless input[:instance_metadata_tags].nil?
      end
    end

    class InstanceNetworkInterfaceSpecification
      def self.build(input, params, context: nil)
        params[context + 'AssociatePublicIpAddress'] = input[:associate_public_ip_address].to_s unless input[:associate_public_ip_address].nil?
        params[context + 'DeleteOnTermination'] = input[:delete_on_termination].to_s unless input[:delete_on_termination].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DeviceIndex'] = input[:device_index].to_s unless input[:device_index].nil?
        SecurityGroupIdStringList.build(input[:groups], params, context: context + 'SecurityGroupId') unless input[:groups].nil?
        params[context + 'Ipv6AddressCount'] = input[:ipv6_address_count].to_s unless input[:ipv6_address_count].nil?
        InstanceIpv6AddressList.build(input[:ipv6_addresses], params, context: context + 'ipv6AddressesSet') unless input[:ipv6_addresses].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        params[context + 'PrivateIpAddress'] = input[:private_ip_address].to_s unless input[:private_ip_address].nil?
        PrivateIpAddressSpecificationList.build(input[:private_ip_addresses], params, context: context + 'privateIpAddressesSet') unless input[:private_ip_addresses].nil?
        params[context + 'SecondaryPrivateIpAddressCount'] = input[:secondary_private_ip_address_count].to_s unless input[:secondary_private_ip_address_count].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'AssociateCarrierIpAddress'] = input[:associate_carrier_ip_address].to_s unless input[:associate_carrier_ip_address].nil?
        params[context + 'InterfaceType'] = input[:interface_type].to_s unless input[:interface_type].nil?
        params[context + 'NetworkCardIndex'] = input[:network_card_index].to_s unless input[:network_card_index].nil?
        Ipv4PrefixList.build(input[:ipv4_prefixes], params, context: context + 'Ipv4Prefix') unless input[:ipv4_prefixes].nil?
        params[context + 'Ipv4PrefixCount'] = input[:ipv4_prefix_count].to_s unless input[:ipv4_prefix_count].nil?
        Ipv6PrefixList.build(input[:ipv6_prefixes], params, context: context + 'Ipv6Prefix') unless input[:ipv6_prefixes].nil?
        params[context + 'Ipv6PrefixCount'] = input[:ipv6_prefix_count].to_s unless input[:ipv6_prefix_count].nil?
        params[context + 'PrimaryIpv6'] = input[:primary_ipv6].to_s unless input[:primary_ipv6].nil?
        EnaSrdSpecificationRequest.build(input[:ena_srd_specification], params, context: context + 'EnaSrdSpecification' + '.') unless input[:ena_srd_specification].nil?
        ConnectionTrackingSpecificationRequest.build(input[:connection_tracking_specification], params, context: context + 'ConnectionTrackingSpecification' + '.') unless input[:connection_tracking_specification].nil?
      end
    end

    class InstanceNetworkInterfaceSpecificationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          InstanceNetworkInterfaceSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class InstanceRequirements
      def self.build(input, params, context: nil)
        VCpuCountRange.build(input[:v_cpu_count], params, context: context + 'VCpuCount' + '.') unless input[:v_cpu_count].nil?
        MemoryMiB.build(input[:memory_mi_b], params, context: context + 'MemoryMiB' + '.') unless input[:memory_mi_b].nil?
        CpuManufacturerSet.build(input[:cpu_manufacturers], params, context: context + 'cpuManufacturerSet') unless input[:cpu_manufacturers].nil?
        MemoryGiBPerVCpu.build(input[:memory_gi_b_per_v_cpu], params, context: context + 'MemoryGiBPerVCpu' + '.') unless input[:memory_gi_b_per_v_cpu].nil?
        ExcludedInstanceTypeSet.build(input[:excluded_instance_types], params, context: context + 'excludedInstanceTypeSet') unless input[:excluded_instance_types].nil?
        InstanceGenerationSet.build(input[:instance_generations], params, context: context + 'instanceGenerationSet') unless input[:instance_generations].nil?
        params[context + 'SpotMaxPricePercentageOverLowestPrice'] = input[:spot_max_price_percentage_over_lowest_price].to_s unless input[:spot_max_price_percentage_over_lowest_price].nil?
        params[context + 'OnDemandMaxPricePercentageOverLowestPrice'] = input[:on_demand_max_price_percentage_over_lowest_price].to_s unless input[:on_demand_max_price_percentage_over_lowest_price].nil?
        params[context + 'BareMetal'] = input[:bare_metal].to_s unless input[:bare_metal].nil?
        params[context + 'BurstablePerformance'] = input[:burstable_performance].to_s unless input[:burstable_performance].nil?
        params[context + 'RequireHibernateSupport'] = input[:require_hibernate_support].to_s unless input[:require_hibernate_support].nil?
        NetworkInterfaceCount.build(input[:network_interface_count], params, context: context + 'NetworkInterfaceCount' + '.') unless input[:network_interface_count].nil?
        params[context + 'LocalStorage'] = input[:local_storage].to_s unless input[:local_storage].nil?
        LocalStorageTypeSet.build(input[:local_storage_types], params, context: context + 'localStorageTypeSet') unless input[:local_storage_types].nil?
        TotalLocalStorageGB.build(input[:total_local_storage_gb], params, context: context + 'TotalLocalStorageGB' + '.') unless input[:total_local_storage_gb].nil?
        BaselineEbsBandwidthMbps.build(input[:baseline_ebs_bandwidth_mbps], params, context: context + 'BaselineEbsBandwidthMbps' + '.') unless input[:baseline_ebs_bandwidth_mbps].nil?
        AcceleratorTypeSet.build(input[:accelerator_types], params, context: context + 'acceleratorTypeSet') unless input[:accelerator_types].nil?
        AcceleratorCount.build(input[:accelerator_count], params, context: context + 'AcceleratorCount' + '.') unless input[:accelerator_count].nil?
        AcceleratorManufacturerSet.build(input[:accelerator_manufacturers], params, context: context + 'acceleratorManufacturerSet') unless input[:accelerator_manufacturers].nil?
        AcceleratorNameSet.build(input[:accelerator_names], params, context: context + 'acceleratorNameSet') unless input[:accelerator_names].nil?
        AcceleratorTotalMemoryMiB.build(input[:accelerator_total_memory_mi_b], params, context: context + 'AcceleratorTotalMemoryMiB' + '.') unless input[:accelerator_total_memory_mi_b].nil?
        NetworkBandwidthGbps.build(input[:network_bandwidth_gbps], params, context: context + 'NetworkBandwidthGbps' + '.') unless input[:network_bandwidth_gbps].nil?
        AllowedInstanceTypeSet.build(input[:allowed_instance_types], params, context: context + 'allowedInstanceTypeSet') unless input[:allowed_instance_types].nil?
        params[context + 'MaxSpotPriceAsPercentageOfOptimalOnDemandPrice'] = input[:max_spot_price_as_percentage_of_optimal_on_demand_price].to_s unless input[:max_spot_price_as_percentage_of_optimal_on_demand_price].nil?
      end
    end

    class InstanceRequirementsRequest
      def self.build(input, params, context: nil)
        VCpuCountRangeRequest.build(input[:v_cpu_count], params, context: context + 'VCpuCount' + '.') unless input[:v_cpu_count].nil?
        MemoryMiBRequest.build(input[:memory_mi_b], params, context: context + 'MemoryMiB' + '.') unless input[:memory_mi_b].nil?
        CpuManufacturerSet.build(input[:cpu_manufacturers], params, context: context + 'CpuManufacturer') unless input[:cpu_manufacturers].nil?
        MemoryGiBPerVCpuRequest.build(input[:memory_gi_b_per_v_cpu], params, context: context + 'MemoryGiBPerVCpu' + '.') unless input[:memory_gi_b_per_v_cpu].nil?
        ExcludedInstanceTypeSet.build(input[:excluded_instance_types], params, context: context + 'ExcludedInstanceType') unless input[:excluded_instance_types].nil?
        InstanceGenerationSet.build(input[:instance_generations], params, context: context + 'InstanceGeneration') unless input[:instance_generations].nil?
        params[context + 'SpotMaxPricePercentageOverLowestPrice'] = input[:spot_max_price_percentage_over_lowest_price].to_s unless input[:spot_max_price_percentage_over_lowest_price].nil?
        params[context + 'OnDemandMaxPricePercentageOverLowestPrice'] = input[:on_demand_max_price_percentage_over_lowest_price].to_s unless input[:on_demand_max_price_percentage_over_lowest_price].nil?
        params[context + 'BareMetal'] = input[:bare_metal].to_s unless input[:bare_metal].nil?
        params[context + 'BurstablePerformance'] = input[:burstable_performance].to_s unless input[:burstable_performance].nil?
        params[context + 'RequireHibernateSupport'] = input[:require_hibernate_support].to_s unless input[:require_hibernate_support].nil?
        NetworkInterfaceCountRequest.build(input[:network_interface_count], params, context: context + 'NetworkInterfaceCount' + '.') unless input[:network_interface_count].nil?
        params[context + 'LocalStorage'] = input[:local_storage].to_s unless input[:local_storage].nil?
        LocalStorageTypeSet.build(input[:local_storage_types], params, context: context + 'LocalStorageType') unless input[:local_storage_types].nil?
        TotalLocalStorageGBRequest.build(input[:total_local_storage_gb], params, context: context + 'TotalLocalStorageGB' + '.') unless input[:total_local_storage_gb].nil?
        BaselineEbsBandwidthMbpsRequest.build(input[:baseline_ebs_bandwidth_mbps], params, context: context + 'BaselineEbsBandwidthMbps' + '.') unless input[:baseline_ebs_bandwidth_mbps].nil?
        AcceleratorTypeSet.build(input[:accelerator_types], params, context: context + 'AcceleratorType') unless input[:accelerator_types].nil?
        AcceleratorCountRequest.build(input[:accelerator_count], params, context: context + 'AcceleratorCount' + '.') unless input[:accelerator_count].nil?
        AcceleratorManufacturerSet.build(input[:accelerator_manufacturers], params, context: context + 'AcceleratorManufacturer') unless input[:accelerator_manufacturers].nil?
        AcceleratorNameSet.build(input[:accelerator_names], params, context: context + 'AcceleratorName') unless input[:accelerator_names].nil?
        AcceleratorTotalMemoryMiBRequest.build(input[:accelerator_total_memory_mi_b], params, context: context + 'AcceleratorTotalMemoryMiB' + '.') unless input[:accelerator_total_memory_mi_b].nil?
        NetworkBandwidthGbpsRequest.build(input[:network_bandwidth_gbps], params, context: context + 'NetworkBandwidthGbps' + '.') unless input[:network_bandwidth_gbps].nil?
        AllowedInstanceTypeSet.build(input[:allowed_instance_types], params, context: context + 'AllowedInstanceType') unless input[:allowed_instance_types].nil?
        params[context + 'MaxSpotPriceAsPercentageOfOptimalOnDemandPrice'] = input[:max_spot_price_as_percentage_of_optimal_on_demand_price].to_s unless input[:max_spot_price_as_percentage_of_optimal_on_demand_price].nil?
      end
    end

    class InstanceRequirementsWithMetadataRequest
      def self.build(input, params, context: nil)
        ArchitectureTypeSet.build(input[:architecture_types], params, context: context + 'ArchitectureType') unless input[:architecture_types].nil?
        VirtualizationTypeSet.build(input[:virtualization_types], params, context: context + 'VirtualizationType') unless input[:virtualization_types].nil?
        InstanceRequirementsRequest.build(input[:instance_requirements], params, context: context + 'InstanceRequirements' + '.') unless input[:instance_requirements].nil?
      end
    end

    class InstanceSpecification
      def self.build(input, params, context: nil)
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'ExcludeBootVolume'] = input[:exclude_boot_volume].to_s unless input[:exclude_boot_volume].nil?
        VolumeIdStringList.build(input[:exclude_data_volume_ids], params, context: context + 'ExcludeDataVolumeId') unless input[:exclude_data_volume_ids].nil?
      end
    end

    class InstanceTagKeySet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class InstanceTypeList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class InstanceTypes
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class IntegrateServices
      def self.build(input, params, context: nil)
        AthenaIntegrationsSet.build(input[:athena_integrations], params, context: context + 'AthenaIntegration') unless input[:athena_integrations].nil?
      end
    end

    class InternetGatewayIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class IpList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class IpPermission
      def self.build(input, params, context: nil)
        params[context + 'FromPort'] = input[:from_port].to_s unless input[:from_port].nil?
        params[context + 'IpProtocol'] = input[:ip_protocol].to_s unless input[:ip_protocol].nil?
        IpRangeList.build(input[:ip_ranges], params, context: context + 'ipRanges') unless input[:ip_ranges].nil?
        Ipv6RangeList.build(input[:ipv6_ranges], params, context: context + 'ipv6Ranges') unless input[:ipv6_ranges].nil?
        PrefixListIdList.build(input[:prefix_list_ids], params, context: context + 'prefixListIds') unless input[:prefix_list_ids].nil?
        params[context + 'ToPort'] = input[:to_port].to_s unless input[:to_port].nil?
        UserIdGroupPairList.build(input[:user_id_group_pairs], params, context: context + 'groups') unless input[:user_id_group_pairs].nil?
      end
    end

    class IpPermissionList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          IpPermission.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class IpPrefixList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class IpRange
      def self.build(input, params, context: nil)
        params[context + 'CidrIp'] = input[:cidr_ip].to_s unless input[:cidr_ip].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
      end
    end

    class IpRangeList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          IpRange.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class IpamCidrAuthorizationContext
      def self.build(input, params, context: nil)
        params[context + 'Message'] = input[:message].to_s unless input[:message].nil?
        params[context + 'Signature'] = input[:signature].to_s unless input[:signature].nil?
      end
    end

    class IpamPoolAllocationAllowedCidrs
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class IpamPoolAllocationDisallowedCidrs
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class IpamPoolSourceResourceRequest
      def self.build(input, params, context: nil)
        params[context + 'ResourceId'] = input[:resource_id].to_s unless input[:resource_id].nil?
        params[context + 'ResourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        params[context + 'ResourceRegion'] = input[:resource_region].to_s unless input[:resource_region].nil?
        params[context + 'ResourceOwner'] = input[:resource_owner].to_s unless input[:resource_owner].nil?
      end
    end

    class Ipv4PrefixList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Ipv4PrefixSpecificationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class Ipv4PrefixSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'Ipv4Prefix'] = input[:ipv4_prefix].to_s unless input[:ipv4_prefix].nil?
      end
    end

    class Ipv6AddressList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class Ipv6PoolIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class Ipv6PrefixList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Ipv6PrefixSpecificationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class Ipv6PrefixSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'Ipv6Prefix'] = input[:ipv6_prefix].to_s unless input[:ipv6_prefix].nil?
      end
    end

    class Ipv6Range
      def self.build(input, params, context: nil)
        params[context + 'CidrIpv6'] = input[:cidr_ipv6].to_s unless input[:cidr_ipv6].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
      end
    end

    class Ipv6RangeList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Ipv6Range.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class KeyNameStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class KeyPairIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LaunchPermission
      def self.build(input, params, context: nil)
        params[context + 'Group'] = input[:group].to_s unless input[:group].nil?
        params[context + 'UserId'] = input[:user_id].to_s unless input[:user_id].nil?
        params[context + 'OrganizationArn'] = input[:organization_arn].to_s unless input[:organization_arn].nil?
        params[context + 'OrganizationalUnitArn'] = input[:organizational_unit_arn].to_s unless input[:organizational_unit_arn].nil?
      end
    end

    class LaunchPermissionList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          LaunchPermission.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LaunchPermissionModifications
      def self.build(input, params, context: nil)
        LaunchPermissionList.build(input[:add], params, context: context + 'Add') unless input[:add].nil?
        LaunchPermissionList.build(input[:remove], params, context: context + 'Remove') unless input[:remove].nil?
      end
    end

    class LaunchSpecsList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          SpotFleetLaunchSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LaunchTemplateBlockDeviceMappingRequest
      def self.build(input, params, context: nil)
        params[context + 'DeviceName'] = input[:device_name].to_s unless input[:device_name].nil?
        params[context + 'VirtualName'] = input[:virtual_name].to_s unless input[:virtual_name].nil?
        LaunchTemplateEbsBlockDeviceRequest.build(input[:ebs], params, context: context + 'Ebs' + '.') unless input[:ebs].nil?
        params[context + 'NoDevice'] = input[:no_device].to_s unless input[:no_device].nil?
      end
    end

    class LaunchTemplateBlockDeviceMappingRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          LaunchTemplateBlockDeviceMappingRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LaunchTemplateCapacityReservationSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'CapacityReservationPreference'] = input[:capacity_reservation_preference].to_s unless input[:capacity_reservation_preference].nil?
        CapacityReservationTarget.build(input[:capacity_reservation_target], params, context: context + 'CapacityReservationTarget' + '.') unless input[:capacity_reservation_target].nil?
      end
    end

    class LaunchTemplateConfig
      def self.build(input, params, context: nil)
        FleetLaunchTemplateSpecification.build(input[:launch_template_specification], params, context: context + 'LaunchTemplateSpecification' + '.') unless input[:launch_template_specification].nil?
        LaunchTemplateOverridesList.build(input[:overrides], params, context: context + 'overrides') unless input[:overrides].nil?
      end
    end

    class LaunchTemplateConfigList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          LaunchTemplateConfig.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LaunchTemplateCpuOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'CoreCount'] = input[:core_count].to_s unless input[:core_count].nil?
        params[context + 'ThreadsPerCore'] = input[:threads_per_core].to_s unless input[:threads_per_core].nil?
        params[context + 'AmdSevSnp'] = input[:amd_sev_snp].to_s unless input[:amd_sev_snp].nil?
      end
    end

    class LaunchTemplateEbsBlockDeviceRequest
      def self.build(input, params, context: nil)
        params[context + 'Encrypted'] = input[:encrypted].to_s unless input[:encrypted].nil?
        params[context + 'DeleteOnTermination'] = input[:delete_on_termination].to_s unless input[:delete_on_termination].nil?
        params[context + 'Iops'] = input[:iops].to_s unless input[:iops].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'SnapshotId'] = input[:snapshot_id].to_s unless input[:snapshot_id].nil?
        params[context + 'VolumeSize'] = input[:volume_size].to_s unless input[:volume_size].nil?
        params[context + 'VolumeType'] = input[:volume_type].to_s unless input[:volume_type].nil?
        params[context + 'Throughput'] = input[:throughput].to_s unless input[:throughput].nil?
      end
    end

    class LaunchTemplateElasticInferenceAccelerator
      def self.build(input, params, context: nil)
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'Count'] = input[:count].to_s unless input[:count].nil?
      end
    end

    class LaunchTemplateElasticInferenceAcceleratorList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          LaunchTemplateElasticInferenceAccelerator.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LaunchTemplateEnclaveOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
      end
    end

    class LaunchTemplateHibernationOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'Configured'] = input[:configured].to_s unless input[:configured].nil?
      end
    end

    class LaunchTemplateIamInstanceProfileSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'Arn'] = input[:arn].to_s unless input[:arn].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
      end
    end

    class LaunchTemplateIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LaunchTemplateInstanceMaintenanceOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'AutoRecovery'] = input[:auto_recovery].to_s unless input[:auto_recovery].nil?
      end
    end

    class LaunchTemplateInstanceMarketOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'MarketType'] = input[:market_type].to_s unless input[:market_type].nil?
        LaunchTemplateSpotMarketOptionsRequest.build(input[:spot_options], params, context: context + 'SpotOptions' + '.') unless input[:spot_options].nil?
      end
    end

    class LaunchTemplateInstanceMetadataOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'HttpTokens'] = input[:http_tokens].to_s unless input[:http_tokens].nil?
        params[context + 'HttpPutResponseHopLimit'] = input[:http_put_response_hop_limit].to_s unless input[:http_put_response_hop_limit].nil?
        params[context + 'HttpEndpoint'] = input[:http_endpoint].to_s unless input[:http_endpoint].nil?
        params[context + 'HttpProtocolIpv6'] = input[:http_protocol_ipv6].to_s unless input[:http_protocol_ipv6].nil?
        params[context + 'InstanceMetadataTags'] = input[:instance_metadata_tags].to_s unless input[:instance_metadata_tags].nil?
      end
    end

    class LaunchTemplateInstanceNetworkInterfaceSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'AssociateCarrierIpAddress'] = input[:associate_carrier_ip_address].to_s unless input[:associate_carrier_ip_address].nil?
        params[context + 'AssociatePublicIpAddress'] = input[:associate_public_ip_address].to_s unless input[:associate_public_ip_address].nil?
        params[context + 'DeleteOnTermination'] = input[:delete_on_termination].to_s unless input[:delete_on_termination].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DeviceIndex'] = input[:device_index].to_s unless input[:device_index].nil?
        SecurityGroupIdStringList.build(input[:groups], params, context: context + 'SecurityGroupId') unless input[:groups].nil?
        params[context + 'InterfaceType'] = input[:interface_type].to_s unless input[:interface_type].nil?
        params[context + 'Ipv6AddressCount'] = input[:ipv6_address_count].to_s unless input[:ipv6_address_count].nil?
        InstanceIpv6AddressListRequest.build(input[:ipv6_addresses], params, context: context + 'Ipv6Addresses') unless input[:ipv6_addresses].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        params[context + 'PrivateIpAddress'] = input[:private_ip_address].to_s unless input[:private_ip_address].nil?
        PrivateIpAddressSpecificationList.build(input[:private_ip_addresses], params, context: context + 'PrivateIpAddresses') unless input[:private_ip_addresses].nil?
        params[context + 'SecondaryPrivateIpAddressCount'] = input[:secondary_private_ip_address_count].to_s unless input[:secondary_private_ip_address_count].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'NetworkCardIndex'] = input[:network_card_index].to_s unless input[:network_card_index].nil?
        Ipv4PrefixList.build(input[:ipv4_prefixes], params, context: context + 'Ipv4Prefix') unless input[:ipv4_prefixes].nil?
        params[context + 'Ipv4PrefixCount'] = input[:ipv4_prefix_count].to_s unless input[:ipv4_prefix_count].nil?
        Ipv6PrefixList.build(input[:ipv6_prefixes], params, context: context + 'Ipv6Prefix') unless input[:ipv6_prefixes].nil?
        params[context + 'Ipv6PrefixCount'] = input[:ipv6_prefix_count].to_s unless input[:ipv6_prefix_count].nil?
        params[context + 'PrimaryIpv6'] = input[:primary_ipv6].to_s unless input[:primary_ipv6].nil?
        EnaSrdSpecificationRequest.build(input[:ena_srd_specification], params, context: context + 'EnaSrdSpecification' + '.') unless input[:ena_srd_specification].nil?
        ConnectionTrackingSpecificationRequest.build(input[:connection_tracking_specification], params, context: context + 'ConnectionTrackingSpecification' + '.') unless input[:connection_tracking_specification].nil?
      end
    end

    class LaunchTemplateInstanceNetworkInterfaceSpecificationRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          LaunchTemplateInstanceNetworkInterfaceSpecificationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LaunchTemplateLicenseConfigurationRequest
      def self.build(input, params, context: nil)
        params[context + 'LicenseConfigurationArn'] = input[:license_configuration_arn].to_s unless input[:license_configuration_arn].nil?
      end
    end

    class LaunchTemplateLicenseSpecificationListRequest
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          LaunchTemplateLicenseConfigurationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LaunchTemplateNameStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LaunchTemplateOverrides
      def self.build(input, params, context: nil)
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'SpotPrice'] = input[:spot_price].to_s unless input[:spot_price].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'WeightedCapacity'] = Hearth::NumberHelper.serialize(input[:weighted_capacity]).to_s unless input[:weighted_capacity].nil?
        params[context + 'Priority'] = Hearth::NumberHelper.serialize(input[:priority]).to_s unless input[:priority].nil?
        InstanceRequirements.build(input[:instance_requirements], params, context: context + 'InstanceRequirements' + '.') unless input[:instance_requirements].nil?
      end
    end

    class LaunchTemplateOverridesList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          LaunchTemplateOverrides.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LaunchTemplatePlacementRequest
      def self.build(input, params, context: nil)
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'Affinity'] = input[:affinity].to_s unless input[:affinity].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'HostId'] = input[:host_id].to_s unless input[:host_id].nil?
        params[context + 'Tenancy'] = input[:tenancy].to_s unless input[:tenancy].nil?
        params[context + 'SpreadDomain'] = input[:spread_domain].to_s unless input[:spread_domain].nil?
        params[context + 'HostResourceGroupArn'] = input[:host_resource_group_arn].to_s unless input[:host_resource_group_arn].nil?
        params[context + 'PartitionNumber'] = input[:partition_number].to_s unless input[:partition_number].nil?
        params[context + 'GroupId'] = input[:group_id].to_s unless input[:group_id].nil?
      end
    end

    class LaunchTemplatePrivateDnsNameOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'HostnameType'] = input[:hostname_type].to_s unless input[:hostname_type].nil?
        params[context + 'EnableResourceNameDnsARecord'] = input[:enable_resource_name_dns_a_record].to_s unless input[:enable_resource_name_dns_a_record].nil?
        params[context + 'EnableResourceNameDnsAAAARecord'] = input[:enable_resource_name_dns_aaaa_record].to_s unless input[:enable_resource_name_dns_aaaa_record].nil?
      end
    end

    class LaunchTemplateSpecification
      def self.build(input, params, context: nil)
        params[context + 'LaunchTemplateId'] = input[:launch_template_id].to_s unless input[:launch_template_id].nil?
        params[context + 'LaunchTemplateName'] = input[:launch_template_name].to_s unless input[:launch_template_name].nil?
        params[context + 'Version'] = input[:version].to_s unless input[:version].nil?
      end
    end

    class LaunchTemplateSpotMarketOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'MaxPrice'] = input[:max_price].to_s unless input[:max_price].nil?
        params[context + 'SpotInstanceType'] = input[:spot_instance_type].to_s unless input[:spot_instance_type].nil?
        params[context + 'BlockDurationMinutes'] = input[:block_duration_minutes].to_s unless input[:block_duration_minutes].nil?
        params[context + 'ValidUntil'] = Hearth::TimeHelper.to_date_time(input[:valid_until]) unless input[:valid_until].nil?
        params[context + 'InstanceInterruptionBehavior'] = input[:instance_interruption_behavior].to_s unless input[:instance_interruption_behavior].nil?
      end
    end

    class LaunchTemplateTagSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'ResourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        TagList.build(input[:tags], params, context: context + 'Tag') unless input[:tags].nil?
      end
    end

    class LaunchTemplateTagSpecificationRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          LaunchTemplateTagSpecificationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LaunchTemplatesMonitoringRequest
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
      end
    end

    class LicenseConfigurationRequest
      def self.build(input, params, context: nil)
        params[context + 'LicenseConfigurationArn'] = input[:license_configuration_arn].to_s unless input[:license_configuration_arn].nil?
      end
    end

    class LicenseSpecificationListRequest
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          LicenseConfigurationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ListImagesInRecycleBin
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListImagesInRecycleBin'
        params['Version'] = '2016-11-15'
        ImageIdStringList.build(input[:image_ids], params, context: context + 'ImageId') unless input[:image_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ListSnapshotsInRecycleBin
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListSnapshotsInRecycleBin'
        params['Version'] = '2016-11-15'
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        SnapshotIdStringList.build(input[:snapshot_ids], params, context: context + 'SnapshotId') unless input[:snapshot_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class LoadBalancersConfig
      def self.build(input, params, context: nil)
        ClassicLoadBalancersConfig.build(input[:classic_load_balancers_config], params, context: context + 'ClassicLoadBalancersConfig' + '.') unless input[:classic_load_balancers_config].nil?
        TargetGroupsConfig.build(input[:target_groups_config], params, context: context + 'TargetGroupsConfig' + '.') unless input[:target_groups_config].nil?
      end
    end

    class LoadPermissionListRequest
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          LoadPermissionRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LoadPermissionModifications
      def self.build(input, params, context: nil)
        LoadPermissionListRequest.build(input[:add], params, context: context + 'Add') unless input[:add].nil?
        LoadPermissionListRequest.build(input[:remove], params, context: context + 'Remove') unless input[:remove].nil?
      end
    end

    class LoadPermissionRequest
      def self.build(input, params, context: nil)
        params[context + 'Group'] = input[:group].to_s unless input[:group].nil?
        params[context + 'UserId'] = input[:user_id].to_s unless input[:user_id].nil?
      end
    end

    class LocalGatewayIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LocalGatewayRouteTableIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LocalGatewayRouteTableVirtualInterfaceGroupAssociationIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LocalGatewayRouteTableVpcAssociationIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LocalGatewayVirtualInterfaceGroupIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LocalGatewayVirtualInterfaceIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LocalStorageTypeSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LockSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'LockSnapshot'
        params['Version'] = '2016-11-15'
        params[context + 'SnapshotId'] = input[:snapshot_id].to_s unless input[:snapshot_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'LockMode'] = input[:lock_mode].to_s unless input[:lock_mode].nil?
        params[context + 'CoolOffPeriod'] = input[:cool_off_period].to_s unless input[:cool_off_period].nil?
        params[context + 'LockDuration'] = input[:lock_duration].to_s unless input[:lock_duration].nil?
        params[context + 'ExpirationDate'] = Hearth::TimeHelper.to_date_time(input[:expiration_date]) unless input[:expiration_date].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class MemoryGiBPerVCpu
      def self.build(input, params, context: nil)
        params[context + 'Min'] = Hearth::NumberHelper.serialize(input[:min]).to_s unless input[:min].nil?
        params[context + 'Max'] = Hearth::NumberHelper.serialize(input[:max]).to_s unless input[:max].nil?
      end
    end

    class MemoryGiBPerVCpuRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = Hearth::NumberHelper.serialize(input[:min]).to_s unless input[:min].nil?
        params[context + 'Max'] = Hearth::NumberHelper.serialize(input[:max]).to_s unless input[:max].nil?
      end
    end

    class MemoryMiB
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    class MemoryMiBRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    class ModifyAddressAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyAddressAttribute'
        params['Version'] = '2016-11-15'
        params[context + 'AllocationId'] = input[:allocation_id].to_s unless input[:allocation_id].nil?
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyAvailabilityZoneGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyAvailabilityZoneGroup'
        params['Version'] = '2016-11-15'
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'OptInStatus'] = input[:opt_in_status].to_s unless input[:opt_in_status].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyCapacityReservation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyCapacityReservation'
        params['Version'] = '2016-11-15'
        params[context + 'CapacityReservationId'] = input[:capacity_reservation_id].to_s unless input[:capacity_reservation_id].nil?
        params[context + 'InstanceCount'] = input[:instance_count].to_s unless input[:instance_count].nil?
        params[context + 'EndDate'] = Hearth::TimeHelper.to_date_time(input[:end_date]) unless input[:end_date].nil?
        params[context + 'EndDateType'] = input[:end_date_type].to_s unless input[:end_date_type].nil?
        params[context + 'Accept'] = input[:accept].to_s unless input[:accept].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'AdditionalInfo'] = input[:additional_info].to_s unless input[:additional_info].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyCapacityReservationFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyCapacityReservationFleet'
        params['Version'] = '2016-11-15'
        params[context + 'CapacityReservationFleetId'] = input[:capacity_reservation_fleet_id].to_s unless input[:capacity_reservation_fleet_id].nil?
        params[context + 'TotalTargetCapacity'] = input[:total_target_capacity].to_s unless input[:total_target_capacity].nil?
        params[context + 'EndDate'] = Hearth::TimeHelper.to_date_time(input[:end_date]) unless input[:end_date].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'RemoveEndDate'] = input[:remove_end_date].to_s unless input[:remove_end_date].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyClientVpnEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyClientVpnEndpoint'
        params['Version'] = '2016-11-15'
        params[context + 'ClientVpnEndpointId'] = input[:client_vpn_endpoint_id].to_s unless input[:client_vpn_endpoint_id].nil?
        params[context + 'ServerCertificateArn'] = input[:server_certificate_arn].to_s unless input[:server_certificate_arn].nil?
        ConnectionLogOptions.build(input[:connection_log_options], params, context: context + 'ConnectionLogOptions' + '.') unless input[:connection_log_options].nil?
        DnsServersOptionsModifyStructure.build(input[:dns_servers], params, context: context + 'DnsServers' + '.') unless input[:dns_servers].nil?
        params[context + 'VpnPort'] = input[:vpn_port].to_s unless input[:vpn_port].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'SplitTunnel'] = input[:split_tunnel].to_s unless input[:split_tunnel].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        ClientVpnSecurityGroupIdSet.build(input[:security_group_ids], params, context: context + 'SecurityGroupId') unless input[:security_group_ids].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'SelfServicePortal'] = input[:self_service_portal].to_s unless input[:self_service_portal].nil?
        ClientConnectOptions.build(input[:client_connect_options], params, context: context + 'ClientConnectOptions' + '.') unless input[:client_connect_options].nil?
        params[context + 'SessionTimeoutHours'] = input[:session_timeout_hours].to_s unless input[:session_timeout_hours].nil?
        ClientLoginBannerOptions.build(input[:client_login_banner_options], params, context: context + 'ClientLoginBannerOptions' + '.') unless input[:client_login_banner_options].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyDefaultCreditSpecification
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyDefaultCreditSpecification'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceFamily'] = input[:instance_family].to_s unless input[:instance_family].nil?
        params[context + 'CpuCredits'] = input[:cpu_credits].to_s unless input[:cpu_credits].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyEbsDefaultKmsKeyId
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyEbsDefaultKmsKeyId'
        params['Version'] = '2016-11-15'
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyFleet'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ExcessCapacityTerminationPolicy'] = input[:excess_capacity_termination_policy].to_s unless input[:excess_capacity_termination_policy].nil?
        FleetLaunchTemplateConfigListRequest.build(input[:launch_template_configs], params, context: context + 'LaunchTemplateConfig') unless input[:launch_template_configs].nil?
        params[context + 'FleetId'] = input[:fleet_id].to_s unless input[:fleet_id].nil?
        TargetCapacitySpecificationRequest.build(input[:target_capacity_specification], params, context: context + 'TargetCapacitySpecification' + '.') unless input[:target_capacity_specification].nil?
        params[context + 'Context'] = input[:context].to_s unless input[:context].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyFpgaImageAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyFpgaImageAttribute'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'FpgaImageId'] = input[:fpga_image_id].to_s unless input[:fpga_image_id].nil?
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        params[context + 'OperationType'] = input[:operation_type].to_s unless input[:operation_type].nil?
        UserIdStringList.build(input[:user_ids], params, context: context + 'UserId') unless input[:user_ids].nil?
        UserGroupStringList.build(input[:user_groups], params, context: context + 'UserGroup') unless input[:user_groups].nil?
        ProductCodeStringList.build(input[:product_codes], params, context: context + 'ProductCode') unless input[:product_codes].nil?
        LoadPermissionModifications.build(input[:load_permission], params, context: context + 'LoadPermission' + '.') unless input[:load_permission].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyHosts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyHosts'
        params['Version'] = '2016-11-15'
        params[context + 'AutoPlacement'] = input[:auto_placement].to_s unless input[:auto_placement].nil?
        RequestHostIdList.build(input[:host_ids], params, context: context + 'hostId') unless input[:host_ids].nil?
        params[context + 'HostRecovery'] = input[:host_recovery].to_s unless input[:host_recovery].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'InstanceFamily'] = input[:instance_family].to_s unless input[:instance_family].nil?
        params[context + 'HostMaintenance'] = input[:host_maintenance].to_s unless input[:host_maintenance].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyIdFormat
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyIdFormat'
        params['Version'] = '2016-11-15'
        params[context + 'Resource'] = input[:resource].to_s unless input[:resource].nil?
        params[context + 'UseLongIds'] = input[:use_long_ids].to_s unless input[:use_long_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyIdentityIdFormat
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyIdentityIdFormat'
        params['Version'] = '2016-11-15'
        params[context + 'PrincipalArn'] = input[:principal_arn].to_s unless input[:principal_arn].nil?
        params[context + 'Resource'] = input[:resource].to_s unless input[:resource].nil?
        params[context + 'UseLongIds'] = input[:use_long_ids].to_s unless input[:use_long_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyImageAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyImageAttribute'
        params['Version'] = '2016-11-15'
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        AttributeValue.build(input[:description], params, context: context + 'Description' + '.') unless input[:description].nil?
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        LaunchPermissionModifications.build(input[:launch_permission], params, context: context + 'LaunchPermission' + '.') unless input[:launch_permission].nil?
        params[context + 'OperationType'] = input[:operation_type].to_s unless input[:operation_type].nil?
        ProductCodeStringList.build(input[:product_codes], params, context: context + 'ProductCode') unless input[:product_codes].nil?
        UserGroupStringList.build(input[:user_groups], params, context: context + 'UserGroup') unless input[:user_groups].nil?
        UserIdStringList.build(input[:user_ids], params, context: context + 'UserId') unless input[:user_ids].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        OrganizationArnStringList.build(input[:organization_arns], params, context: context + 'OrganizationArn') unless input[:organization_arns].nil?
        OrganizationalUnitArnStringList.build(input[:organizational_unit_arns], params, context: context + 'OrganizationalUnitArn') unless input[:organizational_unit_arns].nil?
        AttributeValue.build(input[:imds_support], params, context: context + 'ImdsSupport' + '.') unless input[:imds_support].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyInstanceAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyInstanceAttribute'
        params['Version'] = '2016-11-15'
        AttributeBooleanValue.build(input[:source_dest_check], params, context: context + 'SourceDestCheck' + '.') unless input[:source_dest_check].nil?
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        InstanceBlockDeviceMappingSpecificationList.build(input[:block_device_mappings], params, context: context + 'blockDeviceMapping') unless input[:block_device_mappings].nil?
        AttributeBooleanValue.build(input[:disable_api_termination], params, context: context + 'DisableApiTermination' + '.') unless input[:disable_api_termination].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        AttributeBooleanValue.build(input[:ebs_optimized], params, context: context + 'EbsOptimized' + '.') unless input[:ebs_optimized].nil?
        AttributeBooleanValue.build(input[:ena_support], params, context: context + 'EnaSupport' + '.') unless input[:ena_support].nil?
        GroupIdStringList.build(input[:groups], params, context: context + 'GroupId') unless input[:groups].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        AttributeValue.build(input[:instance_initiated_shutdown_behavior], params, context: context + 'InstanceInitiatedShutdownBehavior' + '.') unless input[:instance_initiated_shutdown_behavior].nil?
        AttributeValue.build(input[:instance_type], params, context: context + 'InstanceType' + '.') unless input[:instance_type].nil?
        AttributeValue.build(input[:kernel], params, context: context + 'Kernel' + '.') unless input[:kernel].nil?
        AttributeValue.build(input[:ramdisk], params, context: context + 'Ramdisk' + '.') unless input[:ramdisk].nil?
        AttributeValue.build(input[:sriov_net_support], params, context: context + 'SriovNetSupport' + '.') unless input[:sriov_net_support].nil?
        BlobAttributeValue.build(input[:user_data], params, context: context + 'UserData' + '.') unless input[:user_data].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
        AttributeBooleanValue.build(input[:disable_api_stop], params, context: context + 'DisableApiStop' + '.') unless input[:disable_api_stop].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyInstanceCapacityReservationAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyInstanceCapacityReservationAttributes'
        params['Version'] = '2016-11-15'
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        CapacityReservationSpecification.build(input[:capacity_reservation_specification], params, context: context + 'CapacityReservationSpecification' + '.') unless input[:capacity_reservation_specification].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyInstanceCreditSpecification
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyInstanceCreditSpecification'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        InstanceCreditSpecificationListRequest.build(input[:instance_credit_specifications], params, context: context + 'InstanceCreditSpecification') unless input[:instance_credit_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyInstanceEventStartTime
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyInstanceEventStartTime'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'InstanceEventId'] = input[:instance_event_id].to_s unless input[:instance_event_id].nil?
        params[context + 'NotBefore'] = Hearth::TimeHelper.to_date_time(input[:not_before]) unless input[:not_before].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyInstanceEventWindow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyInstanceEventWindow'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'InstanceEventWindowId'] = input[:instance_event_window_id].to_s unless input[:instance_event_window_id].nil?
        InstanceEventWindowTimeRangeRequestSet.build(input[:time_ranges], params, context: context + 'TimeRange') unless input[:time_ranges].nil?
        params[context + 'CronExpression'] = input[:cron_expression].to_s unless input[:cron_expression].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyInstanceMaintenanceOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyInstanceMaintenanceOptions'
        params['Version'] = '2016-11-15'
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'AutoRecovery'] = input[:auto_recovery].to_s unless input[:auto_recovery].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyInstanceMetadataOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyInstanceMetadataOptions'
        params['Version'] = '2016-11-15'
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'HttpTokens'] = input[:http_tokens].to_s unless input[:http_tokens].nil?
        params[context + 'HttpPutResponseHopLimit'] = input[:http_put_response_hop_limit].to_s unless input[:http_put_response_hop_limit].nil?
        params[context + 'HttpEndpoint'] = input[:http_endpoint].to_s unless input[:http_endpoint].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'HttpProtocolIpv6'] = input[:http_protocol_ipv6].to_s unless input[:http_protocol_ipv6].nil?
        params[context + 'InstanceMetadataTags'] = input[:instance_metadata_tags].to_s unless input[:instance_metadata_tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyInstancePlacement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyInstancePlacement'
        params['Version'] = '2016-11-15'
        params[context + 'Affinity'] = input[:affinity].to_s unless input[:affinity].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'HostId'] = input[:host_id].to_s unless input[:host_id].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'Tenancy'] = input[:tenancy].to_s unless input[:tenancy].nil?
        params[context + 'PartitionNumber'] = input[:partition_number].to_s unless input[:partition_number].nil?
        params[context + 'HostResourceGroupArn'] = input[:host_resource_group_arn].to_s unless input[:host_resource_group_arn].nil?
        params[context + 'GroupId'] = input[:group_id].to_s unless input[:group_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyIpam
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyIpam'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamId'] = input[:ipam_id].to_s unless input[:ipam_id].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        AddIpamOperatingRegionSet.build(input[:add_operating_regions], params, context: context + 'AddOperatingRegion') unless input[:add_operating_regions].nil?
        RemoveIpamOperatingRegionSet.build(input[:remove_operating_regions], params, context: context + 'RemoveOperatingRegion') unless input[:remove_operating_regions].nil?
        params[context + 'Tier'] = input[:tier].to_s unless input[:tier].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyIpamPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyIpamPool'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamPoolId'] = input[:ipam_pool_id].to_s unless input[:ipam_pool_id].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'AutoImport'] = input[:auto_import].to_s unless input[:auto_import].nil?
        params[context + 'AllocationMinNetmaskLength'] = input[:allocation_min_netmask_length].to_s unless input[:allocation_min_netmask_length].nil?
        params[context + 'AllocationMaxNetmaskLength'] = input[:allocation_max_netmask_length].to_s unless input[:allocation_max_netmask_length].nil?
        params[context + 'AllocationDefaultNetmaskLength'] = input[:allocation_default_netmask_length].to_s unless input[:allocation_default_netmask_length].nil?
        params[context + 'ClearAllocationDefaultNetmaskLength'] = input[:clear_allocation_default_netmask_length].to_s unless input[:clear_allocation_default_netmask_length].nil?
        RequestIpamResourceTagList.build(input[:add_allocation_resource_tags], params, context: context + 'AddAllocationResourceTag') unless input[:add_allocation_resource_tags].nil?
        RequestIpamResourceTagList.build(input[:remove_allocation_resource_tags], params, context: context + 'RemoveAllocationResourceTag') unless input[:remove_allocation_resource_tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyIpamResourceCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyIpamResourceCidr'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ResourceId'] = input[:resource_id].to_s unless input[:resource_id].nil?
        params[context + 'ResourceCidr'] = input[:resource_cidr].to_s unless input[:resource_cidr].nil?
        params[context + 'ResourceRegion'] = input[:resource_region].to_s unless input[:resource_region].nil?
        params[context + 'CurrentIpamScopeId'] = input[:current_ipam_scope_id].to_s unless input[:current_ipam_scope_id].nil?
        params[context + 'DestinationIpamScopeId'] = input[:destination_ipam_scope_id].to_s unless input[:destination_ipam_scope_id].nil?
        params[context + 'Monitored'] = input[:monitored].to_s unless input[:monitored].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyIpamResourceDiscovery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyIpamResourceDiscovery'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamResourceDiscoveryId'] = input[:ipam_resource_discovery_id].to_s unless input[:ipam_resource_discovery_id].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        AddIpamOperatingRegionSet.build(input[:add_operating_regions], params, context: context + 'AddOperatingRegion') unless input[:add_operating_regions].nil?
        RemoveIpamOperatingRegionSet.build(input[:remove_operating_regions], params, context: context + 'RemoveOperatingRegion') unless input[:remove_operating_regions].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyIpamScope
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyIpamScope'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamScopeId'] = input[:ipam_scope_id].to_s unless input[:ipam_scope_id].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyLaunchTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyLaunchTemplate'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'LaunchTemplateId'] = input[:launch_template_id].to_s unless input[:launch_template_id].nil?
        params[context + 'LaunchTemplateName'] = input[:launch_template_name].to_s unless input[:launch_template_name].nil?
        params[context + 'SetDefaultVersion'] = input[:default_version].to_s unless input[:default_version].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyLocalGatewayRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyLocalGatewayRoute'
        params['Version'] = '2016-11-15'
        params[context + 'DestinationCidrBlock'] = input[:destination_cidr_block].to_s unless input[:destination_cidr_block].nil?
        params[context + 'LocalGatewayRouteTableId'] = input[:local_gateway_route_table_id].to_s unless input[:local_gateway_route_table_id].nil?
        params[context + 'LocalGatewayVirtualInterfaceGroupId'] = input[:local_gateway_virtual_interface_group_id].to_s unless input[:local_gateway_virtual_interface_group_id].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'DestinationPrefixListId'] = input[:destination_prefix_list_id].to_s unless input[:destination_prefix_list_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyManagedPrefixList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyManagedPrefixList'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'PrefixListId'] = input[:prefix_list_id].to_s unless input[:prefix_list_id].nil?
        params[context + 'CurrentVersion'] = input[:current_version].to_s unless input[:current_version].nil?
        params[context + 'PrefixListName'] = input[:prefix_list_name].to_s unless input[:prefix_list_name].nil?
        AddPrefixListEntries.build(input[:add_entries], params, context: context + 'AddEntry') unless input[:add_entries].nil?
        RemovePrefixListEntries.build(input[:remove_entries], params, context: context + 'RemoveEntry') unless input[:remove_entries].nil?
        params[context + 'MaxEntries'] = input[:max_entries].to_s unless input[:max_entries].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyNetworkInterfaceAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyNetworkInterfaceAttribute'
        params['Version'] = '2016-11-15'
        NetworkInterfaceAttachmentChanges.build(input[:attachment], params, context: context + 'Attachment' + '.') unless input[:attachment].nil?
        AttributeValue.build(input[:description], params, context: context + 'Description' + '.') unless input[:description].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        SecurityGroupIdStringList.build(input[:groups], params, context: context + 'SecurityGroupId') unless input[:groups].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        AttributeBooleanValue.build(input[:source_dest_check], params, context: context + 'SourceDestCheck' + '.') unless input[:source_dest_check].nil?
        EnaSrdSpecification.build(input[:ena_srd_specification], params, context: context + 'EnaSrdSpecification' + '.') unless input[:ena_srd_specification].nil?
        params[context + 'EnablePrimaryIpv6'] = input[:enable_primary_ipv6].to_s unless input[:enable_primary_ipv6].nil?
        ConnectionTrackingSpecificationRequest.build(input[:connection_tracking_specification], params, context: context + 'ConnectionTrackingSpecification' + '.') unless input[:connection_tracking_specification].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyPrivateDnsNameOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyPrivateDnsNameOptions'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'PrivateDnsHostnameType'] = input[:private_dns_hostname_type].to_s unless input[:private_dns_hostname_type].nil?
        params[context + 'EnableResourceNameDnsARecord'] = input[:enable_resource_name_dns_a_record].to_s unless input[:enable_resource_name_dns_a_record].nil?
        params[context + 'EnableResourceNameDnsAAAARecord'] = input[:enable_resource_name_dns_aaaa_record].to_s unless input[:enable_resource_name_dns_aaaa_record].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyReservedInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyReservedInstances'
        params['Version'] = '2016-11-15'
        ReservedInstancesIdStringList.build(input[:reserved_instances_ids], params, context: context + 'ReservedInstancesId') unless input[:reserved_instances_ids].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        ReservedInstancesConfigurationList.build(input[:target_configurations], params, context: context + 'ReservedInstancesConfigurationSetItemType') unless input[:target_configurations].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifySecurityGroupRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifySecurityGroupRules'
        params['Version'] = '2016-11-15'
        params[context + 'GroupId'] = input[:group_id].to_s unless input[:group_id].nil?
        SecurityGroupRuleUpdateList.build(input[:security_group_rules], params, context: context + 'SecurityGroupRule') unless input[:security_group_rules].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifySnapshotAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifySnapshotAttribute'
        params['Version'] = '2016-11-15'
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        CreateVolumePermissionModifications.build(input[:create_volume_permission], params, context: context + 'CreateVolumePermission' + '.') unless input[:create_volume_permission].nil?
        GroupNameStringList.build(input[:group_names], params, context: context + 'UserGroup') unless input[:group_names].nil?
        params[context + 'OperationType'] = input[:operation_type].to_s unless input[:operation_type].nil?
        params[context + 'SnapshotId'] = input[:snapshot_id].to_s unless input[:snapshot_id].nil?
        UserIdStringList.build(input[:user_ids], params, context: context + 'UserId') unless input[:user_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifySnapshotTier
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifySnapshotTier'
        params['Version'] = '2016-11-15'
        params[context + 'SnapshotId'] = input[:snapshot_id].to_s unless input[:snapshot_id].nil?
        params[context + 'StorageTier'] = input[:storage_tier].to_s unless input[:storage_tier].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifySpotFleetRequest
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifySpotFleetRequest'
        params['Version'] = '2016-11-15'
        params[context + 'ExcessCapacityTerminationPolicy'] = input[:excess_capacity_termination_policy].to_s unless input[:excess_capacity_termination_policy].nil?
        LaunchTemplateConfigList.build(input[:launch_template_configs], params, context: context + 'LaunchTemplateConfig') unless input[:launch_template_configs].nil?
        params[context + 'SpotFleetRequestId'] = input[:spot_fleet_request_id].to_s unless input[:spot_fleet_request_id].nil?
        params[context + 'TargetCapacity'] = input[:target_capacity].to_s unless input[:target_capacity].nil?
        params[context + 'OnDemandTargetCapacity'] = input[:on_demand_target_capacity].to_s unless input[:on_demand_target_capacity].nil?
        params[context + 'Context'] = input[:context].to_s unless input[:context].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifySubnetAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifySubnetAttribute'
        params['Version'] = '2016-11-15'
        AttributeBooleanValue.build(input[:assign_ipv6_address_on_creation], params, context: context + 'AssignIpv6AddressOnCreation' + '.') unless input[:assign_ipv6_address_on_creation].nil?
        AttributeBooleanValue.build(input[:map_public_ip_on_launch], params, context: context + 'MapPublicIpOnLaunch' + '.') unless input[:map_public_ip_on_launch].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        AttributeBooleanValue.build(input[:map_customer_owned_ip_on_launch], params, context: context + 'MapCustomerOwnedIpOnLaunch' + '.') unless input[:map_customer_owned_ip_on_launch].nil?
        params[context + 'CustomerOwnedIpv4Pool'] = input[:customer_owned_ipv4_pool].to_s unless input[:customer_owned_ipv4_pool].nil?
        AttributeBooleanValue.build(input[:enable_dns64], params, context: context + 'EnableDns64' + '.') unless input[:enable_dns64].nil?
        params[context + 'PrivateDnsHostnameTypeOnLaunch'] = input[:private_dns_hostname_type_on_launch].to_s unless input[:private_dns_hostname_type_on_launch].nil?
        AttributeBooleanValue.build(input[:enable_resource_name_dns_a_record_on_launch], params, context: context + 'EnableResourceNameDnsARecordOnLaunch' + '.') unless input[:enable_resource_name_dns_a_record_on_launch].nil?
        AttributeBooleanValue.build(input[:enable_resource_name_dns_aaaa_record_on_launch], params, context: context + 'EnableResourceNameDnsAAAARecordOnLaunch' + '.') unless input[:enable_resource_name_dns_aaaa_record_on_launch].nil?
        params[context + 'EnableLniAtDeviceIndex'] = input[:enable_lni_at_device_index].to_s unless input[:enable_lni_at_device_index].nil?
        AttributeBooleanValue.build(input[:disable_lni_at_device_index], params, context: context + 'DisableLniAtDeviceIndex' + '.') unless input[:disable_lni_at_device_index].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyTrafficMirrorFilterNetworkServices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyTrafficMirrorFilterNetworkServices'
        params['Version'] = '2016-11-15'
        params[context + 'TrafficMirrorFilterId'] = input[:traffic_mirror_filter_id].to_s unless input[:traffic_mirror_filter_id].nil?
        TrafficMirrorNetworkServiceList.build(input[:add_network_services], params, context: context + 'AddNetworkService') unless input[:add_network_services].nil?
        TrafficMirrorNetworkServiceList.build(input[:remove_network_services], params, context: context + 'RemoveNetworkService') unless input[:remove_network_services].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyTrafficMirrorFilterRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyTrafficMirrorFilterRule'
        params['Version'] = '2016-11-15'
        params[context + 'TrafficMirrorFilterRuleId'] = input[:traffic_mirror_filter_rule_id].to_s unless input[:traffic_mirror_filter_rule_id].nil?
        params[context + 'TrafficDirection'] = input[:traffic_direction].to_s unless input[:traffic_direction].nil?
        params[context + 'RuleNumber'] = input[:rule_number].to_s unless input[:rule_number].nil?
        params[context + 'RuleAction'] = input[:rule_action].to_s unless input[:rule_action].nil?
        TrafficMirrorPortRangeRequest.build(input[:destination_port_range], params, context: context + 'DestinationPortRange' + '.') unless input[:destination_port_range].nil?
        TrafficMirrorPortRangeRequest.build(input[:source_port_range], params, context: context + 'SourcePortRange' + '.') unless input[:source_port_range].nil?
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
        params[context + 'DestinationCidrBlock'] = input[:destination_cidr_block].to_s unless input[:destination_cidr_block].nil?
        params[context + 'SourceCidrBlock'] = input[:source_cidr_block].to_s unless input[:source_cidr_block].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        TrafficMirrorFilterRuleFieldList.build(input[:remove_fields], params, context: context + 'RemoveField') unless input[:remove_fields].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyTrafficMirrorSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyTrafficMirrorSession'
        params['Version'] = '2016-11-15'
        params[context + 'TrafficMirrorSessionId'] = input[:traffic_mirror_session_id].to_s unless input[:traffic_mirror_session_id].nil?
        params[context + 'TrafficMirrorTargetId'] = input[:traffic_mirror_target_id].to_s unless input[:traffic_mirror_target_id].nil?
        params[context + 'TrafficMirrorFilterId'] = input[:traffic_mirror_filter_id].to_s unless input[:traffic_mirror_filter_id].nil?
        params[context + 'PacketLength'] = input[:packet_length].to_s unless input[:packet_length].nil?
        params[context + 'SessionNumber'] = input[:session_number].to_s unless input[:session_number].nil?
        params[context + 'VirtualNetworkId'] = input[:virtual_network_id].to_s unless input[:virtual_network_id].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        TrafficMirrorSessionFieldList.build(input[:remove_fields], params, context: context + 'RemoveField') unless input[:remove_fields].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyTransitGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyTransitGateway'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayId'] = input[:transit_gateway_id].to_s unless input[:transit_gateway_id].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        ModifyTransitGatewayOptions.build(input[:options], params, context: context + 'Options' + '.') unless input[:options].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyTransitGatewayOptions
      def self.build(input, params, context: nil)
        TransitGatewayCidrBlockStringList.build(input[:add_transit_gateway_cidr_blocks], params, context: context + 'AddTransitGatewayCidrBlocks') unless input[:add_transit_gateway_cidr_blocks].nil?
        TransitGatewayCidrBlockStringList.build(input[:remove_transit_gateway_cidr_blocks], params, context: context + 'RemoveTransitGatewayCidrBlocks') unless input[:remove_transit_gateway_cidr_blocks].nil?
        params[context + 'VpnEcmpSupport'] = input[:vpn_ecmp_support].to_s unless input[:vpn_ecmp_support].nil?
        params[context + 'DnsSupport'] = input[:dns_support].to_s unless input[:dns_support].nil?
        params[context + 'SecurityGroupReferencingSupport'] = input[:security_group_referencing_support].to_s unless input[:security_group_referencing_support].nil?
        params[context + 'AutoAcceptSharedAttachments'] = input[:auto_accept_shared_attachments].to_s unless input[:auto_accept_shared_attachments].nil?
        params[context + 'DefaultRouteTableAssociation'] = input[:default_route_table_association].to_s unless input[:default_route_table_association].nil?
        params[context + 'AssociationDefaultRouteTableId'] = input[:association_default_route_table_id].to_s unless input[:association_default_route_table_id].nil?
        params[context + 'DefaultRouteTablePropagation'] = input[:default_route_table_propagation].to_s unless input[:default_route_table_propagation].nil?
        params[context + 'PropagationDefaultRouteTableId'] = input[:propagation_default_route_table_id].to_s unless input[:propagation_default_route_table_id].nil?
        params[context + 'AmazonSideAsn'] = input[:amazon_side_asn].to_s unless input[:amazon_side_asn].nil?
      end
    end

    class ModifyTransitGatewayPrefixListReference
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyTransitGatewayPrefixListReference'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayRouteTableId'] = input[:transit_gateway_route_table_id].to_s unless input[:transit_gateway_route_table_id].nil?
        params[context + 'PrefixListId'] = input[:prefix_list_id].to_s unless input[:prefix_list_id].nil?
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        params[context + 'Blackhole'] = input[:blackhole].to_s unless input[:blackhole].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyTransitGatewayVpcAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyTransitGatewayVpcAttachment'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        TransitGatewaySubnetIdList.build(input[:add_subnet_ids], params, context: context + 'AddSubnetIds') unless input[:add_subnet_ids].nil?
        TransitGatewaySubnetIdList.build(input[:remove_subnet_ids], params, context: context + 'RemoveSubnetIds') unless input[:remove_subnet_ids].nil?
        ModifyTransitGatewayVpcAttachmentRequestOptions.build(input[:options], params, context: context + 'Options' + '.') unless input[:options].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyTransitGatewayVpcAttachmentRequestOptions
      def self.build(input, params, context: nil)
        params[context + 'DnsSupport'] = input[:dns_support].to_s unless input[:dns_support].nil?
        params[context + 'SecurityGroupReferencingSupport'] = input[:security_group_referencing_support].to_s unless input[:security_group_referencing_support].nil?
        params[context + 'Ipv6Support'] = input[:ipv6_support].to_s unless input[:ipv6_support].nil?
        params[context + 'ApplianceModeSupport'] = input[:appliance_mode_support].to_s unless input[:appliance_mode_support].nil?
      end
    end

    class ModifyVerifiedAccessEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVerifiedAccessEndpoint'
        params['Version'] = '2016-11-15'
        params[context + 'VerifiedAccessEndpointId'] = input[:verified_access_endpoint_id].to_s unless input[:verified_access_endpoint_id].nil?
        params[context + 'VerifiedAccessGroupId'] = input[:verified_access_group_id].to_s unless input[:verified_access_group_id].nil?
        ModifyVerifiedAccessEndpointLoadBalancerOptions.build(input[:load_balancer_options], params, context: context + 'LoadBalancerOptions' + '.') unless input[:load_balancer_options].nil?
        ModifyVerifiedAccessEndpointEniOptions.build(input[:network_interface_options], params, context: context + 'NetworkInterfaceOptions' + '.') unless input[:network_interface_options].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVerifiedAccessEndpointEniOptions
      def self.build(input, params, context: nil)
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
      end
    end

    class ModifyVerifiedAccessEndpointLoadBalancerOptions
      def self.build(input, params, context: nil)
        ModifyVerifiedAccessEndpointSubnetIdList.build(input[:subnet_ids], params, context: context + 'SubnetId') unless input[:subnet_ids].nil?
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
      end
    end

    class ModifyVerifiedAccessEndpointPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVerifiedAccessEndpointPolicy'
        params['Version'] = '2016-11-15'
        params[context + 'VerifiedAccessEndpointId'] = input[:verified_access_endpoint_id].to_s unless input[:verified_access_endpoint_id].nil?
        params[context + 'PolicyEnabled'] = input[:policy_enabled].to_s unless input[:policy_enabled].nil?
        params[context + 'PolicyDocument'] = input[:policy_document].to_s unless input[:policy_document].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        VerifiedAccessSseSpecificationRequest.build(input[:sse_specification], params, context: context + 'SseSpecification' + '.') unless input[:sse_specification].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVerifiedAccessEndpointSubnetIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ModifyVerifiedAccessGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVerifiedAccessGroup'
        params['Version'] = '2016-11-15'
        params[context + 'VerifiedAccessGroupId'] = input[:verified_access_group_id].to_s unless input[:verified_access_group_id].nil?
        params[context + 'VerifiedAccessInstanceId'] = input[:verified_access_instance_id].to_s unless input[:verified_access_instance_id].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVerifiedAccessGroupPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVerifiedAccessGroupPolicy'
        params['Version'] = '2016-11-15'
        params[context + 'VerifiedAccessGroupId'] = input[:verified_access_group_id].to_s unless input[:verified_access_group_id].nil?
        params[context + 'PolicyEnabled'] = input[:policy_enabled].to_s unless input[:policy_enabled].nil?
        params[context + 'PolicyDocument'] = input[:policy_document].to_s unless input[:policy_document].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        VerifiedAccessSseSpecificationRequest.build(input[:sse_specification], params, context: context + 'SseSpecification' + '.') unless input[:sse_specification].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVerifiedAccessInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVerifiedAccessInstance'
        params['Version'] = '2016-11-15'
        params[context + 'VerifiedAccessInstanceId'] = input[:verified_access_instance_id].to_s unless input[:verified_access_instance_id].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVerifiedAccessInstanceLoggingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVerifiedAccessInstanceLoggingConfiguration'
        params['Version'] = '2016-11-15'
        params[context + 'VerifiedAccessInstanceId'] = input[:verified_access_instance_id].to_s unless input[:verified_access_instance_id].nil?
        VerifiedAccessLogOptions.build(input[:access_logs], params, context: context + 'AccessLogs' + '.') unless input[:access_logs].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVerifiedAccessTrustProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVerifiedAccessTrustProvider'
        params['Version'] = '2016-11-15'
        params[context + 'VerifiedAccessTrustProviderId'] = input[:verified_access_trust_provider_id].to_s unless input[:verified_access_trust_provider_id].nil?
        ModifyVerifiedAccessTrustProviderOidcOptions.build(input[:oidc_options], params, context: context + 'OidcOptions' + '.') unless input[:oidc_options].nil?
        ModifyVerifiedAccessTrustProviderDeviceOptions.build(input[:device_options], params, context: context + 'DeviceOptions' + '.') unless input[:device_options].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        VerifiedAccessSseSpecificationRequest.build(input[:sse_specification], params, context: context + 'SseSpecification' + '.') unless input[:sse_specification].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVerifiedAccessTrustProviderDeviceOptions
      def self.build(input, params, context: nil)
        params[context + 'PublicSigningKeyUrl'] = input[:public_signing_key_url].to_s unless input[:public_signing_key_url].nil?
      end
    end

    class ModifyVerifiedAccessTrustProviderOidcOptions
      def self.build(input, params, context: nil)
        params[context + 'Issuer'] = input[:issuer].to_s unless input[:issuer].nil?
        params[context + 'AuthorizationEndpoint'] = input[:authorization_endpoint].to_s unless input[:authorization_endpoint].nil?
        params[context + 'TokenEndpoint'] = input[:token_endpoint].to_s unless input[:token_endpoint].nil?
        params[context + 'UserInfoEndpoint'] = input[:user_info_endpoint].to_s unless input[:user_info_endpoint].nil?
        params[context + 'ClientId'] = input[:client_id].to_s unless input[:client_id].nil?
        params[context + 'ClientSecret'] = input[:client_secret].to_s unless input[:client_secret].nil?
        params[context + 'Scope'] = input[:scope].to_s unless input[:scope].nil?
      end
    end

    class ModifyVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVolume'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'VolumeId'] = input[:volume_id].to_s unless input[:volume_id].nil?
        params[context + 'Size'] = input[:size].to_s unless input[:size].nil?
        params[context + 'VolumeType'] = input[:volume_type].to_s unless input[:volume_type].nil?
        params[context + 'Iops'] = input[:iops].to_s unless input[:iops].nil?
        params[context + 'Throughput'] = input[:throughput].to_s unless input[:throughput].nil?
        params[context + 'MultiAttachEnabled'] = input[:multi_attach_enabled].to_s unless input[:multi_attach_enabled].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVolumeAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVolumeAttribute'
        params['Version'] = '2016-11-15'
        AttributeBooleanValue.build(input[:auto_enable_io], params, context: context + 'AutoEnableIO' + '.') unless input[:auto_enable_io].nil?
        params[context + 'VolumeId'] = input[:volume_id].to_s unless input[:volume_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVpcAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVpcAttribute'
        params['Version'] = '2016-11-15'
        AttributeBooleanValue.build(input[:enable_dns_hostnames], params, context: context + 'EnableDnsHostnames' + '.') unless input[:enable_dns_hostnames].nil?
        AttributeBooleanValue.build(input[:enable_dns_support], params, context: context + 'EnableDnsSupport' + '.') unless input[:enable_dns_support].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        AttributeBooleanValue.build(input[:enable_network_address_usage_metrics], params, context: context + 'EnableNetworkAddressUsageMetrics' + '.') unless input[:enable_network_address_usage_metrics].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVpcEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVpcEndpoint'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'VpcEndpointId'] = input[:vpc_endpoint_id].to_s unless input[:vpc_endpoint_id].nil?
        params[context + 'ResetPolicy'] = input[:reset_policy].to_s unless input[:reset_policy].nil?
        params[context + 'PolicyDocument'] = input[:policy_document].to_s unless input[:policy_document].nil?
        VpcEndpointRouteTableIdList.build(input[:add_route_table_ids], params, context: context + 'AddRouteTableId') unless input[:add_route_table_ids].nil?
        VpcEndpointRouteTableIdList.build(input[:remove_route_table_ids], params, context: context + 'RemoveRouteTableId') unless input[:remove_route_table_ids].nil?
        VpcEndpointSubnetIdList.build(input[:add_subnet_ids], params, context: context + 'AddSubnetId') unless input[:add_subnet_ids].nil?
        VpcEndpointSubnetIdList.build(input[:remove_subnet_ids], params, context: context + 'RemoveSubnetId') unless input[:remove_subnet_ids].nil?
        VpcEndpointSecurityGroupIdList.build(input[:add_security_group_ids], params, context: context + 'AddSecurityGroupId') unless input[:add_security_group_ids].nil?
        VpcEndpointSecurityGroupIdList.build(input[:remove_security_group_ids], params, context: context + 'RemoveSecurityGroupId') unless input[:remove_security_group_ids].nil?
        params[context + 'IpAddressType'] = input[:ip_address_type].to_s unless input[:ip_address_type].nil?
        DnsOptionsSpecification.build(input[:dns_options], params, context: context + 'DnsOptions' + '.') unless input[:dns_options].nil?
        params[context + 'PrivateDnsEnabled'] = input[:private_dns_enabled].to_s unless input[:private_dns_enabled].nil?
        SubnetConfigurationsList.build(input[:subnet_configurations], params, context: context + 'SubnetConfiguration') unless input[:subnet_configurations].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVpcEndpointConnectionNotification
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVpcEndpointConnectionNotification'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ConnectionNotificationId'] = input[:connection_notification_id].to_s unless input[:connection_notification_id].nil?
        params[context + 'ConnectionNotificationArn'] = input[:connection_notification_arn].to_s unless input[:connection_notification_arn].nil?
        ValueStringList.build(input[:connection_events], params, context: context + 'ConnectionEvents') unless input[:connection_events].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVpcEndpointServiceConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVpcEndpointServiceConfiguration'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ServiceId'] = input[:service_id].to_s unless input[:service_id].nil?
        params[context + 'PrivateDnsName'] = input[:private_dns_name].to_s unless input[:private_dns_name].nil?
        params[context + 'RemovePrivateDnsName'] = input[:remove_private_dns_name].to_s unless input[:remove_private_dns_name].nil?
        params[context + 'AcceptanceRequired'] = input[:acceptance_required].to_s unless input[:acceptance_required].nil?
        ValueStringList.build(input[:add_network_load_balancer_arns], params, context: context + 'AddNetworkLoadBalancerArn') unless input[:add_network_load_balancer_arns].nil?
        ValueStringList.build(input[:remove_network_load_balancer_arns], params, context: context + 'RemoveNetworkLoadBalancerArn') unless input[:remove_network_load_balancer_arns].nil?
        ValueStringList.build(input[:add_gateway_load_balancer_arns], params, context: context + 'AddGatewayLoadBalancerArn') unless input[:add_gateway_load_balancer_arns].nil?
        ValueStringList.build(input[:remove_gateway_load_balancer_arns], params, context: context + 'RemoveGatewayLoadBalancerArn') unless input[:remove_gateway_load_balancer_arns].nil?
        ValueStringList.build(input[:add_supported_ip_address_types], params, context: context + 'AddSupportedIpAddressType') unless input[:add_supported_ip_address_types].nil?
        ValueStringList.build(input[:remove_supported_ip_address_types], params, context: context + 'RemoveSupportedIpAddressType') unless input[:remove_supported_ip_address_types].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVpcEndpointServicePayerResponsibility
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVpcEndpointServicePayerResponsibility'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ServiceId'] = input[:service_id].to_s unless input[:service_id].nil?
        params[context + 'PayerResponsibility'] = input[:payer_responsibility].to_s unless input[:payer_responsibility].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVpcEndpointServicePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVpcEndpointServicePermissions'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ServiceId'] = input[:service_id].to_s unless input[:service_id].nil?
        ValueStringList.build(input[:add_allowed_principals], params, context: context + 'AddAllowedPrincipals') unless input[:add_allowed_principals].nil?
        ValueStringList.build(input[:remove_allowed_principals], params, context: context + 'RemoveAllowedPrincipals') unless input[:remove_allowed_principals].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVpcPeeringConnectionOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVpcPeeringConnectionOptions'
        params['Version'] = '2016-11-15'
        PeeringConnectionOptionsRequest.build(input[:accepter_peering_connection_options], params, context: context + 'AccepterPeeringConnectionOptions' + '.') unless input[:accepter_peering_connection_options].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        PeeringConnectionOptionsRequest.build(input[:requester_peering_connection_options], params, context: context + 'RequesterPeeringConnectionOptions' + '.') unless input[:requester_peering_connection_options].nil?
        params[context + 'VpcPeeringConnectionId'] = input[:vpc_peering_connection_id].to_s unless input[:vpc_peering_connection_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVpcTenancy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVpcTenancy'
        params['Version'] = '2016-11-15'
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'InstanceTenancy'] = input[:instance_tenancy].to_s unless input[:instance_tenancy].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVpnConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVpnConnection'
        params['Version'] = '2016-11-15'
        params[context + 'VpnConnectionId'] = input[:vpn_connection_id].to_s unless input[:vpn_connection_id].nil?
        params[context + 'TransitGatewayId'] = input[:transit_gateway_id].to_s unless input[:transit_gateway_id].nil?
        params[context + 'CustomerGatewayId'] = input[:customer_gateway_id].to_s unless input[:customer_gateway_id].nil?
        params[context + 'VpnGatewayId'] = input[:vpn_gateway_id].to_s unless input[:vpn_gateway_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVpnConnectionOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVpnConnectionOptions'
        params['Version'] = '2016-11-15'
        params[context + 'VpnConnectionId'] = input[:vpn_connection_id].to_s unless input[:vpn_connection_id].nil?
        params[context + 'LocalIpv4NetworkCidr'] = input[:local_ipv4_network_cidr].to_s unless input[:local_ipv4_network_cidr].nil?
        params[context + 'RemoteIpv4NetworkCidr'] = input[:remote_ipv4_network_cidr].to_s unless input[:remote_ipv4_network_cidr].nil?
        params[context + 'LocalIpv6NetworkCidr'] = input[:local_ipv6_network_cidr].to_s unless input[:local_ipv6_network_cidr].nil?
        params[context + 'RemoteIpv6NetworkCidr'] = input[:remote_ipv6_network_cidr].to_s unless input[:remote_ipv6_network_cidr].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVpnTunnelCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVpnTunnelCertificate'
        params['Version'] = '2016-11-15'
        params[context + 'VpnConnectionId'] = input[:vpn_connection_id].to_s unless input[:vpn_connection_id].nil?
        params[context + 'VpnTunnelOutsideIpAddress'] = input[:vpn_tunnel_outside_ip_address].to_s unless input[:vpn_tunnel_outside_ip_address].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVpnTunnelOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVpnTunnelOptions'
        params['Version'] = '2016-11-15'
        params[context + 'VpnConnectionId'] = input[:vpn_connection_id].to_s unless input[:vpn_connection_id].nil?
        params[context + 'VpnTunnelOutsideIpAddress'] = input[:vpn_tunnel_outside_ip_address].to_s unless input[:vpn_tunnel_outside_ip_address].nil?
        ModifyVpnTunnelOptionsSpecification.build(input[:tunnel_options], params, context: context + 'TunnelOptions' + '.') unless input[:tunnel_options].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'SkipTunnelReplacement'] = input[:skip_tunnel_replacement].to_s unless input[:skip_tunnel_replacement].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ModifyVpnTunnelOptionsSpecification
      def self.build(input, params, context: nil)
        params[context + 'TunnelInsideCidr'] = input[:tunnel_inside_cidr].to_s unless input[:tunnel_inside_cidr].nil?
        params[context + 'TunnelInsideIpv6Cidr'] = input[:tunnel_inside_ipv6_cidr].to_s unless input[:tunnel_inside_ipv6_cidr].nil?
        params[context + 'PreSharedKey'] = input[:pre_shared_key].to_s unless input[:pre_shared_key].nil?
        params[context + 'Phase1LifetimeSeconds'] = input[:phase1_lifetime_seconds].to_s unless input[:phase1_lifetime_seconds].nil?
        params[context + 'Phase2LifetimeSeconds'] = input[:phase2_lifetime_seconds].to_s unless input[:phase2_lifetime_seconds].nil?
        params[context + 'RekeyMarginTimeSeconds'] = input[:rekey_margin_time_seconds].to_s unless input[:rekey_margin_time_seconds].nil?
        params[context + 'RekeyFuzzPercentage'] = input[:rekey_fuzz_percentage].to_s unless input[:rekey_fuzz_percentage].nil?
        params[context + 'ReplayWindowSize'] = input[:replay_window_size].to_s unless input[:replay_window_size].nil?
        params[context + 'DPDTimeoutSeconds'] = input[:dpd_timeout_seconds].to_s unless input[:dpd_timeout_seconds].nil?
        params[context + 'DPDTimeoutAction'] = input[:dpd_timeout_action].to_s unless input[:dpd_timeout_action].nil?
        Phase1EncryptionAlgorithmsRequestList.build(input[:phase1_encryption_algorithms], params, context: context + 'Phase1EncryptionAlgorithm') unless input[:phase1_encryption_algorithms].nil?
        Phase2EncryptionAlgorithmsRequestList.build(input[:phase2_encryption_algorithms], params, context: context + 'Phase2EncryptionAlgorithm') unless input[:phase2_encryption_algorithms].nil?
        Phase1IntegrityAlgorithmsRequestList.build(input[:phase1_integrity_algorithms], params, context: context + 'Phase1IntegrityAlgorithm') unless input[:phase1_integrity_algorithms].nil?
        Phase2IntegrityAlgorithmsRequestList.build(input[:phase2_integrity_algorithms], params, context: context + 'Phase2IntegrityAlgorithm') unless input[:phase2_integrity_algorithms].nil?
        Phase1DHGroupNumbersRequestList.build(input[:phase1_dh_group_numbers], params, context: context + 'Phase1DHGroupNumber') unless input[:phase1_dh_group_numbers].nil?
        Phase2DHGroupNumbersRequestList.build(input[:phase2_dh_group_numbers], params, context: context + 'Phase2DHGroupNumber') unless input[:phase2_dh_group_numbers].nil?
        IKEVersionsRequestList.build(input[:ike_versions], params, context: context + 'IKEVersion') unless input[:ike_versions].nil?
        params[context + 'StartupAction'] = input[:startup_action].to_s unless input[:startup_action].nil?
        VpnTunnelLogOptionsSpecification.build(input[:log_options], params, context: context + 'LogOptions' + '.') unless input[:log_options].nil?
        params[context + 'EnableTunnelLifecycleControl'] = input[:enable_tunnel_lifecycle_control].to_s unless input[:enable_tunnel_lifecycle_control].nil?
      end
    end

    class MonitorInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'MonitorInstances'
        params['Version'] = '2016-11-15'
        InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class MoveAddressToVpc
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'MoveAddressToVpc'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'PublicIp'] = input[:public_ip].to_s unless input[:public_ip].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class MoveByoipCidrToIpam
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'MoveByoipCidrToIpam'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
        params[context + 'IpamPoolId'] = input[:ipam_pool_id].to_s unless input[:ipam_pool_id].nil?
        params[context + 'IpamPoolOwner'] = input[:ipam_pool_owner].to_s unless input[:ipam_pool_owner].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class NatGatewayIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class NetworkAclIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class NetworkBandwidthGbps
      def self.build(input, params, context: nil)
        params[context + 'Min'] = Hearth::NumberHelper.serialize(input[:min]).to_s unless input[:min].nil?
        params[context + 'Max'] = Hearth::NumberHelper.serialize(input[:max]).to_s unless input[:max].nil?
      end
    end

    class NetworkBandwidthGbpsRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = Hearth::NumberHelper.serialize(input[:min]).to_s unless input[:min].nil?
        params[context + 'Max'] = Hearth::NumberHelper.serialize(input[:max]).to_s unless input[:max].nil?
      end
    end

    class NetworkInsightsAccessScopeAnalysisIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class NetworkInsightsAccessScopeIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class NetworkInsightsAnalysisIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class NetworkInsightsPathIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class NetworkInterfaceAttachmentChanges
      def self.build(input, params, context: nil)
        params[context + 'AttachmentId'] = input[:attachment_id].to_s unless input[:attachment_id].nil?
        params[context + 'DeleteOnTermination'] = input[:delete_on_termination].to_s unless input[:delete_on_termination].nil?
      end
    end

    class NetworkInterfaceCount
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    class NetworkInterfaceCountRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    class NetworkInterfaceIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class NetworkInterfacePermissionIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class NewDhcpConfiguration
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        ValueStringList.build(input[:values], params, context: context + 'Value') unless input[:values].nil?
      end
    end

    class NewDhcpConfigurationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          NewDhcpConfiguration.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class OccurrenceDayRequestSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class OnDemandOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'AllocationStrategy'] = input[:allocation_strategy].to_s unless input[:allocation_strategy].nil?
        CapacityReservationOptionsRequest.build(input[:capacity_reservation_options], params, context: context + 'CapacityReservationOptions' + '.') unless input[:capacity_reservation_options].nil?
        params[context + 'SingleInstanceType'] = input[:single_instance_type].to_s unless input[:single_instance_type].nil?
        params[context + 'SingleAvailabilityZone'] = input[:single_availability_zone].to_s unless input[:single_availability_zone].nil?
        params[context + 'MinTargetCapacity'] = input[:min_target_capacity].to_s unless input[:min_target_capacity].nil?
        params[context + 'MaxTotalPrice'] = input[:max_total_price].to_s unless input[:max_total_price].nil?
      end
    end

    class OrganizationArnStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class OrganizationalUnitArnStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class OwnerStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class PacketHeaderStatementRequest
      def self.build(input, params, context: nil)
        ValueStringList.build(input[:source_addresses], params, context: context + 'SourceAddress') unless input[:source_addresses].nil?
        ValueStringList.build(input[:destination_addresses], params, context: context + 'DestinationAddress') unless input[:destination_addresses].nil?
        ValueStringList.build(input[:source_ports], params, context: context + 'SourcePort') unless input[:source_ports].nil?
        ValueStringList.build(input[:destination_ports], params, context: context + 'DestinationPort') unless input[:destination_ports].nil?
        ValueStringList.build(input[:source_prefix_lists], params, context: context + 'SourcePrefixList') unless input[:source_prefix_lists].nil?
        ValueStringList.build(input[:destination_prefix_lists], params, context: context + 'DestinationPrefixList') unless input[:destination_prefix_lists].nil?
        ProtocolList.build(input[:protocols], params, context: context + 'Protocol') unless input[:protocols].nil?
      end
    end

    class PathRequestFilter
      def self.build(input, params, context: nil)
        params[context + 'SourceAddress'] = input[:source_address].to_s unless input[:source_address].nil?
        RequestFilterPortRange.build(input[:source_port_range], params, context: context + 'SourcePortRange' + '.') unless input[:source_port_range].nil?
        params[context + 'DestinationAddress'] = input[:destination_address].to_s unless input[:destination_address].nil?
        RequestFilterPortRange.build(input[:destination_port_range], params, context: context + 'DestinationPortRange' + '.') unless input[:destination_port_range].nil?
      end
    end

    class PathStatementRequest
      def self.build(input, params, context: nil)
        PacketHeaderStatementRequest.build(input[:packet_header_statement], params, context: context + 'PacketHeaderStatement' + '.') unless input[:packet_header_statement].nil?
        ResourceStatementRequest.build(input[:resource_statement], params, context: context + 'ResourceStatement' + '.') unless input[:resource_statement].nil?
      end
    end

    class PeeringConnectionOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'AllowDnsResolutionFromRemoteVpc'] = input[:allow_dns_resolution_from_remote_vpc].to_s unless input[:allow_dns_resolution_from_remote_vpc].nil?
        params[context + 'AllowEgressFromLocalClassicLinkToRemoteVpc'] = input[:allow_egress_from_local_classic_link_to_remote_vpc].to_s unless input[:allow_egress_from_local_classic_link_to_remote_vpc].nil?
        params[context + 'AllowEgressFromLocalVpcToRemoteClassicLink'] = input[:allow_egress_from_local_vpc_to_remote_classic_link].to_s unless input[:allow_egress_from_local_vpc_to_remote_classic_link].nil?
      end
    end

    class Phase1DHGroupNumbersRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Phase1DHGroupNumbersRequestListValue.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class Phase1DHGroupNumbersRequestListValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    class Phase1EncryptionAlgorithmsRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Phase1EncryptionAlgorithmsRequestListValue.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class Phase1EncryptionAlgorithmsRequestListValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    class Phase1IntegrityAlgorithmsRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Phase1IntegrityAlgorithmsRequestListValue.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class Phase1IntegrityAlgorithmsRequestListValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    class Phase2DHGroupNumbersRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Phase2DHGroupNumbersRequestListValue.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class Phase2DHGroupNumbersRequestListValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    class Phase2EncryptionAlgorithmsRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Phase2EncryptionAlgorithmsRequestListValue.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class Phase2EncryptionAlgorithmsRequestListValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    class Phase2IntegrityAlgorithmsRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Phase2IntegrityAlgorithmsRequestListValue.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class Phase2IntegrityAlgorithmsRequestListValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    class Placement
      def self.build(input, params, context: nil)
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'Affinity'] = input[:affinity].to_s unless input[:affinity].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'PartitionNumber'] = input[:partition_number].to_s unless input[:partition_number].nil?
        params[context + 'HostId'] = input[:host_id].to_s unless input[:host_id].nil?
        params[context + 'Tenancy'] = input[:tenancy].to_s unless input[:tenancy].nil?
        params[context + 'SpreadDomain'] = input[:spread_domain].to_s unless input[:spread_domain].nil?
        params[context + 'HostResourceGroupArn'] = input[:host_resource_group_arn].to_s unless input[:host_resource_group_arn].nil?
        params[context + 'GroupId'] = input[:group_id].to_s unless input[:group_id].nil?
      end
    end

    class PlacementGroupIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class PlacementGroupStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class PortRange
      def self.build(input, params, context: nil)
        params[context + 'From'] = input[:from].to_s unless input[:from].nil?
        params[context + 'To'] = input[:to].to_s unless input[:to].nil?
      end
    end

    class PrefixListId
      def self.build(input, params, context: nil)
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'PrefixListId'] = input[:prefix_list_id].to_s unless input[:prefix_list_id].nil?
      end
    end

    class PrefixListIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          PrefixListId.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class PrefixListResourceIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class PriceScheduleSpecification
      def self.build(input, params, context: nil)
        params[context + 'CurrencyCode'] = input[:currency_code].to_s unless input[:currency_code].nil?
        params[context + 'Price'] = Hearth::NumberHelper.serialize(input[:price]).to_s unless input[:price].nil?
        params[context + 'Term'] = input[:term].to_s unless input[:term].nil?
      end
    end

    class PriceScheduleSpecificationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          PriceScheduleSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class PrivateDnsNameOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'HostnameType'] = input[:hostname_type].to_s unless input[:hostname_type].nil?
        params[context + 'EnableResourceNameDnsARecord'] = input[:enable_resource_name_dns_a_record].to_s unless input[:enable_resource_name_dns_a_record].nil?
        params[context + 'EnableResourceNameDnsAAAARecord'] = input[:enable_resource_name_dns_aaaa_record].to_s unless input[:enable_resource_name_dns_aaaa_record].nil?
      end
    end

    class PrivateIpAddressConfigSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          ScheduledInstancesPrivateIpAddressConfig.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class PrivateIpAddressSpecification
      def self.build(input, params, context: nil)
        params[context + 'Primary'] = input[:primary].to_s unless input[:primary].nil?
        params[context + 'PrivateIpAddress'] = input[:private_ip_address].to_s unless input[:private_ip_address].nil?
      end
    end

    class PrivateIpAddressSpecificationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          PrivateIpAddressSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class PrivateIpAddressStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ProductCodeStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ProductDescriptionList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ProtocolList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ProvisionByoipCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ProvisionByoipCidr'
        params['Version'] = '2016-11-15'
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
        CidrAuthorizationContext.build(input[:cidr_authorization_context], params, context: context + 'CidrAuthorizationContext' + '.') unless input[:cidr_authorization_context].nil?
        params[context + 'PubliclyAdvertisable'] = input[:publicly_advertisable].to_s unless input[:publicly_advertisable].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        TagSpecificationList.build(input[:pool_tag_specifications], params, context: context + 'PoolTagSpecification') unless input[:pool_tag_specifications].nil?
        params[context + 'MultiRegion'] = input[:multi_region].to_s unless input[:multi_region].nil?
        params[context + 'NetworkBorderGroup'] = input[:network_border_group].to_s unless input[:network_border_group].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ProvisionIpamByoasn
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ProvisionIpamByoasn'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamId'] = input[:ipam_id].to_s unless input[:ipam_id].nil?
        params[context + 'Asn'] = input[:asn].to_s unless input[:asn].nil?
        AsnAuthorizationContext.build(input[:asn_authorization_context], params, context: context + 'AsnAuthorizationContext' + '.') unless input[:asn_authorization_context].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ProvisionIpamPoolCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ProvisionIpamPoolCidr'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamPoolId'] = input[:ipam_pool_id].to_s unless input[:ipam_pool_id].nil?
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
        IpamCidrAuthorizationContext.build(input[:cidr_authorization_context], params, context: context + 'CidrAuthorizationContext' + '.') unless input[:cidr_authorization_context].nil?
        params[context + 'NetmaskLength'] = input[:netmask_length].to_s unless input[:netmask_length].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ProvisionPublicIpv4PoolCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ProvisionPublicIpv4PoolCidr'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamPoolId'] = input[:ipam_pool_id].to_s unless input[:ipam_pool_id].nil?
        params[context + 'PoolId'] = input[:pool_id].to_s unless input[:pool_id].nil?
        params[context + 'NetmaskLength'] = input[:netmask_length].to_s unless input[:netmask_length].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class PublicIpStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class PublicIpv4PoolIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class PurchaseCapacityBlock
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PurchaseCapacityBlock'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'CapacityBlockOfferingId'] = input[:capacity_block_offering_id].to_s unless input[:capacity_block_offering_id].nil?
        params[context + 'InstancePlatform'] = input[:instance_platform].to_s unless input[:instance_platform].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class PurchaseHostReservation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PurchaseHostReservation'
        params['Version'] = '2016-11-15'
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'CurrencyCode'] = input[:currency_code].to_s unless input[:currency_code].nil?
        RequestHostIdSet.build(input[:host_id_set], params, context: context + 'HostIdSet') unless input[:host_id_set].nil?
        params[context + 'LimitPrice'] = input[:limit_price].to_s unless input[:limit_price].nil?
        params[context + 'OfferingId'] = input[:offering_id].to_s unless input[:offering_id].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class PurchaseRequest
      def self.build(input, params, context: nil)
        params[context + 'InstanceCount'] = input[:instance_count].to_s unless input[:instance_count].nil?
        params[context + 'PurchaseToken'] = input[:purchase_token].to_s unless input[:purchase_token].nil?
      end
    end

    class PurchaseRequestSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          PurchaseRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class PurchaseReservedInstancesOffering
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PurchaseReservedInstancesOffering'
        params['Version'] = '2016-11-15'
        params[context + 'InstanceCount'] = input[:instance_count].to_s unless input[:instance_count].nil?
        params[context + 'ReservedInstancesOfferingId'] = input[:reserved_instances_offering_id].to_s unless input[:reserved_instances_offering_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        ReservedInstanceLimitPrice.build(input[:limit_price], params, context: context + 'LimitPrice' + '.') unless input[:limit_price].nil?
        params[context + 'PurchaseTime'] = Hearth::TimeHelper.to_date_time(input[:purchase_time]) unless input[:purchase_time].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class PurchaseScheduledInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PurchaseScheduledInstances'
        params['Version'] = '2016-11-15'
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        PurchaseRequestSet.build(input[:purchase_requests], params, context: context + 'PurchaseRequest') unless input[:purchase_requests].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ReasonCodesList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class RebootInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RebootInstances'
        params['Version'] = '2016-11-15'
        InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RegionNameStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class RegionNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class RegisterImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RegisterImage'
        params['Version'] = '2016-11-15'
        params[context + 'ImageLocation'] = input[:image_location].to_s unless input[:image_location].nil?
        params[context + 'Architecture'] = input[:architecture].to_s unless input[:architecture].nil?
        BlockDeviceMappingRequestList.build(input[:block_device_mappings], params, context: context + 'BlockDeviceMapping') unless input[:block_device_mappings].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'EnaSupport'] = input[:ena_support].to_s unless input[:ena_support].nil?
        params[context + 'KernelId'] = input[:kernel_id].to_s unless input[:kernel_id].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        BillingProductList.build(input[:billing_products], params, context: context + 'BillingProduct') unless input[:billing_products].nil?
        params[context + 'RamdiskId'] = input[:ramdisk_id].to_s unless input[:ramdisk_id].nil?
        params[context + 'RootDeviceName'] = input[:root_device_name].to_s unless input[:root_device_name].nil?
        params[context + 'SriovNetSupport'] = input[:sriov_net_support].to_s unless input[:sriov_net_support].nil?
        params[context + 'VirtualizationType'] = input[:virtualization_type].to_s unless input[:virtualization_type].nil?
        params[context + 'BootMode'] = input[:boot_mode].to_s unless input[:boot_mode].nil?
        params[context + 'TpmSupport'] = input[:tpm_support].to_s unless input[:tpm_support].nil?
        params[context + 'UefiData'] = input[:uefi_data].to_s unless input[:uefi_data].nil?
        params[context + 'ImdsSupport'] = input[:imds_support].to_s unless input[:imds_support].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RegisterInstanceEventNotificationAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RegisterInstanceEventNotificationAttributes'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        RegisterInstanceTagAttributeRequest.build(input[:instance_tag_attribute], params, context: context + 'InstanceTagAttribute' + '.') unless input[:instance_tag_attribute].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RegisterInstanceTagAttributeRequest
      def self.build(input, params, context: nil)
        params[context + 'IncludeAllTagsOfInstance'] = input[:include_all_tags_of_instance].to_s unless input[:include_all_tags_of_instance].nil?
        InstanceTagKeySet.build(input[:instance_tag_keys], params, context: context + 'InstanceTagKey') unless input[:instance_tag_keys].nil?
      end
    end

    class RegisterTransitGatewayMulticastGroupMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RegisterTransitGatewayMulticastGroupMembers'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayMulticastDomainId'] = input[:transit_gateway_multicast_domain_id].to_s unless input[:transit_gateway_multicast_domain_id].nil?
        params[context + 'GroupIpAddress'] = input[:group_ip_address].to_s unless input[:group_ip_address].nil?
        TransitGatewayNetworkInterfaceIdList.build(input[:network_interface_ids], params, context: context + 'NetworkInterfaceIds') unless input[:network_interface_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RegisterTransitGatewayMulticastGroupSources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RegisterTransitGatewayMulticastGroupSources'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayMulticastDomainId'] = input[:transit_gateway_multicast_domain_id].to_s unless input[:transit_gateway_multicast_domain_id].nil?
        params[context + 'GroupIpAddress'] = input[:group_ip_address].to_s unless input[:group_ip_address].nil?
        TransitGatewayNetworkInterfaceIdList.build(input[:network_interface_ids], params, context: context + 'NetworkInterfaceIds') unless input[:network_interface_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RejectTransitGatewayMulticastDomainAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RejectTransitGatewayMulticastDomainAssociations'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayMulticastDomainId'] = input[:transit_gateway_multicast_domain_id].to_s unless input[:transit_gateway_multicast_domain_id].nil?
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        ValueStringList.build(input[:subnet_ids], params, context: context + 'SubnetIds') unless input[:subnet_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RejectTransitGatewayPeeringAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RejectTransitGatewayPeeringAttachment'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RejectTransitGatewayVpcAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RejectTransitGatewayVpcAttachment'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RejectVpcEndpointConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RejectVpcEndpointConnections'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ServiceId'] = input[:service_id].to_s unless input[:service_id].nil?
        VpcEndpointIdList.build(input[:vpc_endpoint_ids], params, context: context + 'VpcEndpointId') unless input[:vpc_endpoint_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RejectVpcPeeringConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RejectVpcPeeringConnection'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'VpcPeeringConnectionId'] = input[:vpc_peering_connection_id].to_s unless input[:vpc_peering_connection_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ReleaseAddress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ReleaseAddress'
        params['Version'] = '2016-11-15'
        params[context + 'AllocationId'] = input[:allocation_id].to_s unless input[:allocation_id].nil?
        params[context + 'PublicIp'] = input[:public_ip].to_s unless input[:public_ip].nil?
        params[context + 'NetworkBorderGroup'] = input[:network_border_group].to_s unless input[:network_border_group].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ReleaseHosts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ReleaseHosts'
        params['Version'] = '2016-11-15'
        RequestHostIdList.build(input[:host_ids], params, context: context + 'hostId') unless input[:host_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ReleaseIpamPoolAllocation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ReleaseIpamPoolAllocation'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IpamPoolId'] = input[:ipam_pool_id].to_s unless input[:ipam_pool_id].nil?
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
        params[context + 'IpamPoolAllocationId'] = input[:ipam_pool_allocation_id].to_s unless input[:ipam_pool_allocation_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RemoveIpamOperatingRegion
      def self.build(input, params, context: nil)
        params[context + 'RegionName'] = input[:region_name].to_s unless input[:region_name].nil?
      end
    end

    class RemoveIpamOperatingRegionSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          RemoveIpamOperatingRegion.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class RemovePrefixListEntries
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          RemovePrefixListEntry.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class RemovePrefixListEntry
      def self.build(input, params, context: nil)
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
      end
    end

    class ReplaceIamInstanceProfileAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ReplaceIamInstanceProfileAssociation'
        params['Version'] = '2016-11-15'
        IamInstanceProfileSpecification.build(input[:iam_instance_profile], params, context: context + 'IamInstanceProfile' + '.') unless input[:iam_instance_profile].nil?
        params[context + 'AssociationId'] = input[:association_id].to_s unless input[:association_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ReplaceNetworkAclAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ReplaceNetworkAclAssociation'
        params['Version'] = '2016-11-15'
        params[context + 'AssociationId'] = input[:association_id].to_s unless input[:association_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NetworkAclId'] = input[:network_acl_id].to_s unless input[:network_acl_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ReplaceNetworkAclEntry
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ReplaceNetworkAclEntry'
        params['Version'] = '2016-11-15'
        params[context + 'CidrBlock'] = input[:cidr_block].to_s unless input[:cidr_block].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Egress'] = input[:egress].to_s unless input[:egress].nil?
        IcmpTypeCode.build(input[:icmp_type_code], params, context: context + 'Icmp' + '.') unless input[:icmp_type_code].nil?
        params[context + 'Ipv6CidrBlock'] = input[:ipv6_cidr_block].to_s unless input[:ipv6_cidr_block].nil?
        params[context + 'NetworkAclId'] = input[:network_acl_id].to_s unless input[:network_acl_id].nil?
        PortRange.build(input[:port_range], params, context: context + 'PortRange' + '.') unless input[:port_range].nil?
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
        params[context + 'RuleAction'] = input[:rule_action].to_s unless input[:rule_action].nil?
        params[context + 'RuleNumber'] = input[:rule_number].to_s unless input[:rule_number].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ReplaceRootVolumeTaskIds
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ReplaceRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ReplaceRoute'
        params['Version'] = '2016-11-15'
        params[context + 'DestinationCidrBlock'] = input[:destination_cidr_block].to_s unless input[:destination_cidr_block].nil?
        params[context + 'DestinationIpv6CidrBlock'] = input[:destination_ipv6_cidr_block].to_s unless input[:destination_ipv6_cidr_block].nil?
        params[context + 'DestinationPrefixListId'] = input[:destination_prefix_list_id].to_s unless input[:destination_prefix_list_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'VpcEndpointId'] = input[:vpc_endpoint_id].to_s unless input[:vpc_endpoint_id].nil?
        params[context + 'EgressOnlyInternetGatewayId'] = input[:egress_only_internet_gateway_id].to_s unless input[:egress_only_internet_gateway_id].nil?
        params[context + 'GatewayId'] = input[:gateway_id].to_s unless input[:gateway_id].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'LocalTarget'] = input[:local_target].to_s unless input[:local_target].nil?
        params[context + 'NatGatewayId'] = input[:nat_gateway_id].to_s unless input[:nat_gateway_id].nil?
        params[context + 'TransitGatewayId'] = input[:transit_gateway_id].to_s unless input[:transit_gateway_id].nil?
        params[context + 'LocalGatewayId'] = input[:local_gateway_id].to_s unless input[:local_gateway_id].nil?
        params[context + 'CarrierGatewayId'] = input[:carrier_gateway_id].to_s unless input[:carrier_gateway_id].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        params[context + 'RouteTableId'] = input[:route_table_id].to_s unless input[:route_table_id].nil?
        params[context + 'VpcPeeringConnectionId'] = input[:vpc_peering_connection_id].to_s unless input[:vpc_peering_connection_id].nil?
        params[context + 'CoreNetworkArn'] = input[:core_network_arn].to_s unless input[:core_network_arn].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ReplaceRouteTableAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ReplaceRouteTableAssociation'
        params['Version'] = '2016-11-15'
        params[context + 'AssociationId'] = input[:association_id].to_s unless input[:association_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'RouteTableId'] = input[:route_table_id].to_s unless input[:route_table_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ReplaceTransitGatewayRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ReplaceTransitGatewayRoute'
        params['Version'] = '2016-11-15'
        params[context + 'DestinationCidrBlock'] = input[:destination_cidr_block].to_s unless input[:destination_cidr_block].nil?
        params[context + 'TransitGatewayRouteTableId'] = input[:transit_gateway_route_table_id].to_s unless input[:transit_gateway_route_table_id].nil?
        params[context + 'TransitGatewayAttachmentId'] = input[:transit_gateway_attachment_id].to_s unless input[:transit_gateway_attachment_id].nil?
        params[context + 'Blackhole'] = input[:blackhole].to_s unless input[:blackhole].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ReplaceVpnTunnel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ReplaceVpnTunnel'
        params['Version'] = '2016-11-15'
        params[context + 'VpnConnectionId'] = input[:vpn_connection_id].to_s unless input[:vpn_connection_id].nil?
        params[context + 'VpnTunnelOutsideIpAddress'] = input[:vpn_tunnel_outside_ip_address].to_s unless input[:vpn_tunnel_outside_ip_address].nil?
        params[context + 'ApplyPendingMaintenance'] = input[:apply_pending_maintenance].to_s unless input[:apply_pending_maintenance].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ReportInstanceStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ReportInstanceStatus'
        params['Version'] = '2016-11-15'
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        InstanceIdStringList.build(input[:instances], params, context: context + 'instanceId') unless input[:instances].nil?
        ReasonCodesList.build(input[:reason_codes], params, context: context + 'reasonCode') unless input[:reason_codes].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'Status'] = input[:status].to_s unless input[:status].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RequestFilterPortRange
      def self.build(input, params, context: nil)
        params[context + 'FromPort'] = input[:from_port].to_s unless input[:from_port].nil?
        params[context + 'ToPort'] = input[:to_port].to_s unless input[:to_port].nil?
      end
    end

    class RequestHostIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class RequestHostIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class RequestInstanceTypeList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class RequestIpamResourceTag
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    class RequestIpamResourceTagList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          RequestIpamResourceTag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class RequestLaunchTemplateData
      def self.build(input, params, context: nil)
        params[context + 'KernelId'] = input[:kernel_id].to_s unless input[:kernel_id].nil?
        params[context + 'EbsOptimized'] = input[:ebs_optimized].to_s unless input[:ebs_optimized].nil?
        LaunchTemplateIamInstanceProfileSpecificationRequest.build(input[:iam_instance_profile], params, context: context + 'IamInstanceProfile' + '.') unless input[:iam_instance_profile].nil?
        LaunchTemplateBlockDeviceMappingRequestList.build(input[:block_device_mappings], params, context: context + 'BlockDeviceMapping') unless input[:block_device_mappings].nil?
        LaunchTemplateInstanceNetworkInterfaceSpecificationRequestList.build(input[:network_interfaces], params, context: context + 'NetworkInterface') unless input[:network_interfaces].nil?
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'KeyName'] = input[:key_name].to_s unless input[:key_name].nil?
        LaunchTemplatesMonitoringRequest.build(input[:monitoring], params, context: context + 'Monitoring' + '.') unless input[:monitoring].nil?
        LaunchTemplatePlacementRequest.build(input[:placement], params, context: context + 'Placement' + '.') unless input[:placement].nil?
        params[context + 'RamDiskId'] = input[:ram_disk_id].to_s unless input[:ram_disk_id].nil?
        params[context + 'DisableApiTermination'] = input[:disable_api_termination].to_s unless input[:disable_api_termination].nil?
        params[context + 'InstanceInitiatedShutdownBehavior'] = input[:instance_initiated_shutdown_behavior].to_s unless input[:instance_initiated_shutdown_behavior].nil?
        params[context + 'UserData'] = input[:user_data].to_s unless input[:user_data].nil?
        LaunchTemplateTagSpecificationRequestList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        ElasticGpuSpecificationList.build(input[:elastic_gpu_specifications], params, context: context + 'ElasticGpuSpecification') unless input[:elastic_gpu_specifications].nil?
        LaunchTemplateElasticInferenceAcceleratorList.build(input[:elastic_inference_accelerators], params, context: context + 'ElasticInferenceAccelerator') unless input[:elastic_inference_accelerators].nil?
        SecurityGroupIdStringList.build(input[:security_group_ids], params, context: context + 'SecurityGroupId') unless input[:security_group_ids].nil?
        SecurityGroupStringList.build(input[:security_groups], params, context: context + 'SecurityGroup') unless input[:security_groups].nil?
        LaunchTemplateInstanceMarketOptionsRequest.build(input[:instance_market_options], params, context: context + 'InstanceMarketOptions' + '.') unless input[:instance_market_options].nil?
        CreditSpecificationRequest.build(input[:credit_specification], params, context: context + 'CreditSpecification' + '.') unless input[:credit_specification].nil?
        LaunchTemplateCpuOptionsRequest.build(input[:cpu_options], params, context: context + 'CpuOptions' + '.') unless input[:cpu_options].nil?
        LaunchTemplateCapacityReservationSpecificationRequest.build(input[:capacity_reservation_specification], params, context: context + 'CapacityReservationSpecification' + '.') unless input[:capacity_reservation_specification].nil?
        LaunchTemplateLicenseSpecificationListRequest.build(input[:license_specifications], params, context: context + 'LicenseSpecification') unless input[:license_specifications].nil?
        LaunchTemplateHibernationOptionsRequest.build(input[:hibernation_options], params, context: context + 'HibernationOptions' + '.') unless input[:hibernation_options].nil?
        LaunchTemplateInstanceMetadataOptionsRequest.build(input[:metadata_options], params, context: context + 'MetadataOptions' + '.') unless input[:metadata_options].nil?
        LaunchTemplateEnclaveOptionsRequest.build(input[:enclave_options], params, context: context + 'EnclaveOptions' + '.') unless input[:enclave_options].nil?
        InstanceRequirementsRequest.build(input[:instance_requirements], params, context: context + 'InstanceRequirements' + '.') unless input[:instance_requirements].nil?
        LaunchTemplatePrivateDnsNameOptionsRequest.build(input[:private_dns_name_options], params, context: context + 'PrivateDnsNameOptions' + '.') unless input[:private_dns_name_options].nil?
        LaunchTemplateInstanceMaintenanceOptionsRequest.build(input[:maintenance_options], params, context: context + 'MaintenanceOptions' + '.') unless input[:maintenance_options].nil?
        params[context + 'DisableApiStop'] = input[:disable_api_stop].to_s unless input[:disable_api_stop].nil?
      end
    end

    class RequestSpotFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RequestSpotFleet'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        SpotFleetRequestConfigData.build(input[:spot_fleet_request_config], params, context: context + 'SpotFleetRequestConfig' + '.') unless input[:spot_fleet_request_config].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RequestSpotInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RequestSpotInstances'
        params['Version'] = '2016-11-15'
        params[context + 'AvailabilityZoneGroup'] = input[:availability_zone_group].to_s unless input[:availability_zone_group].nil?
        params[context + 'BlockDurationMinutes'] = input[:block_duration_minutes].to_s unless input[:block_duration_minutes].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceCount'] = input[:instance_count].to_s unless input[:instance_count].nil?
        params[context + 'LaunchGroup'] = input[:launch_group].to_s unless input[:launch_group].nil?
        RequestSpotLaunchSpecification.build(input[:launch_specification], params, context: context + 'LaunchSpecification' + '.') unless input[:launch_specification].nil?
        params[context + 'SpotPrice'] = input[:spot_price].to_s unless input[:spot_price].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'ValidFrom'] = Hearth::TimeHelper.to_date_time(input[:valid_from]) unless input[:valid_from].nil?
        params[context + 'ValidUntil'] = Hearth::TimeHelper.to_date_time(input[:valid_until]) unless input[:valid_until].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'InstanceInterruptionBehavior'] = input[:instance_interruption_behavior].to_s unless input[:instance_interruption_behavior].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RequestSpotLaunchSpecification
      def self.build(input, params, context: nil)
        RequestSpotLaunchSpecificationSecurityGroupIdList.build(input[:security_group_ids], params, context: context + 'SecurityGroupId') unless input[:security_group_ids].nil?
        RequestSpotLaunchSpecificationSecurityGroupList.build(input[:security_groups], params, context: context + 'SecurityGroup') unless input[:security_groups].nil?
        params[context + 'AddressingType'] = input[:addressing_type].to_s unless input[:addressing_type].nil?
        BlockDeviceMappingList.build(input[:block_device_mappings], params, context: context + 'blockDeviceMapping') unless input[:block_device_mappings].nil?
        params[context + 'EbsOptimized'] = input[:ebs_optimized].to_s unless input[:ebs_optimized].nil?
        IamInstanceProfileSpecification.build(input[:iam_instance_profile], params, context: context + 'IamInstanceProfile' + '.') unless input[:iam_instance_profile].nil?
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'KernelId'] = input[:kernel_id].to_s unless input[:kernel_id].nil?
        params[context + 'KeyName'] = input[:key_name].to_s unless input[:key_name].nil?
        RunInstancesMonitoringEnabled.build(input[:monitoring], params, context: context + 'Monitoring' + '.') unless input[:monitoring].nil?
        InstanceNetworkInterfaceSpecificationList.build(input[:network_interfaces], params, context: context + 'NetworkInterface') unless input[:network_interfaces].nil?
        SpotPlacement.build(input[:placement], params, context: context + 'Placement' + '.') unless input[:placement].nil?
        params[context + 'RamdiskId'] = input[:ramdisk_id].to_s unless input[:ramdisk_id].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'UserData'] = input[:user_data].to_s unless input[:user_data].nil?
      end
    end

    class RequestSpotLaunchSpecificationSecurityGroupIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class RequestSpotLaunchSpecificationSecurityGroupList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ReservationFleetInstanceSpecification
      def self.build(input, params, context: nil)
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'InstancePlatform'] = input[:instance_platform].to_s unless input[:instance_platform].nil?
        params[context + 'Weight'] = Hearth::NumberHelper.serialize(input[:weight]).to_s unless input[:weight].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'AvailabilityZoneId'] = input[:availability_zone_id].to_s unless input[:availability_zone_id].nil?
        params[context + 'EbsOptimized'] = input[:ebs_optimized].to_s unless input[:ebs_optimized].nil?
        params[context + 'Priority'] = input[:priority].to_s unless input[:priority].nil?
      end
    end

    class ReservationFleetInstanceSpecificationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          ReservationFleetInstanceSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ReservedInstanceIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ReservedInstanceLimitPrice
      def self.build(input, params, context: nil)
        params[context + 'Amount'] = Hearth::NumberHelper.serialize(input[:amount]).to_s unless input[:amount].nil?
        params[context + 'CurrencyCode'] = input[:currency_code].to_s unless input[:currency_code].nil?
      end
    end

    class ReservedInstancesConfiguration
      def self.build(input, params, context: nil)
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'InstanceCount'] = input[:instance_count].to_s unless input[:instance_count].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'Platform'] = input[:platform].to_s unless input[:platform].nil?
        params[context + 'Scope'] = input[:scope].to_s unless input[:scope].nil?
      end
    end

    class ReservedInstancesConfigurationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          ReservedInstancesConfiguration.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ReservedInstancesIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ReservedInstancesModificationIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ReservedInstancesOfferingIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ResetAddressAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ResetAddressAttribute'
        params['Version'] = '2016-11-15'
        params[context + 'AllocationId'] = input[:allocation_id].to_s unless input[:allocation_id].nil?
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ResetEbsDefaultKmsKeyId
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ResetEbsDefaultKmsKeyId'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ResetFpgaImageAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ResetFpgaImageAttribute'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'FpgaImageId'] = input[:fpga_image_id].to_s unless input[:fpga_image_id].nil?
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ResetImageAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ResetImageAttribute'
        params['Version'] = '2016-11-15'
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ResetInstanceAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ResetInstanceAttribute'
        params['Version'] = '2016-11-15'
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ResetNetworkInterfaceAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ResetNetworkInterfaceAttribute'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        params[context + 'SourceDestCheck'] = input[:source_dest_check].to_s unless input[:source_dest_check].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ResetSnapshotAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ResetSnapshotAttribute'
        params['Version'] = '2016-11-15'
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        params[context + 'SnapshotId'] = input[:snapshot_id].to_s unless input[:snapshot_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ResourceIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ResourceList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ResourceStatementRequest
      def self.build(input, params, context: nil)
        ValueStringList.build(input[:resources], params, context: context + 'Resource') unless input[:resources].nil?
        ValueStringList.build(input[:resource_types], params, context: context + 'ResourceType') unless input[:resource_types].nil?
      end
    end

    class RestorableByStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class RestoreAddressToClassic
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RestoreAddressToClassic'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'PublicIp'] = input[:public_ip].to_s unless input[:public_ip].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RestoreImageFromRecycleBin
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RestoreImageFromRecycleBin'
        params['Version'] = '2016-11-15'
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RestoreManagedPrefixListVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RestoreManagedPrefixListVersion'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'PrefixListId'] = input[:prefix_list_id].to_s unless input[:prefix_list_id].nil?
        params[context + 'PreviousVersion'] = input[:previous_version].to_s unless input[:previous_version].nil?
        params[context + 'CurrentVersion'] = input[:current_version].to_s unless input[:current_version].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RestoreSnapshotFromRecycleBin
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RestoreSnapshotFromRecycleBin'
        params['Version'] = '2016-11-15'
        params[context + 'SnapshotId'] = input[:snapshot_id].to_s unless input[:snapshot_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RestoreSnapshotTier
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RestoreSnapshotTier'
        params['Version'] = '2016-11-15'
        params[context + 'SnapshotId'] = input[:snapshot_id].to_s unless input[:snapshot_id].nil?
        params[context + 'TemporaryRestoreDays'] = input[:temporary_restore_days].to_s unless input[:temporary_restore_days].nil?
        params[context + 'PermanentRestore'] = input[:permanent_restore].to_s unless input[:permanent_restore].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RevokeClientVpnIngress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RevokeClientVpnIngress'
        params['Version'] = '2016-11-15'
        params[context + 'ClientVpnEndpointId'] = input[:client_vpn_endpoint_id].to_s unless input[:client_vpn_endpoint_id].nil?
        params[context + 'TargetNetworkCidr'] = input[:target_network_cidr].to_s unless input[:target_network_cidr].nil?
        params[context + 'AccessGroupId'] = input[:access_group_id].to_s unless input[:access_group_id].nil?
        params[context + 'RevokeAllGroups'] = input[:revoke_all_groups].to_s unless input[:revoke_all_groups].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RevokeSecurityGroupEgress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RevokeSecurityGroupEgress'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'GroupId'] = input[:group_id].to_s unless input[:group_id].nil?
        IpPermissionList.build(input[:ip_permissions], params, context: context + 'ipPermissions') unless input[:ip_permissions].nil?
        SecurityGroupRuleIdList.build(input[:security_group_rule_ids], params, context: context + 'SecurityGroupRuleId') unless input[:security_group_rule_ids].nil?
        params[context + 'CidrIp'] = input[:cidr_ip].to_s unless input[:cidr_ip].nil?
        params[context + 'FromPort'] = input[:from_port].to_s unless input[:from_port].nil?
        params[context + 'IpProtocol'] = input[:ip_protocol].to_s unless input[:ip_protocol].nil?
        params[context + 'ToPort'] = input[:to_port].to_s unless input[:to_port].nil?
        params[context + 'SourceSecurityGroupName'] = input[:source_security_group_name].to_s unless input[:source_security_group_name].nil?
        params[context + 'SourceSecurityGroupOwnerId'] = input[:source_security_group_owner_id].to_s unless input[:source_security_group_owner_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RevokeSecurityGroupIngress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RevokeSecurityGroupIngress'
        params['Version'] = '2016-11-15'
        params[context + 'CidrIp'] = input[:cidr_ip].to_s unless input[:cidr_ip].nil?
        params[context + 'FromPort'] = input[:from_port].to_s unless input[:from_port].nil?
        params[context + 'GroupId'] = input[:group_id].to_s unless input[:group_id].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        IpPermissionList.build(input[:ip_permissions], params, context: context + 'IpPermissions') unless input[:ip_permissions].nil?
        params[context + 'IpProtocol'] = input[:ip_protocol].to_s unless input[:ip_protocol].nil?
        params[context + 'SourceSecurityGroupName'] = input[:source_security_group_name].to_s unless input[:source_security_group_name].nil?
        params[context + 'SourceSecurityGroupOwnerId'] = input[:source_security_group_owner_id].to_s unless input[:source_security_group_owner_id].nil?
        params[context + 'ToPort'] = input[:to_port].to_s unless input[:to_port].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        SecurityGroupRuleIdList.build(input[:security_group_rule_ids], params, context: context + 'SecurityGroupRuleId') unless input[:security_group_rule_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RouteTableIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class RunInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RunInstances'
        params['Version'] = '2016-11-15'
        BlockDeviceMappingRequestList.build(input[:block_device_mappings], params, context: context + 'BlockDeviceMapping') unless input[:block_device_mappings].nil?
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'Ipv6AddressCount'] = input[:ipv6_address_count].to_s unless input[:ipv6_address_count].nil?
        InstanceIpv6AddressList.build(input[:ipv6_addresses], params, context: context + 'Ipv6Address') unless input[:ipv6_addresses].nil?
        params[context + 'KernelId'] = input[:kernel_id].to_s unless input[:kernel_id].nil?
        params[context + 'KeyName'] = input[:key_name].to_s unless input[:key_name].nil?
        params[context + 'MaxCount'] = input[:max_count].to_s unless input[:max_count].nil?
        params[context + 'MinCount'] = input[:min_count].to_s unless input[:min_count].nil?
        RunInstancesMonitoringEnabled.build(input[:monitoring], params, context: context + 'Monitoring' + '.') unless input[:monitoring].nil?
        Placement.build(input[:placement], params, context: context + 'Placement' + '.') unless input[:placement].nil?
        params[context + 'RamdiskId'] = input[:ramdisk_id].to_s unless input[:ramdisk_id].nil?
        SecurityGroupIdStringList.build(input[:security_group_ids], params, context: context + 'SecurityGroupId') unless input[:security_group_ids].nil?
        SecurityGroupStringList.build(input[:security_groups], params, context: context + 'SecurityGroup') unless input[:security_groups].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'UserData'] = input[:user_data].to_s unless input[:user_data].nil?
        params[context + 'AdditionalInfo'] = input[:additional_info].to_s unless input[:additional_info].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DisableApiTermination'] = input[:disable_api_termination].to_s unless input[:disable_api_termination].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'EbsOptimized'] = input[:ebs_optimized].to_s unless input[:ebs_optimized].nil?
        IamInstanceProfileSpecification.build(input[:iam_instance_profile], params, context: context + 'IamInstanceProfile' + '.') unless input[:iam_instance_profile].nil?
        params[context + 'InstanceInitiatedShutdownBehavior'] = input[:instance_initiated_shutdown_behavior].to_s unless input[:instance_initiated_shutdown_behavior].nil?
        InstanceNetworkInterfaceSpecificationList.build(input[:network_interfaces], params, context: context + 'networkInterface') unless input[:network_interfaces].nil?
        params[context + 'PrivateIpAddress'] = input[:private_ip_address].to_s unless input[:private_ip_address].nil?
        ElasticGpuSpecifications.build(input[:elastic_gpu_specification], params, context: context + 'ElasticGpuSpecification') unless input[:elastic_gpu_specification].nil?
        ElasticInferenceAccelerators.build(input[:elastic_inference_accelerators], params, context: context + 'ElasticInferenceAccelerator') unless input[:elastic_inference_accelerators].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        LaunchTemplateSpecification.build(input[:launch_template], params, context: context + 'LaunchTemplate' + '.') unless input[:launch_template].nil?
        InstanceMarketOptionsRequest.build(input[:instance_market_options], params, context: context + 'InstanceMarketOptions' + '.') unless input[:instance_market_options].nil?
        CreditSpecificationRequest.build(input[:credit_specification], params, context: context + 'CreditSpecification' + '.') unless input[:credit_specification].nil?
        CpuOptionsRequest.build(input[:cpu_options], params, context: context + 'CpuOptions' + '.') unless input[:cpu_options].nil?
        CapacityReservationSpecification.build(input[:capacity_reservation_specification], params, context: context + 'CapacityReservationSpecification' + '.') unless input[:capacity_reservation_specification].nil?
        HibernationOptionsRequest.build(input[:hibernation_options], params, context: context + 'HibernationOptions' + '.') unless input[:hibernation_options].nil?
        LicenseSpecificationListRequest.build(input[:license_specifications], params, context: context + 'LicenseSpecification') unless input[:license_specifications].nil?
        InstanceMetadataOptionsRequest.build(input[:metadata_options], params, context: context + 'MetadataOptions' + '.') unless input[:metadata_options].nil?
        EnclaveOptionsRequest.build(input[:enclave_options], params, context: context + 'EnclaveOptions' + '.') unless input[:enclave_options].nil?
        PrivateDnsNameOptionsRequest.build(input[:private_dns_name_options], params, context: context + 'PrivateDnsNameOptions' + '.') unless input[:private_dns_name_options].nil?
        InstanceMaintenanceOptionsRequest.build(input[:maintenance_options], params, context: context + 'MaintenanceOptions' + '.') unless input[:maintenance_options].nil?
        params[context + 'DisableApiStop'] = input[:disable_api_stop].to_s unless input[:disable_api_stop].nil?
        params[context + 'EnablePrimaryIpv6'] = input[:enable_primary_ipv6].to_s unless input[:enable_primary_ipv6].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class RunInstancesMonitoringEnabled
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
      end
    end

    class RunScheduledInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RunScheduledInstances'
        params['Version'] = '2016-11-15'
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceCount'] = input[:instance_count].to_s unless input[:instance_count].nil?
        ScheduledInstancesLaunchSpecification.build(input[:launch_specification], params, context: context + 'LaunchSpecification' + '.') unless input[:launch_specification].nil?
        params[context + 'ScheduledInstanceId'] = input[:scheduled_instance_id].to_s unless input[:scheduled_instance_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class S3ObjectTag
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    class S3ObjectTagList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          S3ObjectTag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class S3Storage
      def self.build(input, params, context: nil)
        params[context + 'AWSAccessKeyId'] = input[:aws_access_key_id].to_s unless input[:aws_access_key_id].nil?
        params[context + 'Bucket'] = input[:bucket].to_s unless input[:bucket].nil?
        params[context + 'Prefix'] = input[:prefix].to_s unless input[:prefix].nil?
        params[context + 'UploadPolicy'] = ::Base64::strict_encode64(input[:upload_policy]).strip unless input[:upload_policy].nil?
        params[context + 'UploadPolicySignature'] = input[:upload_policy_signature].to_s unless input[:upload_policy_signature].nil?
      end
    end

    class ScheduledInstanceIdRequestSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ScheduledInstanceRecurrenceRequest
      def self.build(input, params, context: nil)
        params[context + 'Frequency'] = input[:frequency].to_s unless input[:frequency].nil?
        params[context + 'Interval'] = input[:interval].to_s unless input[:interval].nil?
        OccurrenceDayRequestSet.build(input[:occurrence_days], params, context: context + 'OccurrenceDay') unless input[:occurrence_days].nil?
        params[context + 'OccurrenceRelativeToEnd'] = input[:occurrence_relative_to_end].to_s unless input[:occurrence_relative_to_end].nil?
        params[context + 'OccurrenceUnit'] = input[:occurrence_unit].to_s unless input[:occurrence_unit].nil?
      end
    end

    class ScheduledInstancesBlockDeviceMapping
      def self.build(input, params, context: nil)
        params[context + 'DeviceName'] = input[:device_name].to_s unless input[:device_name].nil?
        ScheduledInstancesEbs.build(input[:ebs], params, context: context + 'Ebs' + '.') unless input[:ebs].nil?
        params[context + 'NoDevice'] = input[:no_device].to_s unless input[:no_device].nil?
        params[context + 'VirtualName'] = input[:virtual_name].to_s unless input[:virtual_name].nil?
      end
    end

    class ScheduledInstancesBlockDeviceMappingSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          ScheduledInstancesBlockDeviceMapping.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ScheduledInstancesEbs
      def self.build(input, params, context: nil)
        params[context + 'DeleteOnTermination'] = input[:delete_on_termination].to_s unless input[:delete_on_termination].nil?
        params[context + 'Encrypted'] = input[:encrypted].to_s unless input[:encrypted].nil?
        params[context + 'Iops'] = input[:iops].to_s unless input[:iops].nil?
        params[context + 'SnapshotId'] = input[:snapshot_id].to_s unless input[:snapshot_id].nil?
        params[context + 'VolumeSize'] = input[:volume_size].to_s unless input[:volume_size].nil?
        params[context + 'VolumeType'] = input[:volume_type].to_s unless input[:volume_type].nil?
      end
    end

    class ScheduledInstancesIamInstanceProfile
      def self.build(input, params, context: nil)
        params[context + 'Arn'] = input[:arn].to_s unless input[:arn].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
      end
    end

    class ScheduledInstancesIpv6Address
      def self.build(input, params, context: nil)
        params[context + 'Ipv6Address'] = input[:ipv6_address].to_s unless input[:ipv6_address].nil?
      end
    end

    class ScheduledInstancesIpv6AddressList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          ScheduledInstancesIpv6Address.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ScheduledInstancesLaunchSpecification
      def self.build(input, params, context: nil)
        ScheduledInstancesBlockDeviceMappingSet.build(input[:block_device_mappings], params, context: context + 'BlockDeviceMapping') unless input[:block_device_mappings].nil?
        params[context + 'EbsOptimized'] = input[:ebs_optimized].to_s unless input[:ebs_optimized].nil?
        ScheduledInstancesIamInstanceProfile.build(input[:iam_instance_profile], params, context: context + 'IamInstanceProfile' + '.') unless input[:iam_instance_profile].nil?
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'KernelId'] = input[:kernel_id].to_s unless input[:kernel_id].nil?
        params[context + 'KeyName'] = input[:key_name].to_s unless input[:key_name].nil?
        ScheduledInstancesMonitoring.build(input[:monitoring], params, context: context + 'Monitoring' + '.') unless input[:monitoring].nil?
        ScheduledInstancesNetworkInterfaceSet.build(input[:network_interfaces], params, context: context + 'NetworkInterface') unless input[:network_interfaces].nil?
        ScheduledInstancesPlacement.build(input[:placement], params, context: context + 'Placement' + '.') unless input[:placement].nil?
        params[context + 'RamdiskId'] = input[:ramdisk_id].to_s unless input[:ramdisk_id].nil?
        ScheduledInstancesSecurityGroupIdSet.build(input[:security_group_ids], params, context: context + 'SecurityGroupId') unless input[:security_group_ids].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'UserData'] = input[:user_data].to_s unless input[:user_data].nil?
      end
    end

    class ScheduledInstancesMonitoring
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
      end
    end

    class ScheduledInstancesNetworkInterface
      def self.build(input, params, context: nil)
        params[context + 'AssociatePublicIpAddress'] = input[:associate_public_ip_address].to_s unless input[:associate_public_ip_address].nil?
        params[context + 'DeleteOnTermination'] = input[:delete_on_termination].to_s unless input[:delete_on_termination].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DeviceIndex'] = input[:device_index].to_s unless input[:device_index].nil?
        ScheduledInstancesSecurityGroupIdSet.build(input[:groups], params, context: context + 'Group') unless input[:groups].nil?
        params[context + 'Ipv6AddressCount'] = input[:ipv6_address_count].to_s unless input[:ipv6_address_count].nil?
        ScheduledInstancesIpv6AddressList.build(input[:ipv6_addresses], params, context: context + 'Ipv6Address') unless input[:ipv6_addresses].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        params[context + 'PrivateIpAddress'] = input[:private_ip_address].to_s unless input[:private_ip_address].nil?
        PrivateIpAddressConfigSet.build(input[:private_ip_address_configs], params, context: context + 'PrivateIpAddressConfig') unless input[:private_ip_address_configs].nil?
        params[context + 'SecondaryPrivateIpAddressCount'] = input[:secondary_private_ip_address_count].to_s unless input[:secondary_private_ip_address_count].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
      end
    end

    class ScheduledInstancesNetworkInterfaceSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          ScheduledInstancesNetworkInterface.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ScheduledInstancesPlacement
      def self.build(input, params, context: nil)
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
      end
    end

    class ScheduledInstancesPrivateIpAddressConfig
      def self.build(input, params, context: nil)
        params[context + 'Primary'] = input[:primary].to_s unless input[:primary].nil?
        params[context + 'PrivateIpAddress'] = input[:private_ip_address].to_s unless input[:private_ip_address].nil?
      end
    end

    class ScheduledInstancesSecurityGroupIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class SearchLocalGatewayRoutes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SearchLocalGatewayRoutes'
        params['Version'] = '2016-11-15'
        params[context + 'LocalGatewayRouteTableId'] = input[:local_gateway_route_table_id].to_s unless input[:local_gateway_route_table_id].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class SearchTransitGatewayMulticastGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SearchTransitGatewayMulticastGroups'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayMulticastDomainId'] = input[:transit_gateway_multicast_domain_id].to_s unless input[:transit_gateway_multicast_domain_id].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class SearchTransitGatewayRoutes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SearchTransitGatewayRoutes'
        params['Version'] = '2016-11-15'
        params[context + 'TransitGatewayRouteTableId'] = input[:transit_gateway_route_table_id].to_s unless input[:transit_gateway_route_table_id].nil?
        FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class SecurityGroupIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class SecurityGroupIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class SecurityGroupIdStringListRequest
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class SecurityGroupRuleDescription
      def self.build(input, params, context: nil)
        params[context + 'SecurityGroupRuleId'] = input[:security_group_rule_id].to_s unless input[:security_group_rule_id].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
      end
    end

    class SecurityGroupRuleDescriptionList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          SecurityGroupRuleDescription.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class SecurityGroupRuleIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class SecurityGroupRuleRequest
      def self.build(input, params, context: nil)
        params[context + 'IpProtocol'] = input[:ip_protocol].to_s unless input[:ip_protocol].nil?
        params[context + 'FromPort'] = input[:from_port].to_s unless input[:from_port].nil?
        params[context + 'ToPort'] = input[:to_port].to_s unless input[:to_port].nil?
        params[context + 'CidrIpv4'] = input[:cidr_ipv4].to_s unless input[:cidr_ipv4].nil?
        params[context + 'CidrIpv6'] = input[:cidr_ipv6].to_s unless input[:cidr_ipv6].nil?
        params[context + 'PrefixListId'] = input[:prefix_list_id].to_s unless input[:prefix_list_id].nil?
        params[context + 'ReferencedGroupId'] = input[:referenced_group_id].to_s unless input[:referenced_group_id].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
      end
    end

    class SecurityGroupRuleUpdate
      def self.build(input, params, context: nil)
        params[context + 'SecurityGroupRuleId'] = input[:security_group_rule_id].to_s unless input[:security_group_rule_id].nil?
        SecurityGroupRuleRequest.build(input[:security_group_rule], params, context: context + 'SecurityGroupRule' + '.') unless input[:security_group_rule].nil?
      end
    end

    class SecurityGroupRuleUpdateList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          SecurityGroupRuleUpdate.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class SecurityGroupStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class SendDiagnosticInterrupt
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SendDiagnosticInterrupt'
        params['Version'] = '2016-11-15'
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class SlotDateTimeRangeRequest
      def self.build(input, params, context: nil)
        params[context + 'EarliestTime'] = Hearth::TimeHelper.to_date_time(input[:earliest_time]) unless input[:earliest_time].nil?
        params[context + 'LatestTime'] = Hearth::TimeHelper.to_date_time(input[:latest_time]) unless input[:latest_time].nil?
      end
    end

    class SlotStartTimeRangeRequest
      def self.build(input, params, context: nil)
        params[context + 'EarliestTime'] = Hearth::TimeHelper.to_date_time(input[:earliest_time]) unless input[:earliest_time].nil?
        params[context + 'LatestTime'] = Hearth::TimeHelper.to_date_time(input[:latest_time]) unless input[:latest_time].nil?
      end
    end

    class SnapshotDiskContainer
      def self.build(input, params, context: nil)
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'Format'] = input[:format].to_s unless input[:format].nil?
        params[context + 'Url'] = input[:url].to_s unless input[:url].nil?
        UserBucket.build(input[:user_bucket], params, context: context + 'UserBucket' + '.') unless input[:user_bucket].nil?
      end
    end

    class SnapshotIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class SpotCapacityRebalance
      def self.build(input, params, context: nil)
        params[context + 'ReplacementStrategy'] = input[:replacement_strategy].to_s unless input[:replacement_strategy].nil?
        params[context + 'TerminationDelay'] = input[:termination_delay].to_s unless input[:termination_delay].nil?
      end
    end

    class SpotFleetLaunchSpecification
      def self.build(input, params, context: nil)
        GroupIdentifierList.build(input[:security_groups], params, context: context + 'groupSet') unless input[:security_groups].nil?
        params[context + 'AddressingType'] = input[:addressing_type].to_s unless input[:addressing_type].nil?
        BlockDeviceMappingList.build(input[:block_device_mappings], params, context: context + 'blockDeviceMapping') unless input[:block_device_mappings].nil?
        params[context + 'EbsOptimized'] = input[:ebs_optimized].to_s unless input[:ebs_optimized].nil?
        IamInstanceProfileSpecification.build(input[:iam_instance_profile], params, context: context + 'IamInstanceProfile' + '.') unless input[:iam_instance_profile].nil?
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'KernelId'] = input[:kernel_id].to_s unless input[:kernel_id].nil?
        params[context + 'KeyName'] = input[:key_name].to_s unless input[:key_name].nil?
        SpotFleetMonitoring.build(input[:monitoring], params, context: context + 'Monitoring' + '.') unless input[:monitoring].nil?
        InstanceNetworkInterfaceSpecificationList.build(input[:network_interfaces], params, context: context + 'networkInterfaceSet') unless input[:network_interfaces].nil?
        SpotPlacement.build(input[:placement], params, context: context + 'Placement' + '.') unless input[:placement].nil?
        params[context + 'RamdiskId'] = input[:ramdisk_id].to_s unless input[:ramdisk_id].nil?
        params[context + 'SpotPrice'] = input[:spot_price].to_s unless input[:spot_price].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'UserData'] = input[:user_data].to_s unless input[:user_data].nil?
        params[context + 'WeightedCapacity'] = Hearth::NumberHelper.serialize(input[:weighted_capacity]).to_s unless input[:weighted_capacity].nil?
        SpotFleetTagSpecificationList.build(input[:tag_specifications], params, context: context + 'tagSpecificationSet') unless input[:tag_specifications].nil?
        InstanceRequirements.build(input[:instance_requirements], params, context: context + 'InstanceRequirements' + '.') unless input[:instance_requirements].nil?
      end
    end

    class SpotFleetMonitoring
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
      end
    end

    class SpotFleetRequestConfigData
      def self.build(input, params, context: nil)
        params[context + 'AllocationStrategy'] = input[:allocation_strategy].to_s unless input[:allocation_strategy].nil?
        params[context + 'OnDemandAllocationStrategy'] = input[:on_demand_allocation_strategy].to_s unless input[:on_demand_allocation_strategy].nil?
        SpotMaintenanceStrategies.build(input[:spot_maintenance_strategies], params, context: context + 'SpotMaintenanceStrategies' + '.') unless input[:spot_maintenance_strategies].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'ExcessCapacityTerminationPolicy'] = input[:excess_capacity_termination_policy].to_s unless input[:excess_capacity_termination_policy].nil?
        params[context + 'FulfilledCapacity'] = Hearth::NumberHelper.serialize(input[:fulfilled_capacity]).to_s unless input[:fulfilled_capacity].nil?
        params[context + 'OnDemandFulfilledCapacity'] = Hearth::NumberHelper.serialize(input[:on_demand_fulfilled_capacity]).to_s unless input[:on_demand_fulfilled_capacity].nil?
        params[context + 'IamFleetRole'] = input[:iam_fleet_role].to_s unless input[:iam_fleet_role].nil?
        LaunchSpecsList.build(input[:launch_specifications], params, context: context + 'launchSpecifications') unless input[:launch_specifications].nil?
        LaunchTemplateConfigList.build(input[:launch_template_configs], params, context: context + 'launchTemplateConfigs') unless input[:launch_template_configs].nil?
        params[context + 'SpotPrice'] = input[:spot_price].to_s unless input[:spot_price].nil?
        params[context + 'TargetCapacity'] = input[:target_capacity].to_s unless input[:target_capacity].nil?
        params[context + 'OnDemandTargetCapacity'] = input[:on_demand_target_capacity].to_s unless input[:on_demand_target_capacity].nil?
        params[context + 'OnDemandMaxTotalPrice'] = input[:on_demand_max_total_price].to_s unless input[:on_demand_max_total_price].nil?
        params[context + 'SpotMaxTotalPrice'] = input[:spot_max_total_price].to_s unless input[:spot_max_total_price].nil?
        params[context + 'TerminateInstancesWithExpiration'] = input[:terminate_instances_with_expiration].to_s unless input[:terminate_instances_with_expiration].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'ValidFrom'] = Hearth::TimeHelper.to_date_time(input[:valid_from]) unless input[:valid_from].nil?
        params[context + 'ValidUntil'] = Hearth::TimeHelper.to_date_time(input[:valid_until]) unless input[:valid_until].nil?
        params[context + 'ReplaceUnhealthyInstances'] = input[:replace_unhealthy_instances].to_s unless input[:replace_unhealthy_instances].nil?
        params[context + 'InstanceInterruptionBehavior'] = input[:instance_interruption_behavior].to_s unless input[:instance_interruption_behavior].nil?
        LoadBalancersConfig.build(input[:load_balancers_config], params, context: context + 'LoadBalancersConfig' + '.') unless input[:load_balancers_config].nil?
        params[context + 'InstancePoolsToUseCount'] = input[:instance_pools_to_use_count].to_s unless input[:instance_pools_to_use_count].nil?
        params[context + 'Context'] = input[:context].to_s unless input[:context].nil?
        params[context + 'TargetCapacityUnitType'] = input[:target_capacity_unit_type].to_s unless input[:target_capacity_unit_type].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
      end
    end

    class SpotFleetRequestIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class SpotFleetTagSpecification
      def self.build(input, params, context: nil)
        params[context + 'ResourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        TagList.build(input[:tags], params, context: context + 'tag') unless input[:tags].nil?
      end
    end

    class SpotFleetTagSpecificationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          SpotFleetTagSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class SpotInstanceRequestIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class SpotMaintenanceStrategies
      def self.build(input, params, context: nil)
        SpotCapacityRebalance.build(input[:capacity_rebalance], params, context: context + 'CapacityRebalance' + '.') unless input[:capacity_rebalance].nil?
      end
    end

    class SpotMarketOptions
      def self.build(input, params, context: nil)
        params[context + 'MaxPrice'] = input[:max_price].to_s unless input[:max_price].nil?
        params[context + 'SpotInstanceType'] = input[:spot_instance_type].to_s unless input[:spot_instance_type].nil?
        params[context + 'BlockDurationMinutes'] = input[:block_duration_minutes].to_s unless input[:block_duration_minutes].nil?
        params[context + 'ValidUntil'] = Hearth::TimeHelper.to_date_time(input[:valid_until]) unless input[:valid_until].nil?
        params[context + 'InstanceInterruptionBehavior'] = input[:instance_interruption_behavior].to_s unless input[:instance_interruption_behavior].nil?
      end
    end

    class SpotOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'AllocationStrategy'] = input[:allocation_strategy].to_s unless input[:allocation_strategy].nil?
        FleetSpotMaintenanceStrategiesRequest.build(input[:maintenance_strategies], params, context: context + 'MaintenanceStrategies' + '.') unless input[:maintenance_strategies].nil?
        params[context + 'InstanceInterruptionBehavior'] = input[:instance_interruption_behavior].to_s unless input[:instance_interruption_behavior].nil?
        params[context + 'InstancePoolsToUseCount'] = input[:instance_pools_to_use_count].to_s unless input[:instance_pools_to_use_count].nil?
        params[context + 'SingleInstanceType'] = input[:single_instance_type].to_s unless input[:single_instance_type].nil?
        params[context + 'SingleAvailabilityZone'] = input[:single_availability_zone].to_s unless input[:single_availability_zone].nil?
        params[context + 'MinTargetCapacity'] = input[:min_target_capacity].to_s unless input[:min_target_capacity].nil?
        params[context + 'MaxTotalPrice'] = input[:max_total_price].to_s unless input[:max_total_price].nil?
      end
    end

    class SpotPlacement
      def self.build(input, params, context: nil)
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'Tenancy'] = input[:tenancy].to_s unless input[:tenancy].nil?
      end
    end

    class StartInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StartInstances'
        params['Version'] = '2016-11-15'
        InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'AdditionalInfo'] = input[:additional_info].to_s unless input[:additional_info].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class StartNetworkInsightsAccessScopeAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StartNetworkInsightsAccessScopeAnalysis'
        params['Version'] = '2016-11-15'
        params[context + 'NetworkInsightsAccessScopeId'] = input[:network_insights_access_scope_id].to_s unless input[:network_insights_access_scope_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class StartNetworkInsightsAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StartNetworkInsightsAnalysis'
        params['Version'] = '2016-11-15'
        params[context + 'NetworkInsightsPathId'] = input[:network_insights_path_id].to_s unless input[:network_insights_path_id].nil?
        ValueStringList.build(input[:additional_accounts], params, context: context + 'AdditionalAccount') unless input[:additional_accounts].nil?
        ArnList.build(input[:filter_in_arns], params, context: context + 'FilterInArn') unless input[:filter_in_arns].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class StartVpcEndpointServicePrivateDnsVerification
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StartVpcEndpointServicePrivateDnsVerification'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ServiceId'] = input[:service_id].to_s unless input[:service_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class StopInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StopInstances'
        params['Version'] = '2016-11-15'
        InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'Hibernate'] = input[:hibernate].to_s unless input[:hibernate].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Force'] = input[:force].to_s unless input[:force].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class Storage
      def self.build(input, params, context: nil)
        S3Storage.build(input[:s3], params, context: context + 'S3' + '.') unless input[:s3].nil?
      end
    end

    class StorageLocation
      def self.build(input, params, context: nil)
        params[context + 'Bucket'] = input[:bucket].to_s unless input[:bucket].nil?
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
      end
    end

    class SubnetConfiguration
      def self.build(input, params, context: nil)
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'Ipv4'] = input[:ipv4].to_s unless input[:ipv4].nil?
        params[context + 'Ipv6'] = input[:ipv6].to_s unless input[:ipv6].nil?
      end
    end

    class SubnetConfigurationsList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          SubnetConfiguration.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class SubnetIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class Tag
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    class TagList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Tag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TagSpecification
      def self.build(input, params, context: nil)
        params[context + 'ResourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        TagList.build(input[:tags], params, context: context + 'Tag') unless input[:tags].nil?
      end
    end

    class TagSpecificationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          TagSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TargetCapacitySpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'TotalTargetCapacity'] = input[:total_target_capacity].to_s unless input[:total_target_capacity].nil?
        params[context + 'OnDemandTargetCapacity'] = input[:on_demand_target_capacity].to_s unless input[:on_demand_target_capacity].nil?
        params[context + 'SpotTargetCapacity'] = input[:spot_target_capacity].to_s unless input[:spot_target_capacity].nil?
        params[context + 'DefaultTargetCapacityType'] = input[:default_target_capacity_type].to_s unless input[:default_target_capacity_type].nil?
        params[context + 'TargetCapacityUnitType'] = input[:target_capacity_unit_type].to_s unless input[:target_capacity_unit_type].nil?
      end
    end

    class TargetConfigurationRequest
      def self.build(input, params, context: nil)
        params[context + 'InstanceCount'] = input[:instance_count].to_s unless input[:instance_count].nil?
        params[context + 'OfferingId'] = input[:offering_id].to_s unless input[:offering_id].nil?
      end
    end

    class TargetConfigurationRequestSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          TargetConfigurationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TargetGroup
      def self.build(input, params, context: nil)
        params[context + 'Arn'] = input[:arn].to_s unless input[:arn].nil?
      end
    end

    class TargetGroups
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          TargetGroup.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TargetGroupsConfig
      def self.build(input, params, context: nil)
        TargetGroups.build(input[:target_groups], params, context: context + 'targetGroups') unless input[:target_groups].nil?
      end
    end

    class TerminateClientVpnConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'TerminateClientVpnConnections'
        params['Version'] = '2016-11-15'
        params[context + 'ClientVpnEndpointId'] = input[:client_vpn_endpoint_id].to_s unless input[:client_vpn_endpoint_id].nil?
        params[context + 'ConnectionId'] = input[:connection_id].to_s unless input[:connection_id].nil?
        params[context + 'Username'] = input[:username].to_s unless input[:username].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class TerminateInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'TerminateInstances'
        params['Version'] = '2016-11-15'
        InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ThroughResourcesStatementRequest
      def self.build(input, params, context: nil)
        ResourceStatementRequest.build(input[:resource_statement], params, context: context + 'ResourceStatement' + '.') unless input[:resource_statement].nil?
      end
    end

    class ThroughResourcesStatementRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          ThroughResourcesStatementRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TotalLocalStorageGB
      def self.build(input, params, context: nil)
        params[context + 'Min'] = Hearth::NumberHelper.serialize(input[:min]).to_s unless input[:min].nil?
        params[context + 'Max'] = Hearth::NumberHelper.serialize(input[:max]).to_s unless input[:max].nil?
      end
    end

    class TotalLocalStorageGBRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = Hearth::NumberHelper.serialize(input[:min]).to_s unless input[:min].nil?
        params[context + 'Max'] = Hearth::NumberHelper.serialize(input[:max]).to_s unless input[:max].nil?
      end
    end

    class TrafficMirrorFilterIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TrafficMirrorFilterRuleFieldList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TrafficMirrorNetworkServiceList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TrafficMirrorPortRangeRequest
      def self.build(input, params, context: nil)
        params[context + 'FromPort'] = input[:from_port].to_s unless input[:from_port].nil?
        params[context + 'ToPort'] = input[:to_port].to_s unless input[:to_port].nil?
      end
    end

    class TrafficMirrorSessionFieldList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TrafficMirrorSessionIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TrafficMirrorTargetIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TransitGatewayAttachmentIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TransitGatewayCidrBlockStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TransitGatewayConnectPeerIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TransitGatewayConnectRequestBgpOptions
      def self.build(input, params, context: nil)
        params[context + 'PeerAsn'] = input[:peer_asn].to_s unless input[:peer_asn].nil?
      end
    end

    class TransitGatewayIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TransitGatewayMulticastDomainIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TransitGatewayNetworkInterfaceIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TransitGatewayPolicyTableIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TransitGatewayRequestOptions
      def self.build(input, params, context: nil)
        params[context + 'AmazonSideAsn'] = input[:amazon_side_asn].to_s unless input[:amazon_side_asn].nil?
        params[context + 'AutoAcceptSharedAttachments'] = input[:auto_accept_shared_attachments].to_s unless input[:auto_accept_shared_attachments].nil?
        params[context + 'DefaultRouteTableAssociation'] = input[:default_route_table_association].to_s unless input[:default_route_table_association].nil?
        params[context + 'DefaultRouteTablePropagation'] = input[:default_route_table_propagation].to_s unless input[:default_route_table_propagation].nil?
        params[context + 'VpnEcmpSupport'] = input[:vpn_ecmp_support].to_s unless input[:vpn_ecmp_support].nil?
        params[context + 'DnsSupport'] = input[:dns_support].to_s unless input[:dns_support].nil?
        params[context + 'SecurityGroupReferencingSupport'] = input[:security_group_referencing_support].to_s unless input[:security_group_referencing_support].nil?
        params[context + 'MulticastSupport'] = input[:multicast_support].to_s unless input[:multicast_support].nil?
        TransitGatewayCidrBlockStringList.build(input[:transit_gateway_cidr_blocks], params, context: context + 'TransitGatewayCidrBlocks') unless input[:transit_gateway_cidr_blocks].nil?
      end
    end

    class TransitGatewayRouteTableAnnouncementIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TransitGatewayRouteTableIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TransitGatewaySubnetIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TrunkInterfaceAssociationIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class UnassignIpv6Addresses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UnassignIpv6Addresses'
        params['Version'] = '2016-11-15'
        Ipv6AddressList.build(input[:ipv6_addresses], params, context: context + 'ipv6Addresses') unless input[:ipv6_addresses].nil?
        IpPrefixList.build(input[:ipv6_prefixes], params, context: context + 'Ipv6Prefix') unless input[:ipv6_prefixes].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class UnassignPrivateIpAddresses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UnassignPrivateIpAddresses'
        params['Version'] = '2016-11-15'
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        PrivateIpAddressStringList.build(input[:private_ip_addresses], params, context: context + 'privateIpAddress') unless input[:private_ip_addresses].nil?
        IpPrefixList.build(input[:ipv4_prefixes], params, context: context + 'Ipv4Prefix') unless input[:ipv4_prefixes].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class UnassignPrivateNatGatewayAddress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UnassignPrivateNatGatewayAddress'
        params['Version'] = '2016-11-15'
        params[context + 'NatGatewayId'] = input[:nat_gateway_id].to_s unless input[:nat_gateway_id].nil?
        IpList.build(input[:private_ip_addresses], params, context: context + 'PrivateIpAddress') unless input[:private_ip_addresses].nil?
        params[context + 'MaxDrainDurationSeconds'] = input[:max_drain_duration_seconds].to_s unless input[:max_drain_duration_seconds].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class UnlockSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UnlockSnapshot'
        params['Version'] = '2016-11-15'
        params[context + 'SnapshotId'] = input[:snapshot_id].to_s unless input[:snapshot_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class UnmonitorInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UnmonitorInstances'
        params['Version'] = '2016-11-15'
        InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class UpdateSecurityGroupRuleDescriptionsEgress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateSecurityGroupRuleDescriptionsEgress'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'GroupId'] = input[:group_id].to_s unless input[:group_id].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        IpPermissionList.build(input[:ip_permissions], params, context: context + 'IpPermissions') unless input[:ip_permissions].nil?
        SecurityGroupRuleDescriptionList.build(input[:security_group_rule_descriptions], params, context: context + 'SecurityGroupRuleDescription') unless input[:security_group_rule_descriptions].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class UpdateSecurityGroupRuleDescriptionsIngress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateSecurityGroupRuleDescriptionsIngress'
        params['Version'] = '2016-11-15'
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'GroupId'] = input[:group_id].to_s unless input[:group_id].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        IpPermissionList.build(input[:ip_permissions], params, context: context + 'IpPermissions') unless input[:ip_permissions].nil?
        SecurityGroupRuleDescriptionList.build(input[:security_group_rule_descriptions], params, context: context + 'SecurityGroupRuleDescription') unless input[:security_group_rule_descriptions].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class UserBucket
      def self.build(input, params, context: nil)
        params[context + 'S3Bucket'] = input[:s3_bucket].to_s unless input[:s3_bucket].nil?
        params[context + 'S3Key'] = input[:s3_key].to_s unless input[:s3_key].nil?
      end
    end

    class UserData
      def self.build(input, params, context: nil)
        params[context + 'Data'] = input[:data].to_s unless input[:data].nil?
      end
    end

    class UserGroupStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class UserIdGroupPair
      def self.build(input, params, context: nil)
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'GroupId'] = input[:group_id].to_s unless input[:group_id].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'PeeringStatus'] = input[:peering_status].to_s unless input[:peering_status].nil?
        params[context + 'UserId'] = input[:user_id].to_s unless input[:user_id].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'VpcPeeringConnectionId'] = input[:vpc_peering_connection_id].to_s unless input[:vpc_peering_connection_id].nil?
      end
    end

    class UserIdGroupPairList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          UserIdGroupPair.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class UserIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class VCpuCountRange
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    class VCpuCountRangeRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    class ValueStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class VerifiedAccessEndpointIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class VerifiedAccessGroupIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class VerifiedAccessInstanceIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class VerifiedAccessLogCloudWatchLogsDestinationOptions
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        params[context + 'LogGroup'] = input[:log_group].to_s unless input[:log_group].nil?
      end
    end

    class VerifiedAccessLogKinesisDataFirehoseDestinationOptions
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        params[context + 'DeliveryStream'] = input[:delivery_stream].to_s unless input[:delivery_stream].nil?
      end
    end

    class VerifiedAccessLogOptions
      def self.build(input, params, context: nil)
        VerifiedAccessLogS3DestinationOptions.build(input[:s3], params, context: context + 'S3' + '.') unless input[:s3].nil?
        VerifiedAccessLogCloudWatchLogsDestinationOptions.build(input[:cloud_watch_logs], params, context: context + 'CloudWatchLogs' + '.') unless input[:cloud_watch_logs].nil?
        VerifiedAccessLogKinesisDataFirehoseDestinationOptions.build(input[:kinesis_data_firehose], params, context: context + 'KinesisDataFirehose' + '.') unless input[:kinesis_data_firehose].nil?
        params[context + 'LogVersion'] = input[:log_version].to_s unless input[:log_version].nil?
        params[context + 'IncludeTrustContext'] = input[:include_trust_context].to_s unless input[:include_trust_context].nil?
      end
    end

    class VerifiedAccessLogS3DestinationOptions
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        params[context + 'BucketName'] = input[:bucket_name].to_s unless input[:bucket_name].nil?
        params[context + 'Prefix'] = input[:prefix].to_s unless input[:prefix].nil?
        params[context + 'BucketOwner'] = input[:bucket_owner].to_s unless input[:bucket_owner].nil?
      end
    end

    class VerifiedAccessSseSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'CustomerManagedKeyEnabled'] = input[:customer_managed_key_enabled].to_s unless input[:customer_managed_key_enabled].nil?
        params[context + 'KmsKeyArn'] = input[:kms_key_arn].to_s unless input[:kms_key_arn].nil?
      end
    end

    class VerifiedAccessTrustProviderIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class VersionStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class VirtualizationTypeSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class VolumeDetail
      def self.build(input, params, context: nil)
        params[context + 'Size'] = input[:size].to_s unless input[:size].nil?
      end
    end

    class VolumeIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class VpcClassicLinkIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class VpcEndpointIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class VpcEndpointRouteTableIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class VpcEndpointSecurityGroupIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class VpcEndpointServiceIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class VpcEndpointSubnetIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class VpcIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class VpcPeeringConnectionIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class VpnConnectionIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class VpnConnectionOptionsSpecification
      def self.build(input, params, context: nil)
        params[context + 'EnableAcceleration'] = input[:enable_acceleration].to_s unless input[:enable_acceleration].nil?
        params[context + 'StaticRoutesOnly'] = input[:static_routes_only].to_s unless input[:static_routes_only].nil?
        params[context + 'TunnelInsideIpVersion'] = input[:tunnel_inside_ip_version].to_s unless input[:tunnel_inside_ip_version].nil?
        VpnTunnelOptionsSpecificationsList.build(input[:tunnel_options], params, context: context + 'TunnelOptions') unless input[:tunnel_options].nil?
        params[context + 'LocalIpv4NetworkCidr'] = input[:local_ipv4_network_cidr].to_s unless input[:local_ipv4_network_cidr].nil?
        params[context + 'RemoteIpv4NetworkCidr'] = input[:remote_ipv4_network_cidr].to_s unless input[:remote_ipv4_network_cidr].nil?
        params[context + 'LocalIpv6NetworkCidr'] = input[:local_ipv6_network_cidr].to_s unless input[:local_ipv6_network_cidr].nil?
        params[context + 'RemoteIpv6NetworkCidr'] = input[:remote_ipv6_network_cidr].to_s unless input[:remote_ipv6_network_cidr].nil?
        params[context + 'OutsideIpAddressType'] = input[:outside_ip_address_type].to_s unless input[:outside_ip_address_type].nil?
        params[context + 'TransportTransitGatewayAttachmentId'] = input[:transport_transit_gateway_attachment_id].to_s unless input[:transport_transit_gateway_attachment_id].nil?
      end
    end

    class VpnGatewayIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class VpnTunnelLogOptionsSpecification
      def self.build(input, params, context: nil)
        CloudWatchLogOptionsSpecification.build(input[:cloud_watch_log_options], params, context: context + 'CloudWatchLogOptions' + '.') unless input[:cloud_watch_log_options].nil?
      end
    end

    class VpnTunnelOptionsSpecification
      def self.build(input, params, context: nil)
        params[context + 'TunnelInsideCidr'] = input[:tunnel_inside_cidr].to_s unless input[:tunnel_inside_cidr].nil?
        params[context + 'TunnelInsideIpv6Cidr'] = input[:tunnel_inside_ipv6_cidr].to_s unless input[:tunnel_inside_ipv6_cidr].nil?
        params[context + 'PreSharedKey'] = input[:pre_shared_key].to_s unless input[:pre_shared_key].nil?
        params[context + 'Phase1LifetimeSeconds'] = input[:phase1_lifetime_seconds].to_s unless input[:phase1_lifetime_seconds].nil?
        params[context + 'Phase2LifetimeSeconds'] = input[:phase2_lifetime_seconds].to_s unless input[:phase2_lifetime_seconds].nil?
        params[context + 'RekeyMarginTimeSeconds'] = input[:rekey_margin_time_seconds].to_s unless input[:rekey_margin_time_seconds].nil?
        params[context + 'RekeyFuzzPercentage'] = input[:rekey_fuzz_percentage].to_s unless input[:rekey_fuzz_percentage].nil?
        params[context + 'ReplayWindowSize'] = input[:replay_window_size].to_s unless input[:replay_window_size].nil?
        params[context + 'DPDTimeoutSeconds'] = input[:dpd_timeout_seconds].to_s unless input[:dpd_timeout_seconds].nil?
        params[context + 'DPDTimeoutAction'] = input[:dpd_timeout_action].to_s unless input[:dpd_timeout_action].nil?
        Phase1EncryptionAlgorithmsRequestList.build(input[:phase1_encryption_algorithms], params, context: context + 'Phase1EncryptionAlgorithm') unless input[:phase1_encryption_algorithms].nil?
        Phase2EncryptionAlgorithmsRequestList.build(input[:phase2_encryption_algorithms], params, context: context + 'Phase2EncryptionAlgorithm') unless input[:phase2_encryption_algorithms].nil?
        Phase1IntegrityAlgorithmsRequestList.build(input[:phase1_integrity_algorithms], params, context: context + 'Phase1IntegrityAlgorithm') unless input[:phase1_integrity_algorithms].nil?
        Phase2IntegrityAlgorithmsRequestList.build(input[:phase2_integrity_algorithms], params, context: context + 'Phase2IntegrityAlgorithm') unless input[:phase2_integrity_algorithms].nil?
        Phase1DHGroupNumbersRequestList.build(input[:phase1_dh_group_numbers], params, context: context + 'Phase1DHGroupNumber') unless input[:phase1_dh_group_numbers].nil?
        Phase2DHGroupNumbersRequestList.build(input[:phase2_dh_group_numbers], params, context: context + 'Phase2DHGroupNumber') unless input[:phase2_dh_group_numbers].nil?
        IKEVersionsRequestList.build(input[:ike_versions], params, context: context + 'IKEVersion') unless input[:ike_versions].nil?
        params[context + 'StartupAction'] = input[:startup_action].to_s unless input[:startup_action].nil?
        VpnTunnelLogOptionsSpecification.build(input[:log_options], params, context: context + 'LogOptions' + '.') unless input[:log_options].nil?
        params[context + 'EnableTunnelLifecycleControl'] = input[:enable_tunnel_lifecycle_control].to_s unless input[:enable_tunnel_lifecycle_control].nil?
      end
    end

    class VpnTunnelOptionsSpecificationsList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          VpnTunnelOptionsSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class WithdrawByoipCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'WithdrawByoipCidr'
        params['Version'] = '2016-11-15'
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ZoneIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class ZoneNameStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end
  end
end
