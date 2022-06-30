# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::EC2
  module Builders

    # Operation Builder for AcceptReservedInstancesExchangeQuote
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
        Builders::ReservedInstanceIdSet.build(input[:reserved_instance_ids], params, context: context + 'ReservedInstanceId') unless input[:reserved_instance_ids].nil?
        Builders::TargetConfigurationRequestSet.build(input[:target_configurations], params, context: context + 'TargetConfiguration') unless input[:target_configurations].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TargetConfigurationRequestSet
    class TargetConfigurationRequestSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::TargetConfigurationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for TargetConfigurationRequest
    class TargetConfigurationRequest
      def self.build(input, params, context: nil)
        params[context + 'InstanceCount'] = input[:instance_count].to_s unless input[:instance_count].nil?
        params[context + 'OfferingId'] = input[:offering_id].to_s unless input[:offering_id].nil?
      end
    end

    # List Builder for ReservedInstanceIdSet
    class ReservedInstanceIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for AcceptTransitGatewayMulticastDomainAssociations
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
        Builders::ValueStringList.build(input[:subnet_ids], params, context: context + 'SubnetIds') unless input[:subnet_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ValueStringList
    class ValueStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for AcceptTransitGatewayPeeringAttachment
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AcceptTransitGatewayVpcAttachment
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AcceptVpcEndpointConnections
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
        Builders::VpcEndpointIdList.build(input[:vpc_endpoint_ids], params, context: context + 'VpcEndpointId') unless input[:vpc_endpoint_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for VpcEndpointIdList
    class VpcEndpointIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for AcceptVpcPeeringConnection
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AdvertiseByoipCidr
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
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AllocateAddress
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TagSpecificationList
    class TagSpecificationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::TagSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for TagSpecification
    class TagSpecification
      def self.build(input, params, context: nil)
        params[context + 'ResourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tag') unless input[:tags].nil?
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Tag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Operation Builder for AllocateHosts
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'HostRecovery'] = input[:host_recovery].to_s unless input[:host_recovery].nil?
        params[context + 'OutpostArn'] = input[:outpost_arn].to_s unless input[:outpost_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AllocateIpamPoolCidr
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
        Builders::IpamPoolAllocationDisallowedCidrs.build(input[:disallowed_cidrs], params, context: context + 'DisallowedCidr') unless input[:disallowed_cidrs].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for IpamPoolAllocationDisallowedCidrs
    class IpamPoolAllocationDisallowedCidrs
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ApplySecurityGroupsToClientVpnTargetNetwork
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
        Builders::ClientVpnSecurityGroupIdSet.build(input[:security_group_ids], params, context: context + 'SecurityGroupId') unless input[:security_group_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ClientVpnSecurityGroupIdSet
    class ClientVpnSecurityGroupIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for AssignIpv6Addresses
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
        Builders::Ipv6AddressList.build(input[:ipv6_addresses], params, context: context + 'ipv6Addresses') unless input[:ipv6_addresses].nil?
        params[context + 'Ipv6PrefixCount'] = input[:ipv6_prefix_count].to_s unless input[:ipv6_prefix_count].nil?
        Builders::IpPrefixList.build(input[:ipv6_prefixes], params, context: context + 'Ipv6Prefix') unless input[:ipv6_prefixes].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for IpPrefixList
    class IpPrefixList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for Ipv6AddressList
    class Ipv6AddressList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for AssignPrivateIpAddresses
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
        Builders::PrivateIpAddressStringList.build(input[:private_ip_addresses], params, context: context + 'privateIpAddress') unless input[:private_ip_addresses].nil?
        params[context + 'SecondaryPrivateIpAddressCount'] = input[:secondary_private_ip_address_count].to_s unless input[:secondary_private_ip_address_count].nil?
        Builders::IpPrefixList.build(input[:ipv4_prefixes], params, context: context + 'Ipv4Prefix') unless input[:ipv4_prefixes].nil?
        params[context + 'Ipv4PrefixCount'] = input[:ipv4_prefix_count].to_s unless input[:ipv4_prefix_count].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for PrivateIpAddressStringList
    class PrivateIpAddressStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for AssociateAddress
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AssociateClientVpnTargetNetwork
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AssociateDhcpOptions
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AssociateEnclaveCertificateIamRole
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AssociateIamInstanceProfile
    class AssociateIamInstanceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssociateIamInstanceProfile'
        params['Version'] = '2016-11-15'
        Builders::IamInstanceProfileSpecification.build(input[:iam_instance_profile], params, context: context + 'IamInstanceProfile' + '.') unless input[:iam_instance_profile].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for IamInstanceProfileSpecification
    class IamInstanceProfileSpecification
      def self.build(input, params, context: nil)
        params[context + 'Arn'] = input[:arn].to_s unless input[:arn].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
      end
    end

    # Operation Builder for AssociateInstanceEventWindow
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
        Builders::InstanceEventWindowAssociationRequest.build(input[:association_target], params, context: context + 'AssociationTarget' + '.') unless input[:association_target].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for InstanceEventWindowAssociationRequest
    class InstanceEventWindowAssociationRequest
      def self.build(input, params, context: nil)
        Builders::InstanceIdList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        Builders::TagList.build(input[:instance_tags], params, context: context + 'InstanceTag') unless input[:instance_tags].nil?
        Builders::DedicatedHostIdList.build(input[:dedicated_host_ids], params, context: context + 'DedicatedHostId') unless input[:dedicated_host_ids].nil?
      end
    end

    # List Builder for DedicatedHostIdList
    class DedicatedHostIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for InstanceIdList
    class InstanceIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for AssociateRouteTable
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AssociateSubnetCidrBlock
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AssociateTransitGatewayMulticastDomain
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
        Builders::TransitGatewaySubnetIdList.build(input[:subnet_ids], params, context: context + 'SubnetIds') unless input[:subnet_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TransitGatewaySubnetIdList
    class TransitGatewaySubnetIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for AssociateTransitGatewayRouteTable
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AssociateTrunkInterface
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AssociateVpcCidrBlock
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AttachClassicLinkVpc
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
        Builders::GroupIdStringList.build(input[:groups], params, context: context + 'SecurityGroupId') unless input[:groups].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for GroupIdStringList
    class GroupIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for AttachInternetGateway
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AttachNetworkInterface
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AttachVolume
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AttachVpnGateway
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AuthorizeClientVpnIngress
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AuthorizeSecurityGroupEgress
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
        Builders::IpPermissionList.build(input[:ip_permissions], params, context: context + 'ipPermissions') unless input[:ip_permissions].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'CidrIp'] = input[:cidr_ip].to_s unless input[:cidr_ip].nil?
        params[context + 'FromPort'] = input[:from_port].to_s unless input[:from_port].nil?
        params[context + 'IpProtocol'] = input[:ip_protocol].to_s unless input[:ip_protocol].nil?
        params[context + 'ToPort'] = input[:to_port].to_s unless input[:to_port].nil?
        params[context + 'SourceSecurityGroupName'] = input[:source_security_group_name].to_s unless input[:source_security_group_name].nil?
        params[context + 'SourceSecurityGroupOwnerId'] = input[:source_security_group_owner_id].to_s unless input[:source_security_group_owner_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for IpPermissionList
    class IpPermissionList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::IpPermission.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for IpPermission
    class IpPermission
      def self.build(input, params, context: nil)
        params[context + 'FromPort'] = input[:from_port].to_s unless input[:from_port].nil?
        params[context + 'IpProtocol'] = input[:ip_protocol].to_s unless input[:ip_protocol].nil?
        Builders::IpRangeList.build(input[:ip_ranges], params, context: context + 'ipRanges') unless input[:ip_ranges].nil?
        Builders::Ipv6RangeList.build(input[:ipv6_ranges], params, context: context + 'ipv6Ranges') unless input[:ipv6_ranges].nil?
        Builders::PrefixListIdList.build(input[:prefix_list_ids], params, context: context + 'prefixListIds') unless input[:prefix_list_ids].nil?
        params[context + 'ToPort'] = input[:to_port].to_s unless input[:to_port].nil?
        Builders::UserIdGroupPairList.build(input[:user_id_group_pairs], params, context: context + 'groups') unless input[:user_id_group_pairs].nil?
      end
    end

    # List Builder for UserIdGroupPairList
    class UserIdGroupPairList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::UserIdGroupPair.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for UserIdGroupPair
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

    # List Builder for PrefixListIdList
    class PrefixListIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::PrefixListId.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for PrefixListId
    class PrefixListId
      def self.build(input, params, context: nil)
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'PrefixListId'] = input[:prefix_list_id].to_s unless input[:prefix_list_id].nil?
      end
    end

    # List Builder for Ipv6RangeList
    class Ipv6RangeList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Ipv6Range.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Ipv6Range
    class Ipv6Range
      def self.build(input, params, context: nil)
        params[context + 'CidrIpv6'] = input[:cidr_ipv6].to_s unless input[:cidr_ipv6].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
      end
    end

    # List Builder for IpRangeList
    class IpRangeList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::IpRange.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for IpRange
    class IpRange
      def self.build(input, params, context: nil)
        params[context + 'CidrIp'] = input[:cidr_ip].to_s unless input[:cidr_ip].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
      end
    end

    # Operation Builder for AuthorizeSecurityGroupIngress
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
        Builders::IpPermissionList.build(input[:ip_permissions], params, context: context + 'IpPermissions') unless input[:ip_permissions].nil?
        params[context + 'IpProtocol'] = input[:ip_protocol].to_s unless input[:ip_protocol].nil?
        params[context + 'SourceSecurityGroupName'] = input[:source_security_group_name].to_s unless input[:source_security_group_name].nil?
        params[context + 'SourceSecurityGroupOwnerId'] = input[:source_security_group_owner_id].to_s unless input[:source_security_group_owner_id].nil?
        params[context + 'ToPort'] = input[:to_port].to_s unless input[:to_port].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for BundleInstance
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
        Builders::Storage.build(input[:storage], params, context: context + 'Storage' + '.') unless input[:storage].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for Storage
    class Storage
      def self.build(input, params, context: nil)
        Builders::S3Storage.build(input[:s3], params, context: context + 'S3' + '.') unless input[:s3].nil?
      end
    end

    # Structure Builder for S3Storage
    class S3Storage
      def self.build(input, params, context: nil)
        params[context + 'AWSAccessKeyId'] = input[:aws_access_key_id].to_s unless input[:aws_access_key_id].nil?
        params[context + 'Bucket'] = input[:bucket].to_s unless input[:bucket].nil?
        params[context + 'Prefix'] = input[:prefix].to_s unless input[:prefix].nil?
        params[context + 'UploadPolicy'] = Base64::encode64(input[:upload_policy]).strip unless input[:upload_policy].nil?
        params[context + 'UploadPolicySignature'] = input[:upload_policy_signature].to_s unless input[:upload_policy_signature].nil?
      end
    end

    # Operation Builder for CancelBundleTask
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CancelCapacityReservation
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CancelCapacityReservationFleets
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
        Builders::CapacityReservationFleetIdSet.build(input[:capacity_reservation_fleet_ids], params, context: context + 'CapacityReservationFleetId') unless input[:capacity_reservation_fleet_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for CapacityReservationFleetIdSet
    class CapacityReservationFleetIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CancelConversionTask
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CancelExportTask
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CancelImportTask
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CancelReservedInstancesListing
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CancelSpotFleetRequests
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
        Builders::SpotFleetRequestIdList.build(input[:spot_fleet_request_ids], params, context: context + 'spotFleetRequestId') unless input[:spot_fleet_request_ids].nil?
        params[context + 'TerminateInstances'] = input[:terminate_instances].to_s unless input[:terminate_instances].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for SpotFleetRequestIdList
    class SpotFleetRequestIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CancelSpotInstanceRequests
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
        Builders::SpotInstanceRequestIdList.build(input[:spot_instance_request_ids], params, context: context + 'SpotInstanceRequestId') unless input[:spot_instance_request_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for SpotInstanceRequestIdList
    class SpotInstanceRequestIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ConfirmProductInstance
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CopyFpgaImage
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CopyImage
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CopySnapshot
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateCapacityReservation
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecifications') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'OutpostArn'] = input[:outpost_arn].to_s unless input[:outpost_arn].nil?
        params[context + 'PlacementGroupArn'] = input[:placement_group_arn].to_s unless input[:placement_group_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateCapacityReservationFleet
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
        Builders::ReservationFleetInstanceSpecificationList.build(input[:instance_type_specifications], params, context: context + 'InstanceTypeSpecification') unless input[:instance_type_specifications].nil?
        params[context + 'Tenancy'] = input[:tenancy].to_s unless input[:tenancy].nil?
        params[context + 'TotalTargetCapacity'] = input[:total_target_capacity].to_s unless input[:total_target_capacity].nil?
        params[context + 'EndDate'] = Hearth::TimeHelper.to_date_time(input[:end_date]) unless input[:end_date].nil?
        params[context + 'InstanceMatchCriteria'] = input[:instance_match_criteria].to_s unless input[:instance_match_criteria].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ReservationFleetInstanceSpecificationList
    class ReservationFleetInstanceSpecificationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ReservationFleetInstanceSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ReservationFleetInstanceSpecification
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

    # Operation Builder for CreateCarrierGateway
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateClientVpnEndpoint
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
        Builders::ClientVpnAuthenticationRequestList.build(input[:authentication_options], params, context: context + 'Authentication') unless input[:authentication_options].nil?
        Builders::ConnectionLogOptions.build(input[:connection_log_options], params, context: context + 'ConnectionLogOptions' + '.') unless input[:connection_log_options].nil?
        Builders::ValueStringList.build(input[:dns_servers], params, context: context + 'DnsServers') unless input[:dns_servers].nil?
        params[context + 'TransportProtocol'] = input[:transport_protocol].to_s unless input[:transport_protocol].nil?
        params[context + 'VpnPort'] = input[:vpn_port].to_s unless input[:vpn_port].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'SplitTunnel'] = input[:split_tunnel].to_s unless input[:split_tunnel].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        Builders::ClientVpnSecurityGroupIdSet.build(input[:security_group_ids], params, context: context + 'SecurityGroupId') unless input[:security_group_ids].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'SelfServicePortal'] = input[:self_service_portal].to_s unless input[:self_service_portal].nil?
        Builders::ClientConnectOptions.build(input[:client_connect_options], params, context: context + 'ClientConnectOptions' + '.') unless input[:client_connect_options].nil?
        params[context + 'SessionTimeoutHours'] = input[:session_timeout_hours].to_s unless input[:session_timeout_hours].nil?
        Builders::ClientLoginBannerOptions.build(input[:client_login_banner_options], params, context: context + 'ClientLoginBannerOptions' + '.') unless input[:client_login_banner_options].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for ClientLoginBannerOptions
    class ClientLoginBannerOptions
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        params[context + 'BannerText'] = input[:banner_text].to_s unless input[:banner_text].nil?
      end
    end

    # Structure Builder for ClientConnectOptions
    class ClientConnectOptions
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        params[context + 'LambdaFunctionArn'] = input[:lambda_function_arn].to_s unless input[:lambda_function_arn].nil?
      end
    end

    # Structure Builder for ConnectionLogOptions
    class ConnectionLogOptions
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        params[context + 'CloudwatchLogGroup'] = input[:cloudwatch_log_group].to_s unless input[:cloudwatch_log_group].nil?
        params[context + 'CloudwatchLogStream'] = input[:cloudwatch_log_stream].to_s unless input[:cloudwatch_log_stream].nil?
      end
    end

    # List Builder for ClientVpnAuthenticationRequestList
    class ClientVpnAuthenticationRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ClientVpnAuthenticationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ClientVpnAuthenticationRequest
    class ClientVpnAuthenticationRequest
      def self.build(input, params, context: nil)
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        Builders::DirectoryServiceAuthenticationRequest.build(input[:active_directory], params, context: context + 'ActiveDirectory' + '.') unless input[:active_directory].nil?
        Builders::CertificateAuthenticationRequest.build(input[:mutual_authentication], params, context: context + 'MutualAuthentication' + '.') unless input[:mutual_authentication].nil?
        Builders::FederatedAuthenticationRequest.build(input[:federated_authentication], params, context: context + 'FederatedAuthentication' + '.') unless input[:federated_authentication].nil?
      end
    end

    # Structure Builder for FederatedAuthenticationRequest
    class FederatedAuthenticationRequest
      def self.build(input, params, context: nil)
        params[context + 'SAMLProviderArn'] = input[:saml_provider_arn].to_s unless input[:saml_provider_arn].nil?
        params[context + 'SelfServiceSAMLProviderArn'] = input[:self_service_saml_provider_arn].to_s unless input[:self_service_saml_provider_arn].nil?
      end
    end

    # Structure Builder for CertificateAuthenticationRequest
    class CertificateAuthenticationRequest
      def self.build(input, params, context: nil)
        params[context + 'ClientRootCertificateChainArn'] = input[:client_root_certificate_chain_arn].to_s unless input[:client_root_certificate_chain_arn].nil?
      end
    end

    # Structure Builder for DirectoryServiceAuthenticationRequest
    class DirectoryServiceAuthenticationRequest
      def self.build(input, params, context: nil)
        params[context + 'DirectoryId'] = input[:directory_id].to_s unless input[:directory_id].nil?
      end
    end

    # Operation Builder for CreateClientVpnRoute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateCustomerGateway
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
        params[context + 'IpAddress'] = input[:public_ip].to_s unless input[:public_ip].nil?
        params[context + 'CertificateArn'] = input[:certificate_arn].to_s unless input[:certificate_arn].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DeviceName'] = input[:device_name].to_s unless input[:device_name].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateDefaultSubnet
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateDefaultVpc
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateDhcpOptions
    class CreateDhcpOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateDhcpOptions'
        params['Version'] = '2016-11-15'
        Builders::NewDhcpConfigurationList.build(input[:dhcp_configurations], params, context: context + 'dhcpConfiguration') unless input[:dhcp_configurations].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for NewDhcpConfigurationList
    class NewDhcpConfigurationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::NewDhcpConfiguration.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for NewDhcpConfiguration
    class NewDhcpConfiguration
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        Builders::ValueStringList.build(input[:values], params, context: context + 'Value') unless input[:values].nil?
      end
    end

    # Operation Builder for CreateEgressOnlyInternetGateway
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateFleet
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
        Builders::SpotOptionsRequest.build(input[:spot_options], params, context: context + 'SpotOptions' + '.') unless input[:spot_options].nil?
        Builders::OnDemandOptionsRequest.build(input[:on_demand_options], params, context: context + 'OnDemandOptions' + '.') unless input[:on_demand_options].nil?
        params[context + 'ExcessCapacityTerminationPolicy'] = input[:excess_capacity_termination_policy].to_s unless input[:excess_capacity_termination_policy].nil?
        Builders::FleetLaunchTemplateConfigListRequest.build(input[:launch_template_configs], params, context: context + 'LaunchTemplateConfigs') unless input[:launch_template_configs].nil?
        Builders::TargetCapacitySpecificationRequest.build(input[:target_capacity_specification], params, context: context + 'TargetCapacitySpecification' + '.') unless input[:target_capacity_specification].nil?
        params[context + 'TerminateInstancesWithExpiration'] = input[:terminate_instances_with_expiration].to_s unless input[:terminate_instances_with_expiration].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'ValidFrom'] = Hearth::TimeHelper.to_date_time(input[:valid_from]) unless input[:valid_from].nil?
        params[context + 'ValidUntil'] = Hearth::TimeHelper.to_date_time(input[:valid_until]) unless input[:valid_until].nil?
        params[context + 'ReplaceUnhealthyInstances'] = input[:replace_unhealthy_instances].to_s unless input[:replace_unhealthy_instances].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'Context'] = input[:context].to_s unless input[:context].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for TargetCapacitySpecificationRequest
    class TargetCapacitySpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'TotalTargetCapacity'] = input[:total_target_capacity].to_s unless input[:total_target_capacity].nil?
        params[context + 'OnDemandTargetCapacity'] = input[:on_demand_target_capacity].to_s unless input[:on_demand_target_capacity].nil?
        params[context + 'SpotTargetCapacity'] = input[:spot_target_capacity].to_s unless input[:spot_target_capacity].nil?
        params[context + 'DefaultTargetCapacityType'] = input[:default_target_capacity_type].to_s unless input[:default_target_capacity_type].nil?
        params[context + 'TargetCapacityUnitType'] = input[:target_capacity_unit_type].to_s unless input[:target_capacity_unit_type].nil?
      end
    end

    # List Builder for FleetLaunchTemplateConfigListRequest
    class FleetLaunchTemplateConfigListRequest
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::FleetLaunchTemplateConfigRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for FleetLaunchTemplateConfigRequest
    class FleetLaunchTemplateConfigRequest
      def self.build(input, params, context: nil)
        Builders::FleetLaunchTemplateSpecificationRequest.build(input[:launch_template_specification], params, context: context + 'LaunchTemplateSpecification' + '.') unless input[:launch_template_specification].nil?
        Builders::FleetLaunchTemplateOverridesListRequest.build(input[:overrides], params, context: context + 'Overrides') unless input[:overrides].nil?
      end
    end

    # List Builder for FleetLaunchTemplateOverridesListRequest
    class FleetLaunchTemplateOverridesListRequest
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::FleetLaunchTemplateOverridesRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for FleetLaunchTemplateOverridesRequest
    class FleetLaunchTemplateOverridesRequest
      def self.build(input, params, context: nil)
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'MaxPrice'] = input[:max_price].to_s unless input[:max_price].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'WeightedCapacity'] = Hearth::NumberHelper.serialize(input[:weighted_capacity]).to_s unless input[:weighted_capacity].nil?
        params[context + 'Priority'] = Hearth::NumberHelper.serialize(input[:priority]).to_s unless input[:priority].nil?
        Builders::Placement.build(input[:placement], params, context: context + 'Placement' + '.') unless input[:placement].nil?
        Builders::InstanceRequirementsRequest.build(input[:instance_requirements], params, context: context + 'InstanceRequirements' + '.') unless input[:instance_requirements].nil?
      end
    end

    # Structure Builder for InstanceRequirementsRequest
    class InstanceRequirementsRequest
      def self.build(input, params, context: nil)
        Builders::VCpuCountRangeRequest.build(input[:v_cpu_count], params, context: context + 'VCpuCount' + '.') unless input[:v_cpu_count].nil?
        Builders::MemoryMiBRequest.build(input[:memory_mi_b], params, context: context + 'MemoryMiB' + '.') unless input[:memory_mi_b].nil?
        Builders::CpuManufacturerSet.build(input[:cpu_manufacturers], params, context: context + 'CpuManufacturer') unless input[:cpu_manufacturers].nil?
        Builders::MemoryGiBPerVCpuRequest.build(input[:memory_gi_b_per_v_cpu], params, context: context + 'MemoryGiBPerVCpu' + '.') unless input[:memory_gi_b_per_v_cpu].nil?
        Builders::ExcludedInstanceTypeSet.build(input[:excluded_instance_types], params, context: context + 'ExcludedInstanceType') unless input[:excluded_instance_types].nil?
        Builders::InstanceGenerationSet.build(input[:instance_generations], params, context: context + 'InstanceGeneration') unless input[:instance_generations].nil?
        params[context + 'SpotMaxPricePercentageOverLowestPrice'] = input[:spot_max_price_percentage_over_lowest_price].to_s unless input[:spot_max_price_percentage_over_lowest_price].nil?
        params[context + 'OnDemandMaxPricePercentageOverLowestPrice'] = input[:on_demand_max_price_percentage_over_lowest_price].to_s unless input[:on_demand_max_price_percentage_over_lowest_price].nil?
        params[context + 'BareMetal'] = input[:bare_metal].to_s unless input[:bare_metal].nil?
        params[context + 'BurstablePerformance'] = input[:burstable_performance].to_s unless input[:burstable_performance].nil?
        params[context + 'RequireHibernateSupport'] = input[:require_hibernate_support].to_s unless input[:require_hibernate_support].nil?
        Builders::NetworkInterfaceCountRequest.build(input[:network_interface_count], params, context: context + 'NetworkInterfaceCount' + '.') unless input[:network_interface_count].nil?
        params[context + 'LocalStorage'] = input[:local_storage].to_s unless input[:local_storage].nil?
        Builders::LocalStorageTypeSet.build(input[:local_storage_types], params, context: context + 'LocalStorageType') unless input[:local_storage_types].nil?
        Builders::TotalLocalStorageGBRequest.build(input[:total_local_storage_gb], params, context: context + 'TotalLocalStorageGB' + '.') unless input[:total_local_storage_gb].nil?
        Builders::BaselineEbsBandwidthMbpsRequest.build(input[:baseline_ebs_bandwidth_mbps], params, context: context + 'BaselineEbsBandwidthMbps' + '.') unless input[:baseline_ebs_bandwidth_mbps].nil?
        Builders::AcceleratorTypeSet.build(input[:accelerator_types], params, context: context + 'AcceleratorType') unless input[:accelerator_types].nil?
        Builders::AcceleratorCountRequest.build(input[:accelerator_count], params, context: context + 'AcceleratorCount' + '.') unless input[:accelerator_count].nil?
        Builders::AcceleratorManufacturerSet.build(input[:accelerator_manufacturers], params, context: context + 'AcceleratorManufacturer') unless input[:accelerator_manufacturers].nil?
        Builders::AcceleratorNameSet.build(input[:accelerator_names], params, context: context + 'AcceleratorName') unless input[:accelerator_names].nil?
        Builders::AcceleratorTotalMemoryMiBRequest.build(input[:accelerator_total_memory_mi_b], params, context: context + 'AcceleratorTotalMemoryMiB' + '.') unless input[:accelerator_total_memory_mi_b].nil?
      end
    end

    # Structure Builder for AcceleratorTotalMemoryMiBRequest
    class AcceleratorTotalMemoryMiBRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    # List Builder for AcceleratorNameSet
    class AcceleratorNameSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for AcceleratorManufacturerSet
    class AcceleratorManufacturerSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for AcceleratorCountRequest
    class AcceleratorCountRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    # List Builder for AcceleratorTypeSet
    class AcceleratorTypeSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for BaselineEbsBandwidthMbpsRequest
    class BaselineEbsBandwidthMbpsRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    # Structure Builder for TotalLocalStorageGBRequest
    class TotalLocalStorageGBRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = Hearth::NumberHelper.serialize(input[:min]).to_s unless input[:min].nil?
        params[context + 'Max'] = Hearth::NumberHelper.serialize(input[:max]).to_s unless input[:max].nil?
      end
    end

    # List Builder for LocalStorageTypeSet
    class LocalStorageTypeSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for NetworkInterfaceCountRequest
    class NetworkInterfaceCountRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    # List Builder for InstanceGenerationSet
    class InstanceGenerationSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for ExcludedInstanceTypeSet
    class ExcludedInstanceTypeSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for MemoryGiBPerVCpuRequest
    class MemoryGiBPerVCpuRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = Hearth::NumberHelper.serialize(input[:min]).to_s unless input[:min].nil?
        params[context + 'Max'] = Hearth::NumberHelper.serialize(input[:max]).to_s unless input[:max].nil?
      end
    end

    # List Builder for CpuManufacturerSet
    class CpuManufacturerSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for MemoryMiBRequest
    class MemoryMiBRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    # Structure Builder for VCpuCountRangeRequest
    class VCpuCountRangeRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    # Structure Builder for Placement
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
      end
    end

    # Structure Builder for FleetLaunchTemplateSpecificationRequest
    class FleetLaunchTemplateSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'LaunchTemplateId'] = input[:launch_template_id].to_s unless input[:launch_template_id].nil?
        params[context + 'LaunchTemplateName'] = input[:launch_template_name].to_s unless input[:launch_template_name].nil?
        params[context + 'Version'] = input[:version].to_s unless input[:version].nil?
      end
    end

    # Structure Builder for OnDemandOptionsRequest
    class OnDemandOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'AllocationStrategy'] = input[:allocation_strategy].to_s unless input[:allocation_strategy].nil?
        Builders::CapacityReservationOptionsRequest.build(input[:capacity_reservation_options], params, context: context + 'CapacityReservationOptions' + '.') unless input[:capacity_reservation_options].nil?
        params[context + 'SingleInstanceType'] = input[:single_instance_type].to_s unless input[:single_instance_type].nil?
        params[context + 'SingleAvailabilityZone'] = input[:single_availability_zone].to_s unless input[:single_availability_zone].nil?
        params[context + 'MinTargetCapacity'] = input[:min_target_capacity].to_s unless input[:min_target_capacity].nil?
        params[context + 'MaxTotalPrice'] = input[:max_total_price].to_s unless input[:max_total_price].nil?
      end
    end

    # Structure Builder for CapacityReservationOptionsRequest
    class CapacityReservationOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'UsageStrategy'] = input[:usage_strategy].to_s unless input[:usage_strategy].nil?
      end
    end

    # Structure Builder for SpotOptionsRequest
    class SpotOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'AllocationStrategy'] = input[:allocation_strategy].to_s unless input[:allocation_strategy].nil?
        Builders::FleetSpotMaintenanceStrategiesRequest.build(input[:maintenance_strategies], params, context: context + 'MaintenanceStrategies' + '.') unless input[:maintenance_strategies].nil?
        params[context + 'InstanceInterruptionBehavior'] = input[:instance_interruption_behavior].to_s unless input[:instance_interruption_behavior].nil?
        params[context + 'InstancePoolsToUseCount'] = input[:instance_pools_to_use_count].to_s unless input[:instance_pools_to_use_count].nil?
        params[context + 'SingleInstanceType'] = input[:single_instance_type].to_s unless input[:single_instance_type].nil?
        params[context + 'SingleAvailabilityZone'] = input[:single_availability_zone].to_s unless input[:single_availability_zone].nil?
        params[context + 'MinTargetCapacity'] = input[:min_target_capacity].to_s unless input[:min_target_capacity].nil?
        params[context + 'MaxTotalPrice'] = input[:max_total_price].to_s unless input[:max_total_price].nil?
      end
    end

    # Structure Builder for FleetSpotMaintenanceStrategiesRequest
    class FleetSpotMaintenanceStrategiesRequest
      def self.build(input, params, context: nil)
        Builders::FleetSpotCapacityRebalanceRequest.build(input[:capacity_rebalance], params, context: context + 'CapacityRebalance' + '.') unless input[:capacity_rebalance].nil?
      end
    end

    # Structure Builder for FleetSpotCapacityRebalanceRequest
    class FleetSpotCapacityRebalanceRequest
      def self.build(input, params, context: nil)
        params[context + 'ReplacementStrategy'] = input[:replacement_strategy].to_s unless input[:replacement_strategy].nil?
        params[context + 'TerminationDelay'] = input[:termination_delay].to_s unless input[:termination_delay].nil?
      end
    end

    # Operation Builder for CreateFlowLogs
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
        params[context + 'LogGroupName'] = input[:log_group_name].to_s unless input[:log_group_name].nil?
        Builders::FlowLogResourceIds.build(input[:resource_ids], params, context: context + 'ResourceId') unless input[:resource_ids].nil?
        params[context + 'ResourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        params[context + 'TrafficType'] = input[:traffic_type].to_s unless input[:traffic_type].nil?
        params[context + 'LogDestinationType'] = input[:log_destination_type].to_s unless input[:log_destination_type].nil?
        params[context + 'LogDestination'] = input[:log_destination].to_s unless input[:log_destination].nil?
        params[context + 'LogFormat'] = input[:log_format].to_s unless input[:log_format].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'MaxAggregationInterval'] = input[:max_aggregation_interval].to_s unless input[:max_aggregation_interval].nil?
        Builders::DestinationOptionsRequest.build(input[:destination_options], params, context: context + 'DestinationOptions' + '.') unless input[:destination_options].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for DestinationOptionsRequest
    class DestinationOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'FileFormat'] = input[:file_format].to_s unless input[:file_format].nil?
        params[context + 'HiveCompatiblePartitions'] = input[:hive_compatible_partitions].to_s unless input[:hive_compatible_partitions].nil?
        params[context + 'PerHourPartition'] = input[:per_hour_partition].to_s unless input[:per_hour_partition].nil?
      end
    end

    # List Builder for FlowLogResourceIds
    class FlowLogResourceIds
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateFpgaImage
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
        Builders::StorageLocation.build(input[:input_storage_location], params, context: context + 'InputStorageLocation' + '.') unless input[:input_storage_location].nil?
        Builders::StorageLocation.build(input[:logs_storage_location], params, context: context + 'LogsStorageLocation' + '.') unless input[:logs_storage_location].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for StorageLocation
    class StorageLocation
      def self.build(input, params, context: nil)
        params[context + 'Bucket'] = input[:bucket].to_s unless input[:bucket].nil?
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
      end
    end

    # Operation Builder for CreateImage
    class CreateImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateImage'
        params['Version'] = '2016-11-15'
        Builders::BlockDeviceMappingRequestList.build(input[:block_device_mappings], params, context: context + 'blockDeviceMapping') unless input[:block_device_mappings].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'NoReboot'] = input[:no_reboot].to_s unless input[:no_reboot].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for BlockDeviceMappingRequestList
    class BlockDeviceMappingRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::BlockDeviceMapping.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for BlockDeviceMapping
    class BlockDeviceMapping
      def self.build(input, params, context: nil)
        params[context + 'DeviceName'] = input[:device_name].to_s unless input[:device_name].nil?
        params[context + 'VirtualName'] = input[:virtual_name].to_s unless input[:virtual_name].nil?
        Builders::EbsBlockDevice.build(input[:ebs], params, context: context + 'Ebs' + '.') unless input[:ebs].nil?
        params[context + 'NoDevice'] = input[:no_device].to_s unless input[:no_device].nil?
      end
    end

    # Structure Builder for EbsBlockDevice
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

    # Operation Builder for CreateInstanceEventWindow
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
        Builders::InstanceEventWindowTimeRangeRequestSet.build(input[:time_ranges], params, context: context + 'TimeRange') unless input[:time_ranges].nil?
        params[context + 'CronExpression'] = input[:cron_expression].to_s unless input[:cron_expression].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for InstanceEventWindowTimeRangeRequestSet
    class InstanceEventWindowTimeRangeRequestSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::InstanceEventWindowTimeRangeRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for InstanceEventWindowTimeRangeRequest
    class InstanceEventWindowTimeRangeRequest
      def self.build(input, params, context: nil)
        params[context + 'StartWeekDay'] = input[:start_week_day].to_s unless input[:start_week_day].nil?
        params[context + 'StartHour'] = input[:start_hour].to_s unless input[:start_hour].nil?
        params[context + 'EndWeekDay'] = input[:end_week_day].to_s unless input[:end_week_day].nil?
        params[context + 'EndHour'] = input[:end_hour].to_s unless input[:end_hour].nil?
      end
    end

    # Operation Builder for CreateInstanceExportTask
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
        Builders::ExportToS3TaskSpecification.build(input[:export_to_s3_task], params, context: context + 'ExportToS3' + '.') unless input[:export_to_s3_task].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'TargetEnvironment'] = input[:target_environment].to_s unless input[:target_environment].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for ExportToS3TaskSpecification
    class ExportToS3TaskSpecification
      def self.build(input, params, context: nil)
        params[context + 'ContainerFormat'] = input[:container_format].to_s unless input[:container_format].nil?
        params[context + 'DiskImageFormat'] = input[:disk_image_format].to_s unless input[:disk_image_format].nil?
        params[context + 'S3Bucket'] = input[:s3_bucket].to_s unless input[:s3_bucket].nil?
        params[context + 'S3Prefix'] = input[:s3_prefix].to_s unless input[:s3_prefix].nil?
      end
    end

    # Operation Builder for CreateInternetGateway
    class CreateInternetGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateInternetGateway'
        params['Version'] = '2016-11-15'
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateIpam
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
        Builders::AddIpamOperatingRegionSet.build(input[:operating_regions], params, context: context + 'OperatingRegion') unless input[:operating_regions].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for AddIpamOperatingRegionSet
    class AddIpamOperatingRegionSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::AddIpamOperatingRegion.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for AddIpamOperatingRegion
    class AddIpamOperatingRegion
      def self.build(input, params, context: nil)
        params[context + 'RegionName'] = input[:region_name].to_s unless input[:region_name].nil?
      end
    end

    # Operation Builder for CreateIpamPool
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
        Builders::RequestIpamResourceTagList.build(input[:allocation_resource_tags], params, context: context + 'AllocationResourceTag') unless input[:allocation_resource_tags].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'AwsService'] = input[:aws_service].to_s unless input[:aws_service].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for RequestIpamResourceTagList
    class RequestIpamResourceTagList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::RequestIpamResourceTag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for RequestIpamResourceTag
    class RequestIpamResourceTag
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Operation Builder for CreateIpamScope
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateKeyPair
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'KeyFormat'] = input[:key_format].to_s unless input[:key_format].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateLaunchTemplate
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
        Builders::RequestLaunchTemplateData.build(input[:launch_template_data], params, context: context + 'LaunchTemplateData' + '.') unless input[:launch_template_data].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for RequestLaunchTemplateData
    class RequestLaunchTemplateData
      def self.build(input, params, context: nil)
        params[context + 'KernelId'] = input[:kernel_id].to_s unless input[:kernel_id].nil?
        params[context + 'EbsOptimized'] = input[:ebs_optimized].to_s unless input[:ebs_optimized].nil?
        Builders::LaunchTemplateIamInstanceProfileSpecificationRequest.build(input[:iam_instance_profile], params, context: context + 'IamInstanceProfile' + '.') unless input[:iam_instance_profile].nil?
        Builders::LaunchTemplateBlockDeviceMappingRequestList.build(input[:block_device_mappings], params, context: context + 'BlockDeviceMapping') unless input[:block_device_mappings].nil?
        Builders::LaunchTemplateInstanceNetworkInterfaceSpecificationRequestList.build(input[:network_interfaces], params, context: context + 'NetworkInterface') unless input[:network_interfaces].nil?
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'KeyName'] = input[:key_name].to_s unless input[:key_name].nil?
        Builders::LaunchTemplatesMonitoringRequest.build(input[:monitoring], params, context: context + 'Monitoring' + '.') unless input[:monitoring].nil?
        Builders::LaunchTemplatePlacementRequest.build(input[:placement], params, context: context + 'Placement' + '.') unless input[:placement].nil?
        params[context + 'RamDiskId'] = input[:ram_disk_id].to_s unless input[:ram_disk_id].nil?
        params[context + 'DisableApiTermination'] = input[:disable_api_termination].to_s unless input[:disable_api_termination].nil?
        params[context + 'InstanceInitiatedShutdownBehavior'] = input[:instance_initiated_shutdown_behavior].to_s unless input[:instance_initiated_shutdown_behavior].nil?
        params[context + 'UserData'] = input[:user_data].to_s unless input[:user_data].nil?
        Builders::LaunchTemplateTagSpecificationRequestList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        Builders::ElasticGpuSpecificationList.build(input[:elastic_gpu_specifications], params, context: context + 'ElasticGpuSpecification') unless input[:elastic_gpu_specifications].nil?
        Builders::LaunchTemplateElasticInferenceAcceleratorList.build(input[:elastic_inference_accelerators], params, context: context + 'ElasticInferenceAccelerator') unless input[:elastic_inference_accelerators].nil?
        Builders::SecurityGroupIdStringList.build(input[:security_group_ids], params, context: context + 'SecurityGroupId') unless input[:security_group_ids].nil?
        Builders::SecurityGroupStringList.build(input[:security_groups], params, context: context + 'SecurityGroup') unless input[:security_groups].nil?
        Builders::LaunchTemplateInstanceMarketOptionsRequest.build(input[:instance_market_options], params, context: context + 'InstanceMarketOptions' + '.') unless input[:instance_market_options].nil?
        Builders::CreditSpecificationRequest.build(input[:credit_specification], params, context: context + 'CreditSpecification' + '.') unless input[:credit_specification].nil?
        Builders::LaunchTemplateCpuOptionsRequest.build(input[:cpu_options], params, context: context + 'CpuOptions' + '.') unless input[:cpu_options].nil?
        Builders::LaunchTemplateCapacityReservationSpecificationRequest.build(input[:capacity_reservation_specification], params, context: context + 'CapacityReservationSpecification' + '.') unless input[:capacity_reservation_specification].nil?
        Builders::LaunchTemplateLicenseSpecificationListRequest.build(input[:license_specifications], params, context: context + 'LicenseSpecification') unless input[:license_specifications].nil?
        Builders::LaunchTemplateHibernationOptionsRequest.build(input[:hibernation_options], params, context: context + 'HibernationOptions' + '.') unless input[:hibernation_options].nil?
        Builders::LaunchTemplateInstanceMetadataOptionsRequest.build(input[:metadata_options], params, context: context + 'MetadataOptions' + '.') unless input[:metadata_options].nil?
        Builders::LaunchTemplateEnclaveOptionsRequest.build(input[:enclave_options], params, context: context + 'EnclaveOptions' + '.') unless input[:enclave_options].nil?
        Builders::InstanceRequirementsRequest.build(input[:instance_requirements], params, context: context + 'InstanceRequirements' + '.') unless input[:instance_requirements].nil?
        Builders::LaunchTemplatePrivateDnsNameOptionsRequest.build(input[:private_dns_name_options], params, context: context + 'PrivateDnsNameOptions' + '.') unless input[:private_dns_name_options].nil?
        Builders::LaunchTemplateInstanceMaintenanceOptionsRequest.build(input[:maintenance_options], params, context: context + 'MaintenanceOptions' + '.') unless input[:maintenance_options].nil?
        params[context + 'DisableApiStop'] = input[:disable_api_stop].to_s unless input[:disable_api_stop].nil?
      end
    end

    # Structure Builder for LaunchTemplateInstanceMaintenanceOptionsRequest
    class LaunchTemplateInstanceMaintenanceOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'AutoRecovery'] = input[:auto_recovery].to_s unless input[:auto_recovery].nil?
      end
    end

    # Structure Builder for LaunchTemplatePrivateDnsNameOptionsRequest
    class LaunchTemplatePrivateDnsNameOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'HostnameType'] = input[:hostname_type].to_s unless input[:hostname_type].nil?
        params[context + 'EnableResourceNameDnsARecord'] = input[:enable_resource_name_dns_a_record].to_s unless input[:enable_resource_name_dns_a_record].nil?
        params[context + 'EnableResourceNameDnsAAAARecord'] = input[:enable_resource_name_dns_aaaa_record].to_s unless input[:enable_resource_name_dns_aaaa_record].nil?
      end
    end

    # Structure Builder for LaunchTemplateEnclaveOptionsRequest
    class LaunchTemplateEnclaveOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
      end
    end

    # Structure Builder for LaunchTemplateInstanceMetadataOptionsRequest
    class LaunchTemplateInstanceMetadataOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'HttpTokens'] = input[:http_tokens].to_s unless input[:http_tokens].nil?
        params[context + 'HttpPutResponseHopLimit'] = input[:http_put_response_hop_limit].to_s unless input[:http_put_response_hop_limit].nil?
        params[context + 'HttpEndpoint'] = input[:http_endpoint].to_s unless input[:http_endpoint].nil?
        params[context + 'HttpProtocolIpv6'] = input[:http_protocol_ipv6].to_s unless input[:http_protocol_ipv6].nil?
        params[context + 'InstanceMetadataTags'] = input[:instance_metadata_tags].to_s unless input[:instance_metadata_tags].nil?
      end
    end

    # Structure Builder for LaunchTemplateHibernationOptionsRequest
    class LaunchTemplateHibernationOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'Configured'] = input[:configured].to_s unless input[:configured].nil?
      end
    end

    # List Builder for LaunchTemplateLicenseSpecificationListRequest
    class LaunchTemplateLicenseSpecificationListRequest
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::LaunchTemplateLicenseConfigurationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for LaunchTemplateLicenseConfigurationRequest
    class LaunchTemplateLicenseConfigurationRequest
      def self.build(input, params, context: nil)
        params[context + 'LicenseConfigurationArn'] = input[:license_configuration_arn].to_s unless input[:license_configuration_arn].nil?
      end
    end

    # Structure Builder for LaunchTemplateCapacityReservationSpecificationRequest
    class LaunchTemplateCapacityReservationSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'CapacityReservationPreference'] = input[:capacity_reservation_preference].to_s unless input[:capacity_reservation_preference].nil?
        Builders::CapacityReservationTarget.build(input[:capacity_reservation_target], params, context: context + 'CapacityReservationTarget' + '.') unless input[:capacity_reservation_target].nil?
      end
    end

    # Structure Builder for CapacityReservationTarget
    class CapacityReservationTarget
      def self.build(input, params, context: nil)
        params[context + 'CapacityReservationId'] = input[:capacity_reservation_id].to_s unless input[:capacity_reservation_id].nil?
        params[context + 'CapacityReservationResourceGroupArn'] = input[:capacity_reservation_resource_group_arn].to_s unless input[:capacity_reservation_resource_group_arn].nil?
      end
    end

    # Structure Builder for LaunchTemplateCpuOptionsRequest
    class LaunchTemplateCpuOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'CoreCount'] = input[:core_count].to_s unless input[:core_count].nil?
        params[context + 'ThreadsPerCore'] = input[:threads_per_core].to_s unless input[:threads_per_core].nil?
      end
    end

    # Structure Builder for CreditSpecificationRequest
    class CreditSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'CpuCredits'] = input[:cpu_credits].to_s unless input[:cpu_credits].nil?
      end
    end

    # Structure Builder for LaunchTemplateInstanceMarketOptionsRequest
    class LaunchTemplateInstanceMarketOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'MarketType'] = input[:market_type].to_s unless input[:market_type].nil?
        Builders::LaunchTemplateSpotMarketOptionsRequest.build(input[:spot_options], params, context: context + 'SpotOptions' + '.') unless input[:spot_options].nil?
      end
    end

    # Structure Builder for LaunchTemplateSpotMarketOptionsRequest
    class LaunchTemplateSpotMarketOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'MaxPrice'] = input[:max_price].to_s unless input[:max_price].nil?
        params[context + 'SpotInstanceType'] = input[:spot_instance_type].to_s unless input[:spot_instance_type].nil?
        params[context + 'BlockDurationMinutes'] = input[:block_duration_minutes].to_s unless input[:block_duration_minutes].nil?
        params[context + 'ValidUntil'] = Hearth::TimeHelper.to_date_time(input[:valid_until]) unless input[:valid_until].nil?
        params[context + 'InstanceInterruptionBehavior'] = input[:instance_interruption_behavior].to_s unless input[:instance_interruption_behavior].nil?
      end
    end

    # List Builder for SecurityGroupStringList
    class SecurityGroupStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for SecurityGroupIdStringList
    class SecurityGroupIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for LaunchTemplateElasticInferenceAcceleratorList
    class LaunchTemplateElasticInferenceAcceleratorList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::LaunchTemplateElasticInferenceAccelerator.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for LaunchTemplateElasticInferenceAccelerator
    class LaunchTemplateElasticInferenceAccelerator
      def self.build(input, params, context: nil)
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'Count'] = input[:count].to_s unless input[:count].nil?
      end
    end

    # List Builder for ElasticGpuSpecificationList
    class ElasticGpuSpecificationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ElasticGpuSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ElasticGpuSpecification
    class ElasticGpuSpecification
      def self.build(input, params, context: nil)
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
      end
    end

    # List Builder for LaunchTemplateTagSpecificationRequestList
    class LaunchTemplateTagSpecificationRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::LaunchTemplateTagSpecificationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for LaunchTemplateTagSpecificationRequest
    class LaunchTemplateTagSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'ResourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tag') unless input[:tags].nil?
      end
    end

    # Structure Builder for LaunchTemplatePlacementRequest
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
      end
    end

    # Structure Builder for LaunchTemplatesMonitoringRequest
    class LaunchTemplatesMonitoringRequest
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
      end
    end

    # List Builder for LaunchTemplateInstanceNetworkInterfaceSpecificationRequestList
    class LaunchTemplateInstanceNetworkInterfaceSpecificationRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for LaunchTemplateInstanceNetworkInterfaceSpecificationRequest
    class LaunchTemplateInstanceNetworkInterfaceSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'AssociateCarrierIpAddress'] = input[:associate_carrier_ip_address].to_s unless input[:associate_carrier_ip_address].nil?
        params[context + 'AssociatePublicIpAddress'] = input[:associate_public_ip_address].to_s unless input[:associate_public_ip_address].nil?
        params[context + 'DeleteOnTermination'] = input[:delete_on_termination].to_s unless input[:delete_on_termination].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DeviceIndex'] = input[:device_index].to_s unless input[:device_index].nil?
        Builders::SecurityGroupIdStringList.build(input[:groups], params, context: context + 'SecurityGroupId') unless input[:groups].nil?
        params[context + 'InterfaceType'] = input[:interface_type].to_s unless input[:interface_type].nil?
        params[context + 'Ipv6AddressCount'] = input[:ipv6_address_count].to_s unless input[:ipv6_address_count].nil?
        Builders::InstanceIpv6AddressListRequest.build(input[:ipv6_addresses], params, context: context + 'Ipv6Addresses') unless input[:ipv6_addresses].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        params[context + 'PrivateIpAddress'] = input[:private_ip_address].to_s unless input[:private_ip_address].nil?
        Builders::PrivateIpAddressSpecificationList.build(input[:private_ip_addresses], params, context: context + 'PrivateIpAddresses') unless input[:private_ip_addresses].nil?
        params[context + 'SecondaryPrivateIpAddressCount'] = input[:secondary_private_ip_address_count].to_s unless input[:secondary_private_ip_address_count].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'NetworkCardIndex'] = input[:network_card_index].to_s unless input[:network_card_index].nil?
        Builders::Ipv4PrefixList.build(input[:ipv4_prefixes], params, context: context + 'Ipv4Prefix') unless input[:ipv4_prefixes].nil?
        params[context + 'Ipv4PrefixCount'] = input[:ipv4_prefix_count].to_s unless input[:ipv4_prefix_count].nil?
        Builders::Ipv6PrefixList.build(input[:ipv6_prefixes], params, context: context + 'Ipv6Prefix') unless input[:ipv6_prefixes].nil?
        params[context + 'Ipv6PrefixCount'] = input[:ipv6_prefix_count].to_s unless input[:ipv6_prefix_count].nil?
      end
    end

    # List Builder for Ipv6PrefixList
    class Ipv6PrefixList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Ipv6PrefixSpecificationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Ipv6PrefixSpecificationRequest
    class Ipv6PrefixSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'Ipv6Prefix'] = input[:ipv6_prefix].to_s unless input[:ipv6_prefix].nil?
      end
    end

    # List Builder for Ipv4PrefixList
    class Ipv4PrefixList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Ipv4PrefixSpecificationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Ipv4PrefixSpecificationRequest
    class Ipv4PrefixSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'Ipv4Prefix'] = input[:ipv4_prefix].to_s unless input[:ipv4_prefix].nil?
      end
    end

    # List Builder for PrivateIpAddressSpecificationList
    class PrivateIpAddressSpecificationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::PrivateIpAddressSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for PrivateIpAddressSpecification
    class PrivateIpAddressSpecification
      def self.build(input, params, context: nil)
        params[context + 'Primary'] = input[:primary].to_s unless input[:primary].nil?
        params[context + 'PrivateIpAddress'] = input[:private_ip_address].to_s unless input[:private_ip_address].nil?
      end
    end

    # List Builder for InstanceIpv6AddressListRequest
    class InstanceIpv6AddressListRequest
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::InstanceIpv6AddressRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for InstanceIpv6AddressRequest
    class InstanceIpv6AddressRequest
      def self.build(input, params, context: nil)
        params[context + 'Ipv6Address'] = input[:ipv6_address].to_s unless input[:ipv6_address].nil?
      end
    end

    # List Builder for LaunchTemplateBlockDeviceMappingRequestList
    class LaunchTemplateBlockDeviceMappingRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::LaunchTemplateBlockDeviceMappingRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for LaunchTemplateBlockDeviceMappingRequest
    class LaunchTemplateBlockDeviceMappingRequest
      def self.build(input, params, context: nil)
        params[context + 'DeviceName'] = input[:device_name].to_s unless input[:device_name].nil?
        params[context + 'VirtualName'] = input[:virtual_name].to_s unless input[:virtual_name].nil?
        Builders::LaunchTemplateEbsBlockDeviceRequest.build(input[:ebs], params, context: context + 'Ebs' + '.') unless input[:ebs].nil?
        params[context + 'NoDevice'] = input[:no_device].to_s unless input[:no_device].nil?
      end
    end

    # Structure Builder for LaunchTemplateEbsBlockDeviceRequest
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

    # Structure Builder for LaunchTemplateIamInstanceProfileSpecificationRequest
    class LaunchTemplateIamInstanceProfileSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'Arn'] = input[:arn].to_s unless input[:arn].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
      end
    end

    # Operation Builder for CreateLaunchTemplateVersion
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
        Builders::RequestLaunchTemplateData.build(input[:launch_template_data], params, context: context + 'LaunchTemplateData' + '.') unless input[:launch_template_data].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateLocalGatewayRoute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateLocalGatewayRouteTableVpcAssociation
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateManagedPrefixList
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
        Builders::AddPrefixListEntries.build(input[:entries], params, context: context + 'Entry') unless input[:entries].nil?
        params[context + 'MaxEntries'] = input[:max_entries].to_s unless input[:max_entries].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'AddressFamily'] = input[:address_family].to_s unless input[:address_family].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for AddPrefixListEntries
    class AddPrefixListEntries
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::AddPrefixListEntry.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for AddPrefixListEntry
    class AddPrefixListEntry
      def self.build(input, params, context: nil)
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
      end
    end

    # Operation Builder for CreateNatGateway
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ConnectivityType'] = input[:connectivity_type].to_s unless input[:connectivity_type].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateNetworkAcl
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateNetworkAclEntry
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
        Builders::IcmpTypeCode.build(input[:icmp_type_code], params, context: context + 'Icmp' + '.') unless input[:icmp_type_code].nil?
        params[context + 'Ipv6CidrBlock'] = input[:ipv6_cidr_block].to_s unless input[:ipv6_cidr_block].nil?
        params[context + 'NetworkAclId'] = input[:network_acl_id].to_s unless input[:network_acl_id].nil?
        Builders::PortRange.build(input[:port_range], params, context: context + 'PortRange' + '.') unless input[:port_range].nil?
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
        params[context + 'RuleAction'] = input[:rule_action].to_s unless input[:rule_action].nil?
        params[context + 'RuleNumber'] = input[:rule_number].to_s unless input[:rule_number].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for PortRange
    class PortRange
      def self.build(input, params, context: nil)
        params[context + 'From'] = input[:from].to_s unless input[:from].nil?
        params[context + 'To'] = input[:to].to_s unless input[:to].nil?
      end
    end

    # Structure Builder for IcmpTypeCode
    class IcmpTypeCode
      def self.build(input, params, context: nil)
        params[context + 'Code'] = input[:code].to_s unless input[:code].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
      end
    end

    # Operation Builder for CreateNetworkInsightsAccessScope
    class CreateNetworkInsightsAccessScope
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateNetworkInsightsAccessScope'
        params['Version'] = '2016-11-15'
        Builders::AccessScopePathListRequest.build(input[:match_paths], params, context: context + 'MatchPath') unless input[:match_paths].nil?
        Builders::AccessScopePathListRequest.build(input[:exclude_paths], params, context: context + 'ExcludePath') unless input[:exclude_paths].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for AccessScopePathListRequest
    class AccessScopePathListRequest
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::AccessScopePathRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for AccessScopePathRequest
    class AccessScopePathRequest
      def self.build(input, params, context: nil)
        Builders::PathStatementRequest.build(input[:source], params, context: context + 'Source' + '.') unless input[:source].nil?
        Builders::PathStatementRequest.build(input[:destination], params, context: context + 'Destination' + '.') unless input[:destination].nil?
        Builders::ThroughResourcesStatementRequestList.build(input[:through_resources], params, context: context + 'ThroughResource') unless input[:through_resources].nil?
      end
    end

    # List Builder for ThroughResourcesStatementRequestList
    class ThroughResourcesStatementRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ThroughResourcesStatementRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ThroughResourcesStatementRequest
    class ThroughResourcesStatementRequest
      def self.build(input, params, context: nil)
        Builders::ResourceStatementRequest.build(input[:resource_statement], params, context: context + 'ResourceStatement' + '.') unless input[:resource_statement].nil?
      end
    end

    # Structure Builder for ResourceStatementRequest
    class ResourceStatementRequest
      def self.build(input, params, context: nil)
        Builders::ValueStringList.build(input[:resources], params, context: context + 'Resource') unless input[:resources].nil?
        Builders::ValueStringList.build(input[:resource_types], params, context: context + 'ResourceType') unless input[:resource_types].nil?
      end
    end

    # Structure Builder for PathStatementRequest
    class PathStatementRequest
      def self.build(input, params, context: nil)
        Builders::PacketHeaderStatementRequest.build(input[:packet_header_statement], params, context: context + 'PacketHeaderStatement' + '.') unless input[:packet_header_statement].nil?
        Builders::ResourceStatementRequest.build(input[:resource_statement], params, context: context + 'ResourceStatement' + '.') unless input[:resource_statement].nil?
      end
    end

    # Structure Builder for PacketHeaderStatementRequest
    class PacketHeaderStatementRequest
      def self.build(input, params, context: nil)
        Builders::ValueStringList.build(input[:source_addresses], params, context: context + 'SourceAddress') unless input[:source_addresses].nil?
        Builders::ValueStringList.build(input[:destination_addresses], params, context: context + 'DestinationAddress') unless input[:destination_addresses].nil?
        Builders::ValueStringList.build(input[:source_ports], params, context: context + 'SourcePort') unless input[:source_ports].nil?
        Builders::ValueStringList.build(input[:destination_ports], params, context: context + 'DestinationPort') unless input[:destination_ports].nil?
        Builders::ValueStringList.build(input[:source_prefix_lists], params, context: context + 'SourcePrefixList') unless input[:source_prefix_lists].nil?
        Builders::ValueStringList.build(input[:destination_prefix_lists], params, context: context + 'DestinationPrefixList') unless input[:destination_prefix_lists].nil?
        Builders::ProtocolList.build(input[:protocols], params, context: context + 'Protocol') unless input[:protocols].nil?
      end
    end

    # List Builder for ProtocolList
    class ProtocolList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateNetworkInsightsPath
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateNetworkInterface
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
        Builders::SecurityGroupIdStringList.build(input[:groups], params, context: context + 'SecurityGroupId') unless input[:groups].nil?
        params[context + 'Ipv6AddressCount'] = input[:ipv6_address_count].to_s unless input[:ipv6_address_count].nil?
        Builders::InstanceIpv6AddressList.build(input[:ipv6_addresses], params, context: context + 'ipv6Addresses') unless input[:ipv6_addresses].nil?
        params[context + 'PrivateIpAddress'] = input[:private_ip_address].to_s unless input[:private_ip_address].nil?
        Builders::PrivateIpAddressSpecificationList.build(input[:private_ip_addresses], params, context: context + 'privateIpAddresses') unless input[:private_ip_addresses].nil?
        params[context + 'SecondaryPrivateIpAddressCount'] = input[:secondary_private_ip_address_count].to_s unless input[:secondary_private_ip_address_count].nil?
        Builders::Ipv4PrefixList.build(input[:ipv4_prefixes], params, context: context + 'Ipv4Prefix') unless input[:ipv4_prefixes].nil?
        params[context + 'Ipv4PrefixCount'] = input[:ipv4_prefix_count].to_s unless input[:ipv4_prefix_count].nil?
        Builders::Ipv6PrefixList.build(input[:ipv6_prefixes], params, context: context + 'Ipv6Prefix') unless input[:ipv6_prefixes].nil?
        params[context + 'Ipv6PrefixCount'] = input[:ipv6_prefix_count].to_s unless input[:ipv6_prefix_count].nil?
        params[context + 'InterfaceType'] = input[:interface_type].to_s unless input[:interface_type].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for InstanceIpv6AddressList
    class InstanceIpv6AddressList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::InstanceIpv6Address.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for InstanceIpv6Address
    class InstanceIpv6Address
      def self.build(input, params, context: nil)
        params[context + 'Ipv6Address'] = input[:ipv6_address].to_s unless input[:ipv6_address].nil?
      end
    end

    # Operation Builder for CreateNetworkInterfacePermission
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreatePlacementGroup
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreatePublicIpv4Pool
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateReplaceRootVolumeTask
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateReservedInstancesListing
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
        Builders::PriceScheduleSpecificationList.build(input[:price_schedules], params, context: context + 'priceSchedules') unless input[:price_schedules].nil?
        params[context + 'ReservedInstancesId'] = input[:reserved_instances_id].to_s unless input[:reserved_instances_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for PriceScheduleSpecificationList
    class PriceScheduleSpecificationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::PriceScheduleSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for PriceScheduleSpecification
    class PriceScheduleSpecification
      def self.build(input, params, context: nil)
        params[context + 'CurrencyCode'] = input[:currency_code].to_s unless input[:currency_code].nil?
        params[context + 'Price'] = Hearth::NumberHelper.serialize(input[:price]).to_s unless input[:price].nil?
        params[context + 'Term'] = input[:term].to_s unless input[:term].nil?
      end
    end

    # Operation Builder for CreateRestoreImageTask
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateRoute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateRouteTable
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateSecurityGroup
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateSnapshot
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateSnapshots
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
        Builders::InstanceSpecification.build(input[:instance_specification], params, context: context + 'InstanceSpecification' + '.') unless input[:instance_specification].nil?
        params[context + 'OutpostArn'] = input[:outpost_arn].to_s unless input[:outpost_arn].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'CopyTagsFromSource'] = input[:copy_tags_from_source].to_s unless input[:copy_tags_from_source].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for InstanceSpecification
    class InstanceSpecification
      def self.build(input, params, context: nil)
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'ExcludeBootVolume'] = input[:exclude_boot_volume].to_s unless input[:exclude_boot_volume].nil?
      end
    end

    # Operation Builder for CreateSpotDatafeedSubscription
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateStoreImageTask
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
        Builders::S3ObjectTagList.build(input[:s3_object_tags], params, context: context + 'S3ObjectTag') unless input[:s3_object_tags].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for S3ObjectTagList
    class S3ObjectTagList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::S3ObjectTag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for S3ObjectTag
    class S3ObjectTag
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Operation Builder for CreateSubnet
    class CreateSubnet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateSubnet'
        params['Version'] = '2016-11-15'
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'AvailabilityZoneId'] = input[:availability_zone_id].to_s unless input[:availability_zone_id].nil?
        params[context + 'CidrBlock'] = input[:cidr_block].to_s unless input[:cidr_block].nil?
        params[context + 'Ipv6CidrBlock'] = input[:ipv6_cidr_block].to_s unless input[:ipv6_cidr_block].nil?
        params[context + 'OutpostArn'] = input[:outpost_arn].to_s unless input[:outpost_arn].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Ipv6Native'] = input[:ipv6_native].to_s unless input[:ipv6_native].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateSubnetCidrReservation
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateTags
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
        Builders::ResourceIdList.build(input[:resources], params, context: context + 'ResourceId') unless input[:resources].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ResourceIdList
    class ResourceIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateTrafficMirrorFilter
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateTrafficMirrorFilterRule
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
        Builders::TrafficMirrorPortRangeRequest.build(input[:destination_port_range], params, context: context + 'DestinationPortRange' + '.') unless input[:destination_port_range].nil?
        Builders::TrafficMirrorPortRangeRequest.build(input[:source_port_range], params, context: context + 'SourcePortRange' + '.') unless input[:source_port_range].nil?
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
        params[context + 'DestinationCidrBlock'] = input[:destination_cidr_block].to_s unless input[:destination_cidr_block].nil?
        params[context + 'SourceCidrBlock'] = input[:source_cidr_block].to_s unless input[:source_cidr_block].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for TrafficMirrorPortRangeRequest
    class TrafficMirrorPortRangeRequest
      def self.build(input, params, context: nil)
        params[context + 'FromPort'] = input[:from_port].to_s unless input[:from_port].nil?
        params[context + 'ToPort'] = input[:to_port].to_s unless input[:to_port].nil?
      end
    end

    # Operation Builder for CreateTrafficMirrorSession
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateTrafficMirrorTarget
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'GatewayLoadBalancerEndpointId'] = input[:gateway_load_balancer_endpoint_id].to_s unless input[:gateway_load_balancer_endpoint_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateTransitGateway
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
        Builders::TransitGatewayRequestOptions.build(input[:options], params, context: context + 'Options' + '.') unless input[:options].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for TransitGatewayRequestOptions
    class TransitGatewayRequestOptions
      def self.build(input, params, context: nil)
        params[context + 'AmazonSideAsn'] = input[:amazon_side_asn].to_s unless input[:amazon_side_asn].nil?
        params[context + 'AutoAcceptSharedAttachments'] = input[:auto_accept_shared_attachments].to_s unless input[:auto_accept_shared_attachments].nil?
        params[context + 'DefaultRouteTableAssociation'] = input[:default_route_table_association].to_s unless input[:default_route_table_association].nil?
        params[context + 'DefaultRouteTablePropagation'] = input[:default_route_table_propagation].to_s unless input[:default_route_table_propagation].nil?
        params[context + 'VpnEcmpSupport'] = input[:vpn_ecmp_support].to_s unless input[:vpn_ecmp_support].nil?
        params[context + 'DnsSupport'] = input[:dns_support].to_s unless input[:dns_support].nil?
        params[context + 'MulticastSupport'] = input[:multicast_support].to_s unless input[:multicast_support].nil?
        Builders::TransitGatewayCidrBlockStringList.build(input[:transit_gateway_cidr_blocks], params, context: context + 'TransitGatewayCidrBlocks') unless input[:transit_gateway_cidr_blocks].nil?
      end
    end

    # List Builder for TransitGatewayCidrBlockStringList
    class TransitGatewayCidrBlockStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateTransitGatewayConnect
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
        Builders::CreateTransitGatewayConnectRequestOptions.build(input[:options], params, context: context + 'Options' + '.') unless input[:options].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for CreateTransitGatewayConnectRequestOptions
    class CreateTransitGatewayConnectRequestOptions
      def self.build(input, params, context: nil)
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
      end
    end

    # Operation Builder for CreateTransitGatewayConnectPeer
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
        Builders::TransitGatewayConnectRequestBgpOptions.build(input[:bgp_options], params, context: context + 'BgpOptions' + '.') unless input[:bgp_options].nil?
        Builders::InsideCidrBlocksStringList.build(input[:inside_cidr_blocks], params, context: context + 'InsideCidrBlocks') unless input[:inside_cidr_blocks].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for InsideCidrBlocksStringList
    class InsideCidrBlocksStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for TransitGatewayConnectRequestBgpOptions
    class TransitGatewayConnectRequestBgpOptions
      def self.build(input, params, context: nil)
        params[context + 'PeerAsn'] = input[:peer_asn].to_s unless input[:peer_asn].nil?
      end
    end

    # Operation Builder for CreateTransitGatewayMulticastDomain
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
        Builders::CreateTransitGatewayMulticastDomainRequestOptions.build(input[:options], params, context: context + 'Options' + '.') unless input[:options].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for CreateTransitGatewayMulticastDomainRequestOptions
    class CreateTransitGatewayMulticastDomainRequestOptions
      def self.build(input, params, context: nil)
        params[context + 'Igmpv2Support'] = input[:igmpv2_support].to_s unless input[:igmpv2_support].nil?
        params[context + 'StaticSourcesSupport'] = input[:static_sources_support].to_s unless input[:static_sources_support].nil?
        params[context + 'AutoAcceptSharedAssociations'] = input[:auto_accept_shared_associations].to_s unless input[:auto_accept_shared_associations].nil?
      end
    end

    # Operation Builder for CreateTransitGatewayPeeringAttachment
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateTransitGatewayPrefixListReference
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateTransitGatewayRoute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateTransitGatewayRouteTable
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecifications') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateTransitGatewayVpcAttachment
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
        Builders::TransitGatewaySubnetIdList.build(input[:subnet_ids], params, context: context + 'SubnetIds') unless input[:subnet_ids].nil?
        Builders::CreateTransitGatewayVpcAttachmentRequestOptions.build(input[:options], params, context: context + 'Options' + '.') unless input[:options].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecifications') unless input[:tag_specifications].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for CreateTransitGatewayVpcAttachmentRequestOptions
    class CreateTransitGatewayVpcAttachmentRequestOptions
      def self.build(input, params, context: nil)
        params[context + 'DnsSupport'] = input[:dns_support].to_s unless input[:dns_support].nil?
        params[context + 'Ipv6Support'] = input[:ipv6_support].to_s unless input[:ipv6_support].nil?
        params[context + 'ApplianceModeSupport'] = input[:appliance_mode_support].to_s unless input[:appliance_mode_support].nil?
      end
    end

    # Operation Builder for CreateVolume
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'MultiAttachEnabled'] = input[:multi_attach_enabled].to_s unless input[:multi_attach_enabled].nil?
        params[context + 'Throughput'] = input[:throughput].to_s unless input[:throughput].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateVpc
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateVpcEndpoint
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
        Builders::VpcEndpointRouteTableIdList.build(input[:route_table_ids], params, context: context + 'RouteTableId') unless input[:route_table_ids].nil?
        Builders::VpcEndpointSubnetIdList.build(input[:subnet_ids], params, context: context + 'SubnetId') unless input[:subnet_ids].nil?
        Builders::VpcEndpointSecurityGroupIdList.build(input[:security_group_ids], params, context: context + 'SecurityGroupId') unless input[:security_group_ids].nil?
        params[context + 'IpAddressType'] = input[:ip_address_type].to_s unless input[:ip_address_type].nil?
        Builders::DnsOptionsSpecification.build(input[:dns_options], params, context: context + 'DnsOptions' + '.') unless input[:dns_options].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'PrivateDnsEnabled'] = input[:private_dns_enabled].to_s unless input[:private_dns_enabled].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for DnsOptionsSpecification
    class DnsOptionsSpecification
      def self.build(input, params, context: nil)
        params[context + 'DnsRecordIpType'] = input[:dns_record_ip_type].to_s unless input[:dns_record_ip_type].nil?
      end
    end

    # List Builder for VpcEndpointSecurityGroupIdList
    class VpcEndpointSecurityGroupIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for VpcEndpointSubnetIdList
    class VpcEndpointSubnetIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for VpcEndpointRouteTableIdList
    class VpcEndpointRouteTableIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateVpcEndpointConnectionNotification
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
        Builders::ValueStringList.build(input[:connection_events], params, context: context + 'ConnectionEvents') unless input[:connection_events].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateVpcEndpointServiceConfiguration
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
        Builders::ValueStringList.build(input[:network_load_balancer_arns], params, context: context + 'NetworkLoadBalancerArn') unless input[:network_load_balancer_arns].nil?
        Builders::ValueStringList.build(input[:gateway_load_balancer_arns], params, context: context + 'GatewayLoadBalancerArn') unless input[:gateway_load_balancer_arns].nil?
        Builders::ValueStringList.build(input[:supported_ip_address_types], params, context: context + 'SupportedIpAddressType') unless input[:supported_ip_address_types].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateVpcPeeringConnection
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateVpnConnection
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
        Builders::VpnConnectionOptionsSpecification.build(input[:options], params, context: context + 'Options' + '.') unless input[:options].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for VpnConnectionOptionsSpecification
    class VpnConnectionOptionsSpecification
      def self.build(input, params, context: nil)
        params[context + 'EnableAcceleration'] = input[:enable_acceleration].to_s unless input[:enable_acceleration].nil?
        params[context + 'StaticRoutesOnly'] = input[:static_routes_only].to_s unless input[:static_routes_only].nil?
        params[context + 'TunnelInsideIpVersion'] = input[:tunnel_inside_ip_version].to_s unless input[:tunnel_inside_ip_version].nil?
        Builders::VpnTunnelOptionsSpecificationsList.build(input[:tunnel_options], params, context: context + 'TunnelOptions') unless input[:tunnel_options].nil?
        params[context + 'LocalIpv4NetworkCidr'] = input[:local_ipv4_network_cidr].to_s unless input[:local_ipv4_network_cidr].nil?
        params[context + 'RemoteIpv4NetworkCidr'] = input[:remote_ipv4_network_cidr].to_s unless input[:remote_ipv4_network_cidr].nil?
        params[context + 'LocalIpv6NetworkCidr'] = input[:local_ipv6_network_cidr].to_s unless input[:local_ipv6_network_cidr].nil?
        params[context + 'RemoteIpv6NetworkCidr'] = input[:remote_ipv6_network_cidr].to_s unless input[:remote_ipv6_network_cidr].nil?
      end
    end

    # List Builder for VpnTunnelOptionsSpecificationsList
    class VpnTunnelOptionsSpecificationsList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::VpnTunnelOptionsSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for VpnTunnelOptionsSpecification
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
        Builders::Phase1EncryptionAlgorithmsRequestList.build(input[:phase1_encryption_algorithms], params, context: context + 'Phase1EncryptionAlgorithm') unless input[:phase1_encryption_algorithms].nil?
        Builders::Phase2EncryptionAlgorithmsRequestList.build(input[:phase2_encryption_algorithms], params, context: context + 'Phase2EncryptionAlgorithm') unless input[:phase2_encryption_algorithms].nil?
        Builders::Phase1IntegrityAlgorithmsRequestList.build(input[:phase1_integrity_algorithms], params, context: context + 'Phase1IntegrityAlgorithm') unless input[:phase1_integrity_algorithms].nil?
        Builders::Phase2IntegrityAlgorithmsRequestList.build(input[:phase2_integrity_algorithms], params, context: context + 'Phase2IntegrityAlgorithm') unless input[:phase2_integrity_algorithms].nil?
        Builders::Phase1DHGroupNumbersRequestList.build(input[:phase1_dh_group_numbers], params, context: context + 'Phase1DHGroupNumber') unless input[:phase1_dh_group_numbers].nil?
        Builders::Phase2DHGroupNumbersRequestList.build(input[:phase2_dh_group_numbers], params, context: context + 'Phase2DHGroupNumber') unless input[:phase2_dh_group_numbers].nil?
        Builders::IKEVersionsRequestList.build(input[:ike_versions], params, context: context + 'IKEVersion') unless input[:ike_versions].nil?
        params[context + 'StartupAction'] = input[:startup_action].to_s unless input[:startup_action].nil?
      end
    end

    # List Builder for IKEVersionsRequestList
    class IKEVersionsRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::IKEVersionsRequestListValue.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for IKEVersionsRequestListValue
    class IKEVersionsRequestListValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # List Builder for Phase2DHGroupNumbersRequestList
    class Phase2DHGroupNumbersRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Phase2DHGroupNumbersRequestListValue.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Phase2DHGroupNumbersRequestListValue
    class Phase2DHGroupNumbersRequestListValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # List Builder for Phase1DHGroupNumbersRequestList
    class Phase1DHGroupNumbersRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Phase1DHGroupNumbersRequestListValue.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Phase1DHGroupNumbersRequestListValue
    class Phase1DHGroupNumbersRequestListValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # List Builder for Phase2IntegrityAlgorithmsRequestList
    class Phase2IntegrityAlgorithmsRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Phase2IntegrityAlgorithmsRequestListValue.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Phase2IntegrityAlgorithmsRequestListValue
    class Phase2IntegrityAlgorithmsRequestListValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # List Builder for Phase1IntegrityAlgorithmsRequestList
    class Phase1IntegrityAlgorithmsRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Phase1IntegrityAlgorithmsRequestListValue.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Phase1IntegrityAlgorithmsRequestListValue
    class Phase1IntegrityAlgorithmsRequestListValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # List Builder for Phase2EncryptionAlgorithmsRequestList
    class Phase2EncryptionAlgorithmsRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Phase2EncryptionAlgorithmsRequestListValue.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Phase2EncryptionAlgorithmsRequestListValue
    class Phase2EncryptionAlgorithmsRequestListValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # List Builder for Phase1EncryptionAlgorithmsRequestList
    class Phase1EncryptionAlgorithmsRequestList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Phase1EncryptionAlgorithmsRequestListValue.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Phase1EncryptionAlgorithmsRequestListValue
    class Phase1EncryptionAlgorithmsRequestListValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Operation Builder for CreateVpnConnectionRoute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateVpnGateway
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'AmazonSideAsn'] = input[:amazon_side_asn].to_s unless input[:amazon_side_asn].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteCarrierGateway
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteClientVpnEndpoint
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteClientVpnRoute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteCustomerGateway
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteDhcpOptions
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteEgressOnlyInternetGateway
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteFleets
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
        Builders::FleetIdSet.build(input[:fleet_ids], params, context: context + 'FleetId') unless input[:fleet_ids].nil?
        params[context + 'TerminateInstances'] = input[:terminate_instances].to_s unless input[:terminate_instances].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for FleetIdSet
    class FleetIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DeleteFlowLogs
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
        Builders::FlowLogIdList.build(input[:flow_log_ids], params, context: context + 'FlowLogId') unless input[:flow_log_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for FlowLogIdList
    class FlowLogIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DeleteFpgaImage
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteInstanceEventWindow
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteInternetGateway
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteIpam
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteIpamPool
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteIpamScope
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteKeyPair
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteLaunchTemplate
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteLaunchTemplateVersions
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
        Builders::VersionStringList.build(input[:versions], params, context: context + 'LaunchTemplateVersion') unless input[:versions].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for VersionStringList
    class VersionStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DeleteLocalGatewayRoute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteLocalGatewayRouteTableVpcAssociation
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteManagedPrefixList
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteNatGateway
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteNetworkAcl
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteNetworkAclEntry
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteNetworkInsightsAccessScope
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteNetworkInsightsAccessScopeAnalysis
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteNetworkInsightsAnalysis
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteNetworkInsightsPath
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteNetworkInterface
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteNetworkInterfacePermission
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeletePlacementGroup
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeletePublicIpv4Pool
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteQueuedReservedInstances
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
        Builders::DeleteQueuedReservedInstancesIdList.build(input[:reserved_instances_ids], params, context: context + 'ReservedInstancesId') unless input[:reserved_instances_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for DeleteQueuedReservedInstancesIdList
    class DeleteQueuedReservedInstancesIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DeleteRoute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteRouteTable
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteSecurityGroup
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteSnapshot
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteSpotDatafeedSubscription
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteSubnet
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteSubnetCidrReservation
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteTags
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
        Builders::ResourceIdList.build(input[:resources], params, context: context + 'resourceId') unless input[:resources].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteTrafficMirrorFilter
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteTrafficMirrorFilterRule
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteTrafficMirrorSession
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteTrafficMirrorTarget
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteTransitGateway
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteTransitGatewayConnect
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteTransitGatewayConnectPeer
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteTransitGatewayMulticastDomain
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteTransitGatewayPeeringAttachment
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteTransitGatewayPrefixListReference
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteTransitGatewayRoute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteTransitGatewayRouteTable
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteTransitGatewayVpcAttachment
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteVolume
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteVpc
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteVpcEndpointConnectionNotifications
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
        Builders::ConnectionNotificationIdsList.build(input[:connection_notification_ids], params, context: context + 'ConnectionNotificationId') unless input[:connection_notification_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ConnectionNotificationIdsList
    class ConnectionNotificationIdsList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DeleteVpcEndpointServiceConfigurations
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
        Builders::VpcEndpointServiceIdList.build(input[:service_ids], params, context: context + 'ServiceId') unless input[:service_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for VpcEndpointServiceIdList
    class VpcEndpointServiceIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DeleteVpcEndpoints
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
        Builders::VpcEndpointIdList.build(input[:vpc_endpoint_ids], params, context: context + 'VpcEndpointId') unless input[:vpc_endpoint_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteVpcPeeringConnection
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteVpnConnection
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteVpnConnectionRoute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteVpnGateway
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeprovisionByoipCidr
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeprovisionIpamPoolCidr
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeprovisionPublicIpv4PoolCidr
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeregisterImage
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeregisterInstanceEventNotificationAttributes
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
        Builders::DeregisterInstanceTagAttributeRequest.build(input[:instance_tag_attribute], params, context: context + 'InstanceTagAttribute' + '.') unless input[:instance_tag_attribute].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for DeregisterInstanceTagAttributeRequest
    class DeregisterInstanceTagAttributeRequest
      def self.build(input, params, context: nil)
        params[context + 'IncludeAllTagsOfInstance'] = input[:include_all_tags_of_instance].to_s unless input[:include_all_tags_of_instance].nil?
        Builders::InstanceTagKeySet.build(input[:instance_tag_keys], params, context: context + 'InstanceTagKey') unless input[:instance_tag_keys].nil?
      end
    end

    # List Builder for InstanceTagKeySet
    class InstanceTagKeySet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DeregisterTransitGatewayMulticastGroupMembers
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
        Builders::TransitGatewayNetworkInterfaceIdList.build(input[:network_interface_ids], params, context: context + 'NetworkInterfaceIds') unless input[:network_interface_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TransitGatewayNetworkInterfaceIdList
    class TransitGatewayNetworkInterfaceIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DeregisterTransitGatewayMulticastGroupSources
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
        Builders::TransitGatewayNetworkInterfaceIdList.build(input[:network_interface_ids], params, context: context + 'NetworkInterfaceIds') unless input[:network_interface_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAccountAttributes'
        params['Version'] = '2016-11-15'
        Builders::AccountAttributeNameStringList.build(input[:attribute_names], params, context: context + 'attributeName') unless input[:attribute_names].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for AccountAttributeNameStringList
    class AccountAttributeNameStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeAddresses
    class DescribeAddresses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAddresses'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        Builders::PublicIpStringList.build(input[:public_ips], params, context: context + 'PublicIp') unless input[:public_ips].nil?
        Builders::AllocationIdList.build(input[:allocation_ids], params, context: context + 'AllocationId') unless input[:allocation_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for AllocationIdList
    class AllocationIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for PublicIpStringList
    class PublicIpStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for FilterList
    class FilterList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Filter.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        Builders::ValueStringList.build(input[:values], params, context: context + 'Value') unless input[:values].nil?
      end
    end

    # Operation Builder for DescribeAddressesAttribute
    class DescribeAddressesAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAddressesAttribute'
        params['Version'] = '2016-11-15'
        Builders::AllocationIds.build(input[:allocation_ids], params, context: context + 'AllocationId') unless input[:allocation_ids].nil?
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for AllocationIds
    class AllocationIds
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeAggregateIdFormat
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeAvailabilityZones
    class DescribeAvailabilityZones
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAvailabilityZones'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        Builders::ZoneNameStringList.build(input[:zone_names], params, context: context + 'ZoneName') unless input[:zone_names].nil?
        Builders::ZoneIdStringList.build(input[:zone_ids], params, context: context + 'ZoneId') unless input[:zone_ids].nil?
        params[context + 'AllAvailabilityZones'] = input[:all_availability_zones].to_s unless input[:all_availability_zones].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ZoneIdStringList
    class ZoneIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for ZoneNameStringList
    class ZoneNameStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeBundleTasks
    class DescribeBundleTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeBundleTasks'
        params['Version'] = '2016-11-15'
        Builders::BundleIdStringList.build(input[:bundle_ids], params, context: context + 'BundleId') unless input[:bundle_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for BundleIdStringList
    class BundleIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeByoipCidrs
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeCapacityReservationFleets
    class DescribeCapacityReservationFleets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeCapacityReservationFleets'
        params['Version'] = '2016-11-15'
        Builders::CapacityReservationFleetIdSet.build(input[:capacity_reservation_fleet_ids], params, context: context + 'CapacityReservationFleetId') unless input[:capacity_reservation_fleet_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeCapacityReservations
    class DescribeCapacityReservations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeCapacityReservations'
        params['Version'] = '2016-11-15'
        Builders::CapacityReservationIdSet.build(input[:capacity_reservation_ids], params, context: context + 'CapacityReservationId') unless input[:capacity_reservation_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for CapacityReservationIdSet
    class CapacityReservationIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeCarrierGateways
    class DescribeCarrierGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeCarrierGateways'
        params['Version'] = '2016-11-15'
        Builders::CarrierGatewayIdSet.build(input[:carrier_gateway_ids], params, context: context + 'CarrierGatewayId') unless input[:carrier_gateway_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for CarrierGatewayIdSet
    class CarrierGatewayIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeClassicLinkInstances
    class DescribeClassicLinkInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeClassicLinkInstances'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for InstanceIdStringList
    class InstanceIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeClientVpnAuthorizationRules
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeClientVpnConnections
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeClientVpnEndpoints
    class DescribeClientVpnEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeClientVpnEndpoints'
        params['Version'] = '2016-11-15'
        Builders::ClientVpnEndpointIdList.build(input[:client_vpn_endpoint_ids], params, context: context + 'ClientVpnEndpointId') unless input[:client_vpn_endpoint_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ClientVpnEndpointIdList
    class ClientVpnEndpointIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeClientVpnRoutes
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeClientVpnTargetNetworks
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
        Builders::ValueStringList.build(input[:association_ids], params, context: context + 'AssociationIds') unless input[:association_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeCoipPools
    class DescribeCoipPools
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeCoipPools'
        params['Version'] = '2016-11-15'
        Builders::CoipPoolIdSet.build(input[:pool_ids], params, context: context + 'PoolId') unless input[:pool_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for CoipPoolIdSet
    class CoipPoolIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeConversionTasks
    class DescribeConversionTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeConversionTasks'
        params['Version'] = '2016-11-15'
        Builders::ConversionIdStringList.build(input[:conversion_task_ids], params, context: context + 'conversionTaskId') unless input[:conversion_task_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ConversionIdStringList
    class ConversionIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeCustomerGateways
    class DescribeCustomerGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeCustomerGateways'
        params['Version'] = '2016-11-15'
        Builders::CustomerGatewayIdStringList.build(input[:customer_gateway_ids], params, context: context + 'CustomerGatewayId') unless input[:customer_gateway_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for CustomerGatewayIdStringList
    class CustomerGatewayIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeDhcpOptions
    class DescribeDhcpOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDhcpOptions'
        params['Version'] = '2016-11-15'
        Builders::DhcpOptionsIdStringList.build(input[:dhcp_options_ids], params, context: context + 'DhcpOptionsId') unless input[:dhcp_options_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for DhcpOptionsIdStringList
    class DhcpOptionsIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeEgressOnlyInternetGateways
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
        Builders::EgressOnlyInternetGatewayIdList.build(input[:egress_only_internet_gateway_ids], params, context: context + 'EgressOnlyInternetGatewayId') unless input[:egress_only_internet_gateway_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for EgressOnlyInternetGatewayIdList
    class EgressOnlyInternetGatewayIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeElasticGpus
    class DescribeElasticGpus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeElasticGpus'
        params['Version'] = '2016-11-15'
        Builders::ElasticGpuIdSet.build(input[:elastic_gpu_ids], params, context: context + 'ElasticGpuId') unless input[:elastic_gpu_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ElasticGpuIdSet
    class ElasticGpuIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeExportImageTasks
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        Builders::ExportImageTaskIdList.build(input[:export_image_task_ids], params, context: context + 'ExportImageTaskId') unless input[:export_image_task_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ExportImageTaskIdList
    class ExportImageTaskIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeExportTasks
    class DescribeExportTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeExportTasks'
        params['Version'] = '2016-11-15'
        Builders::ExportTaskIdStringList.build(input[:export_task_ids], params, context: context + 'exportTaskId') unless input[:export_task_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ExportTaskIdStringList
    class ExportTaskIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeFastLaunchImages
    class DescribeFastLaunchImages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeFastLaunchImages'
        params['Version'] = '2016-11-15'
        Builders::FastLaunchImageIdList.build(input[:image_ids], params, context: context + 'ImageId') unless input[:image_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for FastLaunchImageIdList
    class FastLaunchImageIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeFastSnapshotRestores
    class DescribeFastSnapshotRestores
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeFastSnapshotRestores'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeFleetHistory
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeFleetInstances
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeFleets
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
        Builders::FleetIdSet.build(input[:fleet_ids], params, context: context + 'FleetId') unless input[:fleet_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeFlowLogs
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
        Builders::FilterList.build(input[:filter], params, context: context + 'Filter') unless input[:filter].nil?
        Builders::FlowLogIdList.build(input[:flow_log_ids], params, context: context + 'FlowLogId') unless input[:flow_log_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeFpgaImageAttribute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeFpgaImages
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
        Builders::FpgaImageIdList.build(input[:fpga_image_ids], params, context: context + 'FpgaImageId') unless input[:fpga_image_ids].nil?
        Builders::OwnerStringList.build(input[:owners], params, context: context + 'Owner') unless input[:owners].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for OwnerStringList
    class OwnerStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for FpgaImageIdList
    class FpgaImageIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeHostReservationOfferings
    class DescribeHostReservationOfferings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeHostReservationOfferings'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filter], params, context: context + 'Filter') unless input[:filter].nil?
        params[context + 'MaxDuration'] = input[:max_duration].to_s unless input[:max_duration].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'MinDuration'] = input[:min_duration].to_s unless input[:min_duration].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'OfferingId'] = input[:offering_id].to_s unless input[:offering_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeHostReservations
    class DescribeHostReservations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeHostReservations'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filter], params, context: context + 'Filter') unless input[:filter].nil?
        Builders::HostReservationIdSet.build(input[:host_reservation_id_set], params, context: context + 'HostReservationIdSet') unless input[:host_reservation_id_set].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for HostReservationIdSet
    class HostReservationIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeHosts
    class DescribeHosts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeHosts'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filter], params, context: context + 'filter') unless input[:filter].nil?
        Builders::RequestHostIdList.build(input[:host_ids], params, context: context + 'hostId') unless input[:host_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for RequestHostIdList
    class RequestHostIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeIamInstanceProfileAssociations
    class DescribeIamInstanceProfileAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeIamInstanceProfileAssociations'
        params['Version'] = '2016-11-15'
        Builders::AssociationIdList.build(input[:association_ids], params, context: context + 'AssociationId') unless input[:association_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for AssociationIdList
    class AssociationIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeIdFormat
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeIdentityIdFormat
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeImageAttribute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeImages
    class DescribeImages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeImages'
        params['Version'] = '2016-11-15'
        Builders::ExecutableByStringList.build(input[:executable_users], params, context: context + 'ExecutableBy') unless input[:executable_users].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        Builders::ImageIdStringList.build(input[:image_ids], params, context: context + 'ImageId') unless input[:image_ids].nil?
        Builders::OwnerStringList.build(input[:owners], params, context: context + 'Owner') unless input[:owners].nil?
        params[context + 'IncludeDeprecated'] = input[:include_deprecated].to_s unless input[:include_deprecated].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ImageIdStringList
    class ImageIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for ExecutableByStringList
    class ExecutableByStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeImportImageTasks
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters') unless input[:filters].nil?
        Builders::ImportTaskIdList.build(input[:import_task_ids], params, context: context + 'ImportTaskId') unless input[:import_task_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ImportTaskIdList
    class ImportTaskIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeImportSnapshotTasks
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filters') unless input[:filters].nil?
        Builders::ImportSnapshotTaskIdList.build(input[:import_task_ids], params, context: context + 'ImportTaskId') unless input[:import_task_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ImportSnapshotTaskIdList
    class ImportSnapshotTaskIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeInstanceAttribute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeInstanceCreditSpecifications
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        Builders::InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeInstanceEventNotificationAttributes
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeInstanceEventWindows
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
        Builders::InstanceEventWindowIdSet.build(input[:instance_event_window_ids], params, context: context + 'InstanceEventWindowId') unless input[:instance_event_window_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for InstanceEventWindowIdSet
    class InstanceEventWindowIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeInstanceStatus
    class DescribeInstanceStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeInstanceStatus'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        Builders::InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IncludeAllInstances'] = input[:include_all_instances].to_s unless input[:include_all_instances].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeInstanceTypeOfferings
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeInstanceTypes
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
        Builders::RequestInstanceTypeList.build(input[:instance_types], params, context: context + 'InstanceType') unless input[:instance_types].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for RequestInstanceTypeList
    class RequestInstanceTypeList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeInstances
    class DescribeInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeInstances'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        Builders::InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeInternetGateways
    class DescribeInternetGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeInternetGateways'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::InternetGatewayIdList.build(input[:internet_gateway_ids], params, context: context + 'internetGatewayId') unless input[:internet_gateway_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for InternetGatewayIdList
    class InternetGatewayIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeIpamPools
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        Builders::ValueStringList.build(input[:ipam_pool_ids], params, context: context + 'IpamPoolId') unless input[:ipam_pool_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeIpamScopes
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        Builders::ValueStringList.build(input[:ipam_scope_ids], params, context: context + 'IpamScopeId') unless input[:ipam_scope_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeIpams
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        Builders::ValueStringList.build(input[:ipam_ids], params, context: context + 'IpamId') unless input[:ipam_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeIpv6Pools
    class DescribeIpv6Pools
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeIpv6Pools'
        params['Version'] = '2016-11-15'
        Builders::Ipv6PoolIdList.build(input[:pool_ids], params, context: context + 'PoolId') unless input[:pool_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for Ipv6PoolIdList
    class Ipv6PoolIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeKeyPairs
    class DescribeKeyPairs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeKeyPairs'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        Builders::KeyNameStringList.build(input[:key_names], params, context: context + 'KeyName') unless input[:key_names].nil?
        Builders::KeyPairIdStringList.build(input[:key_pair_ids], params, context: context + 'KeyPairId') unless input[:key_pair_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'IncludePublicKey'] = input[:include_public_key].to_s unless input[:include_public_key].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for KeyPairIdStringList
    class KeyPairIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for KeyNameStringList
    class KeyNameStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeLaunchTemplateVersions
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
        Builders::VersionStringList.build(input[:versions], params, context: context + 'LaunchTemplateVersion') unless input[:versions].nil?
        params[context + 'MinVersion'] = input[:min_version].to_s unless input[:min_version].nil?
        params[context + 'MaxVersion'] = input[:max_version].to_s unless input[:max_version].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeLaunchTemplates
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
        Builders::LaunchTemplateIdStringList.build(input[:launch_template_ids], params, context: context + 'LaunchTemplateId') unless input[:launch_template_ids].nil?
        Builders::LaunchTemplateNameStringList.build(input[:launch_template_names], params, context: context + 'LaunchTemplateName') unless input[:launch_template_names].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for LaunchTemplateNameStringList
    class LaunchTemplateNameStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for LaunchTemplateIdStringList
    class LaunchTemplateIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
    class DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations'
        params['Version'] = '2016-11-15'
        Builders::LocalGatewayRouteTableVirtualInterfaceGroupAssociationIdSet.build(input[:local_gateway_route_table_virtual_interface_group_association_ids], params, context: context + 'LocalGatewayRouteTableVirtualInterfaceGroupAssociationId') unless input[:local_gateway_route_table_virtual_interface_group_association_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for LocalGatewayRouteTableVirtualInterfaceGroupAssociationIdSet
    class LocalGatewayRouteTableVirtualInterfaceGroupAssociationIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeLocalGatewayRouteTableVpcAssociations
    class DescribeLocalGatewayRouteTableVpcAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLocalGatewayRouteTableVpcAssociations'
        params['Version'] = '2016-11-15'
        Builders::LocalGatewayRouteTableVpcAssociationIdSet.build(input[:local_gateway_route_table_vpc_association_ids], params, context: context + 'LocalGatewayRouteTableVpcAssociationId') unless input[:local_gateway_route_table_vpc_association_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for LocalGatewayRouteTableVpcAssociationIdSet
    class LocalGatewayRouteTableVpcAssociationIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeLocalGatewayRouteTables
    class DescribeLocalGatewayRouteTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLocalGatewayRouteTables'
        params['Version'] = '2016-11-15'
        Builders::LocalGatewayRouteTableIdSet.build(input[:local_gateway_route_table_ids], params, context: context + 'LocalGatewayRouteTableId') unless input[:local_gateway_route_table_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for LocalGatewayRouteTableIdSet
    class LocalGatewayRouteTableIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeLocalGatewayVirtualInterfaceGroups
    class DescribeLocalGatewayVirtualInterfaceGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLocalGatewayVirtualInterfaceGroups'
        params['Version'] = '2016-11-15'
        Builders::LocalGatewayVirtualInterfaceGroupIdSet.build(input[:local_gateway_virtual_interface_group_ids], params, context: context + 'LocalGatewayVirtualInterfaceGroupId') unless input[:local_gateway_virtual_interface_group_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for LocalGatewayVirtualInterfaceGroupIdSet
    class LocalGatewayVirtualInterfaceGroupIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeLocalGatewayVirtualInterfaces
    class DescribeLocalGatewayVirtualInterfaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLocalGatewayVirtualInterfaces'
        params['Version'] = '2016-11-15'
        Builders::LocalGatewayVirtualInterfaceIdSet.build(input[:local_gateway_virtual_interface_ids], params, context: context + 'LocalGatewayVirtualInterfaceId') unless input[:local_gateway_virtual_interface_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for LocalGatewayVirtualInterfaceIdSet
    class LocalGatewayVirtualInterfaceIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeLocalGateways
    class DescribeLocalGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLocalGateways'
        params['Version'] = '2016-11-15'
        Builders::LocalGatewayIdSet.build(input[:local_gateway_ids], params, context: context + 'LocalGatewayId') unless input[:local_gateway_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for LocalGatewayIdSet
    class LocalGatewayIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeManagedPrefixLists
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        Builders::ValueStringList.build(input[:prefix_list_ids], params, context: context + 'PrefixListId') unless input[:prefix_list_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeMovingAddresses
    class DescribeMovingAddresses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeMovingAddresses'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        Builders::ValueStringList.build(input[:public_ips], params, context: context + 'publicIp') unless input[:public_ips].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeNatGateways
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
        Builders::FilterList.build(input[:filter], params, context: context + 'Filter') unless input[:filter].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        Builders::NatGatewayIdStringList.build(input[:nat_gateway_ids], params, context: context + 'NatGatewayId') unless input[:nat_gateway_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for NatGatewayIdStringList
    class NatGatewayIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeNetworkAcls
    class DescribeNetworkAcls
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeNetworkAcls'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::NetworkAclIdStringList.build(input[:network_acl_ids], params, context: context + 'NetworkAclId') unless input[:network_acl_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for NetworkAclIdStringList
    class NetworkAclIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeNetworkInsightsAccessScopeAnalyses
    class DescribeNetworkInsightsAccessScopeAnalyses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeNetworkInsightsAccessScopeAnalyses'
        params['Version'] = '2016-11-15'
        Builders::NetworkInsightsAccessScopeAnalysisIdList.build(input[:network_insights_access_scope_analysis_ids], params, context: context + 'NetworkInsightsAccessScopeAnalysisId') unless input[:network_insights_access_scope_analysis_ids].nil?
        params[context + 'NetworkInsightsAccessScopeId'] = input[:network_insights_access_scope_id].to_s unless input[:network_insights_access_scope_id].nil?
        params[context + 'AnalysisStartTimeBegin'] = Hearth::TimeHelper.to_date_time(input[:analysis_start_time_begin]) unless input[:analysis_start_time_begin].nil?
        params[context + 'AnalysisStartTimeEnd'] = Hearth::TimeHelper.to_date_time(input[:analysis_start_time_end]) unless input[:analysis_start_time_end].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for NetworkInsightsAccessScopeAnalysisIdList
    class NetworkInsightsAccessScopeAnalysisIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeNetworkInsightsAccessScopes
    class DescribeNetworkInsightsAccessScopes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeNetworkInsightsAccessScopes'
        params['Version'] = '2016-11-15'
        Builders::NetworkInsightsAccessScopeIdList.build(input[:network_insights_access_scope_ids], params, context: context + 'NetworkInsightsAccessScopeId') unless input[:network_insights_access_scope_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for NetworkInsightsAccessScopeIdList
    class NetworkInsightsAccessScopeIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeNetworkInsightsAnalyses
    class DescribeNetworkInsightsAnalyses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeNetworkInsightsAnalyses'
        params['Version'] = '2016-11-15'
        Builders::NetworkInsightsAnalysisIdList.build(input[:network_insights_analysis_ids], params, context: context + 'NetworkInsightsAnalysisId') unless input[:network_insights_analysis_ids].nil?
        params[context + 'NetworkInsightsPathId'] = input[:network_insights_path_id].to_s unless input[:network_insights_path_id].nil?
        params[context + 'AnalysisStartTime'] = Hearth::TimeHelper.to_date_time(input[:analysis_start_time]) unless input[:analysis_start_time].nil?
        params[context + 'AnalysisEndTime'] = Hearth::TimeHelper.to_date_time(input[:analysis_end_time]) unless input[:analysis_end_time].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for NetworkInsightsAnalysisIdList
    class NetworkInsightsAnalysisIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeNetworkInsightsPaths
    class DescribeNetworkInsightsPaths
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeNetworkInsightsPaths'
        params['Version'] = '2016-11-15'
        Builders::NetworkInsightsPathIdList.build(input[:network_insights_path_ids], params, context: context + 'NetworkInsightsPathId') unless input[:network_insights_path_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for NetworkInsightsPathIdList
    class NetworkInsightsPathIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeNetworkInterfaceAttribute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeNetworkInterfacePermissions
    class DescribeNetworkInterfacePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeNetworkInterfacePermissions'
        params['Version'] = '2016-11-15'
        Builders::NetworkInterfacePermissionIdList.build(input[:network_interface_permission_ids], params, context: context + 'NetworkInterfacePermissionId') unless input[:network_interface_permission_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for NetworkInterfacePermissionIdList
    class NetworkInterfacePermissionIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeNetworkInterfaces
    class DescribeNetworkInterfaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeNetworkInterfaces'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::NetworkInterfaceIdList.build(input[:network_interface_ids], params, context: context + 'NetworkInterfaceId') unless input[:network_interface_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for NetworkInterfaceIdList
    class NetworkInterfaceIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribePlacementGroups
    class DescribePlacementGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribePlacementGroups'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::PlacementGroupStringList.build(input[:group_names], params, context: context + 'groupName') unless input[:group_names].nil?
        Builders::PlacementGroupIdStringList.build(input[:group_ids], params, context: context + 'GroupId') unless input[:group_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for PlacementGroupIdStringList
    class PlacementGroupIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for PlacementGroupStringList
    class PlacementGroupStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribePrefixLists
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        Builders::PrefixListResourceIdStringList.build(input[:prefix_list_ids], params, context: context + 'PrefixListId') unless input[:prefix_list_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for PrefixListResourceIdStringList
    class PrefixListResourceIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribePrincipalIdFormat
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
        Builders::ResourceList.build(input[:resources], params, context: context + 'Resource') unless input[:resources].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ResourceList
    class ResourceList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribePublicIpv4Pools
    class DescribePublicIpv4Pools
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribePublicIpv4Pools'
        params['Version'] = '2016-11-15'
        Builders::PublicIpv4PoolIdStringList.build(input[:pool_ids], params, context: context + 'PoolId') unless input[:pool_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for PublicIpv4PoolIdStringList
    class PublicIpv4PoolIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeRegions
    class DescribeRegions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeRegions'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        Builders::RegionNameStringList.build(input[:region_names], params, context: context + 'RegionName') unless input[:region_names].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'AllRegions'] = input[:all_regions].to_s unless input[:all_regions].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for RegionNameStringList
    class RegionNameStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeReplaceRootVolumeTasks
    class DescribeReplaceRootVolumeTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeReplaceRootVolumeTasks'
        params['Version'] = '2016-11-15'
        Builders::ReplaceRootVolumeTaskIds.build(input[:replace_root_volume_task_ids], params, context: context + 'ReplaceRootVolumeTaskId') unless input[:replace_root_volume_task_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ReplaceRootVolumeTaskIds
    class ReplaceRootVolumeTaskIds
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeReservedInstances
    class DescribeReservedInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeReservedInstances'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'OfferingClass'] = input[:offering_class].to_s unless input[:offering_class].nil?
        Builders::ReservedInstancesIdStringList.build(input[:reserved_instances_ids], params, context: context + 'ReservedInstancesId') unless input[:reserved_instances_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'OfferingType'] = input[:offering_type].to_s unless input[:offering_type].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ReservedInstancesIdStringList
    class ReservedInstancesIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeReservedInstancesListings
    class DescribeReservedInstancesListings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeReservedInstancesListings'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'ReservedInstancesId'] = input[:reserved_instances_id].to_s unless input[:reserved_instances_id].nil?
        params[context + 'ReservedInstancesListingId'] = input[:reserved_instances_listing_id].to_s unless input[:reserved_instances_listing_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeReservedInstancesModifications
    class DescribeReservedInstancesModifications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeReservedInstancesModifications'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        Builders::ReservedInstancesModificationIdStringList.build(input[:reserved_instances_modification_ids], params, context: context + 'ReservedInstancesModificationId') unless input[:reserved_instances_modification_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ReservedInstancesModificationIdStringList
    class ReservedInstancesModificationIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeReservedInstancesOfferings
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'IncludeMarketplace'] = input[:include_marketplace].to_s unless input[:include_marketplace].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'MaxDuration'] = input[:max_duration].to_s unless input[:max_duration].nil?
        params[context + 'MaxInstanceCount'] = input[:max_instance_count].to_s unless input[:max_instance_count].nil?
        params[context + 'MinDuration'] = input[:min_duration].to_s unless input[:min_duration].nil?
        params[context + 'OfferingClass'] = input[:offering_class].to_s unless input[:offering_class].nil?
        params[context + 'ProductDescription'] = input[:product_description].to_s unless input[:product_description].nil?
        Builders::ReservedInstancesOfferingIdStringList.build(input[:reserved_instances_offering_ids], params, context: context + 'ReservedInstancesOfferingId') unless input[:reserved_instances_offering_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'InstanceTenancy'] = input[:instance_tenancy].to_s unless input[:instance_tenancy].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'OfferingType'] = input[:offering_type].to_s unless input[:offering_type].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ReservedInstancesOfferingIdStringList
    class ReservedInstancesOfferingIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeRouteTables
    class DescribeRouteTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeRouteTables'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::RouteTableIdStringList.build(input[:route_table_ids], params, context: context + 'RouteTableId') unless input[:route_table_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for RouteTableIdStringList
    class RouteTableIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeScheduledInstanceAvailability
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        Builders::SlotDateTimeRangeRequest.build(input[:first_slot_start_time_range], params, context: context + 'FirstSlotStartTimeRange' + '.') unless input[:first_slot_start_time_range].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'MaxSlotDurationInHours'] = input[:max_slot_duration_in_hours].to_s unless input[:max_slot_duration_in_hours].nil?
        params[context + 'MinSlotDurationInHours'] = input[:min_slot_duration_in_hours].to_s unless input[:min_slot_duration_in_hours].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        Builders::ScheduledInstanceRecurrenceRequest.build(input[:recurrence], params, context: context + 'Recurrence' + '.') unless input[:recurrence].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for ScheduledInstanceRecurrenceRequest
    class ScheduledInstanceRecurrenceRequest
      def self.build(input, params, context: nil)
        params[context + 'Frequency'] = input[:frequency].to_s unless input[:frequency].nil?
        params[context + 'Interval'] = input[:interval].to_s unless input[:interval].nil?
        Builders::OccurrenceDayRequestSet.build(input[:occurrence_days], params, context: context + 'OccurrenceDay') unless input[:occurrence_days].nil?
        params[context + 'OccurrenceRelativeToEnd'] = input[:occurrence_relative_to_end].to_s unless input[:occurrence_relative_to_end].nil?
        params[context + 'OccurrenceUnit'] = input[:occurrence_unit].to_s unless input[:occurrence_unit].nil?
      end
    end

    # List Builder for OccurrenceDayRequestSet
    class OccurrenceDayRequestSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for SlotDateTimeRangeRequest
    class SlotDateTimeRangeRequest
      def self.build(input, params, context: nil)
        params[context + 'EarliestTime'] = Hearth::TimeHelper.to_date_time(input[:earliest_time]) unless input[:earliest_time].nil?
        params[context + 'LatestTime'] = Hearth::TimeHelper.to_date_time(input[:latest_time]) unless input[:latest_time].nil?
      end
    end

    # Operation Builder for DescribeScheduledInstances
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        Builders::ScheduledInstanceIdRequestSet.build(input[:scheduled_instance_ids], params, context: context + 'ScheduledInstanceId') unless input[:scheduled_instance_ids].nil?
        Builders::SlotStartTimeRangeRequest.build(input[:slot_start_time_range], params, context: context + 'SlotStartTimeRange' + '.') unless input[:slot_start_time_range].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for SlotStartTimeRangeRequest
    class SlotStartTimeRangeRequest
      def self.build(input, params, context: nil)
        params[context + 'EarliestTime'] = Hearth::TimeHelper.to_date_time(input[:earliest_time]) unless input[:earliest_time].nil?
        params[context + 'LatestTime'] = Hearth::TimeHelper.to_date_time(input[:latest_time]) unless input[:latest_time].nil?
      end
    end

    # List Builder for ScheduledInstanceIdRequestSet
    class ScheduledInstanceIdRequestSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeSecurityGroupReferences
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
        Builders::GroupIds.build(input[:group_id], params, context: context + 'GroupId') unless input[:group_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for GroupIds
    class GroupIds
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeSecurityGroupRules
    class DescribeSecurityGroupRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSecurityGroupRules'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        Builders::SecurityGroupRuleIdList.build(input[:security_group_rule_ids], params, context: context + 'SecurityGroupRuleId') unless input[:security_group_rule_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for SecurityGroupRuleIdList
    class SecurityGroupRuleIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeSecurityGroups
    class DescribeSecurityGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSecurityGroups'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        Builders::GroupIdStringList.build(input[:group_ids], params, context: context + 'GroupId') unless input[:group_ids].nil?
        Builders::GroupNameStringList.build(input[:group_names], params, context: context + 'GroupName') unless input[:group_names].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for GroupNameStringList
    class GroupNameStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeSnapshotAttribute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeSnapshotTierStatus
    class DescribeSnapshotTierStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSnapshotTierStatus'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeSnapshots
    class DescribeSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSnapshots'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        Builders::OwnerStringList.build(input[:owner_ids], params, context: context + 'Owner') unless input[:owner_ids].nil?
        Builders::RestorableByStringList.build(input[:restorable_by_user_ids], params, context: context + 'RestorableBy') unless input[:restorable_by_user_ids].nil?
        Builders::SnapshotIdStringList.build(input[:snapshot_ids], params, context: context + 'SnapshotId') unless input[:snapshot_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for SnapshotIdStringList
    class SnapshotIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for RestorableByStringList
    class RestorableByStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeSpotDatafeedSubscription
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeSpotFleetInstances
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeSpotFleetRequestHistory
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeSpotFleetRequests
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
        Builders::SpotFleetRequestIdList.build(input[:spot_fleet_request_ids], params, context: context + 'spotFleetRequestId') unless input[:spot_fleet_request_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeSpotInstanceRequests
    class DescribeSpotInstanceRequests
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSpotInstanceRequests'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::SpotInstanceRequestIdList.build(input[:spot_instance_request_ids], params, context: context + 'SpotInstanceRequestId') unless input[:spot_instance_request_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeSpotPriceHistory
    class DescribeSpotPriceHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSpotPriceHistory'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        Builders::InstanceTypeList.build(input[:instance_types], params, context: context + 'InstanceType') unless input[:instance_types].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        Builders::ProductDescriptionList.build(input[:product_descriptions], params, context: context + 'ProductDescription') unless input[:product_descriptions].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ProductDescriptionList
    class ProductDescriptionList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for InstanceTypeList
    class InstanceTypeList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeStaleSecurityGroups
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeStoreImageTasks
    class DescribeStoreImageTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeStoreImageTasks'
        params['Version'] = '2016-11-15'
        Builders::ImageIdList.build(input[:image_ids], params, context: context + 'ImageId') unless input[:image_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ImageIdList
    class ImageIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeSubnets
    class DescribeSubnets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSubnets'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        Builders::SubnetIdStringList.build(input[:subnet_ids], params, context: context + 'SubnetId') unless input[:subnet_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for SubnetIdStringList
    class SubnetIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeTags
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeTrafficMirrorFilters
    class DescribeTrafficMirrorFilters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTrafficMirrorFilters'
        params['Version'] = '2016-11-15'
        Builders::TrafficMirrorFilterIdList.build(input[:traffic_mirror_filter_ids], params, context: context + 'TrafficMirrorFilterId') unless input[:traffic_mirror_filter_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TrafficMirrorFilterIdList
    class TrafficMirrorFilterIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeTrafficMirrorSessions
    class DescribeTrafficMirrorSessions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTrafficMirrorSessions'
        params['Version'] = '2016-11-15'
        Builders::TrafficMirrorSessionIdList.build(input[:traffic_mirror_session_ids], params, context: context + 'TrafficMirrorSessionId') unless input[:traffic_mirror_session_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TrafficMirrorSessionIdList
    class TrafficMirrorSessionIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeTrafficMirrorTargets
    class DescribeTrafficMirrorTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTrafficMirrorTargets'
        params['Version'] = '2016-11-15'
        Builders::TrafficMirrorTargetIdList.build(input[:traffic_mirror_target_ids], params, context: context + 'TrafficMirrorTargetId') unless input[:traffic_mirror_target_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TrafficMirrorTargetIdList
    class TrafficMirrorTargetIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeTransitGatewayAttachments
    class DescribeTransitGatewayAttachments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTransitGatewayAttachments'
        params['Version'] = '2016-11-15'
        Builders::TransitGatewayAttachmentIdStringList.build(input[:transit_gateway_attachment_ids], params, context: context + 'TransitGatewayAttachmentIds') unless input[:transit_gateway_attachment_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TransitGatewayAttachmentIdStringList
    class TransitGatewayAttachmentIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeTransitGatewayConnectPeers
    class DescribeTransitGatewayConnectPeers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTransitGatewayConnectPeers'
        params['Version'] = '2016-11-15'
        Builders::TransitGatewayConnectPeerIdStringList.build(input[:transit_gateway_connect_peer_ids], params, context: context + 'TransitGatewayConnectPeerIds') unless input[:transit_gateway_connect_peer_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TransitGatewayConnectPeerIdStringList
    class TransitGatewayConnectPeerIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeTransitGatewayConnects
    class DescribeTransitGatewayConnects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTransitGatewayConnects'
        params['Version'] = '2016-11-15'
        Builders::TransitGatewayAttachmentIdStringList.build(input[:transit_gateway_attachment_ids], params, context: context + 'TransitGatewayAttachmentIds') unless input[:transit_gateway_attachment_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeTransitGatewayMulticastDomains
    class DescribeTransitGatewayMulticastDomains
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTransitGatewayMulticastDomains'
        params['Version'] = '2016-11-15'
        Builders::TransitGatewayMulticastDomainIdStringList.build(input[:transit_gateway_multicast_domain_ids], params, context: context + 'TransitGatewayMulticastDomainIds') unless input[:transit_gateway_multicast_domain_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TransitGatewayMulticastDomainIdStringList
    class TransitGatewayMulticastDomainIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeTransitGatewayPeeringAttachments
    class DescribeTransitGatewayPeeringAttachments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTransitGatewayPeeringAttachments'
        params['Version'] = '2016-11-15'
        Builders::TransitGatewayAttachmentIdStringList.build(input[:transit_gateway_attachment_ids], params, context: context + 'TransitGatewayAttachmentIds') unless input[:transit_gateway_attachment_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeTransitGatewayRouteTables
    class DescribeTransitGatewayRouteTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTransitGatewayRouteTables'
        params['Version'] = '2016-11-15'
        Builders::TransitGatewayRouteTableIdStringList.build(input[:transit_gateway_route_table_ids], params, context: context + 'TransitGatewayRouteTableIds') unless input[:transit_gateway_route_table_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TransitGatewayRouteTableIdStringList
    class TransitGatewayRouteTableIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeTransitGatewayVpcAttachments
    class DescribeTransitGatewayVpcAttachments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTransitGatewayVpcAttachments'
        params['Version'] = '2016-11-15'
        Builders::TransitGatewayAttachmentIdStringList.build(input[:transit_gateway_attachment_ids], params, context: context + 'TransitGatewayAttachmentIds') unless input[:transit_gateway_attachment_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeTransitGateways
    class DescribeTransitGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTransitGateways'
        params['Version'] = '2016-11-15'
        Builders::TransitGatewayIdStringList.build(input[:transit_gateway_ids], params, context: context + 'TransitGatewayIds') unless input[:transit_gateway_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TransitGatewayIdStringList
    class TransitGatewayIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeTrunkInterfaceAssociations
    class DescribeTrunkInterfaceAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTrunkInterfaceAssociations'
        params['Version'] = '2016-11-15'
        Builders::TrunkInterfaceAssociationIdList.build(input[:association_ids], params, context: context + 'AssociationId') unless input[:association_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TrunkInterfaceAssociationIdList
    class TrunkInterfaceAssociationIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeVolumeAttribute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeVolumeStatus
    class DescribeVolumeStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVolumeStatus'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        Builders::VolumeIdStringList.build(input[:volume_ids], params, context: context + 'VolumeId') unless input[:volume_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for VolumeIdStringList
    class VolumeIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeVolumes
    class DescribeVolumes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVolumes'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        Builders::VolumeIdStringList.build(input[:volume_ids], params, context: context + 'VolumeId') unless input[:volume_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeVolumesModifications
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
        Builders::VolumeIdStringList.build(input[:volume_ids], params, context: context + 'VolumeId') unless input[:volume_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeVpcAttribute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeVpcClassicLink
    class DescribeVpcClassicLink
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVpcClassicLink'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::VpcClassicLinkIdList.build(input[:vpc_ids], params, context: context + 'VpcId') unless input[:vpc_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for VpcClassicLinkIdList
    class VpcClassicLinkIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeVpcClassicLinkDnsSupport
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
        Builders::VpcClassicLinkIdList.build(input[:vpc_ids], params, context: context + 'VpcIds') unless input[:vpc_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeVpcEndpointConnectionNotifications
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeVpcEndpointConnections
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeVpcEndpointServiceConfigurations
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
        Builders::VpcEndpointServiceIdList.build(input[:service_ids], params, context: context + 'ServiceId') unless input[:service_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeVpcEndpointServicePermissions
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeVpcEndpointServices
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
        Builders::ValueStringList.build(input[:service_names], params, context: context + 'ServiceName') unless input[:service_names].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeVpcEndpoints
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
        Builders::VpcEndpointIdList.build(input[:vpc_endpoint_ids], params, context: context + 'VpcEndpointId') unless input[:vpc_endpoint_ids].nil?
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeVpcPeeringConnections
    class DescribeVpcPeeringConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVpcPeeringConnections'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::VpcPeeringConnectionIdList.build(input[:vpc_peering_connection_ids], params, context: context + 'VpcPeeringConnectionId') unless input[:vpc_peering_connection_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for VpcPeeringConnectionIdList
    class VpcPeeringConnectionIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeVpcs
    class DescribeVpcs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVpcs'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        Builders::VpcIdStringList.build(input[:vpc_ids], params, context: context + 'VpcId') unless input[:vpc_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for VpcIdStringList
    class VpcIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeVpnConnections
    class DescribeVpnConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVpnConnections'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        Builders::VpnConnectionIdStringList.build(input[:vpn_connection_ids], params, context: context + 'VpnConnectionId') unless input[:vpn_connection_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for VpnConnectionIdStringList
    class VpnConnectionIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeVpnGateways
    class DescribeVpnGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeVpnGateways'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        Builders::VpnGatewayIdStringList.build(input[:vpn_gateway_ids], params, context: context + 'VpnGatewayId') unless input[:vpn_gateway_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for VpnGatewayIdStringList
    class VpnGatewayIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DetachClassicLinkVpc
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DetachInternetGateway
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DetachNetworkInterface
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DetachVolume
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DetachVpnGateway
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisableEbsEncryptionByDefault
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisableFastLaunch
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisableFastSnapshotRestores
    class DisableFastSnapshotRestores
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableFastSnapshotRestores'
        params['Version'] = '2016-11-15'
        Builders::AvailabilityZoneStringList.build(input[:availability_zones], params, context: context + 'AvailabilityZone') unless input[:availability_zones].nil?
        Builders::SnapshotIdStringList.build(input[:source_snapshot_ids], params, context: context + 'SourceSnapshotId') unless input[:source_snapshot_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for AvailabilityZoneStringList
    class AvailabilityZoneStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DisableImageDeprecation
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisableIpamOrganizationAdminAccount
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisableSerialConsoleAccess
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisableTransitGatewayRouteTablePropagation
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisableVgwRoutePropagation
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisableVpcClassicLink
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisableVpcClassicLinkDnsSupport
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisassociateAddress
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisassociateClientVpnTargetNetwork
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisassociateEnclaveCertificateIamRole
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisassociateIamInstanceProfile
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisassociateInstanceEventWindow
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
        Builders::InstanceEventWindowDisassociationRequest.build(input[:association_target], params, context: context + 'AssociationTarget' + '.') unless input[:association_target].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for InstanceEventWindowDisassociationRequest
    class InstanceEventWindowDisassociationRequest
      def self.build(input, params, context: nil)
        Builders::InstanceIdList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        Builders::TagList.build(input[:instance_tags], params, context: context + 'InstanceTag') unless input[:instance_tags].nil?
        Builders::DedicatedHostIdList.build(input[:dedicated_host_ids], params, context: context + 'DedicatedHostId') unless input[:dedicated_host_ids].nil?
      end
    end

    # Operation Builder for DisassociateRouteTable
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisassociateSubnetCidrBlock
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisassociateTransitGatewayMulticastDomain
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
        Builders::TransitGatewaySubnetIdList.build(input[:subnet_ids], params, context: context + 'SubnetIds') unless input[:subnet_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisassociateTransitGatewayRouteTable
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisassociateTrunkInterface
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisassociateVpcCidrBlock
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for EnableEbsEncryptionByDefault
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for EnableFastLaunch
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
        Builders::FastLaunchSnapshotConfigurationRequest.build(input[:snapshot_configuration], params, context: context + 'SnapshotConfiguration' + '.') unless input[:snapshot_configuration].nil?
        Builders::FastLaunchLaunchTemplateSpecificationRequest.build(input[:launch_template], params, context: context + 'LaunchTemplate' + '.') unless input[:launch_template].nil?
        params[context + 'MaxParallelLaunches'] = input[:max_parallel_launches].to_s unless input[:max_parallel_launches].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for FastLaunchLaunchTemplateSpecificationRequest
    class FastLaunchLaunchTemplateSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'LaunchTemplateId'] = input[:launch_template_id].to_s unless input[:launch_template_id].nil?
        params[context + 'LaunchTemplateName'] = input[:launch_template_name].to_s unless input[:launch_template_name].nil?
        params[context + 'Version'] = input[:version].to_s unless input[:version].nil?
      end
    end

    # Structure Builder for FastLaunchSnapshotConfigurationRequest
    class FastLaunchSnapshotConfigurationRequest
      def self.build(input, params, context: nil)
        params[context + 'TargetResourceCount'] = input[:target_resource_count].to_s unless input[:target_resource_count].nil?
      end
    end

    # Operation Builder for EnableFastSnapshotRestores
    class EnableFastSnapshotRestores
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableFastSnapshotRestores'
        params['Version'] = '2016-11-15'
        Builders::AvailabilityZoneStringList.build(input[:availability_zones], params, context: context + 'AvailabilityZone') unless input[:availability_zones].nil?
        Builders::SnapshotIdStringList.build(input[:source_snapshot_ids], params, context: context + 'SourceSnapshotId') unless input[:source_snapshot_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for EnableImageDeprecation
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for EnableIpamOrganizationAdminAccount
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for EnableSerialConsoleAccess
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for EnableTransitGatewayRouteTablePropagation
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for EnableVgwRoutePropagation
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for EnableVolumeIO
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for EnableVpcClassicLink
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for EnableVpcClassicLinkDnsSupport
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ExportClientVpnClientCertificateRevocationList
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ExportClientVpnClientConfiguration
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ExportImage
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
        Builders::ExportTaskS3LocationRequest.build(input[:s3_export_location], params, context: context + 'S3ExportLocation' + '.') unless input[:s3_export_location].nil?
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for ExportTaskS3LocationRequest
    class ExportTaskS3LocationRequest
      def self.build(input, params, context: nil)
        params[context + 'S3Bucket'] = input[:s3_bucket].to_s unless input[:s3_bucket].nil?
        params[context + 'S3Prefix'] = input[:s3_prefix].to_s unless input[:s3_prefix].nil?
      end
    end

    # Operation Builder for ExportTransitGatewayRoutes
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'S3Bucket'] = input[:s3_bucket].to_s unless input[:s3_bucket].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetAssociatedEnclaveCertificateIamRoles
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetAssociatedIpv6PoolCidrs
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetCapacityReservationUsage
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetCoipPoolUsage
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetConsoleOutput
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetConsoleScreenshot
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetDefaultCreditSpecification
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetEbsDefaultKmsKeyId
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetEbsEncryptionByDefault
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetFlowLogsIntegrationTemplate
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
        Builders::IntegrateServices.build(input[:integrate_services], params, context: context + 'IntegrateService' + '.') unless input[:integrate_services].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for IntegrateServices
    class IntegrateServices
      def self.build(input, params, context: nil)
        Builders::AthenaIntegrationsSet.build(input[:athena_integrations], params, context: context + 'AthenaIntegration') unless input[:athena_integrations].nil?
      end
    end

    # List Builder for AthenaIntegrationsSet
    class AthenaIntegrationsSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::AthenaIntegration.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for AthenaIntegration
    class AthenaIntegration
      def self.build(input, params, context: nil)
        params[context + 'IntegrationResultS3DestinationArn'] = input[:integration_result_s3_destination_arn].to_s unless input[:integration_result_s3_destination_arn].nil?
        params[context + 'PartitionLoadFrequency'] = input[:partition_load_frequency].to_s unless input[:partition_load_frequency].nil?
        params[context + 'PartitionStartDate'] = Hearth::TimeHelper.to_date_time(input[:partition_start_date]) unless input[:partition_start_date].nil?
        params[context + 'PartitionEndDate'] = Hearth::TimeHelper.to_date_time(input[:partition_end_date]) unless input[:partition_end_date].nil?
      end
    end

    # Operation Builder for GetGroupsForCapacityReservation
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetHostReservationPurchasePreview
    class GetHostReservationPurchasePreview
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetHostReservationPurchasePreview'
        params['Version'] = '2016-11-15'
        Builders::RequestHostIdSet.build(input[:host_id_set], params, context: context + 'HostIdSet') unless input[:host_id_set].nil?
        params[context + 'OfferingId'] = input[:offering_id].to_s unless input[:offering_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for RequestHostIdSet
    class RequestHostIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for GetInstanceTypesFromInstanceRequirements
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
        Builders::ArchitectureTypeSet.build(input[:architecture_types], params, context: context + 'ArchitectureType') unless input[:architecture_types].nil?
        Builders::VirtualizationTypeSet.build(input[:virtualization_types], params, context: context + 'VirtualizationType') unless input[:virtualization_types].nil?
        Builders::InstanceRequirementsRequest.build(input[:instance_requirements], params, context: context + 'InstanceRequirements' + '.') unless input[:instance_requirements].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for VirtualizationTypeSet
    class VirtualizationTypeSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for ArchitectureTypeSet
    class ArchitectureTypeSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for GetInstanceUefiData
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetIpamAddressHistory
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetIpamPoolAllocations
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetIpamPoolCidrs
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetIpamResourceCidrs
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'IpamScopeId'] = input[:ipam_scope_id].to_s unless input[:ipam_scope_id].nil?
        params[context + 'IpamPoolId'] = input[:ipam_pool_id].to_s unless input[:ipam_pool_id].nil?
        params[context + 'ResourceId'] = input[:resource_id].to_s unless input[:resource_id].nil?
        params[context + 'ResourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        Builders::RequestIpamResourceTag.build(input[:resource_tag], params, context: context + 'ResourceTag' + '.') unless input[:resource_tag].nil?
        params[context + 'ResourceOwner'] = input[:resource_owner].to_s unless input[:resource_owner].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetLaunchTemplateData
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetManagedPrefixListAssociations
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetManagedPrefixListEntries
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetNetworkInsightsAccessScopeAnalysisFindings
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetNetworkInsightsAccessScopeContent
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetPasswordData
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetReservedInstancesExchangeQuote
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
        Builders::ReservedInstanceIdSet.build(input[:reserved_instance_ids], params, context: context + 'ReservedInstanceId') unless input[:reserved_instance_ids].nil?
        Builders::TargetConfigurationRequestSet.build(input[:target_configurations], params, context: context + 'TargetConfiguration') unless input[:target_configurations].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetSerialConsoleAccessStatus
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetSpotPlacementScores
    class GetSpotPlacementScores
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetSpotPlacementScores'
        params['Version'] = '2016-11-15'
        Builders::InstanceTypes.build(input[:instance_types], params, context: context + 'InstanceType') unless input[:instance_types].nil?
        params[context + 'TargetCapacity'] = input[:target_capacity].to_s unless input[:target_capacity].nil?
        params[context + 'TargetCapacityUnitType'] = input[:target_capacity_unit_type].to_s unless input[:target_capacity_unit_type].nil?
        params[context + 'SingleAvailabilityZone'] = input[:single_availability_zone].to_s unless input[:single_availability_zone].nil?
        Builders::RegionNames.build(input[:region_names], params, context: context + 'RegionName') unless input[:region_names].nil?
        Builders::InstanceRequirementsWithMetadataRequest.build(input[:instance_requirements_with_metadata], params, context: context + 'InstanceRequirementsWithMetadata' + '.') unless input[:instance_requirements_with_metadata].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for InstanceRequirementsWithMetadataRequest
    class InstanceRequirementsWithMetadataRequest
      def self.build(input, params, context: nil)
        Builders::ArchitectureTypeSet.build(input[:architecture_types], params, context: context + 'ArchitectureType') unless input[:architecture_types].nil?
        Builders::VirtualizationTypeSet.build(input[:virtualization_types], params, context: context + 'VirtualizationType') unless input[:virtualization_types].nil?
        Builders::InstanceRequirementsRequest.build(input[:instance_requirements], params, context: context + 'InstanceRequirements' + '.') unless input[:instance_requirements].nil?
      end
    end

    # List Builder for RegionNames
    class RegionNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for InstanceTypes
    class InstanceTypes
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for GetSubnetCidrReservations
    class GetSubnetCidrReservations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetSubnetCidrReservations'
        params['Version'] = '2016-11-15'
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetTransitGatewayAttachmentPropagations
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetTransitGatewayMulticastDomainAssociations
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetTransitGatewayPrefixListReferences
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetTransitGatewayRouteTableAssociations
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetTransitGatewayRouteTablePropagations
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetVpnConnectionDeviceSampleConfiguration
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetVpnConnectionDeviceTypes
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ImportClientVpnClientCertificateRevocationList
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ImportImage
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
        Builders::ClientData.build(input[:client_data], params, context: context + 'ClientData' + '.') unless input[:client_data].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        Builders::ImageDiskContainerList.build(input[:disk_containers], params, context: context + 'DiskContainer') unless input[:disk_containers].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Encrypted'] = input[:encrypted].to_s unless input[:encrypted].nil?
        params[context + 'Hypervisor'] = input[:hypervisor].to_s unless input[:hypervisor].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'LicenseType'] = input[:license_type].to_s unless input[:license_type].nil?
        params[context + 'Platform'] = input[:platform].to_s unless input[:platform].nil?
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        Builders::ImportImageLicenseSpecificationListRequest.build(input[:license_specifications], params, context: context + 'LicenseSpecifications') unless input[:license_specifications].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'UsageOperation'] = input[:usage_operation].to_s unless input[:usage_operation].nil?
        params[context + 'BootMode'] = input[:boot_mode].to_s unless input[:boot_mode].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ImportImageLicenseSpecificationListRequest
    class ImportImageLicenseSpecificationListRequest
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ImportImageLicenseConfigurationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ImportImageLicenseConfigurationRequest
    class ImportImageLicenseConfigurationRequest
      def self.build(input, params, context: nil)
        params[context + 'LicenseConfigurationArn'] = input[:license_configuration_arn].to_s unless input[:license_configuration_arn].nil?
      end
    end

    # List Builder for ImageDiskContainerList
    class ImageDiskContainerList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ImageDiskContainer.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ImageDiskContainer
    class ImageDiskContainer
      def self.build(input, params, context: nil)
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DeviceName'] = input[:device_name].to_s unless input[:device_name].nil?
        params[context + 'Format'] = input[:format].to_s unless input[:format].nil?
        params[context + 'SnapshotId'] = input[:snapshot_id].to_s unless input[:snapshot_id].nil?
        params[context + 'Url'] = input[:url].to_s unless input[:url].nil?
        Builders::UserBucket.build(input[:user_bucket], params, context: context + 'UserBucket' + '.') unless input[:user_bucket].nil?
      end
    end

    # Structure Builder for UserBucket
    class UserBucket
      def self.build(input, params, context: nil)
        params[context + 'S3Bucket'] = input[:s3_bucket].to_s unless input[:s3_bucket].nil?
        params[context + 'S3Key'] = input[:s3_key].to_s unless input[:s3_key].nil?
      end
    end

    # Structure Builder for ClientData
    class ClientData
      def self.build(input, params, context: nil)
        params[context + 'Comment'] = input[:comment].to_s unless input[:comment].nil?
        params[context + 'UploadEnd'] = Hearth::TimeHelper.to_date_time(input[:upload_end]) unless input[:upload_end].nil?
        params[context + 'UploadSize'] = Hearth::NumberHelper.serialize(input[:upload_size]).to_s unless input[:upload_size].nil?
        params[context + 'UploadStart'] = Hearth::TimeHelper.to_date_time(input[:upload_start]) unless input[:upload_start].nil?
      end
    end

    # Operation Builder for ImportInstance
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
        Builders::DiskImageList.build(input[:disk_images], params, context: context + 'diskImage') unless input[:disk_images].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::ImportInstanceLaunchSpecification.build(input[:launch_specification], params, context: context + 'LaunchSpecification' + '.') unless input[:launch_specification].nil?
        params[context + 'Platform'] = input[:platform].to_s unless input[:platform].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for ImportInstanceLaunchSpecification
    class ImportInstanceLaunchSpecification
      def self.build(input, params, context: nil)
        params[context + 'AdditionalInfo'] = input[:additional_info].to_s unless input[:additional_info].nil?
        params[context + 'Architecture'] = input[:architecture].to_s unless input[:architecture].nil?
        Builders::SecurityGroupIdStringList.build(input[:group_ids], params, context: context + 'GroupId') unless input[:group_ids].nil?
        Builders::SecurityGroupStringList.build(input[:group_names], params, context: context + 'GroupName') unless input[:group_names].nil?
        params[context + 'InstanceInitiatedShutdownBehavior'] = input[:instance_initiated_shutdown_behavior].to_s unless input[:instance_initiated_shutdown_behavior].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'Monitoring'] = input[:monitoring].to_s unless input[:monitoring].nil?
        Builders::Placement.build(input[:placement], params, context: context + 'Placement' + '.') unless input[:placement].nil?
        params[context + 'PrivateIpAddress'] = input[:private_ip_address].to_s unless input[:private_ip_address].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        Builders::UserData.build(input[:user_data], params, context: context + 'UserData' + '.') unless input[:user_data].nil?
      end
    end

    # Structure Builder for UserData
    class UserData
      def self.build(input, params, context: nil)
        params[context + 'Data'] = input[:data].to_s unless input[:data].nil?
      end
    end

    # List Builder for DiskImageList
    class DiskImageList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::DiskImage.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for DiskImage
    class DiskImage
      def self.build(input, params, context: nil)
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        Builders::DiskImageDetail.build(input[:image], params, context: context + 'Image' + '.') unless input[:image].nil?
        Builders::VolumeDetail.build(input[:volume], params, context: context + 'Volume' + '.') unless input[:volume].nil?
      end
    end

    # Structure Builder for VolumeDetail
    class VolumeDetail
      def self.build(input, params, context: nil)
        params[context + 'Size'] = input[:size].to_s unless input[:size].nil?
      end
    end

    # Structure Builder for DiskImageDetail
    class DiskImageDetail
      def self.build(input, params, context: nil)
        params[context + 'Bytes'] = input[:bytes].to_s unless input[:bytes].nil?
        params[context + 'Format'] = input[:format].to_s unless input[:format].nil?
        params[context + 'ImportManifestUrl'] = input[:import_manifest_url].to_s unless input[:import_manifest_url].nil?
      end
    end

    # Operation Builder for ImportKeyPair
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
        params[context + 'PublicKeyMaterial'] = Base64::encode64(input[:public_key_material]).strip unless input[:public_key_material].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ImportSnapshot
    class ImportSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ImportSnapshot'
        params['Version'] = '2016-11-15'
        Builders::ClientData.build(input[:client_data], params, context: context + 'ClientData' + '.') unless input[:client_data].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        Builders::SnapshotDiskContainer.build(input[:disk_container], params, context: context + 'DiskContainer' + '.') unless input[:disk_container].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Encrypted'] = input[:encrypted].to_s unless input[:encrypted].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for SnapshotDiskContainer
    class SnapshotDiskContainer
      def self.build(input, params, context: nil)
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'Format'] = input[:format].to_s unless input[:format].nil?
        params[context + 'Url'] = input[:url].to_s unless input[:url].nil?
        Builders::UserBucket.build(input[:user_bucket], params, context: context + 'UserBucket' + '.') unless input[:user_bucket].nil?
      end
    end

    # Operation Builder for ImportVolume
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
        Builders::DiskImageDetail.build(input[:image], params, context: context + 'Image' + '.') unless input[:image].nil?
        Builders::VolumeDetail.build(input[:volume], params, context: context + 'Volume' + '.') unless input[:volume].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListImagesInRecycleBin
    class ListImagesInRecycleBin
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListImagesInRecycleBin'
        params['Version'] = '2016-11-15'
        Builders::ImageIdStringList.build(input[:image_ids], params, context: context + 'ImageId') unless input[:image_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListSnapshotsInRecycleBin
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
        Builders::SnapshotIdStringList.build(input[:snapshot_ids], params, context: context + 'SnapshotId') unless input[:snapshot_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyAddressAttribute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyAvailabilityZoneGroup
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyCapacityReservation
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyCapacityReservationFleet
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyClientVpnEndpoint
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
        Builders::ConnectionLogOptions.build(input[:connection_log_options], params, context: context + 'ConnectionLogOptions' + '.') unless input[:connection_log_options].nil?
        Builders::DnsServersOptionsModifyStructure.build(input[:dns_servers], params, context: context + 'DnsServers' + '.') unless input[:dns_servers].nil?
        params[context + 'VpnPort'] = input[:vpn_port].to_s unless input[:vpn_port].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'SplitTunnel'] = input[:split_tunnel].to_s unless input[:split_tunnel].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::ClientVpnSecurityGroupIdSet.build(input[:security_group_ids], params, context: context + 'SecurityGroupId') unless input[:security_group_ids].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'SelfServicePortal'] = input[:self_service_portal].to_s unless input[:self_service_portal].nil?
        Builders::ClientConnectOptions.build(input[:client_connect_options], params, context: context + 'ClientConnectOptions' + '.') unless input[:client_connect_options].nil?
        params[context + 'SessionTimeoutHours'] = input[:session_timeout_hours].to_s unless input[:session_timeout_hours].nil?
        Builders::ClientLoginBannerOptions.build(input[:client_login_banner_options], params, context: context + 'ClientLoginBannerOptions' + '.') unless input[:client_login_banner_options].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for DnsServersOptionsModifyStructure
    class DnsServersOptionsModifyStructure
      def self.build(input, params, context: nil)
        Builders::ValueStringList.build(input[:custom_dns_servers], params, context: context + 'CustomDnsServers') unless input[:custom_dns_servers].nil?
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
      end
    end

    # Operation Builder for ModifyDefaultCreditSpecification
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyEbsDefaultKmsKeyId
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyFleet
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
        Builders::FleetLaunchTemplateConfigListRequest.build(input[:launch_template_configs], params, context: context + 'LaunchTemplateConfig') unless input[:launch_template_configs].nil?
        params[context + 'FleetId'] = input[:fleet_id].to_s unless input[:fleet_id].nil?
        Builders::TargetCapacitySpecificationRequest.build(input[:target_capacity_specification], params, context: context + 'TargetCapacitySpecification' + '.') unless input[:target_capacity_specification].nil?
        params[context + 'Context'] = input[:context].to_s unless input[:context].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyFpgaImageAttribute
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
        Builders::UserIdStringList.build(input[:user_ids], params, context: context + 'UserId') unless input[:user_ids].nil?
        Builders::UserGroupStringList.build(input[:user_groups], params, context: context + 'UserGroup') unless input[:user_groups].nil?
        Builders::ProductCodeStringList.build(input[:product_codes], params, context: context + 'ProductCode') unless input[:product_codes].nil?
        Builders::LoadPermissionModifications.build(input[:load_permission], params, context: context + 'LoadPermission' + '.') unless input[:load_permission].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for LoadPermissionModifications
    class LoadPermissionModifications
      def self.build(input, params, context: nil)
        Builders::LoadPermissionListRequest.build(input[:add], params, context: context + 'Add') unless input[:add].nil?
        Builders::LoadPermissionListRequest.build(input[:remove], params, context: context + 'Remove') unless input[:remove].nil?
      end
    end

    # List Builder for LoadPermissionListRequest
    class LoadPermissionListRequest
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::LoadPermissionRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for LoadPermissionRequest
    class LoadPermissionRequest
      def self.build(input, params, context: nil)
        params[context + 'Group'] = input[:group].to_s unless input[:group].nil?
        params[context + 'UserId'] = input[:user_id].to_s unless input[:user_id].nil?
      end
    end

    # List Builder for ProductCodeStringList
    class ProductCodeStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for UserGroupStringList
    class UserGroupStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for UserIdStringList
    class UserIdStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ModifyHosts
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
        Builders::RequestHostIdList.build(input[:host_ids], params, context: context + 'hostId') unless input[:host_ids].nil?
        params[context + 'HostRecovery'] = input[:host_recovery].to_s unless input[:host_recovery].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'InstanceFamily'] = input[:instance_family].to_s unless input[:instance_family].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyIdFormat
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyIdentityIdFormat
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyImageAttribute
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
        Builders::AttributeValue.build(input[:description], params, context: context + 'Description' + '.') unless input[:description].nil?
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        Builders::LaunchPermissionModifications.build(input[:launch_permission], params, context: context + 'LaunchPermission' + '.') unless input[:launch_permission].nil?
        params[context + 'OperationType'] = input[:operation_type].to_s unless input[:operation_type].nil?
        Builders::ProductCodeStringList.build(input[:product_codes], params, context: context + 'ProductCode') unless input[:product_codes].nil?
        Builders::UserGroupStringList.build(input[:user_groups], params, context: context + 'UserGroup') unless input[:user_groups].nil?
        Builders::UserIdStringList.build(input[:user_ids], params, context: context + 'UserId') unless input[:user_ids].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::OrganizationArnStringList.build(input[:organization_arns], params, context: context + 'OrganizationArn') unless input[:organization_arns].nil?
        Builders::OrganizationalUnitArnStringList.build(input[:organizational_unit_arns], params, context: context + 'OrganizationalUnitArn') unless input[:organizational_unit_arns].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for OrganizationalUnitArnStringList
    class OrganizationalUnitArnStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for OrganizationArnStringList
    class OrganizationArnStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for LaunchPermissionModifications
    class LaunchPermissionModifications
      def self.build(input, params, context: nil)
        Builders::LaunchPermissionList.build(input[:add], params, context: context + 'Add') unless input[:add].nil?
        Builders::LaunchPermissionList.build(input[:remove], params, context: context + 'Remove') unless input[:remove].nil?
      end
    end

    # List Builder for LaunchPermissionList
    class LaunchPermissionList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::LaunchPermission.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for LaunchPermission
    class LaunchPermission
      def self.build(input, params, context: nil)
        params[context + 'Group'] = input[:group].to_s unless input[:group].nil?
        params[context + 'UserId'] = input[:user_id].to_s unless input[:user_id].nil?
        params[context + 'OrganizationArn'] = input[:organization_arn].to_s unless input[:organization_arn].nil?
        params[context + 'OrganizationalUnitArn'] = input[:organizational_unit_arn].to_s unless input[:organizational_unit_arn].nil?
      end
    end

    # Structure Builder for AttributeValue
    class AttributeValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Operation Builder for ModifyInstanceAttribute
    class ModifyInstanceAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyInstanceAttribute'
        params['Version'] = '2016-11-15'
        Builders::AttributeBooleanValue.build(input[:source_dest_check], params, context: context + 'SourceDestCheck' + '.') unless input[:source_dest_check].nil?
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        Builders::InstanceBlockDeviceMappingSpecificationList.build(input[:block_device_mappings], params, context: context + 'blockDeviceMapping') unless input[:block_device_mappings].nil?
        Builders::AttributeBooleanValue.build(input[:disable_api_termination], params, context: context + 'DisableApiTermination' + '.') unless input[:disable_api_termination].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::AttributeBooleanValue.build(input[:ebs_optimized], params, context: context + 'EbsOptimized' + '.') unless input[:ebs_optimized].nil?
        Builders::AttributeBooleanValue.build(input[:ena_support], params, context: context + 'EnaSupport' + '.') unless input[:ena_support].nil?
        Builders::GroupIdStringList.build(input[:groups], params, context: context + 'GroupId') unless input[:groups].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        Builders::AttributeValue.build(input[:instance_initiated_shutdown_behavior], params, context: context + 'InstanceInitiatedShutdownBehavior' + '.') unless input[:instance_initiated_shutdown_behavior].nil?
        Builders::AttributeValue.build(input[:instance_type], params, context: context + 'InstanceType' + '.') unless input[:instance_type].nil?
        Builders::AttributeValue.build(input[:kernel], params, context: context + 'Kernel' + '.') unless input[:kernel].nil?
        Builders::AttributeValue.build(input[:ramdisk], params, context: context + 'Ramdisk' + '.') unless input[:ramdisk].nil?
        Builders::AttributeValue.build(input[:sriov_net_support], params, context: context + 'SriovNetSupport' + '.') unless input[:sriov_net_support].nil?
        Builders::BlobAttributeValue.build(input[:user_data], params, context: context + 'UserData' + '.') unless input[:user_data].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
        Builders::AttributeBooleanValue.build(input[:disable_api_stop], params, context: context + 'DisableApiStop' + '.') unless input[:disable_api_stop].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for AttributeBooleanValue
    class AttributeBooleanValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Structure Builder for BlobAttributeValue
    class BlobAttributeValue
      def self.build(input, params, context: nil)
        params[context + 'Value'] = Base64::encode64(input[:value]).strip unless input[:value].nil?
      end
    end

    # List Builder for InstanceBlockDeviceMappingSpecificationList
    class InstanceBlockDeviceMappingSpecificationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::InstanceBlockDeviceMappingSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for InstanceBlockDeviceMappingSpecification
    class InstanceBlockDeviceMappingSpecification
      def self.build(input, params, context: nil)
        params[context + 'DeviceName'] = input[:device_name].to_s unless input[:device_name].nil?
        Builders::EbsInstanceBlockDeviceSpecification.build(input[:ebs], params, context: context + 'Ebs' + '.') unless input[:ebs].nil?
        params[context + 'NoDevice'] = input[:no_device].to_s unless input[:no_device].nil?
        params[context + 'VirtualName'] = input[:virtual_name].to_s unless input[:virtual_name].nil?
      end
    end

    # Structure Builder for EbsInstanceBlockDeviceSpecification
    class EbsInstanceBlockDeviceSpecification
      def self.build(input, params, context: nil)
        params[context + 'DeleteOnTermination'] = input[:delete_on_termination].to_s unless input[:delete_on_termination].nil?
        params[context + 'VolumeId'] = input[:volume_id].to_s unless input[:volume_id].nil?
      end
    end

    # Operation Builder for ModifyInstanceCapacityReservationAttributes
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
        Builders::CapacityReservationSpecification.build(input[:capacity_reservation_specification], params, context: context + 'CapacityReservationSpecification' + '.') unless input[:capacity_reservation_specification].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for CapacityReservationSpecification
    class CapacityReservationSpecification
      def self.build(input, params, context: nil)
        params[context + 'CapacityReservationPreference'] = input[:capacity_reservation_preference].to_s unless input[:capacity_reservation_preference].nil?
        Builders::CapacityReservationTarget.build(input[:capacity_reservation_target], params, context: context + 'CapacityReservationTarget' + '.') unless input[:capacity_reservation_target].nil?
      end
    end

    # Operation Builder for ModifyInstanceCreditSpecification
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
        Builders::InstanceCreditSpecificationListRequest.build(input[:instance_credit_specifications], params, context: context + 'InstanceCreditSpecification') unless input[:instance_credit_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for InstanceCreditSpecificationListRequest
    class InstanceCreditSpecificationListRequest
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::InstanceCreditSpecificationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for InstanceCreditSpecificationRequest
    class InstanceCreditSpecificationRequest
      def self.build(input, params, context: nil)
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'CpuCredits'] = input[:cpu_credits].to_s unless input[:cpu_credits].nil?
      end
    end

    # Operation Builder for ModifyInstanceEventStartTime
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyInstanceEventWindow
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
        Builders::InstanceEventWindowTimeRangeRequestSet.build(input[:time_ranges], params, context: context + 'TimeRange') unless input[:time_ranges].nil?
        params[context + 'CronExpression'] = input[:cron_expression].to_s unless input[:cron_expression].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyInstanceMaintenanceOptions
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyInstanceMetadataOptions
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyInstancePlacement
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyIpam
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
        Builders::AddIpamOperatingRegionSet.build(input[:add_operating_regions], params, context: context + 'AddOperatingRegion') unless input[:add_operating_regions].nil?
        Builders::RemoveIpamOperatingRegionSet.build(input[:remove_operating_regions], params, context: context + 'RemoveOperatingRegion') unless input[:remove_operating_regions].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for RemoveIpamOperatingRegionSet
    class RemoveIpamOperatingRegionSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::RemoveIpamOperatingRegion.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for RemoveIpamOperatingRegion
    class RemoveIpamOperatingRegion
      def self.build(input, params, context: nil)
        params[context + 'RegionName'] = input[:region_name].to_s unless input[:region_name].nil?
      end
    end

    # Operation Builder for ModifyIpamPool
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
        Builders::RequestIpamResourceTagList.build(input[:add_allocation_resource_tags], params, context: context + 'AddAllocationResourceTag') unless input[:add_allocation_resource_tags].nil?
        Builders::RequestIpamResourceTagList.build(input[:remove_allocation_resource_tags], params, context: context + 'RemoveAllocationResourceTag') unless input[:remove_allocation_resource_tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyIpamResourceCidr
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyIpamScope
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyLaunchTemplate
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyManagedPrefixList
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
        Builders::AddPrefixListEntries.build(input[:add_entries], params, context: context + 'AddEntry') unless input[:add_entries].nil?
        Builders::RemovePrefixListEntries.build(input[:remove_entries], params, context: context + 'RemoveEntry') unless input[:remove_entries].nil?
        params[context + 'MaxEntries'] = input[:max_entries].to_s unless input[:max_entries].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for RemovePrefixListEntries
    class RemovePrefixListEntries
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::RemovePrefixListEntry.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for RemovePrefixListEntry
    class RemovePrefixListEntry
      def self.build(input, params, context: nil)
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
      end
    end

    # Operation Builder for ModifyNetworkInterfaceAttribute
    class ModifyNetworkInterfaceAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyNetworkInterfaceAttribute'
        params['Version'] = '2016-11-15'
        Builders::NetworkInterfaceAttachmentChanges.build(input[:attachment], params, context: context + 'Attachment' + '.') unless input[:attachment].nil?
        Builders::AttributeValue.build(input[:description], params, context: context + 'Description' + '.') unless input[:description].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::SecurityGroupIdStringList.build(input[:groups], params, context: context + 'SecurityGroupId') unless input[:groups].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        Builders::AttributeBooleanValue.build(input[:source_dest_check], params, context: context + 'SourceDestCheck' + '.') unless input[:source_dest_check].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for NetworkInterfaceAttachmentChanges
    class NetworkInterfaceAttachmentChanges
      def self.build(input, params, context: nil)
        params[context + 'AttachmentId'] = input[:attachment_id].to_s unless input[:attachment_id].nil?
        params[context + 'DeleteOnTermination'] = input[:delete_on_termination].to_s unless input[:delete_on_termination].nil?
      end
    end

    # Operation Builder for ModifyPrivateDnsNameOptions
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyReservedInstances
    class ModifyReservedInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyReservedInstances'
        params['Version'] = '2016-11-15'
        Builders::ReservedInstancesIdStringList.build(input[:reserved_instances_ids], params, context: context + 'ReservedInstancesId') unless input[:reserved_instances_ids].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        Builders::ReservedInstancesConfigurationList.build(input[:target_configurations], params, context: context + 'ReservedInstancesConfigurationSetItemType') unless input[:target_configurations].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ReservedInstancesConfigurationList
    class ReservedInstancesConfigurationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ReservedInstancesConfiguration.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ReservedInstancesConfiguration
    class ReservedInstancesConfiguration
      def self.build(input, params, context: nil)
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'InstanceCount'] = input[:instance_count].to_s unless input[:instance_count].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'Platform'] = input[:platform].to_s unless input[:platform].nil?
        params[context + 'Scope'] = input[:scope].to_s unless input[:scope].nil?
      end
    end

    # Operation Builder for ModifySecurityGroupRules
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
        Builders::SecurityGroupRuleUpdateList.build(input[:security_group_rules], params, context: context + 'SecurityGroupRule') unless input[:security_group_rules].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for SecurityGroupRuleUpdateList
    class SecurityGroupRuleUpdateList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::SecurityGroupRuleUpdate.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for SecurityGroupRuleUpdate
    class SecurityGroupRuleUpdate
      def self.build(input, params, context: nil)
        params[context + 'SecurityGroupRuleId'] = input[:security_group_rule_id].to_s unless input[:security_group_rule_id].nil?
        Builders::SecurityGroupRuleRequest.build(input[:security_group_rule], params, context: context + 'SecurityGroupRule' + '.') unless input[:security_group_rule].nil?
      end
    end

    # Structure Builder for SecurityGroupRuleRequest
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

    # Operation Builder for ModifySnapshotAttribute
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
        Builders::CreateVolumePermissionModifications.build(input[:create_volume_permission], params, context: context + 'CreateVolumePermission' + '.') unless input[:create_volume_permission].nil?
        Builders::GroupNameStringList.build(input[:group_names], params, context: context + 'UserGroup') unless input[:group_names].nil?
        params[context + 'OperationType'] = input[:operation_type].to_s unless input[:operation_type].nil?
        params[context + 'SnapshotId'] = input[:snapshot_id].to_s unless input[:snapshot_id].nil?
        Builders::UserIdStringList.build(input[:user_ids], params, context: context + 'UserId') unless input[:user_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for CreateVolumePermissionModifications
    class CreateVolumePermissionModifications
      def self.build(input, params, context: nil)
        Builders::CreateVolumePermissionList.build(input[:add], params, context: context + 'Add') unless input[:add].nil?
        Builders::CreateVolumePermissionList.build(input[:remove], params, context: context + 'Remove') unless input[:remove].nil?
      end
    end

    # List Builder for CreateVolumePermissionList
    class CreateVolumePermissionList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::CreateVolumePermission.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for CreateVolumePermission
    class CreateVolumePermission
      def self.build(input, params, context: nil)
        params[context + 'Group'] = input[:group].to_s unless input[:group].nil?
        params[context + 'UserId'] = input[:user_id].to_s unless input[:user_id].nil?
      end
    end

    # Operation Builder for ModifySnapshotTier
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifySpotFleetRequest
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
        Builders::LaunchTemplateConfigList.build(input[:launch_template_configs], params, context: context + 'LaunchTemplateConfig') unless input[:launch_template_configs].nil?
        params[context + 'SpotFleetRequestId'] = input[:spot_fleet_request_id].to_s unless input[:spot_fleet_request_id].nil?
        params[context + 'TargetCapacity'] = input[:target_capacity].to_s unless input[:target_capacity].nil?
        params[context + 'OnDemandTargetCapacity'] = input[:on_demand_target_capacity].to_s unless input[:on_demand_target_capacity].nil?
        params[context + 'Context'] = input[:context].to_s unless input[:context].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for LaunchTemplateConfigList
    class LaunchTemplateConfigList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::LaunchTemplateConfig.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for LaunchTemplateConfig
    class LaunchTemplateConfig
      def self.build(input, params, context: nil)
        Builders::FleetLaunchTemplateSpecification.build(input[:launch_template_specification], params, context: context + 'LaunchTemplateSpecification' + '.') unless input[:launch_template_specification].nil?
        Builders::LaunchTemplateOverridesList.build(input[:overrides], params, context: context + 'overrides') unless input[:overrides].nil?
      end
    end

    # List Builder for LaunchTemplateOverridesList
    class LaunchTemplateOverridesList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::LaunchTemplateOverrides.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for LaunchTemplateOverrides
    class LaunchTemplateOverrides
      def self.build(input, params, context: nil)
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'SpotPrice'] = input[:spot_price].to_s unless input[:spot_price].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'WeightedCapacity'] = Hearth::NumberHelper.serialize(input[:weighted_capacity]).to_s unless input[:weighted_capacity].nil?
        params[context + 'Priority'] = Hearth::NumberHelper.serialize(input[:priority]).to_s unless input[:priority].nil?
        Builders::InstanceRequirements.build(input[:instance_requirements], params, context: context + 'InstanceRequirements' + '.') unless input[:instance_requirements].nil?
      end
    end

    # Structure Builder for InstanceRequirements
    class InstanceRequirements
      def self.build(input, params, context: nil)
        Builders::VCpuCountRange.build(input[:v_cpu_count], params, context: context + 'VCpuCount' + '.') unless input[:v_cpu_count].nil?
        Builders::MemoryMiB.build(input[:memory_mi_b], params, context: context + 'MemoryMiB' + '.') unless input[:memory_mi_b].nil?
        Builders::CpuManufacturerSet.build(input[:cpu_manufacturers], params, context: context + 'cpuManufacturerSet') unless input[:cpu_manufacturers].nil?
        Builders::MemoryGiBPerVCpu.build(input[:memory_gi_b_per_v_cpu], params, context: context + 'MemoryGiBPerVCpu' + '.') unless input[:memory_gi_b_per_v_cpu].nil?
        Builders::ExcludedInstanceTypeSet.build(input[:excluded_instance_types], params, context: context + 'excludedInstanceTypeSet') unless input[:excluded_instance_types].nil?
        Builders::InstanceGenerationSet.build(input[:instance_generations], params, context: context + 'instanceGenerationSet') unless input[:instance_generations].nil?
        params[context + 'SpotMaxPricePercentageOverLowestPrice'] = input[:spot_max_price_percentage_over_lowest_price].to_s unless input[:spot_max_price_percentage_over_lowest_price].nil?
        params[context + 'OnDemandMaxPricePercentageOverLowestPrice'] = input[:on_demand_max_price_percentage_over_lowest_price].to_s unless input[:on_demand_max_price_percentage_over_lowest_price].nil?
        params[context + 'BareMetal'] = input[:bare_metal].to_s unless input[:bare_metal].nil?
        params[context + 'BurstablePerformance'] = input[:burstable_performance].to_s unless input[:burstable_performance].nil?
        params[context + 'RequireHibernateSupport'] = input[:require_hibernate_support].to_s unless input[:require_hibernate_support].nil?
        Builders::NetworkInterfaceCount.build(input[:network_interface_count], params, context: context + 'NetworkInterfaceCount' + '.') unless input[:network_interface_count].nil?
        params[context + 'LocalStorage'] = input[:local_storage].to_s unless input[:local_storage].nil?
        Builders::LocalStorageTypeSet.build(input[:local_storage_types], params, context: context + 'localStorageTypeSet') unless input[:local_storage_types].nil?
        Builders::TotalLocalStorageGB.build(input[:total_local_storage_gb], params, context: context + 'TotalLocalStorageGB' + '.') unless input[:total_local_storage_gb].nil?
        Builders::BaselineEbsBandwidthMbps.build(input[:baseline_ebs_bandwidth_mbps], params, context: context + 'BaselineEbsBandwidthMbps' + '.') unless input[:baseline_ebs_bandwidth_mbps].nil?
        Builders::AcceleratorTypeSet.build(input[:accelerator_types], params, context: context + 'acceleratorTypeSet') unless input[:accelerator_types].nil?
        Builders::AcceleratorCount.build(input[:accelerator_count], params, context: context + 'AcceleratorCount' + '.') unless input[:accelerator_count].nil?
        Builders::AcceleratorManufacturerSet.build(input[:accelerator_manufacturers], params, context: context + 'acceleratorManufacturerSet') unless input[:accelerator_manufacturers].nil?
        Builders::AcceleratorNameSet.build(input[:accelerator_names], params, context: context + 'acceleratorNameSet') unless input[:accelerator_names].nil?
        Builders::AcceleratorTotalMemoryMiB.build(input[:accelerator_total_memory_mi_b], params, context: context + 'AcceleratorTotalMemoryMiB' + '.') unless input[:accelerator_total_memory_mi_b].nil?
      end
    end

    # Structure Builder for AcceleratorTotalMemoryMiB
    class AcceleratorTotalMemoryMiB
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    # Structure Builder for AcceleratorCount
    class AcceleratorCount
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    # Structure Builder for BaselineEbsBandwidthMbps
    class BaselineEbsBandwidthMbps
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    # Structure Builder for TotalLocalStorageGB
    class TotalLocalStorageGB
      def self.build(input, params, context: nil)
        params[context + 'Min'] = Hearth::NumberHelper.serialize(input[:min]).to_s unless input[:min].nil?
        params[context + 'Max'] = Hearth::NumberHelper.serialize(input[:max]).to_s unless input[:max].nil?
      end
    end

    # Structure Builder for NetworkInterfaceCount
    class NetworkInterfaceCount
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    # Structure Builder for MemoryGiBPerVCpu
    class MemoryGiBPerVCpu
      def self.build(input, params, context: nil)
        params[context + 'Min'] = Hearth::NumberHelper.serialize(input[:min]).to_s unless input[:min].nil?
        params[context + 'Max'] = Hearth::NumberHelper.serialize(input[:max]).to_s unless input[:max].nil?
      end
    end

    # Structure Builder for MemoryMiB
    class MemoryMiB
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    # Structure Builder for VCpuCountRange
    class VCpuCountRange
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    # Structure Builder for FleetLaunchTemplateSpecification
    class FleetLaunchTemplateSpecification
      def self.build(input, params, context: nil)
        params[context + 'LaunchTemplateId'] = input[:launch_template_id].to_s unless input[:launch_template_id].nil?
        params[context + 'LaunchTemplateName'] = input[:launch_template_name].to_s unless input[:launch_template_name].nil?
        params[context + 'Version'] = input[:version].to_s unless input[:version].nil?
      end
    end

    # Operation Builder for ModifySubnetAttribute
    class ModifySubnetAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifySubnetAttribute'
        params['Version'] = '2016-11-15'
        Builders::AttributeBooleanValue.build(input[:assign_ipv6_address_on_creation], params, context: context + 'AssignIpv6AddressOnCreation' + '.') unless input[:assign_ipv6_address_on_creation].nil?
        Builders::AttributeBooleanValue.build(input[:map_public_ip_on_launch], params, context: context + 'MapPublicIpOnLaunch' + '.') unless input[:map_public_ip_on_launch].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        Builders::AttributeBooleanValue.build(input[:map_customer_owned_ip_on_launch], params, context: context + 'MapCustomerOwnedIpOnLaunch' + '.') unless input[:map_customer_owned_ip_on_launch].nil?
        params[context + 'CustomerOwnedIpv4Pool'] = input[:customer_owned_ipv4_pool].to_s unless input[:customer_owned_ipv4_pool].nil?
        Builders::AttributeBooleanValue.build(input[:enable_dns64], params, context: context + 'EnableDns64' + '.') unless input[:enable_dns64].nil?
        params[context + 'PrivateDnsHostnameTypeOnLaunch'] = input[:private_dns_hostname_type_on_launch].to_s unless input[:private_dns_hostname_type_on_launch].nil?
        Builders::AttributeBooleanValue.build(input[:enable_resource_name_dns_a_record_on_launch], params, context: context + 'EnableResourceNameDnsARecordOnLaunch' + '.') unless input[:enable_resource_name_dns_a_record_on_launch].nil?
        Builders::AttributeBooleanValue.build(input[:enable_resource_name_dns_aaaa_record_on_launch], params, context: context + 'EnableResourceNameDnsAAAARecordOnLaunch' + '.') unless input[:enable_resource_name_dns_aaaa_record_on_launch].nil?
        params[context + 'EnableLniAtDeviceIndex'] = input[:enable_lni_at_device_index].to_s unless input[:enable_lni_at_device_index].nil?
        Builders::AttributeBooleanValue.build(input[:disable_lni_at_device_index], params, context: context + 'DisableLniAtDeviceIndex' + '.') unless input[:disable_lni_at_device_index].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyTrafficMirrorFilterNetworkServices
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
        Builders::TrafficMirrorNetworkServiceList.build(input[:add_network_services], params, context: context + 'AddNetworkService') unless input[:add_network_services].nil?
        Builders::TrafficMirrorNetworkServiceList.build(input[:remove_network_services], params, context: context + 'RemoveNetworkService') unless input[:remove_network_services].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TrafficMirrorNetworkServiceList
    class TrafficMirrorNetworkServiceList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ModifyTrafficMirrorFilterRule
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
        Builders::TrafficMirrorPortRangeRequest.build(input[:destination_port_range], params, context: context + 'DestinationPortRange' + '.') unless input[:destination_port_range].nil?
        Builders::TrafficMirrorPortRangeRequest.build(input[:source_port_range], params, context: context + 'SourcePortRange' + '.') unless input[:source_port_range].nil?
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
        params[context + 'DestinationCidrBlock'] = input[:destination_cidr_block].to_s unless input[:destination_cidr_block].nil?
        params[context + 'SourceCidrBlock'] = input[:source_cidr_block].to_s unless input[:source_cidr_block].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        Builders::TrafficMirrorFilterRuleFieldList.build(input[:remove_fields], params, context: context + 'RemoveField') unless input[:remove_fields].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TrafficMirrorFilterRuleFieldList
    class TrafficMirrorFilterRuleFieldList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ModifyTrafficMirrorSession
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
        Builders::TrafficMirrorSessionFieldList.build(input[:remove_fields], params, context: context + 'RemoveField') unless input[:remove_fields].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TrafficMirrorSessionFieldList
    class TrafficMirrorSessionFieldList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ModifyTransitGateway
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
        Builders::ModifyTransitGatewayOptions.build(input[:options], params, context: context + 'Options' + '.') unless input[:options].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for ModifyTransitGatewayOptions
    class ModifyTransitGatewayOptions
      def self.build(input, params, context: nil)
        Builders::TransitGatewayCidrBlockStringList.build(input[:add_transit_gateway_cidr_blocks], params, context: context + 'AddTransitGatewayCidrBlocks') unless input[:add_transit_gateway_cidr_blocks].nil?
        Builders::TransitGatewayCidrBlockStringList.build(input[:remove_transit_gateway_cidr_blocks], params, context: context + 'RemoveTransitGatewayCidrBlocks') unless input[:remove_transit_gateway_cidr_blocks].nil?
        params[context + 'VpnEcmpSupport'] = input[:vpn_ecmp_support].to_s unless input[:vpn_ecmp_support].nil?
        params[context + 'DnsSupport'] = input[:dns_support].to_s unless input[:dns_support].nil?
        params[context + 'AutoAcceptSharedAttachments'] = input[:auto_accept_shared_attachments].to_s unless input[:auto_accept_shared_attachments].nil?
        params[context + 'DefaultRouteTableAssociation'] = input[:default_route_table_association].to_s unless input[:default_route_table_association].nil?
        params[context + 'AssociationDefaultRouteTableId'] = input[:association_default_route_table_id].to_s unless input[:association_default_route_table_id].nil?
        params[context + 'DefaultRouteTablePropagation'] = input[:default_route_table_propagation].to_s unless input[:default_route_table_propagation].nil?
        params[context + 'PropagationDefaultRouteTableId'] = input[:propagation_default_route_table_id].to_s unless input[:propagation_default_route_table_id].nil?
      end
    end

    # Operation Builder for ModifyTransitGatewayPrefixListReference
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyTransitGatewayVpcAttachment
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
        Builders::TransitGatewaySubnetIdList.build(input[:add_subnet_ids], params, context: context + 'AddSubnetIds') unless input[:add_subnet_ids].nil?
        Builders::TransitGatewaySubnetIdList.build(input[:remove_subnet_ids], params, context: context + 'RemoveSubnetIds') unless input[:remove_subnet_ids].nil?
        Builders::ModifyTransitGatewayVpcAttachmentRequestOptions.build(input[:options], params, context: context + 'Options' + '.') unless input[:options].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for ModifyTransitGatewayVpcAttachmentRequestOptions
    class ModifyTransitGatewayVpcAttachmentRequestOptions
      def self.build(input, params, context: nil)
        params[context + 'DnsSupport'] = input[:dns_support].to_s unless input[:dns_support].nil?
        params[context + 'Ipv6Support'] = input[:ipv6_support].to_s unless input[:ipv6_support].nil?
        params[context + 'ApplianceModeSupport'] = input[:appliance_mode_support].to_s unless input[:appliance_mode_support].nil?
      end
    end

    # Operation Builder for ModifyVolume
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyVolumeAttribute
    class ModifyVolumeAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVolumeAttribute'
        params['Version'] = '2016-11-15'
        Builders::AttributeBooleanValue.build(input[:auto_enable_io], params, context: context + 'AutoEnableIO' + '.') unless input[:auto_enable_io].nil?
        params[context + 'VolumeId'] = input[:volume_id].to_s unless input[:volume_id].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyVpcAttribute
    class ModifyVpcAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVpcAttribute'
        params['Version'] = '2016-11-15'
        Builders::AttributeBooleanValue.build(input[:enable_dns_hostnames], params, context: context + 'EnableDnsHostnames' + '.') unless input[:enable_dns_hostnames].nil?
        Builders::AttributeBooleanValue.build(input[:enable_dns_support], params, context: context + 'EnableDnsSupport' + '.') unless input[:enable_dns_support].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyVpcEndpoint
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
        Builders::VpcEndpointRouteTableIdList.build(input[:add_route_table_ids], params, context: context + 'AddRouteTableId') unless input[:add_route_table_ids].nil?
        Builders::VpcEndpointRouteTableIdList.build(input[:remove_route_table_ids], params, context: context + 'RemoveRouteTableId') unless input[:remove_route_table_ids].nil?
        Builders::VpcEndpointSubnetIdList.build(input[:add_subnet_ids], params, context: context + 'AddSubnetId') unless input[:add_subnet_ids].nil?
        Builders::VpcEndpointSubnetIdList.build(input[:remove_subnet_ids], params, context: context + 'RemoveSubnetId') unless input[:remove_subnet_ids].nil?
        Builders::VpcEndpointSecurityGroupIdList.build(input[:add_security_group_ids], params, context: context + 'AddSecurityGroupId') unless input[:add_security_group_ids].nil?
        Builders::VpcEndpointSecurityGroupIdList.build(input[:remove_security_group_ids], params, context: context + 'RemoveSecurityGroupId') unless input[:remove_security_group_ids].nil?
        params[context + 'IpAddressType'] = input[:ip_address_type].to_s unless input[:ip_address_type].nil?
        Builders::DnsOptionsSpecification.build(input[:dns_options], params, context: context + 'DnsOptions' + '.') unless input[:dns_options].nil?
        params[context + 'PrivateDnsEnabled'] = input[:private_dns_enabled].to_s unless input[:private_dns_enabled].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyVpcEndpointConnectionNotification
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
        Builders::ValueStringList.build(input[:connection_events], params, context: context + 'ConnectionEvents') unless input[:connection_events].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyVpcEndpointServiceConfiguration
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
        Builders::ValueStringList.build(input[:add_network_load_balancer_arns], params, context: context + 'AddNetworkLoadBalancerArn') unless input[:add_network_load_balancer_arns].nil?
        Builders::ValueStringList.build(input[:remove_network_load_balancer_arns], params, context: context + 'RemoveNetworkLoadBalancerArn') unless input[:remove_network_load_balancer_arns].nil?
        Builders::ValueStringList.build(input[:add_gateway_load_balancer_arns], params, context: context + 'AddGatewayLoadBalancerArn') unless input[:add_gateway_load_balancer_arns].nil?
        Builders::ValueStringList.build(input[:remove_gateway_load_balancer_arns], params, context: context + 'RemoveGatewayLoadBalancerArn') unless input[:remove_gateway_load_balancer_arns].nil?
        Builders::ValueStringList.build(input[:add_supported_ip_address_types], params, context: context + 'AddSupportedIpAddressType') unless input[:add_supported_ip_address_types].nil?
        Builders::ValueStringList.build(input[:remove_supported_ip_address_types], params, context: context + 'RemoveSupportedIpAddressType') unless input[:remove_supported_ip_address_types].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyVpcEndpointServicePayerResponsibility
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyVpcEndpointServicePermissions
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
        Builders::ValueStringList.build(input[:add_allowed_principals], params, context: context + 'AddAllowedPrincipals') unless input[:add_allowed_principals].nil?
        Builders::ValueStringList.build(input[:remove_allowed_principals], params, context: context + 'RemoveAllowedPrincipals') unless input[:remove_allowed_principals].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyVpcPeeringConnectionOptions
    class ModifyVpcPeeringConnectionOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyVpcPeeringConnectionOptions'
        params['Version'] = '2016-11-15'
        Builders::PeeringConnectionOptionsRequest.build(input[:accepter_peering_connection_options], params, context: context + 'AccepterPeeringConnectionOptions' + '.') unless input[:accepter_peering_connection_options].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::PeeringConnectionOptionsRequest.build(input[:requester_peering_connection_options], params, context: context + 'RequesterPeeringConnectionOptions' + '.') unless input[:requester_peering_connection_options].nil?
        params[context + 'VpcPeeringConnectionId'] = input[:vpc_peering_connection_id].to_s unless input[:vpc_peering_connection_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for PeeringConnectionOptionsRequest
    class PeeringConnectionOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'AllowDnsResolutionFromRemoteVpc'] = input[:allow_dns_resolution_from_remote_vpc].to_s unless input[:allow_dns_resolution_from_remote_vpc].nil?
        params[context + 'AllowEgressFromLocalClassicLinkToRemoteVpc'] = input[:allow_egress_from_local_classic_link_to_remote_vpc].to_s unless input[:allow_egress_from_local_classic_link_to_remote_vpc].nil?
        params[context + 'AllowEgressFromLocalVpcToRemoteClassicLink'] = input[:allow_egress_from_local_vpc_to_remote_classic_link].to_s unless input[:allow_egress_from_local_vpc_to_remote_classic_link].nil?
      end
    end

    # Operation Builder for ModifyVpcTenancy
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyVpnConnection
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyVpnConnectionOptions
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyVpnTunnelCertificate
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyVpnTunnelOptions
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
        Builders::ModifyVpnTunnelOptionsSpecification.build(input[:tunnel_options], params, context: context + 'TunnelOptions' + '.') unless input[:tunnel_options].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for ModifyVpnTunnelOptionsSpecification
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
        Builders::Phase1EncryptionAlgorithmsRequestList.build(input[:phase1_encryption_algorithms], params, context: context + 'Phase1EncryptionAlgorithm') unless input[:phase1_encryption_algorithms].nil?
        Builders::Phase2EncryptionAlgorithmsRequestList.build(input[:phase2_encryption_algorithms], params, context: context + 'Phase2EncryptionAlgorithm') unless input[:phase2_encryption_algorithms].nil?
        Builders::Phase1IntegrityAlgorithmsRequestList.build(input[:phase1_integrity_algorithms], params, context: context + 'Phase1IntegrityAlgorithm') unless input[:phase1_integrity_algorithms].nil?
        Builders::Phase2IntegrityAlgorithmsRequestList.build(input[:phase2_integrity_algorithms], params, context: context + 'Phase2IntegrityAlgorithm') unless input[:phase2_integrity_algorithms].nil?
        Builders::Phase1DHGroupNumbersRequestList.build(input[:phase1_dh_group_numbers], params, context: context + 'Phase1DHGroupNumber') unless input[:phase1_dh_group_numbers].nil?
        Builders::Phase2DHGroupNumbersRequestList.build(input[:phase2_dh_group_numbers], params, context: context + 'Phase2DHGroupNumber') unless input[:phase2_dh_group_numbers].nil?
        Builders::IKEVersionsRequestList.build(input[:ike_versions], params, context: context + 'IKEVersion') unless input[:ike_versions].nil?
        params[context + 'StartupAction'] = input[:startup_action].to_s unless input[:startup_action].nil?
      end
    end

    # Operation Builder for MonitorInstances
    class MonitorInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'MonitorInstances'
        params['Version'] = '2016-11-15'
        Builders::InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for MoveAddressToVpc
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for MoveByoipCidrToIpam
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ProvisionByoipCidr
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
        Builders::CidrAuthorizationContext.build(input[:cidr_authorization_context], params, context: context + 'CidrAuthorizationContext' + '.') unless input[:cidr_authorization_context].nil?
        params[context + 'PubliclyAdvertisable'] = input[:publicly_advertisable].to_s unless input[:publicly_advertisable].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::TagSpecificationList.build(input[:pool_tag_specifications], params, context: context + 'PoolTagSpecification') unless input[:pool_tag_specifications].nil?
        params[context + 'MultiRegion'] = input[:multi_region].to_s unless input[:multi_region].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for CidrAuthorizationContext
    class CidrAuthorizationContext
      def self.build(input, params, context: nil)
        params[context + 'Message'] = input[:message].to_s unless input[:message].nil?
        params[context + 'Signature'] = input[:signature].to_s unless input[:signature].nil?
      end
    end

    # Operation Builder for ProvisionIpamPoolCidr
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
        Builders::IpamCidrAuthorizationContext.build(input[:cidr_authorization_context], params, context: context + 'CidrAuthorizationContext' + '.') unless input[:cidr_authorization_context].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for IpamCidrAuthorizationContext
    class IpamCidrAuthorizationContext
      def self.build(input, params, context: nil)
        params[context + 'Message'] = input[:message].to_s unless input[:message].nil?
        params[context + 'Signature'] = input[:signature].to_s unless input[:signature].nil?
      end
    end

    # Operation Builder for ProvisionPublicIpv4PoolCidr
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PurchaseHostReservation
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
        Builders::RequestHostIdSet.build(input[:host_id_set], params, context: context + 'HostIdSet') unless input[:host_id_set].nil?
        params[context + 'LimitPrice'] = input[:limit_price].to_s unless input[:limit_price].nil?
        params[context + 'OfferingId'] = input[:offering_id].to_s unless input[:offering_id].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PurchaseReservedInstancesOffering
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
        Builders::ReservedInstanceLimitPrice.build(input[:limit_price], params, context: context + 'LimitPrice' + '.') unless input[:limit_price].nil?
        params[context + 'PurchaseTime'] = Hearth::TimeHelper.to_date_time(input[:purchase_time]) unless input[:purchase_time].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for ReservedInstanceLimitPrice
    class ReservedInstanceLimitPrice
      def self.build(input, params, context: nil)
        params[context + 'Amount'] = Hearth::NumberHelper.serialize(input[:amount]).to_s unless input[:amount].nil?
        params[context + 'CurrencyCode'] = input[:currency_code].to_s unless input[:currency_code].nil?
      end
    end

    # Operation Builder for PurchaseScheduledInstances
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
        Builders::PurchaseRequestSet.build(input[:purchase_requests], params, context: context + 'PurchaseRequest') unless input[:purchase_requests].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for PurchaseRequestSet
    class PurchaseRequestSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::PurchaseRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for PurchaseRequest
    class PurchaseRequest
      def self.build(input, params, context: nil)
        params[context + 'InstanceCount'] = input[:instance_count].to_s unless input[:instance_count].nil?
        params[context + 'PurchaseToken'] = input[:purchase_token].to_s unless input[:purchase_token].nil?
      end
    end

    # Operation Builder for RebootInstances
    class RebootInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RebootInstances'
        params['Version'] = '2016-11-15'
        Builders::InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RegisterImage
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
        Builders::BlockDeviceMappingRequestList.build(input[:block_device_mappings], params, context: context + 'BlockDeviceMapping') unless input[:block_device_mappings].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'EnaSupport'] = input[:ena_support].to_s unless input[:ena_support].nil?
        params[context + 'KernelId'] = input[:kernel_id].to_s unless input[:kernel_id].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        Builders::BillingProductList.build(input[:billing_products], params, context: context + 'BillingProduct') unless input[:billing_products].nil?
        params[context + 'RamdiskId'] = input[:ramdisk_id].to_s unless input[:ramdisk_id].nil?
        params[context + 'RootDeviceName'] = input[:root_device_name].to_s unless input[:root_device_name].nil?
        params[context + 'SriovNetSupport'] = input[:sriov_net_support].to_s unless input[:sriov_net_support].nil?
        params[context + 'VirtualizationType'] = input[:virtualization_type].to_s unless input[:virtualization_type].nil?
        params[context + 'BootMode'] = input[:boot_mode].to_s unless input[:boot_mode].nil?
        params[context + 'TpmSupport'] = input[:tpm_support].to_s unless input[:tpm_support].nil?
        params[context + 'UefiData'] = input[:uefi_data].to_s unless input[:uefi_data].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for BillingProductList
    class BillingProductList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for RegisterInstanceEventNotificationAttributes
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
        Builders::RegisterInstanceTagAttributeRequest.build(input[:instance_tag_attribute], params, context: context + 'InstanceTagAttribute' + '.') unless input[:instance_tag_attribute].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for RegisterInstanceTagAttributeRequest
    class RegisterInstanceTagAttributeRequest
      def self.build(input, params, context: nil)
        params[context + 'IncludeAllTagsOfInstance'] = input[:include_all_tags_of_instance].to_s unless input[:include_all_tags_of_instance].nil?
        Builders::InstanceTagKeySet.build(input[:instance_tag_keys], params, context: context + 'InstanceTagKey') unless input[:instance_tag_keys].nil?
      end
    end

    # Operation Builder for RegisterTransitGatewayMulticastGroupMembers
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
        Builders::TransitGatewayNetworkInterfaceIdList.build(input[:network_interface_ids], params, context: context + 'NetworkInterfaceIds') unless input[:network_interface_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RegisterTransitGatewayMulticastGroupSources
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
        Builders::TransitGatewayNetworkInterfaceIdList.build(input[:network_interface_ids], params, context: context + 'NetworkInterfaceIds') unless input[:network_interface_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RejectTransitGatewayMulticastDomainAssociations
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
        Builders::ValueStringList.build(input[:subnet_ids], params, context: context + 'SubnetIds') unless input[:subnet_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RejectTransitGatewayPeeringAttachment
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RejectTransitGatewayVpcAttachment
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RejectVpcEndpointConnections
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
        Builders::VpcEndpointIdList.build(input[:vpc_endpoint_ids], params, context: context + 'VpcEndpointId') unless input[:vpc_endpoint_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RejectVpcPeeringConnection
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ReleaseAddress
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ReleaseHosts
    class ReleaseHosts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ReleaseHosts'
        params['Version'] = '2016-11-15'
        Builders::RequestHostIdList.build(input[:host_ids], params, context: context + 'hostId') unless input[:host_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ReleaseIpamPoolAllocation
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ReplaceIamInstanceProfileAssociation
    class ReplaceIamInstanceProfileAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ReplaceIamInstanceProfileAssociation'
        params['Version'] = '2016-11-15'
        Builders::IamInstanceProfileSpecification.build(input[:iam_instance_profile], params, context: context + 'IamInstanceProfile' + '.') unless input[:iam_instance_profile].nil?
        params[context + 'AssociationId'] = input[:association_id].to_s unless input[:association_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ReplaceNetworkAclAssociation
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ReplaceNetworkAclEntry
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
        Builders::IcmpTypeCode.build(input[:icmp_type_code], params, context: context + 'Icmp' + '.') unless input[:icmp_type_code].nil?
        params[context + 'Ipv6CidrBlock'] = input[:ipv6_cidr_block].to_s unless input[:ipv6_cidr_block].nil?
        params[context + 'NetworkAclId'] = input[:network_acl_id].to_s unless input[:network_acl_id].nil?
        Builders::PortRange.build(input[:port_range], params, context: context + 'PortRange' + '.') unless input[:port_range].nil?
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
        params[context + 'RuleAction'] = input[:rule_action].to_s unless input[:rule_action].nil?
        params[context + 'RuleNumber'] = input[:rule_number].to_s unless input[:rule_number].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ReplaceRoute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ReplaceRouteTableAssociation
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ReplaceTransitGatewayRoute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ReportInstanceStatus
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
        Builders::InstanceIdStringList.build(input[:instances], params, context: context + 'instanceId') unless input[:instances].nil?
        Builders::ReasonCodesList.build(input[:reason_codes], params, context: context + 'reasonCode') unless input[:reason_codes].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'Status'] = input[:status].to_s unless input[:status].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ReasonCodesList
    class ReasonCodesList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for RequestSpotFleet
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
        Builders::SpotFleetRequestConfigData.build(input[:spot_fleet_request_config], params, context: context + 'SpotFleetRequestConfig' + '.') unless input[:spot_fleet_request_config].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for SpotFleetRequestConfigData
    class SpotFleetRequestConfigData
      def self.build(input, params, context: nil)
        params[context + 'AllocationStrategy'] = input[:allocation_strategy].to_s unless input[:allocation_strategy].nil?
        params[context + 'OnDemandAllocationStrategy'] = input[:on_demand_allocation_strategy].to_s unless input[:on_demand_allocation_strategy].nil?
        Builders::SpotMaintenanceStrategies.build(input[:spot_maintenance_strategies], params, context: context + 'SpotMaintenanceStrategies' + '.') unless input[:spot_maintenance_strategies].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'ExcessCapacityTerminationPolicy'] = input[:excess_capacity_termination_policy].to_s unless input[:excess_capacity_termination_policy].nil?
        params[context + 'FulfilledCapacity'] = Hearth::NumberHelper.serialize(input[:fulfilled_capacity]).to_s unless input[:fulfilled_capacity].nil?
        params[context + 'OnDemandFulfilledCapacity'] = Hearth::NumberHelper.serialize(input[:on_demand_fulfilled_capacity]).to_s unless input[:on_demand_fulfilled_capacity].nil?
        params[context + 'IamFleetRole'] = input[:iam_fleet_role].to_s unless input[:iam_fleet_role].nil?
        Builders::LaunchSpecsList.build(input[:launch_specifications], params, context: context + 'launchSpecifications') unless input[:launch_specifications].nil?
        Builders::LaunchTemplateConfigList.build(input[:launch_template_configs], params, context: context + 'launchTemplateConfigs') unless input[:launch_template_configs].nil?
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
        Builders::LoadBalancersConfig.build(input[:load_balancers_config], params, context: context + 'LoadBalancersConfig' + '.') unless input[:load_balancers_config].nil?
        params[context + 'InstancePoolsToUseCount'] = input[:instance_pools_to_use_count].to_s unless input[:instance_pools_to_use_count].nil?
        params[context + 'Context'] = input[:context].to_s unless input[:context].nil?
        params[context + 'TargetCapacityUnitType'] = input[:target_capacity_unit_type].to_s unless input[:target_capacity_unit_type].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
      end
    end

    # Structure Builder for LoadBalancersConfig
    class LoadBalancersConfig
      def self.build(input, params, context: nil)
        Builders::ClassicLoadBalancersConfig.build(input[:classic_load_balancers_config], params, context: context + 'ClassicLoadBalancersConfig' + '.') unless input[:classic_load_balancers_config].nil?
        Builders::TargetGroupsConfig.build(input[:target_groups_config], params, context: context + 'TargetGroupsConfig' + '.') unless input[:target_groups_config].nil?
      end
    end

    # Structure Builder for TargetGroupsConfig
    class TargetGroupsConfig
      def self.build(input, params, context: nil)
        Builders::TargetGroups.build(input[:target_groups], params, context: context + 'targetGroups') unless input[:target_groups].nil?
      end
    end

    # List Builder for TargetGroups
    class TargetGroups
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::TargetGroup.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for TargetGroup
    class TargetGroup
      def self.build(input, params, context: nil)
        params[context + 'Arn'] = input[:arn].to_s unless input[:arn].nil?
      end
    end

    # Structure Builder for ClassicLoadBalancersConfig
    class ClassicLoadBalancersConfig
      def self.build(input, params, context: nil)
        Builders::ClassicLoadBalancers.build(input[:classic_load_balancers], params, context: context + 'classicLoadBalancers') unless input[:classic_load_balancers].nil?
      end
    end

    # List Builder for ClassicLoadBalancers
    class ClassicLoadBalancers
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ClassicLoadBalancer.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ClassicLoadBalancer
    class ClassicLoadBalancer
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
      end
    end

    # List Builder for LaunchSpecsList
    class LaunchSpecsList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::SpotFleetLaunchSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for SpotFleetLaunchSpecification
    class SpotFleetLaunchSpecification
      def self.build(input, params, context: nil)
        Builders::GroupIdentifierList.build(input[:security_groups], params, context: context + 'groupSet') unless input[:security_groups].nil?
        params[context + 'AddressingType'] = input[:addressing_type].to_s unless input[:addressing_type].nil?
        Builders::BlockDeviceMappingList.build(input[:block_device_mappings], params, context: context + 'blockDeviceMapping') unless input[:block_device_mappings].nil?
        params[context + 'EbsOptimized'] = input[:ebs_optimized].to_s unless input[:ebs_optimized].nil?
        Builders::IamInstanceProfileSpecification.build(input[:iam_instance_profile], params, context: context + 'IamInstanceProfile' + '.') unless input[:iam_instance_profile].nil?
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'KernelId'] = input[:kernel_id].to_s unless input[:kernel_id].nil?
        params[context + 'KeyName'] = input[:key_name].to_s unless input[:key_name].nil?
        Builders::SpotFleetMonitoring.build(input[:monitoring], params, context: context + 'Monitoring' + '.') unless input[:monitoring].nil?
        Builders::InstanceNetworkInterfaceSpecificationList.build(input[:network_interfaces], params, context: context + 'networkInterfaceSet') unless input[:network_interfaces].nil?
        Builders::SpotPlacement.build(input[:placement], params, context: context + 'Placement' + '.') unless input[:placement].nil?
        params[context + 'RamdiskId'] = input[:ramdisk_id].to_s unless input[:ramdisk_id].nil?
        params[context + 'SpotPrice'] = input[:spot_price].to_s unless input[:spot_price].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'UserData'] = input[:user_data].to_s unless input[:user_data].nil?
        params[context + 'WeightedCapacity'] = Hearth::NumberHelper.serialize(input[:weighted_capacity]).to_s unless input[:weighted_capacity].nil?
        Builders::SpotFleetTagSpecificationList.build(input[:tag_specifications], params, context: context + 'tagSpecificationSet') unless input[:tag_specifications].nil?
        Builders::InstanceRequirements.build(input[:instance_requirements], params, context: context + 'InstanceRequirements' + '.') unless input[:instance_requirements].nil?
      end
    end

    # List Builder for SpotFleetTagSpecificationList
    class SpotFleetTagSpecificationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::SpotFleetTagSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for SpotFleetTagSpecification
    class SpotFleetTagSpecification
      def self.build(input, params, context: nil)
        params[context + 'ResourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'tag') unless input[:tags].nil?
      end
    end

    # Structure Builder for SpotPlacement
    class SpotPlacement
      def self.build(input, params, context: nil)
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'Tenancy'] = input[:tenancy].to_s unless input[:tenancy].nil?
      end
    end

    # List Builder for InstanceNetworkInterfaceSpecificationList
    class InstanceNetworkInterfaceSpecificationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::InstanceNetworkInterfaceSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for InstanceNetworkInterfaceSpecification
    class InstanceNetworkInterfaceSpecification
      def self.build(input, params, context: nil)
        params[context + 'AssociatePublicIpAddress'] = input[:associate_public_ip_address].to_s unless input[:associate_public_ip_address].nil?
        params[context + 'DeleteOnTermination'] = input[:delete_on_termination].to_s unless input[:delete_on_termination].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DeviceIndex'] = input[:device_index].to_s unless input[:device_index].nil?
        Builders::SecurityGroupIdStringList.build(input[:groups], params, context: context + 'SecurityGroupId') unless input[:groups].nil?
        params[context + 'Ipv6AddressCount'] = input[:ipv6_address_count].to_s unless input[:ipv6_address_count].nil?
        Builders::InstanceIpv6AddressList.build(input[:ipv6_addresses], params, context: context + 'ipv6AddressesSet') unless input[:ipv6_addresses].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        params[context + 'PrivateIpAddress'] = input[:private_ip_address].to_s unless input[:private_ip_address].nil?
        Builders::PrivateIpAddressSpecificationList.build(input[:private_ip_addresses], params, context: context + 'privateIpAddressesSet') unless input[:private_ip_addresses].nil?
        params[context + 'SecondaryPrivateIpAddressCount'] = input[:secondary_private_ip_address_count].to_s unless input[:secondary_private_ip_address_count].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'AssociateCarrierIpAddress'] = input[:associate_carrier_ip_address].to_s unless input[:associate_carrier_ip_address].nil?
        params[context + 'InterfaceType'] = input[:interface_type].to_s unless input[:interface_type].nil?
        params[context + 'NetworkCardIndex'] = input[:network_card_index].to_s unless input[:network_card_index].nil?
        Builders::Ipv4PrefixList.build(input[:ipv4_prefixes], params, context: context + 'Ipv4Prefix') unless input[:ipv4_prefixes].nil?
        params[context + 'Ipv4PrefixCount'] = input[:ipv4_prefix_count].to_s unless input[:ipv4_prefix_count].nil?
        Builders::Ipv6PrefixList.build(input[:ipv6_prefixes], params, context: context + 'Ipv6Prefix') unless input[:ipv6_prefixes].nil?
        params[context + 'Ipv6PrefixCount'] = input[:ipv6_prefix_count].to_s unless input[:ipv6_prefix_count].nil?
      end
    end

    # Structure Builder for SpotFleetMonitoring
    class SpotFleetMonitoring
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
      end
    end

    # List Builder for BlockDeviceMappingList
    class BlockDeviceMappingList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::BlockDeviceMapping.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # List Builder for GroupIdentifierList
    class GroupIdentifierList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::GroupIdentifier.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for GroupIdentifier
    class GroupIdentifier
      def self.build(input, params, context: nil)
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'GroupId'] = input[:group_id].to_s unless input[:group_id].nil?
      end
    end

    # Structure Builder for SpotMaintenanceStrategies
    class SpotMaintenanceStrategies
      def self.build(input, params, context: nil)
        Builders::SpotCapacityRebalance.build(input[:capacity_rebalance], params, context: context + 'CapacityRebalance' + '.') unless input[:capacity_rebalance].nil?
      end
    end

    # Structure Builder for SpotCapacityRebalance
    class SpotCapacityRebalance
      def self.build(input, params, context: nil)
        params[context + 'ReplacementStrategy'] = input[:replacement_strategy].to_s unless input[:replacement_strategy].nil?
        params[context + 'TerminationDelay'] = input[:termination_delay].to_s unless input[:termination_delay].nil?
      end
    end

    # Operation Builder for RequestSpotInstances
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
        Builders::RequestSpotLaunchSpecification.build(input[:launch_specification], params, context: context + 'LaunchSpecification' + '.') unless input[:launch_specification].nil?
        params[context + 'SpotPrice'] = input[:spot_price].to_s unless input[:spot_price].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'ValidFrom'] = Hearth::TimeHelper.to_date_time(input[:valid_from]) unless input[:valid_from].nil?
        params[context + 'ValidUntil'] = Hearth::TimeHelper.to_date_time(input[:valid_until]) unless input[:valid_until].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'InstanceInterruptionBehavior'] = input[:instance_interruption_behavior].to_s unless input[:instance_interruption_behavior].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for RequestSpotLaunchSpecification
    class RequestSpotLaunchSpecification
      def self.build(input, params, context: nil)
        Builders::RequestSpotLaunchSpecificationSecurityGroupIdList.build(input[:security_group_ids], params, context: context + 'SecurityGroupId') unless input[:security_group_ids].nil?
        Builders::RequestSpotLaunchSpecificationSecurityGroupList.build(input[:security_groups], params, context: context + 'SecurityGroup') unless input[:security_groups].nil?
        params[context + 'AddressingType'] = input[:addressing_type].to_s unless input[:addressing_type].nil?
        Builders::BlockDeviceMappingList.build(input[:block_device_mappings], params, context: context + 'blockDeviceMapping') unless input[:block_device_mappings].nil?
        params[context + 'EbsOptimized'] = input[:ebs_optimized].to_s unless input[:ebs_optimized].nil?
        Builders::IamInstanceProfileSpecification.build(input[:iam_instance_profile], params, context: context + 'IamInstanceProfile' + '.') unless input[:iam_instance_profile].nil?
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'KernelId'] = input[:kernel_id].to_s unless input[:kernel_id].nil?
        params[context + 'KeyName'] = input[:key_name].to_s unless input[:key_name].nil?
        Builders::RunInstancesMonitoringEnabled.build(input[:monitoring], params, context: context + 'Monitoring' + '.') unless input[:monitoring].nil?
        Builders::InstanceNetworkInterfaceSpecificationList.build(input[:network_interfaces], params, context: context + 'NetworkInterface') unless input[:network_interfaces].nil?
        Builders::SpotPlacement.build(input[:placement], params, context: context + 'Placement' + '.') unless input[:placement].nil?
        params[context + 'RamdiskId'] = input[:ramdisk_id].to_s unless input[:ramdisk_id].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'UserData'] = input[:user_data].to_s unless input[:user_data].nil?
      end
    end

    # Structure Builder for RunInstancesMonitoringEnabled
    class RunInstancesMonitoringEnabled
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
      end
    end

    # List Builder for RequestSpotLaunchSpecificationSecurityGroupList
    class RequestSpotLaunchSpecificationSecurityGroupList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for RequestSpotLaunchSpecificationSecurityGroupIdList
    class RequestSpotLaunchSpecificationSecurityGroupIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ResetAddressAttribute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ResetEbsDefaultKmsKeyId
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ResetFpgaImageAttribute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ResetImageAttribute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ResetInstanceAttribute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ResetNetworkInterfaceAttribute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ResetSnapshotAttribute
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RestoreAddressToClassic
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RestoreImageFromRecycleBin
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RestoreManagedPrefixListVersion
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RestoreSnapshotFromRecycleBin
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RestoreSnapshotTier
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RevokeClientVpnIngress
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RevokeSecurityGroupEgress
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
        Builders::IpPermissionList.build(input[:ip_permissions], params, context: context + 'ipPermissions') unless input[:ip_permissions].nil?
        Builders::SecurityGroupRuleIdList.build(input[:security_group_rule_ids], params, context: context + 'SecurityGroupRuleId') unless input[:security_group_rule_ids].nil?
        params[context + 'CidrIp'] = input[:cidr_ip].to_s unless input[:cidr_ip].nil?
        params[context + 'FromPort'] = input[:from_port].to_s unless input[:from_port].nil?
        params[context + 'IpProtocol'] = input[:ip_protocol].to_s unless input[:ip_protocol].nil?
        params[context + 'ToPort'] = input[:to_port].to_s unless input[:to_port].nil?
        params[context + 'SourceSecurityGroupName'] = input[:source_security_group_name].to_s unless input[:source_security_group_name].nil?
        params[context + 'SourceSecurityGroupOwnerId'] = input[:source_security_group_owner_id].to_s unless input[:source_security_group_owner_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RevokeSecurityGroupIngress
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
        Builders::IpPermissionList.build(input[:ip_permissions], params, context: context + 'IpPermissions') unless input[:ip_permissions].nil?
        params[context + 'IpProtocol'] = input[:ip_protocol].to_s unless input[:ip_protocol].nil?
        params[context + 'SourceSecurityGroupName'] = input[:source_security_group_name].to_s unless input[:source_security_group_name].nil?
        params[context + 'SourceSecurityGroupOwnerId'] = input[:source_security_group_owner_id].to_s unless input[:source_security_group_owner_id].nil?
        params[context + 'ToPort'] = input[:to_port].to_s unless input[:to_port].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::SecurityGroupRuleIdList.build(input[:security_group_rule_ids], params, context: context + 'SecurityGroupRuleId') unless input[:security_group_rule_ids].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RunInstances
    class RunInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RunInstances'
        params['Version'] = '2016-11-15'
        Builders::BlockDeviceMappingRequestList.build(input[:block_device_mappings], params, context: context + 'BlockDeviceMapping') unless input[:block_device_mappings].nil?
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'Ipv6AddressCount'] = input[:ipv6_address_count].to_s unless input[:ipv6_address_count].nil?
        Builders::InstanceIpv6AddressList.build(input[:ipv6_addresses], params, context: context + 'Ipv6Address') unless input[:ipv6_addresses].nil?
        params[context + 'KernelId'] = input[:kernel_id].to_s unless input[:kernel_id].nil?
        params[context + 'KeyName'] = input[:key_name].to_s unless input[:key_name].nil?
        params[context + 'MaxCount'] = input[:max_count].to_s unless input[:max_count].nil?
        params[context + 'MinCount'] = input[:min_count].to_s unless input[:min_count].nil?
        Builders::RunInstancesMonitoringEnabled.build(input[:monitoring], params, context: context + 'Monitoring' + '.') unless input[:monitoring].nil?
        Builders::Placement.build(input[:placement], params, context: context + 'Placement' + '.') unless input[:placement].nil?
        params[context + 'RamdiskId'] = input[:ramdisk_id].to_s unless input[:ramdisk_id].nil?
        Builders::SecurityGroupIdStringList.build(input[:security_group_ids], params, context: context + 'SecurityGroupId') unless input[:security_group_ids].nil?
        Builders::SecurityGroupStringList.build(input[:security_groups], params, context: context + 'SecurityGroup') unless input[:security_groups].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'UserData'] = input[:user_data].to_s unless input[:user_data].nil?
        params[context + 'AdditionalInfo'] = input[:additional_info].to_s unless input[:additional_info].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        params[context + 'DisableApiTermination'] = input[:disable_api_termination].to_s unless input[:disable_api_termination].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'EbsOptimized'] = input[:ebs_optimized].to_s unless input[:ebs_optimized].nil?
        Builders::IamInstanceProfileSpecification.build(input[:iam_instance_profile], params, context: context + 'IamInstanceProfile' + '.') unless input[:iam_instance_profile].nil?
        params[context + 'InstanceInitiatedShutdownBehavior'] = input[:instance_initiated_shutdown_behavior].to_s unless input[:instance_initiated_shutdown_behavior].nil?
        Builders::InstanceNetworkInterfaceSpecificationList.build(input[:network_interfaces], params, context: context + 'networkInterface') unless input[:network_interfaces].nil?
        params[context + 'PrivateIpAddress'] = input[:private_ip_address].to_s unless input[:private_ip_address].nil?
        Builders::ElasticGpuSpecifications.build(input[:elastic_gpu_specification], params, context: context + 'ElasticGpuSpecification') unless input[:elastic_gpu_specification].nil?
        Builders::ElasticInferenceAccelerators.build(input[:elastic_inference_accelerators], params, context: context + 'ElasticInferenceAccelerator') unless input[:elastic_inference_accelerators].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        Builders::LaunchTemplateSpecification.build(input[:launch_template], params, context: context + 'LaunchTemplate' + '.') unless input[:launch_template].nil?
        Builders::InstanceMarketOptionsRequest.build(input[:instance_market_options], params, context: context + 'InstanceMarketOptions' + '.') unless input[:instance_market_options].nil?
        Builders::CreditSpecificationRequest.build(input[:credit_specification], params, context: context + 'CreditSpecification' + '.') unless input[:credit_specification].nil?
        Builders::CpuOptionsRequest.build(input[:cpu_options], params, context: context + 'CpuOptions' + '.') unless input[:cpu_options].nil?
        Builders::CapacityReservationSpecification.build(input[:capacity_reservation_specification], params, context: context + 'CapacityReservationSpecification' + '.') unless input[:capacity_reservation_specification].nil?
        Builders::HibernationOptionsRequest.build(input[:hibernation_options], params, context: context + 'HibernationOptions' + '.') unless input[:hibernation_options].nil?
        Builders::LicenseSpecificationListRequest.build(input[:license_specifications], params, context: context + 'LicenseSpecification') unless input[:license_specifications].nil?
        Builders::InstanceMetadataOptionsRequest.build(input[:metadata_options], params, context: context + 'MetadataOptions' + '.') unless input[:metadata_options].nil?
        Builders::EnclaveOptionsRequest.build(input[:enclave_options], params, context: context + 'EnclaveOptions' + '.') unless input[:enclave_options].nil?
        Builders::PrivateDnsNameOptionsRequest.build(input[:private_dns_name_options], params, context: context + 'PrivateDnsNameOptions' + '.') unless input[:private_dns_name_options].nil?
        Builders::InstanceMaintenanceOptionsRequest.build(input[:maintenance_options], params, context: context + 'MaintenanceOptions' + '.') unless input[:maintenance_options].nil?
        params[context + 'DisableApiStop'] = input[:disable_api_stop].to_s unless input[:disable_api_stop].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for InstanceMaintenanceOptionsRequest
    class InstanceMaintenanceOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'AutoRecovery'] = input[:auto_recovery].to_s unless input[:auto_recovery].nil?
      end
    end

    # Structure Builder for PrivateDnsNameOptionsRequest
    class PrivateDnsNameOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'HostnameType'] = input[:hostname_type].to_s unless input[:hostname_type].nil?
        params[context + 'EnableResourceNameDnsARecord'] = input[:enable_resource_name_dns_a_record].to_s unless input[:enable_resource_name_dns_a_record].nil?
        params[context + 'EnableResourceNameDnsAAAARecord'] = input[:enable_resource_name_dns_aaaa_record].to_s unless input[:enable_resource_name_dns_aaaa_record].nil?
      end
    end

    # Structure Builder for EnclaveOptionsRequest
    class EnclaveOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
      end
    end

    # Structure Builder for InstanceMetadataOptionsRequest
    class InstanceMetadataOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'HttpTokens'] = input[:http_tokens].to_s unless input[:http_tokens].nil?
        params[context + 'HttpPutResponseHopLimit'] = input[:http_put_response_hop_limit].to_s unless input[:http_put_response_hop_limit].nil?
        params[context + 'HttpEndpoint'] = input[:http_endpoint].to_s unless input[:http_endpoint].nil?
        params[context + 'HttpProtocolIpv6'] = input[:http_protocol_ipv6].to_s unless input[:http_protocol_ipv6].nil?
        params[context + 'InstanceMetadataTags'] = input[:instance_metadata_tags].to_s unless input[:instance_metadata_tags].nil?
      end
    end

    # List Builder for LicenseSpecificationListRequest
    class LicenseSpecificationListRequest
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::LicenseConfigurationRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for LicenseConfigurationRequest
    class LicenseConfigurationRequest
      def self.build(input, params, context: nil)
        params[context + 'LicenseConfigurationArn'] = input[:license_configuration_arn].to_s unless input[:license_configuration_arn].nil?
      end
    end

    # Structure Builder for HibernationOptionsRequest
    class HibernationOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'Configured'] = input[:configured].to_s unless input[:configured].nil?
      end
    end

    # Structure Builder for CpuOptionsRequest
    class CpuOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'CoreCount'] = input[:core_count].to_s unless input[:core_count].nil?
        params[context + 'ThreadsPerCore'] = input[:threads_per_core].to_s unless input[:threads_per_core].nil?
      end
    end

    # Structure Builder for InstanceMarketOptionsRequest
    class InstanceMarketOptionsRequest
      def self.build(input, params, context: nil)
        params[context + 'MarketType'] = input[:market_type].to_s unless input[:market_type].nil?
        Builders::SpotMarketOptions.build(input[:spot_options], params, context: context + 'SpotOptions' + '.') unless input[:spot_options].nil?
      end
    end

    # Structure Builder for SpotMarketOptions
    class SpotMarketOptions
      def self.build(input, params, context: nil)
        params[context + 'MaxPrice'] = input[:max_price].to_s unless input[:max_price].nil?
        params[context + 'SpotInstanceType'] = input[:spot_instance_type].to_s unless input[:spot_instance_type].nil?
        params[context + 'BlockDurationMinutes'] = input[:block_duration_minutes].to_s unless input[:block_duration_minutes].nil?
        params[context + 'ValidUntil'] = Hearth::TimeHelper.to_date_time(input[:valid_until]) unless input[:valid_until].nil?
        params[context + 'InstanceInterruptionBehavior'] = input[:instance_interruption_behavior].to_s unless input[:instance_interruption_behavior].nil?
      end
    end

    # Structure Builder for LaunchTemplateSpecification
    class LaunchTemplateSpecification
      def self.build(input, params, context: nil)
        params[context + 'LaunchTemplateId'] = input[:launch_template_id].to_s unless input[:launch_template_id].nil?
        params[context + 'LaunchTemplateName'] = input[:launch_template_name].to_s unless input[:launch_template_name].nil?
        params[context + 'Version'] = input[:version].to_s unless input[:version].nil?
      end
    end

    # List Builder for ElasticInferenceAccelerators
    class ElasticInferenceAccelerators
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ElasticInferenceAccelerator.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ElasticInferenceAccelerator
    class ElasticInferenceAccelerator
      def self.build(input, params, context: nil)
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'Count'] = input[:count].to_s unless input[:count].nil?
      end
    end

    # List Builder for ElasticGpuSpecifications
    class ElasticGpuSpecifications
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ElasticGpuSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Operation Builder for RunScheduledInstances
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
        Builders::ScheduledInstancesLaunchSpecification.build(input[:launch_specification], params, context: context + 'LaunchSpecification' + '.') unless input[:launch_specification].nil?
        params[context + 'ScheduledInstanceId'] = input[:scheduled_instance_id].to_s unless input[:scheduled_instance_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for ScheduledInstancesLaunchSpecification
    class ScheduledInstancesLaunchSpecification
      def self.build(input, params, context: nil)
        Builders::ScheduledInstancesBlockDeviceMappingSet.build(input[:block_device_mappings], params, context: context + 'BlockDeviceMapping') unless input[:block_device_mappings].nil?
        params[context + 'EbsOptimized'] = input[:ebs_optimized].to_s unless input[:ebs_optimized].nil?
        Builders::ScheduledInstancesIamInstanceProfile.build(input[:iam_instance_profile], params, context: context + 'IamInstanceProfile' + '.') unless input[:iam_instance_profile].nil?
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'KernelId'] = input[:kernel_id].to_s unless input[:kernel_id].nil?
        params[context + 'KeyName'] = input[:key_name].to_s unless input[:key_name].nil?
        Builders::ScheduledInstancesMonitoring.build(input[:monitoring], params, context: context + 'Monitoring' + '.') unless input[:monitoring].nil?
        Builders::ScheduledInstancesNetworkInterfaceSet.build(input[:network_interfaces], params, context: context + 'NetworkInterface') unless input[:network_interfaces].nil?
        Builders::ScheduledInstancesPlacement.build(input[:placement], params, context: context + 'Placement' + '.') unless input[:placement].nil?
        params[context + 'RamdiskId'] = input[:ramdisk_id].to_s unless input[:ramdisk_id].nil?
        Builders::ScheduledInstancesSecurityGroupIdSet.build(input[:security_group_ids], params, context: context + 'SecurityGroupId') unless input[:security_group_ids].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
        params[context + 'UserData'] = input[:user_data].to_s unless input[:user_data].nil?
      end
    end

    # List Builder for ScheduledInstancesSecurityGroupIdSet
    class ScheduledInstancesSecurityGroupIdSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for ScheduledInstancesPlacement
    class ScheduledInstancesPlacement
      def self.build(input, params, context: nil)
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
      end
    end

    # List Builder for ScheduledInstancesNetworkInterfaceSet
    class ScheduledInstancesNetworkInterfaceSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ScheduledInstancesNetworkInterface.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ScheduledInstancesNetworkInterface
    class ScheduledInstancesNetworkInterface
      def self.build(input, params, context: nil)
        params[context + 'AssociatePublicIpAddress'] = input[:associate_public_ip_address].to_s unless input[:associate_public_ip_address].nil?
        params[context + 'DeleteOnTermination'] = input[:delete_on_termination].to_s unless input[:delete_on_termination].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'DeviceIndex'] = input[:device_index].to_s unless input[:device_index].nil?
        Builders::ScheduledInstancesSecurityGroupIdSet.build(input[:groups], params, context: context + 'Group') unless input[:groups].nil?
        params[context + 'Ipv6AddressCount'] = input[:ipv6_address_count].to_s unless input[:ipv6_address_count].nil?
        Builders::ScheduledInstancesIpv6AddressList.build(input[:ipv6_addresses], params, context: context + 'Ipv6Address') unless input[:ipv6_addresses].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        params[context + 'PrivateIpAddress'] = input[:private_ip_address].to_s unless input[:private_ip_address].nil?
        Builders::PrivateIpAddressConfigSet.build(input[:private_ip_address_configs], params, context: context + 'PrivateIpAddressConfig') unless input[:private_ip_address_configs].nil?
        params[context + 'SecondaryPrivateIpAddressCount'] = input[:secondary_private_ip_address_count].to_s unless input[:secondary_private_ip_address_count].nil?
        params[context + 'SubnetId'] = input[:subnet_id].to_s unless input[:subnet_id].nil?
      end
    end

    # List Builder for PrivateIpAddressConfigSet
    class PrivateIpAddressConfigSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ScheduledInstancesPrivateIpAddressConfig.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ScheduledInstancesPrivateIpAddressConfig
    class ScheduledInstancesPrivateIpAddressConfig
      def self.build(input, params, context: nil)
        params[context + 'Primary'] = input[:primary].to_s unless input[:primary].nil?
        params[context + 'PrivateIpAddress'] = input[:private_ip_address].to_s unless input[:private_ip_address].nil?
      end
    end

    # List Builder for ScheduledInstancesIpv6AddressList
    class ScheduledInstancesIpv6AddressList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ScheduledInstancesIpv6Address.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ScheduledInstancesIpv6Address
    class ScheduledInstancesIpv6Address
      def self.build(input, params, context: nil)
        params[context + 'Ipv6Address'] = input[:ipv6_address].to_s unless input[:ipv6_address].nil?
      end
    end

    # Structure Builder for ScheduledInstancesMonitoring
    class ScheduledInstancesMonitoring
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
      end
    end

    # Structure Builder for ScheduledInstancesIamInstanceProfile
    class ScheduledInstancesIamInstanceProfile
      def self.build(input, params, context: nil)
        params[context + 'Arn'] = input[:arn].to_s unless input[:arn].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
      end
    end

    # List Builder for ScheduledInstancesBlockDeviceMappingSet
    class ScheduledInstancesBlockDeviceMappingSet
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ScheduledInstancesBlockDeviceMapping.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ScheduledInstancesBlockDeviceMapping
    class ScheduledInstancesBlockDeviceMapping
      def self.build(input, params, context: nil)
        params[context + 'DeviceName'] = input[:device_name].to_s unless input[:device_name].nil?
        Builders::ScheduledInstancesEbs.build(input[:ebs], params, context: context + 'Ebs' + '.') unless input[:ebs].nil?
        params[context + 'NoDevice'] = input[:no_device].to_s unless input[:no_device].nil?
        params[context + 'VirtualName'] = input[:virtual_name].to_s unless input[:virtual_name].nil?
      end
    end

    # Structure Builder for ScheduledInstancesEbs
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

    # Operation Builder for SearchLocalGatewayRoutes
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SearchTransitGatewayMulticastGroups
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SearchTransitGatewayRoutes
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
        Builders::FilterList.build(input[:filters], params, context: context + 'Filter') unless input[:filters].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SendDiagnosticInterrupt
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for StartInstances
    class StartInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StartInstances'
        params['Version'] = '2016-11-15'
        Builders::InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'AdditionalInfo'] = input[:additional_info].to_s unless input[:additional_info].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for StartNetworkInsightsAccessScopeAnalysis
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
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for StartNetworkInsightsAnalysis
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
        Builders::ArnList.build(input[:filter_in_arns], params, context: context + 'FilterInArn') unless input[:filter_in_arns].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        Builders::TagSpecificationList.build(input[:tag_specifications], params, context: context + 'TagSpecification') unless input[:tag_specifications].nil?
        params[context + 'ClientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ArnList
    class ArnList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for StartVpcEndpointServicePrivateDnsVerification
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for StopInstances
    class StopInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StopInstances'
        params['Version'] = '2016-11-15'
        Builders::InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'Hibernate'] = input[:hibernate].to_s unless input[:hibernate].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'Force'] = input[:force].to_s unless input[:force].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for TerminateClientVpnConnections
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
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for TerminateInstances
    class TerminateInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'TerminateInstances'
        params['Version'] = '2016-11-15'
        Builders::InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UnassignIpv6Addresses
    class UnassignIpv6Addresses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UnassignIpv6Addresses'
        params['Version'] = '2016-11-15'
        Builders::Ipv6AddressList.build(input[:ipv6_addresses], params, context: context + 'ipv6Addresses') unless input[:ipv6_addresses].nil?
        Builders::IpPrefixList.build(input[:ipv6_prefixes], params, context: context + 'Ipv6Prefix') unless input[:ipv6_prefixes].nil?
        params[context + 'NetworkInterfaceId'] = input[:network_interface_id].to_s unless input[:network_interface_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UnassignPrivateIpAddresses
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
        Builders::PrivateIpAddressStringList.build(input[:private_ip_addresses], params, context: context + 'privateIpAddress') unless input[:private_ip_addresses].nil?
        Builders::IpPrefixList.build(input[:ipv4_prefixes], params, context: context + 'Ipv4Prefix') unless input[:ipv4_prefixes].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UnmonitorInstances
    class UnmonitorInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UnmonitorInstances'
        params['Version'] = '2016-11-15'
        Builders::InstanceIdStringList.build(input[:instance_ids], params, context: context + 'InstanceId') unless input[:instance_ids].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateSecurityGroupRuleDescriptionsEgress
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
        Builders::IpPermissionList.build(input[:ip_permissions], params, context: context + 'IpPermissions') unless input[:ip_permissions].nil?
        Builders::SecurityGroupRuleDescriptionList.build(input[:security_group_rule_descriptions], params, context: context + 'SecurityGroupRuleDescription') unless input[:security_group_rule_descriptions].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for SecurityGroupRuleDescriptionList
    class SecurityGroupRuleDescriptionList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::SecurityGroupRuleDescription.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for SecurityGroupRuleDescription
    class SecurityGroupRuleDescription
      def self.build(input, params, context: nil)
        params[context + 'SecurityGroupRuleId'] = input[:security_group_rule_id].to_s unless input[:security_group_rule_id].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
      end
    end

    # Operation Builder for UpdateSecurityGroupRuleDescriptionsIngress
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
        Builders::IpPermissionList.build(input[:ip_permissions], params, context: context + 'IpPermissions') unless input[:ip_permissions].nil?
        Builders::SecurityGroupRuleDescriptionList.build(input[:security_group_rule_descriptions], params, context: context + 'SecurityGroupRuleDescription') unless input[:security_group_rule_descriptions].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for WithdrawByoipCidr
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
        http_req.body = StringIO.new(params.to_s)
      end
    end
  end
end
