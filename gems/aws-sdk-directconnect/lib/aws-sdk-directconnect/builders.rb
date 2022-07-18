# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DirectConnect
  module Builders

    # Operation Builder for AcceptDirectConnectGatewayAssociationProposal
    class AcceptDirectConnectGatewayAssociationProposal
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.AcceptDirectConnectGatewayAssociationProposal'
        data = {}
        data['directConnectGatewayId'] = input[:direct_connect_gateway_id] unless input[:direct_connect_gateway_id].nil?
        data['proposalId'] = input[:proposal_id] unless input[:proposal_id].nil?
        data['associatedGatewayOwnerAccount'] = input[:associated_gateway_owner_account] unless input[:associated_gateway_owner_account].nil?
        data['overrideAllowedPrefixesToDirectConnectGateway'] = Builders::RouteFilterPrefixList.build(input[:override_allowed_prefixes_to_direct_connect_gateway]) unless input[:override_allowed_prefixes_to_direct_connect_gateway].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RouteFilterPrefixList
    class RouteFilterPrefixList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RouteFilterPrefix.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RouteFilterPrefix
    class RouteFilterPrefix
      def self.build(input)
        data = {}
        data['cidr'] = input[:cidr] unless input[:cidr].nil?
        data
      end
    end

    # Operation Builder for AllocateConnectionOnInterconnect
    class AllocateConnectionOnInterconnect
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.AllocateConnectionOnInterconnect'
        data = {}
        data['bandwidth'] = input[:bandwidth] unless input[:bandwidth].nil?
        data['connectionName'] = input[:connection_name] unless input[:connection_name].nil?
        data['ownerAccount'] = input[:owner_account] unless input[:owner_account].nil?
        data['interconnectId'] = input[:interconnect_id] unless input[:interconnect_id].nil?
        data['vlan'] = input[:vlan] unless input[:vlan].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AllocateHostedConnection
    class AllocateHostedConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.AllocateHostedConnection'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['ownerAccount'] = input[:owner_account] unless input[:owner_account].nil?
        data['bandwidth'] = input[:bandwidth] unless input[:bandwidth].nil?
        data['connectionName'] = input[:connection_name] unless input[:connection_name].nil?
        data['vlan'] = input[:vlan] unless input[:vlan].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for AllocatePrivateVirtualInterface
    class AllocatePrivateVirtualInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.AllocatePrivateVirtualInterface'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['ownerAccount'] = input[:owner_account] unless input[:owner_account].nil?
        data['newPrivateVirtualInterfaceAllocation'] = Builders::NewPrivateVirtualInterfaceAllocation.build(input[:new_private_virtual_interface_allocation]) unless input[:new_private_virtual_interface_allocation].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NewPrivateVirtualInterfaceAllocation
    class NewPrivateVirtualInterfaceAllocation
      def self.build(input)
        data = {}
        data['virtualInterfaceName'] = input[:virtual_interface_name] unless input[:virtual_interface_name].nil?
        data['vlan'] = input[:vlan] unless input[:vlan].nil?
        data['asn'] = input[:asn] unless input[:asn].nil?
        data['mtu'] = input[:mtu] unless input[:mtu].nil?
        data['authKey'] = input[:auth_key] unless input[:auth_key].nil?
        data['amazonAddress'] = input[:amazon_address] unless input[:amazon_address].nil?
        data['addressFamily'] = input[:address_family] unless input[:address_family].nil?
        data['customerAddress'] = input[:customer_address] unless input[:customer_address].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # Operation Builder for AllocatePublicVirtualInterface
    class AllocatePublicVirtualInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.AllocatePublicVirtualInterface'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['ownerAccount'] = input[:owner_account] unless input[:owner_account].nil?
        data['newPublicVirtualInterfaceAllocation'] = Builders::NewPublicVirtualInterfaceAllocation.build(input[:new_public_virtual_interface_allocation]) unless input[:new_public_virtual_interface_allocation].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NewPublicVirtualInterfaceAllocation
    class NewPublicVirtualInterfaceAllocation
      def self.build(input)
        data = {}
        data['virtualInterfaceName'] = input[:virtual_interface_name] unless input[:virtual_interface_name].nil?
        data['vlan'] = input[:vlan] unless input[:vlan].nil?
        data['asn'] = input[:asn] unless input[:asn].nil?
        data['authKey'] = input[:auth_key] unless input[:auth_key].nil?
        data['amazonAddress'] = input[:amazon_address] unless input[:amazon_address].nil?
        data['customerAddress'] = input[:customer_address] unless input[:customer_address].nil?
        data['addressFamily'] = input[:address_family] unless input[:address_family].nil?
        data['routeFilterPrefixes'] = Builders::RouteFilterPrefixList.build(input[:route_filter_prefixes]) unless input[:route_filter_prefixes].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # Operation Builder for AllocateTransitVirtualInterface
    class AllocateTransitVirtualInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.AllocateTransitVirtualInterface'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['ownerAccount'] = input[:owner_account] unless input[:owner_account].nil?
        data['newTransitVirtualInterfaceAllocation'] = Builders::NewTransitVirtualInterfaceAllocation.build(input[:new_transit_virtual_interface_allocation]) unless input[:new_transit_virtual_interface_allocation].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NewTransitVirtualInterfaceAllocation
    class NewTransitVirtualInterfaceAllocation
      def self.build(input)
        data = {}
        data['virtualInterfaceName'] = input[:virtual_interface_name] unless input[:virtual_interface_name].nil?
        data['vlan'] = input[:vlan] unless input[:vlan].nil?
        data['asn'] = input[:asn] unless input[:asn].nil?
        data['mtu'] = input[:mtu] unless input[:mtu].nil?
        data['authKey'] = input[:auth_key] unless input[:auth_key].nil?
        data['amazonAddress'] = input[:amazon_address] unless input[:amazon_address].nil?
        data['customerAddress'] = input[:customer_address] unless input[:customer_address].nil?
        data['addressFamily'] = input[:address_family] unless input[:address_family].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # Operation Builder for AssociateConnectionWithLag
    class AssociateConnectionWithLag
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.AssociateConnectionWithLag'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['lagId'] = input[:lag_id] unless input[:lag_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateHostedConnection
    class AssociateHostedConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.AssociateHostedConnection'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['parentConnectionId'] = input[:parent_connection_id] unless input[:parent_connection_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateMacSecKey
    class AssociateMacSecKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.AssociateMacSecKey'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['secretARN'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['ckn'] = input[:ckn] unless input[:ckn].nil?
        data['cak'] = input[:cak] unless input[:cak].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateVirtualInterface
    class AssociateVirtualInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.AssociateVirtualInterface'
        data = {}
        data['virtualInterfaceId'] = input[:virtual_interface_id] unless input[:virtual_interface_id].nil?
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ConfirmConnection
    class ConfirmConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.ConfirmConnection'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ConfirmCustomerAgreement
    class ConfirmCustomerAgreement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.ConfirmCustomerAgreement'
        data = {}
        data['agreementName'] = input[:agreement_name] unless input[:agreement_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ConfirmPrivateVirtualInterface
    class ConfirmPrivateVirtualInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.ConfirmPrivateVirtualInterface'
        data = {}
        data['virtualInterfaceId'] = input[:virtual_interface_id] unless input[:virtual_interface_id].nil?
        data['virtualGatewayId'] = input[:virtual_gateway_id] unless input[:virtual_gateway_id].nil?
        data['directConnectGatewayId'] = input[:direct_connect_gateway_id] unless input[:direct_connect_gateway_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ConfirmPublicVirtualInterface
    class ConfirmPublicVirtualInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.ConfirmPublicVirtualInterface'
        data = {}
        data['virtualInterfaceId'] = input[:virtual_interface_id] unless input[:virtual_interface_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ConfirmTransitVirtualInterface
    class ConfirmTransitVirtualInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.ConfirmTransitVirtualInterface'
        data = {}
        data['virtualInterfaceId'] = input[:virtual_interface_id] unless input[:virtual_interface_id].nil?
        data['directConnectGatewayId'] = input[:direct_connect_gateway_id] unless input[:direct_connect_gateway_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateBGPPeer
    class CreateBGPPeer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.CreateBGPPeer'
        data = {}
        data['virtualInterfaceId'] = input[:virtual_interface_id] unless input[:virtual_interface_id].nil?
        data['newBGPPeer'] = Builders::NewBGPPeer.build(input[:new_bgp_peer]) unless input[:new_bgp_peer].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NewBGPPeer
    class NewBGPPeer
      def self.build(input)
        data = {}
        data['asn'] = input[:asn] unless input[:asn].nil?
        data['authKey'] = input[:auth_key] unless input[:auth_key].nil?
        data['addressFamily'] = input[:address_family] unless input[:address_family].nil?
        data['amazonAddress'] = input[:amazon_address] unless input[:amazon_address].nil?
        data['customerAddress'] = input[:customer_address] unless input[:customer_address].nil?
        data
      end
    end

    # Operation Builder for CreateConnection
    class CreateConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.CreateConnection'
        data = {}
        data['location'] = input[:location] unless input[:location].nil?
        data['bandwidth'] = input[:bandwidth] unless input[:bandwidth].nil?
        data['connectionName'] = input[:connection_name] unless input[:connection_name].nil?
        data['lagId'] = input[:lag_id] unless input[:lag_id].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['providerName'] = input[:provider_name] unless input[:provider_name].nil?
        data['requestMACSec'] = input[:request_mac_sec] unless input[:request_mac_sec].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDirectConnectGateway
    class CreateDirectConnectGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.CreateDirectConnectGateway'
        data = {}
        data['directConnectGatewayName'] = input[:direct_connect_gateway_name] unless input[:direct_connect_gateway_name].nil?
        data['amazonSideAsn'] = input[:amazon_side_asn] unless input[:amazon_side_asn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDirectConnectGatewayAssociation
    class CreateDirectConnectGatewayAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.CreateDirectConnectGatewayAssociation'
        data = {}
        data['directConnectGatewayId'] = input[:direct_connect_gateway_id] unless input[:direct_connect_gateway_id].nil?
        data['gatewayId'] = input[:gateway_id] unless input[:gateway_id].nil?
        data['addAllowedPrefixesToDirectConnectGateway'] = Builders::RouteFilterPrefixList.build(input[:add_allowed_prefixes_to_direct_connect_gateway]) unless input[:add_allowed_prefixes_to_direct_connect_gateway].nil?
        data['virtualGatewayId'] = input[:virtual_gateway_id] unless input[:virtual_gateway_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDirectConnectGatewayAssociationProposal
    class CreateDirectConnectGatewayAssociationProposal
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.CreateDirectConnectGatewayAssociationProposal'
        data = {}
        data['directConnectGatewayId'] = input[:direct_connect_gateway_id] unless input[:direct_connect_gateway_id].nil?
        data['directConnectGatewayOwnerAccount'] = input[:direct_connect_gateway_owner_account] unless input[:direct_connect_gateway_owner_account].nil?
        data['gatewayId'] = input[:gateway_id] unless input[:gateway_id].nil?
        data['addAllowedPrefixesToDirectConnectGateway'] = Builders::RouteFilterPrefixList.build(input[:add_allowed_prefixes_to_direct_connect_gateway]) unless input[:add_allowed_prefixes_to_direct_connect_gateway].nil?
        data['removeAllowedPrefixesToDirectConnectGateway'] = Builders::RouteFilterPrefixList.build(input[:remove_allowed_prefixes_to_direct_connect_gateway]) unless input[:remove_allowed_prefixes_to_direct_connect_gateway].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateInterconnect
    class CreateInterconnect
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.CreateInterconnect'
        data = {}
        data['interconnectName'] = input[:interconnect_name] unless input[:interconnect_name].nil?
        data['bandwidth'] = input[:bandwidth] unless input[:bandwidth].nil?
        data['location'] = input[:location] unless input[:location].nil?
        data['lagId'] = input[:lag_id] unless input[:lag_id].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['providerName'] = input[:provider_name] unless input[:provider_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateLag
    class CreateLag
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.CreateLag'
        data = {}
        data['numberOfConnections'] = input[:number_of_connections] unless input[:number_of_connections].nil?
        data['location'] = input[:location] unless input[:location].nil?
        data['connectionsBandwidth'] = input[:connections_bandwidth] unless input[:connections_bandwidth].nil?
        data['lagName'] = input[:lag_name] unless input[:lag_name].nil?
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['childConnectionTags'] = Builders::TagList.build(input[:child_connection_tags]) unless input[:child_connection_tags].nil?
        data['providerName'] = input[:provider_name] unless input[:provider_name].nil?
        data['requestMACSec'] = input[:request_mac_sec] unless input[:request_mac_sec].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreatePrivateVirtualInterface
    class CreatePrivateVirtualInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.CreatePrivateVirtualInterface'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['newPrivateVirtualInterface'] = Builders::NewPrivateVirtualInterface.build(input[:new_private_virtual_interface]) unless input[:new_private_virtual_interface].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NewPrivateVirtualInterface
    class NewPrivateVirtualInterface
      def self.build(input)
        data = {}
        data['virtualInterfaceName'] = input[:virtual_interface_name] unless input[:virtual_interface_name].nil?
        data['vlan'] = input[:vlan] unless input[:vlan].nil?
        data['asn'] = input[:asn] unless input[:asn].nil?
        data['mtu'] = input[:mtu] unless input[:mtu].nil?
        data['authKey'] = input[:auth_key] unless input[:auth_key].nil?
        data['amazonAddress'] = input[:amazon_address] unless input[:amazon_address].nil?
        data['customerAddress'] = input[:customer_address] unless input[:customer_address].nil?
        data['addressFamily'] = input[:address_family] unless input[:address_family].nil?
        data['virtualGatewayId'] = input[:virtual_gateway_id] unless input[:virtual_gateway_id].nil?
        data['directConnectGatewayId'] = input[:direct_connect_gateway_id] unless input[:direct_connect_gateway_id].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['enableSiteLink'] = input[:enable_site_link] unless input[:enable_site_link].nil?
        data
      end
    end

    # Operation Builder for CreatePublicVirtualInterface
    class CreatePublicVirtualInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.CreatePublicVirtualInterface'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['newPublicVirtualInterface'] = Builders::NewPublicVirtualInterface.build(input[:new_public_virtual_interface]) unless input[:new_public_virtual_interface].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NewPublicVirtualInterface
    class NewPublicVirtualInterface
      def self.build(input)
        data = {}
        data['virtualInterfaceName'] = input[:virtual_interface_name] unless input[:virtual_interface_name].nil?
        data['vlan'] = input[:vlan] unless input[:vlan].nil?
        data['asn'] = input[:asn] unless input[:asn].nil?
        data['authKey'] = input[:auth_key] unless input[:auth_key].nil?
        data['amazonAddress'] = input[:amazon_address] unless input[:amazon_address].nil?
        data['customerAddress'] = input[:customer_address] unless input[:customer_address].nil?
        data['addressFamily'] = input[:address_family] unless input[:address_family].nil?
        data['routeFilterPrefixes'] = Builders::RouteFilterPrefixList.build(input[:route_filter_prefixes]) unless input[:route_filter_prefixes].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # Operation Builder for CreateTransitVirtualInterface
    class CreateTransitVirtualInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.CreateTransitVirtualInterface'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['newTransitVirtualInterface'] = Builders::NewTransitVirtualInterface.build(input[:new_transit_virtual_interface]) unless input[:new_transit_virtual_interface].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NewTransitVirtualInterface
    class NewTransitVirtualInterface
      def self.build(input)
        data = {}
        data['virtualInterfaceName'] = input[:virtual_interface_name] unless input[:virtual_interface_name].nil?
        data['vlan'] = input[:vlan] unless input[:vlan].nil?
        data['asn'] = input[:asn] unless input[:asn].nil?
        data['mtu'] = input[:mtu] unless input[:mtu].nil?
        data['authKey'] = input[:auth_key] unless input[:auth_key].nil?
        data['amazonAddress'] = input[:amazon_address] unless input[:amazon_address].nil?
        data['customerAddress'] = input[:customer_address] unless input[:customer_address].nil?
        data['addressFamily'] = input[:address_family] unless input[:address_family].nil?
        data['directConnectGatewayId'] = input[:direct_connect_gateway_id] unless input[:direct_connect_gateway_id].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['enableSiteLink'] = input[:enable_site_link] unless input[:enable_site_link].nil?
        data
      end
    end

    # Operation Builder for DeleteBGPPeer
    class DeleteBGPPeer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DeleteBGPPeer'
        data = {}
        data['virtualInterfaceId'] = input[:virtual_interface_id] unless input[:virtual_interface_id].nil?
        data['asn'] = input[:asn] unless input[:asn].nil?
        data['customerAddress'] = input[:customer_address] unless input[:customer_address].nil?
        data['bgpPeerId'] = input[:bgp_peer_id] unless input[:bgp_peer_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteConnection
    class DeleteConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DeleteConnection'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDirectConnectGateway
    class DeleteDirectConnectGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DeleteDirectConnectGateway'
        data = {}
        data['directConnectGatewayId'] = input[:direct_connect_gateway_id] unless input[:direct_connect_gateway_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDirectConnectGatewayAssociation
    class DeleteDirectConnectGatewayAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DeleteDirectConnectGatewayAssociation'
        data = {}
        data['associationId'] = input[:association_id] unless input[:association_id].nil?
        data['directConnectGatewayId'] = input[:direct_connect_gateway_id] unless input[:direct_connect_gateway_id].nil?
        data['virtualGatewayId'] = input[:virtual_gateway_id] unless input[:virtual_gateway_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDirectConnectGatewayAssociationProposal
    class DeleteDirectConnectGatewayAssociationProposal
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DeleteDirectConnectGatewayAssociationProposal'
        data = {}
        data['proposalId'] = input[:proposal_id] unless input[:proposal_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteInterconnect
    class DeleteInterconnect
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DeleteInterconnect'
        data = {}
        data['interconnectId'] = input[:interconnect_id] unless input[:interconnect_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLag
    class DeleteLag
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DeleteLag'
        data = {}
        data['lagId'] = input[:lag_id] unless input[:lag_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteVirtualInterface
    class DeleteVirtualInterface
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DeleteVirtualInterface'
        data = {}
        data['virtualInterfaceId'] = input[:virtual_interface_id] unless input[:virtual_interface_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeConnectionLoa
    class DescribeConnectionLoa
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DescribeConnectionLoa'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['providerName'] = input[:provider_name] unless input[:provider_name].nil?
        data['loaContentType'] = input[:loa_content_type] unless input[:loa_content_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeConnections
    class DescribeConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DescribeConnections'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeConnectionsOnInterconnect
    class DescribeConnectionsOnInterconnect
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DescribeConnectionsOnInterconnect'
        data = {}
        data['interconnectId'] = input[:interconnect_id] unless input[:interconnect_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCustomerMetadata
    class DescribeCustomerMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DescribeCustomerMetadata'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDirectConnectGatewayAssociationProposals
    class DescribeDirectConnectGatewayAssociationProposals
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DescribeDirectConnectGatewayAssociationProposals'
        data = {}
        data['directConnectGatewayId'] = input[:direct_connect_gateway_id] unless input[:direct_connect_gateway_id].nil?
        data['proposalId'] = input[:proposal_id] unless input[:proposal_id].nil?
        data['associatedGatewayId'] = input[:associated_gateway_id] unless input[:associated_gateway_id].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDirectConnectGatewayAssociations
    class DescribeDirectConnectGatewayAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DescribeDirectConnectGatewayAssociations'
        data = {}
        data['associationId'] = input[:association_id] unless input[:association_id].nil?
        data['associatedGatewayId'] = input[:associated_gateway_id] unless input[:associated_gateway_id].nil?
        data['directConnectGatewayId'] = input[:direct_connect_gateway_id] unless input[:direct_connect_gateway_id].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['virtualGatewayId'] = input[:virtual_gateway_id] unless input[:virtual_gateway_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDirectConnectGatewayAttachments
    class DescribeDirectConnectGatewayAttachments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DescribeDirectConnectGatewayAttachments'
        data = {}
        data['directConnectGatewayId'] = input[:direct_connect_gateway_id] unless input[:direct_connect_gateway_id].nil?
        data['virtualInterfaceId'] = input[:virtual_interface_id] unless input[:virtual_interface_id].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDirectConnectGateways
    class DescribeDirectConnectGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DescribeDirectConnectGateways'
        data = {}
        data['directConnectGatewayId'] = input[:direct_connect_gateway_id] unless input[:direct_connect_gateway_id].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeHostedConnections
    class DescribeHostedConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DescribeHostedConnections'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeInterconnectLoa
    class DescribeInterconnectLoa
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DescribeInterconnectLoa'
        data = {}
        data['interconnectId'] = input[:interconnect_id] unless input[:interconnect_id].nil?
        data['providerName'] = input[:provider_name] unless input[:provider_name].nil?
        data['loaContentType'] = input[:loa_content_type] unless input[:loa_content_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeInterconnects
    class DescribeInterconnects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DescribeInterconnects'
        data = {}
        data['interconnectId'] = input[:interconnect_id] unless input[:interconnect_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLags
    class DescribeLags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DescribeLags'
        data = {}
        data['lagId'] = input[:lag_id] unless input[:lag_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLoa
    class DescribeLoa
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DescribeLoa'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['providerName'] = input[:provider_name] unless input[:provider_name].nil?
        data['loaContentType'] = input[:loa_content_type] unless input[:loa_content_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLocations
    class DescribeLocations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DescribeLocations'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRouterConfiguration
    class DescribeRouterConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DescribeRouterConfiguration'
        data = {}
        data['virtualInterfaceId'] = input[:virtual_interface_id] unless input[:virtual_interface_id].nil?
        data['routerTypeIdentifier'] = input[:router_type_identifier] unless input[:router_type_identifier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTags
    class DescribeTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DescribeTags'
        data = {}
        data['resourceArns'] = Builders::ResourceArnList.build(input[:resource_arns]) unless input[:resource_arns].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceArnList
    class ResourceArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeVirtualGateways
    class DescribeVirtualGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DescribeVirtualGateways'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeVirtualInterfaces
    class DescribeVirtualInterfaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DescribeVirtualInterfaces'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['virtualInterfaceId'] = input[:virtual_interface_id] unless input[:virtual_interface_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateConnectionFromLag
    class DisassociateConnectionFromLag
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DisassociateConnectionFromLag'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['lagId'] = input[:lag_id] unless input[:lag_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateMacSecKey
    class DisassociateMacSecKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.DisassociateMacSecKey'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['secretARN'] = input[:secret_arn] unless input[:secret_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListVirtualInterfaceTestHistory
    class ListVirtualInterfaceTestHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.ListVirtualInterfaceTestHistory'
        data = {}
        data['testId'] = input[:test_id] unless input[:test_id].nil?
        data['virtualInterfaceId'] = input[:virtual_interface_id] unless input[:virtual_interface_id].nil?
        data['bgpPeers'] = Builders::BGPPeerIdList.build(input[:bgp_peers]) unless input[:bgp_peers].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BGPPeerIdList
    class BGPPeerIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartBgpFailoverTest
    class StartBgpFailoverTest
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.StartBgpFailoverTest'
        data = {}
        data['virtualInterfaceId'] = input[:virtual_interface_id] unless input[:virtual_interface_id].nil?
        data['bgpPeers'] = Builders::BGPPeerIdList.build(input[:bgp_peers]) unless input[:bgp_peers].nil?
        data['testDurationInMinutes'] = input[:test_duration_in_minutes] unless input[:test_duration_in_minutes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopBgpFailoverTest
    class StopBgpFailoverTest
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.StopBgpFailoverTest'
        data = {}
        data['virtualInterfaceId'] = input[:virtual_interface_id] unless input[:virtual_interface_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.TagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.UntagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateConnection
    class UpdateConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.UpdateConnection'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['connectionName'] = input[:connection_name] unless input[:connection_name].nil?
        data['encryptionMode'] = input[:encryption_mode] unless input[:encryption_mode].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDirectConnectGateway
    class UpdateDirectConnectGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.UpdateDirectConnectGateway'
        data = {}
        data['directConnectGatewayId'] = input[:direct_connect_gateway_id] unless input[:direct_connect_gateway_id].nil?
        data['newDirectConnectGatewayName'] = input[:new_direct_connect_gateway_name] unless input[:new_direct_connect_gateway_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDirectConnectGatewayAssociation
    class UpdateDirectConnectGatewayAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.UpdateDirectConnectGatewayAssociation'
        data = {}
        data['associationId'] = input[:association_id] unless input[:association_id].nil?
        data['addAllowedPrefixesToDirectConnectGateway'] = Builders::RouteFilterPrefixList.build(input[:add_allowed_prefixes_to_direct_connect_gateway]) unless input[:add_allowed_prefixes_to_direct_connect_gateway].nil?
        data['removeAllowedPrefixesToDirectConnectGateway'] = Builders::RouteFilterPrefixList.build(input[:remove_allowed_prefixes_to_direct_connect_gateway]) unless input[:remove_allowed_prefixes_to_direct_connect_gateway].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateLag
    class UpdateLag
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.UpdateLag'
        data = {}
        data['lagId'] = input[:lag_id] unless input[:lag_id].nil?
        data['lagName'] = input[:lag_name] unless input[:lag_name].nil?
        data['minimumLinks'] = input[:minimum_links] unless input[:minimum_links].nil?
        data['encryptionMode'] = input[:encryption_mode] unless input[:encryption_mode].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateVirtualInterfaceAttributes
    class UpdateVirtualInterfaceAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OvertureService.UpdateVirtualInterfaceAttributes'
        data = {}
        data['virtualInterfaceId'] = input[:virtual_interface_id] unless input[:virtual_interface_id].nil?
        data['mtu'] = input[:mtu] unless input[:mtu].nil?
        data['enableSiteLink'] = input[:enable_site_link] unless input[:enable_site_link].nil?
        data['virtualInterfaceName'] = input[:virtual_interface_name] unless input[:virtual_interface_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
