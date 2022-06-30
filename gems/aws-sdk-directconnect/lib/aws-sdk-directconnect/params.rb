# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::DirectConnect
  module Params

    module AcceptDirectConnectGatewayAssociationProposalInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptDirectConnectGatewayAssociationProposalInput, context: context)
        type = Types::AcceptDirectConnectGatewayAssociationProposalInput.new
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.proposal_id = params[:proposal_id]
        type.associated_gateway_owner_account = params[:associated_gateway_owner_account]
        type.override_allowed_prefixes_to_direct_connect_gateway = RouteFilterPrefixList.build(params[:override_allowed_prefixes_to_direct_connect_gateway], context: "#{context}[:override_allowed_prefixes_to_direct_connect_gateway]") unless params[:override_allowed_prefixes_to_direct_connect_gateway].nil?
        type
      end
    end

    module AcceptDirectConnectGatewayAssociationProposalOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptDirectConnectGatewayAssociationProposalOutput, context: context)
        type = Types::AcceptDirectConnectGatewayAssociationProposalOutput.new
        type.direct_connect_gateway_association = DirectConnectGatewayAssociation.build(params[:direct_connect_gateway_association], context: "#{context}[:direct_connect_gateway_association]") unless params[:direct_connect_gateway_association].nil?
        type
      end
    end

    module AgreementList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomerAgreement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AllocateConnectionOnInterconnectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllocateConnectionOnInterconnectInput, context: context)
        type = Types::AllocateConnectionOnInterconnectInput.new
        type.bandwidth = params[:bandwidth]
        type.connection_name = params[:connection_name]
        type.owner_account = params[:owner_account]
        type.interconnect_id = params[:interconnect_id]
        type.vlan = params[:vlan]
        type
      end
    end

    module AllocateConnectionOnInterconnectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllocateConnectionOnInterconnectOutput, context: context)
        type = Types::AllocateConnectionOnInterconnectOutput.new
        type.owner_account = params[:owner_account]
        type.connection_id = params[:connection_id]
        type.connection_name = params[:connection_name]
        type.connection_state = params[:connection_state]
        type.region = params[:region]
        type.location = params[:location]
        type.bandwidth = params[:bandwidth]
        type.vlan = params[:vlan]
        type.partner_name = params[:partner_name]
        type.loa_issue_time = params[:loa_issue_time]
        type.lag_id = params[:lag_id]
        type.aws_device = params[:aws_device]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.has_logical_redundancy = params[:has_logical_redundancy]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provider_name = params[:provider_name]
        type.mac_sec_capable = params[:mac_sec_capable]
        type.port_encryption_status = params[:port_encryption_status]
        type.encryption_mode = params[:encryption_mode]
        type.mac_sec_keys = MacSecKeyList.build(params[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless params[:mac_sec_keys].nil?
        type
      end
    end

    module AllocateHostedConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllocateHostedConnectionInput, context: context)
        type = Types::AllocateHostedConnectionInput.new
        type.connection_id = params[:connection_id]
        type.owner_account = params[:owner_account]
        type.bandwidth = params[:bandwidth]
        type.connection_name = params[:connection_name]
        type.vlan = params[:vlan]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AllocateHostedConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllocateHostedConnectionOutput, context: context)
        type = Types::AllocateHostedConnectionOutput.new
        type.owner_account = params[:owner_account]
        type.connection_id = params[:connection_id]
        type.connection_name = params[:connection_name]
        type.connection_state = params[:connection_state]
        type.region = params[:region]
        type.location = params[:location]
        type.bandwidth = params[:bandwidth]
        type.vlan = params[:vlan]
        type.partner_name = params[:partner_name]
        type.loa_issue_time = params[:loa_issue_time]
        type.lag_id = params[:lag_id]
        type.aws_device = params[:aws_device]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.has_logical_redundancy = params[:has_logical_redundancy]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provider_name = params[:provider_name]
        type.mac_sec_capable = params[:mac_sec_capable]
        type.port_encryption_status = params[:port_encryption_status]
        type.encryption_mode = params[:encryption_mode]
        type.mac_sec_keys = MacSecKeyList.build(params[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless params[:mac_sec_keys].nil?
        type
      end
    end

    module AllocatePrivateVirtualInterfaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllocatePrivateVirtualInterfaceInput, context: context)
        type = Types::AllocatePrivateVirtualInterfaceInput.new
        type.connection_id = params[:connection_id]
        type.owner_account = params[:owner_account]
        type.new_private_virtual_interface_allocation = NewPrivateVirtualInterfaceAllocation.build(params[:new_private_virtual_interface_allocation], context: "#{context}[:new_private_virtual_interface_allocation]") unless params[:new_private_virtual_interface_allocation].nil?
        type
      end
    end

    module AllocatePrivateVirtualInterfaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllocatePrivateVirtualInterfaceOutput, context: context)
        type = Types::AllocatePrivateVirtualInterfaceOutput.new
        type.owner_account = params[:owner_account]
        type.virtual_interface_id = params[:virtual_interface_id]
        type.location = params[:location]
        type.connection_id = params[:connection_id]
        type.virtual_interface_type = params[:virtual_interface_type]
        type.virtual_interface_name = params[:virtual_interface_name]
        type.vlan = params[:vlan]
        type.asn = params[:asn]
        type.amazon_side_asn = params[:amazon_side_asn]
        type.auth_key = params[:auth_key]
        type.amazon_address = params[:amazon_address]
        type.customer_address = params[:customer_address]
        type.address_family = params[:address_family]
        type.virtual_interface_state = params[:virtual_interface_state]
        type.customer_router_config = params[:customer_router_config]
        type.mtu = params[:mtu]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.virtual_gateway_id = params[:virtual_gateway_id]
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.route_filter_prefixes = RouteFilterPrefixList.build(params[:route_filter_prefixes], context: "#{context}[:route_filter_prefixes]") unless params[:route_filter_prefixes].nil?
        type.bgp_peers = BGPPeerList.build(params[:bgp_peers], context: "#{context}[:bgp_peers]") unless params[:bgp_peers].nil?
        type.region = params[:region]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.site_link_enabled = params[:site_link_enabled]
        type
      end
    end

    module AllocatePublicVirtualInterfaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllocatePublicVirtualInterfaceInput, context: context)
        type = Types::AllocatePublicVirtualInterfaceInput.new
        type.connection_id = params[:connection_id]
        type.owner_account = params[:owner_account]
        type.new_public_virtual_interface_allocation = NewPublicVirtualInterfaceAllocation.build(params[:new_public_virtual_interface_allocation], context: "#{context}[:new_public_virtual_interface_allocation]") unless params[:new_public_virtual_interface_allocation].nil?
        type
      end
    end

    module AllocatePublicVirtualInterfaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllocatePublicVirtualInterfaceOutput, context: context)
        type = Types::AllocatePublicVirtualInterfaceOutput.new
        type.owner_account = params[:owner_account]
        type.virtual_interface_id = params[:virtual_interface_id]
        type.location = params[:location]
        type.connection_id = params[:connection_id]
        type.virtual_interface_type = params[:virtual_interface_type]
        type.virtual_interface_name = params[:virtual_interface_name]
        type.vlan = params[:vlan]
        type.asn = params[:asn]
        type.amazon_side_asn = params[:amazon_side_asn]
        type.auth_key = params[:auth_key]
        type.amazon_address = params[:amazon_address]
        type.customer_address = params[:customer_address]
        type.address_family = params[:address_family]
        type.virtual_interface_state = params[:virtual_interface_state]
        type.customer_router_config = params[:customer_router_config]
        type.mtu = params[:mtu]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.virtual_gateway_id = params[:virtual_gateway_id]
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.route_filter_prefixes = RouteFilterPrefixList.build(params[:route_filter_prefixes], context: "#{context}[:route_filter_prefixes]") unless params[:route_filter_prefixes].nil?
        type.bgp_peers = BGPPeerList.build(params[:bgp_peers], context: "#{context}[:bgp_peers]") unless params[:bgp_peers].nil?
        type.region = params[:region]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.site_link_enabled = params[:site_link_enabled]
        type
      end
    end

    module AllocateTransitVirtualInterfaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllocateTransitVirtualInterfaceInput, context: context)
        type = Types::AllocateTransitVirtualInterfaceInput.new
        type.connection_id = params[:connection_id]
        type.owner_account = params[:owner_account]
        type.new_transit_virtual_interface_allocation = NewTransitVirtualInterfaceAllocation.build(params[:new_transit_virtual_interface_allocation], context: "#{context}[:new_transit_virtual_interface_allocation]") unless params[:new_transit_virtual_interface_allocation].nil?
        type
      end
    end

    module AllocateTransitVirtualInterfaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllocateTransitVirtualInterfaceOutput, context: context)
        type = Types::AllocateTransitVirtualInterfaceOutput.new
        type.virtual_interface = VirtualInterface.build(params[:virtual_interface], context: "#{context}[:virtual_interface]") unless params[:virtual_interface].nil?
        type
      end
    end

    module AssociateConnectionWithLagInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateConnectionWithLagInput, context: context)
        type = Types::AssociateConnectionWithLagInput.new
        type.connection_id = params[:connection_id]
        type.lag_id = params[:lag_id]
        type
      end
    end

    module AssociateConnectionWithLagOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateConnectionWithLagOutput, context: context)
        type = Types::AssociateConnectionWithLagOutput.new
        type.owner_account = params[:owner_account]
        type.connection_id = params[:connection_id]
        type.connection_name = params[:connection_name]
        type.connection_state = params[:connection_state]
        type.region = params[:region]
        type.location = params[:location]
        type.bandwidth = params[:bandwidth]
        type.vlan = params[:vlan]
        type.partner_name = params[:partner_name]
        type.loa_issue_time = params[:loa_issue_time]
        type.lag_id = params[:lag_id]
        type.aws_device = params[:aws_device]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.has_logical_redundancy = params[:has_logical_redundancy]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provider_name = params[:provider_name]
        type.mac_sec_capable = params[:mac_sec_capable]
        type.port_encryption_status = params[:port_encryption_status]
        type.encryption_mode = params[:encryption_mode]
        type.mac_sec_keys = MacSecKeyList.build(params[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless params[:mac_sec_keys].nil?
        type
      end
    end

    module AssociateHostedConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateHostedConnectionInput, context: context)
        type = Types::AssociateHostedConnectionInput.new
        type.connection_id = params[:connection_id]
        type.parent_connection_id = params[:parent_connection_id]
        type
      end
    end

    module AssociateHostedConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateHostedConnectionOutput, context: context)
        type = Types::AssociateHostedConnectionOutput.new
        type.owner_account = params[:owner_account]
        type.connection_id = params[:connection_id]
        type.connection_name = params[:connection_name]
        type.connection_state = params[:connection_state]
        type.region = params[:region]
        type.location = params[:location]
        type.bandwidth = params[:bandwidth]
        type.vlan = params[:vlan]
        type.partner_name = params[:partner_name]
        type.loa_issue_time = params[:loa_issue_time]
        type.lag_id = params[:lag_id]
        type.aws_device = params[:aws_device]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.has_logical_redundancy = params[:has_logical_redundancy]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provider_name = params[:provider_name]
        type.mac_sec_capable = params[:mac_sec_capable]
        type.port_encryption_status = params[:port_encryption_status]
        type.encryption_mode = params[:encryption_mode]
        type.mac_sec_keys = MacSecKeyList.build(params[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless params[:mac_sec_keys].nil?
        type
      end
    end

    module AssociateMacSecKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateMacSecKeyInput, context: context)
        type = Types::AssociateMacSecKeyInput.new
        type.connection_id = params[:connection_id]
        type.secret_arn = params[:secret_arn]
        type.ckn = params[:ckn]
        type.cak = params[:cak]
        type
      end
    end

    module AssociateMacSecKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateMacSecKeyOutput, context: context)
        type = Types::AssociateMacSecKeyOutput.new
        type.connection_id = params[:connection_id]
        type.mac_sec_keys = MacSecKeyList.build(params[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless params[:mac_sec_keys].nil?
        type
      end
    end

    module AssociateVirtualInterfaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateVirtualInterfaceInput, context: context)
        type = Types::AssociateVirtualInterfaceInput.new
        type.virtual_interface_id = params[:virtual_interface_id]
        type.connection_id = params[:connection_id]
        type
      end
    end

    module AssociateVirtualInterfaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateVirtualInterfaceOutput, context: context)
        type = Types::AssociateVirtualInterfaceOutput.new
        type.owner_account = params[:owner_account]
        type.virtual_interface_id = params[:virtual_interface_id]
        type.location = params[:location]
        type.connection_id = params[:connection_id]
        type.virtual_interface_type = params[:virtual_interface_type]
        type.virtual_interface_name = params[:virtual_interface_name]
        type.vlan = params[:vlan]
        type.asn = params[:asn]
        type.amazon_side_asn = params[:amazon_side_asn]
        type.auth_key = params[:auth_key]
        type.amazon_address = params[:amazon_address]
        type.customer_address = params[:customer_address]
        type.address_family = params[:address_family]
        type.virtual_interface_state = params[:virtual_interface_state]
        type.customer_router_config = params[:customer_router_config]
        type.mtu = params[:mtu]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.virtual_gateway_id = params[:virtual_gateway_id]
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.route_filter_prefixes = RouteFilterPrefixList.build(params[:route_filter_prefixes], context: "#{context}[:route_filter_prefixes]") unless params[:route_filter_prefixes].nil?
        type.bgp_peers = BGPPeerList.build(params[:bgp_peers], context: "#{context}[:bgp_peers]") unless params[:bgp_peers].nil?
        type.region = params[:region]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.site_link_enabled = params[:site_link_enabled]
        type
      end
    end

    module AssociatedGateway
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatedGateway, context: context)
        type = Types::AssociatedGateway.new
        type.id = params[:id]
        type.type = params[:type]
        type.owner_account = params[:owner_account]
        type.region = params[:region]
        type
      end
    end

    module AvailableMacSecPortSpeeds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AvailablePortSpeeds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BGPPeer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BGPPeer, context: context)
        type = Types::BGPPeer.new
        type.bgp_peer_id = params[:bgp_peer_id]
        type.asn = params[:asn]
        type.auth_key = params[:auth_key]
        type.address_family = params[:address_family]
        type.amazon_address = params[:amazon_address]
        type.customer_address = params[:customer_address]
        type.bgp_peer_state = params[:bgp_peer_state]
        type.bgp_status = params[:bgp_status]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type
      end
    end

    module BGPPeerIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BGPPeerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BGPPeer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfirmConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmConnectionInput, context: context)
        type = Types::ConfirmConnectionInput.new
        type.connection_id = params[:connection_id]
        type
      end
    end

    module ConfirmConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmConnectionOutput, context: context)
        type = Types::ConfirmConnectionOutput.new
        type.connection_state = params[:connection_state]
        type
      end
    end

    module ConfirmCustomerAgreementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmCustomerAgreementInput, context: context)
        type = Types::ConfirmCustomerAgreementInput.new
        type.agreement_name = params[:agreement_name]
        type
      end
    end

    module ConfirmCustomerAgreementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmCustomerAgreementOutput, context: context)
        type = Types::ConfirmCustomerAgreementOutput.new
        type.status = params[:status]
        type
      end
    end

    module ConfirmPrivateVirtualInterfaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmPrivateVirtualInterfaceInput, context: context)
        type = Types::ConfirmPrivateVirtualInterfaceInput.new
        type.virtual_interface_id = params[:virtual_interface_id]
        type.virtual_gateway_id = params[:virtual_gateway_id]
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type
      end
    end

    module ConfirmPrivateVirtualInterfaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmPrivateVirtualInterfaceOutput, context: context)
        type = Types::ConfirmPrivateVirtualInterfaceOutput.new
        type.virtual_interface_state = params[:virtual_interface_state]
        type
      end
    end

    module ConfirmPublicVirtualInterfaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmPublicVirtualInterfaceInput, context: context)
        type = Types::ConfirmPublicVirtualInterfaceInput.new
        type.virtual_interface_id = params[:virtual_interface_id]
        type
      end
    end

    module ConfirmPublicVirtualInterfaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmPublicVirtualInterfaceOutput, context: context)
        type = Types::ConfirmPublicVirtualInterfaceOutput.new
        type.virtual_interface_state = params[:virtual_interface_state]
        type
      end
    end

    module ConfirmTransitVirtualInterfaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmTransitVirtualInterfaceInput, context: context)
        type = Types::ConfirmTransitVirtualInterfaceInput.new
        type.virtual_interface_id = params[:virtual_interface_id]
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type
      end
    end

    module ConfirmTransitVirtualInterfaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmTransitVirtualInterfaceOutput, context: context)
        type = Types::ConfirmTransitVirtualInterfaceOutput.new
        type.virtual_interface_state = params[:virtual_interface_state]
        type
      end
    end

    module Connection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Connection, context: context)
        type = Types::Connection.new
        type.owner_account = params[:owner_account]
        type.connection_id = params[:connection_id]
        type.connection_name = params[:connection_name]
        type.connection_state = params[:connection_state]
        type.region = params[:region]
        type.location = params[:location]
        type.bandwidth = params[:bandwidth]
        type.vlan = params[:vlan]
        type.partner_name = params[:partner_name]
        type.loa_issue_time = params[:loa_issue_time]
        type.lag_id = params[:lag_id]
        type.aws_device = params[:aws_device]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.has_logical_redundancy = params[:has_logical_redundancy]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provider_name = params[:provider_name]
        type.mac_sec_capable = params[:mac_sec_capable]
        type.port_encryption_status = params[:port_encryption_status]
        type.encryption_mode = params[:encryption_mode]
        type.mac_sec_keys = MacSecKeyList.build(params[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless params[:mac_sec_keys].nil?
        type
      end
    end

    module ConnectionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Connection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateBGPPeerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBGPPeerInput, context: context)
        type = Types::CreateBGPPeerInput.new
        type.virtual_interface_id = params[:virtual_interface_id]
        type.new_bgp_peer = NewBGPPeer.build(params[:new_bgp_peer], context: "#{context}[:new_bgp_peer]") unless params[:new_bgp_peer].nil?
        type
      end
    end

    module CreateBGPPeerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBGPPeerOutput, context: context)
        type = Types::CreateBGPPeerOutput.new
        type.virtual_interface = VirtualInterface.build(params[:virtual_interface], context: "#{context}[:virtual_interface]") unless params[:virtual_interface].nil?
        type
      end
    end

    module CreateConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectionInput, context: context)
        type = Types::CreateConnectionInput.new
        type.location = params[:location]
        type.bandwidth = params[:bandwidth]
        type.connection_name = params[:connection_name]
        type.lag_id = params[:lag_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provider_name = params[:provider_name]
        type.request_mac_sec = params[:request_mac_sec]
        type
      end
    end

    module CreateConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectionOutput, context: context)
        type = Types::CreateConnectionOutput.new
        type.owner_account = params[:owner_account]
        type.connection_id = params[:connection_id]
        type.connection_name = params[:connection_name]
        type.connection_state = params[:connection_state]
        type.region = params[:region]
        type.location = params[:location]
        type.bandwidth = params[:bandwidth]
        type.vlan = params[:vlan]
        type.partner_name = params[:partner_name]
        type.loa_issue_time = params[:loa_issue_time]
        type.lag_id = params[:lag_id]
        type.aws_device = params[:aws_device]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.has_logical_redundancy = params[:has_logical_redundancy]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provider_name = params[:provider_name]
        type.mac_sec_capable = params[:mac_sec_capable]
        type.port_encryption_status = params[:port_encryption_status]
        type.encryption_mode = params[:encryption_mode]
        type.mac_sec_keys = MacSecKeyList.build(params[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless params[:mac_sec_keys].nil?
        type
      end
    end

    module CreateDirectConnectGatewayAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDirectConnectGatewayAssociationInput, context: context)
        type = Types::CreateDirectConnectGatewayAssociationInput.new
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.gateway_id = params[:gateway_id]
        type.add_allowed_prefixes_to_direct_connect_gateway = RouteFilterPrefixList.build(params[:add_allowed_prefixes_to_direct_connect_gateway], context: "#{context}[:add_allowed_prefixes_to_direct_connect_gateway]") unless params[:add_allowed_prefixes_to_direct_connect_gateway].nil?
        type.virtual_gateway_id = params[:virtual_gateway_id]
        type
      end
    end

    module CreateDirectConnectGatewayAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDirectConnectGatewayAssociationOutput, context: context)
        type = Types::CreateDirectConnectGatewayAssociationOutput.new
        type.direct_connect_gateway_association = DirectConnectGatewayAssociation.build(params[:direct_connect_gateway_association], context: "#{context}[:direct_connect_gateway_association]") unless params[:direct_connect_gateway_association].nil?
        type
      end
    end

    module CreateDirectConnectGatewayAssociationProposalInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDirectConnectGatewayAssociationProposalInput, context: context)
        type = Types::CreateDirectConnectGatewayAssociationProposalInput.new
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.direct_connect_gateway_owner_account = params[:direct_connect_gateway_owner_account]
        type.gateway_id = params[:gateway_id]
        type.add_allowed_prefixes_to_direct_connect_gateway = RouteFilterPrefixList.build(params[:add_allowed_prefixes_to_direct_connect_gateway], context: "#{context}[:add_allowed_prefixes_to_direct_connect_gateway]") unless params[:add_allowed_prefixes_to_direct_connect_gateway].nil?
        type.remove_allowed_prefixes_to_direct_connect_gateway = RouteFilterPrefixList.build(params[:remove_allowed_prefixes_to_direct_connect_gateway], context: "#{context}[:remove_allowed_prefixes_to_direct_connect_gateway]") unless params[:remove_allowed_prefixes_to_direct_connect_gateway].nil?
        type
      end
    end

    module CreateDirectConnectGatewayAssociationProposalOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDirectConnectGatewayAssociationProposalOutput, context: context)
        type = Types::CreateDirectConnectGatewayAssociationProposalOutput.new
        type.direct_connect_gateway_association_proposal = DirectConnectGatewayAssociationProposal.build(params[:direct_connect_gateway_association_proposal], context: "#{context}[:direct_connect_gateway_association_proposal]") unless params[:direct_connect_gateway_association_proposal].nil?
        type
      end
    end

    module CreateDirectConnectGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDirectConnectGatewayInput, context: context)
        type = Types::CreateDirectConnectGatewayInput.new
        type.direct_connect_gateway_name = params[:direct_connect_gateway_name]
        type.amazon_side_asn = params[:amazon_side_asn]
        type
      end
    end

    module CreateDirectConnectGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDirectConnectGatewayOutput, context: context)
        type = Types::CreateDirectConnectGatewayOutput.new
        type.direct_connect_gateway = DirectConnectGateway.build(params[:direct_connect_gateway], context: "#{context}[:direct_connect_gateway]") unless params[:direct_connect_gateway].nil?
        type
      end
    end

    module CreateInterconnectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInterconnectInput, context: context)
        type = Types::CreateInterconnectInput.new
        type.interconnect_name = params[:interconnect_name]
        type.bandwidth = params[:bandwidth]
        type.location = params[:location]
        type.lag_id = params[:lag_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provider_name = params[:provider_name]
        type
      end
    end

    module CreateInterconnectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInterconnectOutput, context: context)
        type = Types::CreateInterconnectOutput.new
        type.interconnect_id = params[:interconnect_id]
        type.interconnect_name = params[:interconnect_name]
        type.interconnect_state = params[:interconnect_state]
        type.region = params[:region]
        type.location = params[:location]
        type.bandwidth = params[:bandwidth]
        type.loa_issue_time = params[:loa_issue_time]
        type.lag_id = params[:lag_id]
        type.aws_device = params[:aws_device]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.has_logical_redundancy = params[:has_logical_redundancy]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provider_name = params[:provider_name]
        type
      end
    end

    module CreateLagInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLagInput, context: context)
        type = Types::CreateLagInput.new
        type.number_of_connections = params[:number_of_connections]
        type.location = params[:location]
        type.connections_bandwidth = params[:connections_bandwidth]
        type.lag_name = params[:lag_name]
        type.connection_id = params[:connection_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.child_connection_tags = TagList.build(params[:child_connection_tags], context: "#{context}[:child_connection_tags]") unless params[:child_connection_tags].nil?
        type.provider_name = params[:provider_name]
        type.request_mac_sec = params[:request_mac_sec]
        type
      end
    end

    module CreateLagOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLagOutput, context: context)
        type = Types::CreateLagOutput.new
        type.connections_bandwidth = params[:connections_bandwidth]
        type.number_of_connections = params[:number_of_connections]
        type.lag_id = params[:lag_id]
        type.owner_account = params[:owner_account]
        type.lag_name = params[:lag_name]
        type.lag_state = params[:lag_state]
        type.location = params[:location]
        type.region = params[:region]
        type.minimum_links = params[:minimum_links]
        type.aws_device = params[:aws_device]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.connections = ConnectionList.build(params[:connections], context: "#{context}[:connections]") unless params[:connections].nil?
        type.allows_hosted_connections = params[:allows_hosted_connections]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.has_logical_redundancy = params[:has_logical_redundancy]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provider_name = params[:provider_name]
        type.mac_sec_capable = params[:mac_sec_capable]
        type.encryption_mode = params[:encryption_mode]
        type.mac_sec_keys = MacSecKeyList.build(params[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless params[:mac_sec_keys].nil?
        type
      end
    end

    module CreatePrivateVirtualInterfaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePrivateVirtualInterfaceInput, context: context)
        type = Types::CreatePrivateVirtualInterfaceInput.new
        type.connection_id = params[:connection_id]
        type.new_private_virtual_interface = NewPrivateVirtualInterface.build(params[:new_private_virtual_interface], context: "#{context}[:new_private_virtual_interface]") unless params[:new_private_virtual_interface].nil?
        type
      end
    end

    module CreatePrivateVirtualInterfaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePrivateVirtualInterfaceOutput, context: context)
        type = Types::CreatePrivateVirtualInterfaceOutput.new
        type.owner_account = params[:owner_account]
        type.virtual_interface_id = params[:virtual_interface_id]
        type.location = params[:location]
        type.connection_id = params[:connection_id]
        type.virtual_interface_type = params[:virtual_interface_type]
        type.virtual_interface_name = params[:virtual_interface_name]
        type.vlan = params[:vlan]
        type.asn = params[:asn]
        type.amazon_side_asn = params[:amazon_side_asn]
        type.auth_key = params[:auth_key]
        type.amazon_address = params[:amazon_address]
        type.customer_address = params[:customer_address]
        type.address_family = params[:address_family]
        type.virtual_interface_state = params[:virtual_interface_state]
        type.customer_router_config = params[:customer_router_config]
        type.mtu = params[:mtu]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.virtual_gateway_id = params[:virtual_gateway_id]
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.route_filter_prefixes = RouteFilterPrefixList.build(params[:route_filter_prefixes], context: "#{context}[:route_filter_prefixes]") unless params[:route_filter_prefixes].nil?
        type.bgp_peers = BGPPeerList.build(params[:bgp_peers], context: "#{context}[:bgp_peers]") unless params[:bgp_peers].nil?
        type.region = params[:region]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.site_link_enabled = params[:site_link_enabled]
        type
      end
    end

    module CreatePublicVirtualInterfaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePublicVirtualInterfaceInput, context: context)
        type = Types::CreatePublicVirtualInterfaceInput.new
        type.connection_id = params[:connection_id]
        type.new_public_virtual_interface = NewPublicVirtualInterface.build(params[:new_public_virtual_interface], context: "#{context}[:new_public_virtual_interface]") unless params[:new_public_virtual_interface].nil?
        type
      end
    end

    module CreatePublicVirtualInterfaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePublicVirtualInterfaceOutput, context: context)
        type = Types::CreatePublicVirtualInterfaceOutput.new
        type.owner_account = params[:owner_account]
        type.virtual_interface_id = params[:virtual_interface_id]
        type.location = params[:location]
        type.connection_id = params[:connection_id]
        type.virtual_interface_type = params[:virtual_interface_type]
        type.virtual_interface_name = params[:virtual_interface_name]
        type.vlan = params[:vlan]
        type.asn = params[:asn]
        type.amazon_side_asn = params[:amazon_side_asn]
        type.auth_key = params[:auth_key]
        type.amazon_address = params[:amazon_address]
        type.customer_address = params[:customer_address]
        type.address_family = params[:address_family]
        type.virtual_interface_state = params[:virtual_interface_state]
        type.customer_router_config = params[:customer_router_config]
        type.mtu = params[:mtu]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.virtual_gateway_id = params[:virtual_gateway_id]
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.route_filter_prefixes = RouteFilterPrefixList.build(params[:route_filter_prefixes], context: "#{context}[:route_filter_prefixes]") unless params[:route_filter_prefixes].nil?
        type.bgp_peers = BGPPeerList.build(params[:bgp_peers], context: "#{context}[:bgp_peers]") unless params[:bgp_peers].nil?
        type.region = params[:region]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.site_link_enabled = params[:site_link_enabled]
        type
      end
    end

    module CreateTransitVirtualInterfaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTransitVirtualInterfaceInput, context: context)
        type = Types::CreateTransitVirtualInterfaceInput.new
        type.connection_id = params[:connection_id]
        type.new_transit_virtual_interface = NewTransitVirtualInterface.build(params[:new_transit_virtual_interface], context: "#{context}[:new_transit_virtual_interface]") unless params[:new_transit_virtual_interface].nil?
        type
      end
    end

    module CreateTransitVirtualInterfaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTransitVirtualInterfaceOutput, context: context)
        type = Types::CreateTransitVirtualInterfaceOutput.new
        type.virtual_interface = VirtualInterface.build(params[:virtual_interface], context: "#{context}[:virtual_interface]") unless params[:virtual_interface].nil?
        type
      end
    end

    module CustomerAgreement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomerAgreement, context: context)
        type = Types::CustomerAgreement.new
        type.agreement_name = params[:agreement_name]
        type.status = params[:status]
        type
      end
    end

    module DeleteBGPPeerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBGPPeerInput, context: context)
        type = Types::DeleteBGPPeerInput.new
        type.virtual_interface_id = params[:virtual_interface_id]
        type.asn = params[:asn]
        type.customer_address = params[:customer_address]
        type.bgp_peer_id = params[:bgp_peer_id]
        type
      end
    end

    module DeleteBGPPeerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBGPPeerOutput, context: context)
        type = Types::DeleteBGPPeerOutput.new
        type.virtual_interface = VirtualInterface.build(params[:virtual_interface], context: "#{context}[:virtual_interface]") unless params[:virtual_interface].nil?
        type
      end
    end

    module DeleteConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectionInput, context: context)
        type = Types::DeleteConnectionInput.new
        type.connection_id = params[:connection_id]
        type
      end
    end

    module DeleteConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectionOutput, context: context)
        type = Types::DeleteConnectionOutput.new
        type.owner_account = params[:owner_account]
        type.connection_id = params[:connection_id]
        type.connection_name = params[:connection_name]
        type.connection_state = params[:connection_state]
        type.region = params[:region]
        type.location = params[:location]
        type.bandwidth = params[:bandwidth]
        type.vlan = params[:vlan]
        type.partner_name = params[:partner_name]
        type.loa_issue_time = params[:loa_issue_time]
        type.lag_id = params[:lag_id]
        type.aws_device = params[:aws_device]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.has_logical_redundancy = params[:has_logical_redundancy]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provider_name = params[:provider_name]
        type.mac_sec_capable = params[:mac_sec_capable]
        type.port_encryption_status = params[:port_encryption_status]
        type.encryption_mode = params[:encryption_mode]
        type.mac_sec_keys = MacSecKeyList.build(params[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless params[:mac_sec_keys].nil?
        type
      end
    end

    module DeleteDirectConnectGatewayAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDirectConnectGatewayAssociationInput, context: context)
        type = Types::DeleteDirectConnectGatewayAssociationInput.new
        type.association_id = params[:association_id]
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.virtual_gateway_id = params[:virtual_gateway_id]
        type
      end
    end

    module DeleteDirectConnectGatewayAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDirectConnectGatewayAssociationOutput, context: context)
        type = Types::DeleteDirectConnectGatewayAssociationOutput.new
        type.direct_connect_gateway_association = DirectConnectGatewayAssociation.build(params[:direct_connect_gateway_association], context: "#{context}[:direct_connect_gateway_association]") unless params[:direct_connect_gateway_association].nil?
        type
      end
    end

    module DeleteDirectConnectGatewayAssociationProposalInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDirectConnectGatewayAssociationProposalInput, context: context)
        type = Types::DeleteDirectConnectGatewayAssociationProposalInput.new
        type.proposal_id = params[:proposal_id]
        type
      end
    end

    module DeleteDirectConnectGatewayAssociationProposalOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDirectConnectGatewayAssociationProposalOutput, context: context)
        type = Types::DeleteDirectConnectGatewayAssociationProposalOutput.new
        type.direct_connect_gateway_association_proposal = DirectConnectGatewayAssociationProposal.build(params[:direct_connect_gateway_association_proposal], context: "#{context}[:direct_connect_gateway_association_proposal]") unless params[:direct_connect_gateway_association_proposal].nil?
        type
      end
    end

    module DeleteDirectConnectGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDirectConnectGatewayInput, context: context)
        type = Types::DeleteDirectConnectGatewayInput.new
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type
      end
    end

    module DeleteDirectConnectGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDirectConnectGatewayOutput, context: context)
        type = Types::DeleteDirectConnectGatewayOutput.new
        type.direct_connect_gateway = DirectConnectGateway.build(params[:direct_connect_gateway], context: "#{context}[:direct_connect_gateway]") unless params[:direct_connect_gateway].nil?
        type
      end
    end

    module DeleteInterconnectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInterconnectInput, context: context)
        type = Types::DeleteInterconnectInput.new
        type.interconnect_id = params[:interconnect_id]
        type
      end
    end

    module DeleteInterconnectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInterconnectOutput, context: context)
        type = Types::DeleteInterconnectOutput.new
        type.interconnect_state = params[:interconnect_state]
        type
      end
    end

    module DeleteLagInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLagInput, context: context)
        type = Types::DeleteLagInput.new
        type.lag_id = params[:lag_id]
        type
      end
    end

    module DeleteLagOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLagOutput, context: context)
        type = Types::DeleteLagOutput.new
        type.connections_bandwidth = params[:connections_bandwidth]
        type.number_of_connections = params[:number_of_connections]
        type.lag_id = params[:lag_id]
        type.owner_account = params[:owner_account]
        type.lag_name = params[:lag_name]
        type.lag_state = params[:lag_state]
        type.location = params[:location]
        type.region = params[:region]
        type.minimum_links = params[:minimum_links]
        type.aws_device = params[:aws_device]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.connections = ConnectionList.build(params[:connections], context: "#{context}[:connections]") unless params[:connections].nil?
        type.allows_hosted_connections = params[:allows_hosted_connections]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.has_logical_redundancy = params[:has_logical_redundancy]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provider_name = params[:provider_name]
        type.mac_sec_capable = params[:mac_sec_capable]
        type.encryption_mode = params[:encryption_mode]
        type.mac_sec_keys = MacSecKeyList.build(params[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless params[:mac_sec_keys].nil?
        type
      end
    end

    module DeleteVirtualInterfaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVirtualInterfaceInput, context: context)
        type = Types::DeleteVirtualInterfaceInput.new
        type.virtual_interface_id = params[:virtual_interface_id]
        type
      end
    end

    module DeleteVirtualInterfaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVirtualInterfaceOutput, context: context)
        type = Types::DeleteVirtualInterfaceOutput.new
        type.virtual_interface_state = params[:virtual_interface_state]
        type
      end
    end

    module DescribeConnectionLoaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectionLoaInput, context: context)
        type = Types::DescribeConnectionLoaInput.new
        type.connection_id = params[:connection_id]
        type.provider_name = params[:provider_name]
        type.loa_content_type = params[:loa_content_type]
        type
      end
    end

    module DescribeConnectionLoaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectionLoaOutput, context: context)
        type = Types::DescribeConnectionLoaOutput.new
        type.loa = Loa.build(params[:loa], context: "#{context}[:loa]") unless params[:loa].nil?
        type
      end
    end

    module DescribeConnectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectionsInput, context: context)
        type = Types::DescribeConnectionsInput.new
        type.connection_id = params[:connection_id]
        type
      end
    end

    module DescribeConnectionsOnInterconnectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectionsOnInterconnectInput, context: context)
        type = Types::DescribeConnectionsOnInterconnectInput.new
        type.interconnect_id = params[:interconnect_id]
        type
      end
    end

    module DescribeConnectionsOnInterconnectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectionsOnInterconnectOutput, context: context)
        type = Types::DescribeConnectionsOnInterconnectOutput.new
        type.connections = ConnectionList.build(params[:connections], context: "#{context}[:connections]") unless params[:connections].nil?
        type
      end
    end

    module DescribeConnectionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectionsOutput, context: context)
        type = Types::DescribeConnectionsOutput.new
        type.connections = ConnectionList.build(params[:connections], context: "#{context}[:connections]") unless params[:connections].nil?
        type
      end
    end

    module DescribeCustomerMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomerMetadataInput, context: context)
        type = Types::DescribeCustomerMetadataInput.new
        type
      end
    end

    module DescribeCustomerMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomerMetadataOutput, context: context)
        type = Types::DescribeCustomerMetadataOutput.new
        type.agreements = AgreementList.build(params[:agreements], context: "#{context}[:agreements]") unless params[:agreements].nil?
        type.nni_partner_type = params[:nni_partner_type]
        type
      end
    end

    module DescribeDirectConnectGatewayAssociationProposalsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDirectConnectGatewayAssociationProposalsInput, context: context)
        type = Types::DescribeDirectConnectGatewayAssociationProposalsInput.new
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.proposal_id = params[:proposal_id]
        type.associated_gateway_id = params[:associated_gateway_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDirectConnectGatewayAssociationProposalsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDirectConnectGatewayAssociationProposalsOutput, context: context)
        type = Types::DescribeDirectConnectGatewayAssociationProposalsOutput.new
        type.direct_connect_gateway_association_proposals = DirectConnectGatewayAssociationProposalList.build(params[:direct_connect_gateway_association_proposals], context: "#{context}[:direct_connect_gateway_association_proposals]") unless params[:direct_connect_gateway_association_proposals].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDirectConnectGatewayAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDirectConnectGatewayAssociationsInput, context: context)
        type = Types::DescribeDirectConnectGatewayAssociationsInput.new
        type.association_id = params[:association_id]
        type.associated_gateway_id = params[:associated_gateway_id]
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.virtual_gateway_id = params[:virtual_gateway_id]
        type
      end
    end

    module DescribeDirectConnectGatewayAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDirectConnectGatewayAssociationsOutput, context: context)
        type = Types::DescribeDirectConnectGatewayAssociationsOutput.new
        type.direct_connect_gateway_associations = DirectConnectGatewayAssociationList.build(params[:direct_connect_gateway_associations], context: "#{context}[:direct_connect_gateway_associations]") unless params[:direct_connect_gateway_associations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDirectConnectGatewayAttachmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDirectConnectGatewayAttachmentsInput, context: context)
        type = Types::DescribeDirectConnectGatewayAttachmentsInput.new
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.virtual_interface_id = params[:virtual_interface_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDirectConnectGatewayAttachmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDirectConnectGatewayAttachmentsOutput, context: context)
        type = Types::DescribeDirectConnectGatewayAttachmentsOutput.new
        type.direct_connect_gateway_attachments = DirectConnectGatewayAttachmentList.build(params[:direct_connect_gateway_attachments], context: "#{context}[:direct_connect_gateway_attachments]") unless params[:direct_connect_gateway_attachments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDirectConnectGatewaysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDirectConnectGatewaysInput, context: context)
        type = Types::DescribeDirectConnectGatewaysInput.new
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDirectConnectGatewaysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDirectConnectGatewaysOutput, context: context)
        type = Types::DescribeDirectConnectGatewaysOutput.new
        type.direct_connect_gateways = DirectConnectGatewayList.build(params[:direct_connect_gateways], context: "#{context}[:direct_connect_gateways]") unless params[:direct_connect_gateways].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeHostedConnectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHostedConnectionsInput, context: context)
        type = Types::DescribeHostedConnectionsInput.new
        type.connection_id = params[:connection_id]
        type
      end
    end

    module DescribeHostedConnectionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHostedConnectionsOutput, context: context)
        type = Types::DescribeHostedConnectionsOutput.new
        type.connections = ConnectionList.build(params[:connections], context: "#{context}[:connections]") unless params[:connections].nil?
        type
      end
    end

    module DescribeInterconnectLoaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInterconnectLoaInput, context: context)
        type = Types::DescribeInterconnectLoaInput.new
        type.interconnect_id = params[:interconnect_id]
        type.provider_name = params[:provider_name]
        type.loa_content_type = params[:loa_content_type]
        type
      end
    end

    module DescribeInterconnectLoaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInterconnectLoaOutput, context: context)
        type = Types::DescribeInterconnectLoaOutput.new
        type.loa = Loa.build(params[:loa], context: "#{context}[:loa]") unless params[:loa].nil?
        type
      end
    end

    module DescribeInterconnectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInterconnectsInput, context: context)
        type = Types::DescribeInterconnectsInput.new
        type.interconnect_id = params[:interconnect_id]
        type
      end
    end

    module DescribeInterconnectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInterconnectsOutput, context: context)
        type = Types::DescribeInterconnectsOutput.new
        type.interconnects = InterconnectList.build(params[:interconnects], context: "#{context}[:interconnects]") unless params[:interconnects].nil?
        type
      end
    end

    module DescribeLagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLagsInput, context: context)
        type = Types::DescribeLagsInput.new
        type.lag_id = params[:lag_id]
        type
      end
    end

    module DescribeLagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLagsOutput, context: context)
        type = Types::DescribeLagsOutput.new
        type.lags = LagList.build(params[:lags], context: "#{context}[:lags]") unless params[:lags].nil?
        type
      end
    end

    module DescribeLoaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoaInput, context: context)
        type = Types::DescribeLoaInput.new
        type.connection_id = params[:connection_id]
        type.provider_name = params[:provider_name]
        type.loa_content_type = params[:loa_content_type]
        type
      end
    end

    module DescribeLoaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoaOutput, context: context)
        type = Types::DescribeLoaOutput.new
        type.loa_content = params[:loa_content]
        type.loa_content_type = params[:loa_content_type]
        type
      end
    end

    module DescribeLocationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationsInput, context: context)
        type = Types::DescribeLocationsInput.new
        type
      end
    end

    module DescribeLocationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationsOutput, context: context)
        type = Types::DescribeLocationsOutput.new
        type.locations = LocationList.build(params[:locations], context: "#{context}[:locations]") unless params[:locations].nil?
        type
      end
    end

    module DescribeRouterConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRouterConfigurationInput, context: context)
        type = Types::DescribeRouterConfigurationInput.new
        type.virtual_interface_id = params[:virtual_interface_id]
        type.router_type_identifier = params[:router_type_identifier]
        type
      end
    end

    module DescribeRouterConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRouterConfigurationOutput, context: context)
        type = Types::DescribeRouterConfigurationOutput.new
        type.customer_router_config = params[:customer_router_config]
        type.router = RouterType.build(params[:router], context: "#{context}[:router]") unless params[:router].nil?
        type.virtual_interface_id = params[:virtual_interface_id]
        type.virtual_interface_name = params[:virtual_interface_name]
        type
      end
    end

    module DescribeTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagsInput, context: context)
        type = Types::DescribeTagsInput.new
        type.resource_arns = ResourceArnList.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type
      end
    end

    module DescribeTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagsOutput, context: context)
        type = Types::DescribeTagsOutput.new
        type.resource_tags = ResourceTagList.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type
      end
    end

    module DescribeVirtualGatewaysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVirtualGatewaysInput, context: context)
        type = Types::DescribeVirtualGatewaysInput.new
        type
      end
    end

    module DescribeVirtualGatewaysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVirtualGatewaysOutput, context: context)
        type = Types::DescribeVirtualGatewaysOutput.new
        type.virtual_gateways = VirtualGatewayList.build(params[:virtual_gateways], context: "#{context}[:virtual_gateways]") unless params[:virtual_gateways].nil?
        type
      end
    end

    module DescribeVirtualInterfacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVirtualInterfacesInput, context: context)
        type = Types::DescribeVirtualInterfacesInput.new
        type.connection_id = params[:connection_id]
        type.virtual_interface_id = params[:virtual_interface_id]
        type
      end
    end

    module DescribeVirtualInterfacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVirtualInterfacesOutput, context: context)
        type = Types::DescribeVirtualInterfacesOutput.new
        type.virtual_interfaces = VirtualInterfaceList.build(params[:virtual_interfaces], context: "#{context}[:virtual_interfaces]") unless params[:virtual_interfaces].nil?
        type
      end
    end

    module DirectConnectClientException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectConnectClientException, context: context)
        type = Types::DirectConnectClientException.new
        type.message = params[:message]
        type
      end
    end

    module DirectConnectGateway
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectConnectGateway, context: context)
        type = Types::DirectConnectGateway.new
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.direct_connect_gateway_name = params[:direct_connect_gateway_name]
        type.amazon_side_asn = params[:amazon_side_asn]
        type.owner_account = params[:owner_account]
        type.direct_connect_gateway_state = params[:direct_connect_gateway_state]
        type.state_change_error = params[:state_change_error]
        type
      end
    end

    module DirectConnectGatewayAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectConnectGatewayAssociation, context: context)
        type = Types::DirectConnectGatewayAssociation.new
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.direct_connect_gateway_owner_account = params[:direct_connect_gateway_owner_account]
        type.association_state = params[:association_state]
        type.state_change_error = params[:state_change_error]
        type.associated_gateway = AssociatedGateway.build(params[:associated_gateway], context: "#{context}[:associated_gateway]") unless params[:associated_gateway].nil?
        type.association_id = params[:association_id]
        type.allowed_prefixes_to_direct_connect_gateway = RouteFilterPrefixList.build(params[:allowed_prefixes_to_direct_connect_gateway], context: "#{context}[:allowed_prefixes_to_direct_connect_gateway]") unless params[:allowed_prefixes_to_direct_connect_gateway].nil?
        type.virtual_gateway_id = params[:virtual_gateway_id]
        type.virtual_gateway_region = params[:virtual_gateway_region]
        type.virtual_gateway_owner_account = params[:virtual_gateway_owner_account]
        type
      end
    end

    module DirectConnectGatewayAssociationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DirectConnectGatewayAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DirectConnectGatewayAssociationProposal
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectConnectGatewayAssociationProposal, context: context)
        type = Types::DirectConnectGatewayAssociationProposal.new
        type.proposal_id = params[:proposal_id]
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.direct_connect_gateway_owner_account = params[:direct_connect_gateway_owner_account]
        type.proposal_state = params[:proposal_state]
        type.associated_gateway = AssociatedGateway.build(params[:associated_gateway], context: "#{context}[:associated_gateway]") unless params[:associated_gateway].nil?
        type.existing_allowed_prefixes_to_direct_connect_gateway = RouteFilterPrefixList.build(params[:existing_allowed_prefixes_to_direct_connect_gateway], context: "#{context}[:existing_allowed_prefixes_to_direct_connect_gateway]") unless params[:existing_allowed_prefixes_to_direct_connect_gateway].nil?
        type.requested_allowed_prefixes_to_direct_connect_gateway = RouteFilterPrefixList.build(params[:requested_allowed_prefixes_to_direct_connect_gateway], context: "#{context}[:requested_allowed_prefixes_to_direct_connect_gateway]") unless params[:requested_allowed_prefixes_to_direct_connect_gateway].nil?
        type
      end
    end

    module DirectConnectGatewayAssociationProposalList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DirectConnectGatewayAssociationProposal.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DirectConnectGatewayAttachment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectConnectGatewayAttachment, context: context)
        type = Types::DirectConnectGatewayAttachment.new
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.virtual_interface_id = params[:virtual_interface_id]
        type.virtual_interface_region = params[:virtual_interface_region]
        type.virtual_interface_owner_account = params[:virtual_interface_owner_account]
        type.attachment_state = params[:attachment_state]
        type.attachment_type = params[:attachment_type]
        type.state_change_error = params[:state_change_error]
        type
      end
    end

    module DirectConnectGatewayAttachmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DirectConnectGatewayAttachment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DirectConnectGatewayList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DirectConnectGateway.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DirectConnectServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectConnectServerException, context: context)
        type = Types::DirectConnectServerException.new
        type.message = params[:message]
        type
      end
    end

    module DisassociateConnectionFromLagInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateConnectionFromLagInput, context: context)
        type = Types::DisassociateConnectionFromLagInput.new
        type.connection_id = params[:connection_id]
        type.lag_id = params[:lag_id]
        type
      end
    end

    module DisassociateConnectionFromLagOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateConnectionFromLagOutput, context: context)
        type = Types::DisassociateConnectionFromLagOutput.new
        type.owner_account = params[:owner_account]
        type.connection_id = params[:connection_id]
        type.connection_name = params[:connection_name]
        type.connection_state = params[:connection_state]
        type.region = params[:region]
        type.location = params[:location]
        type.bandwidth = params[:bandwidth]
        type.vlan = params[:vlan]
        type.partner_name = params[:partner_name]
        type.loa_issue_time = params[:loa_issue_time]
        type.lag_id = params[:lag_id]
        type.aws_device = params[:aws_device]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.has_logical_redundancy = params[:has_logical_redundancy]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provider_name = params[:provider_name]
        type.mac_sec_capable = params[:mac_sec_capable]
        type.port_encryption_status = params[:port_encryption_status]
        type.encryption_mode = params[:encryption_mode]
        type.mac_sec_keys = MacSecKeyList.build(params[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless params[:mac_sec_keys].nil?
        type
      end
    end

    module DisassociateMacSecKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateMacSecKeyInput, context: context)
        type = Types::DisassociateMacSecKeyInput.new
        type.connection_id = params[:connection_id]
        type.secret_arn = params[:secret_arn]
        type
      end
    end

    module DisassociateMacSecKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateMacSecKeyOutput, context: context)
        type = Types::DisassociateMacSecKeyOutput.new
        type.connection_id = params[:connection_id]
        type.mac_sec_keys = MacSecKeyList.build(params[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless params[:mac_sec_keys].nil?
        type
      end
    end

    module DuplicateTagKeysException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateTagKeysException, context: context)
        type = Types::DuplicateTagKeysException.new
        type.message = params[:message]
        type
      end
    end

    module Interconnect
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Interconnect, context: context)
        type = Types::Interconnect.new
        type.interconnect_id = params[:interconnect_id]
        type.interconnect_name = params[:interconnect_name]
        type.interconnect_state = params[:interconnect_state]
        type.region = params[:region]
        type.location = params[:location]
        type.bandwidth = params[:bandwidth]
        type.loa_issue_time = params[:loa_issue_time]
        type.lag_id = params[:lag_id]
        type.aws_device = params[:aws_device]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.has_logical_redundancy = params[:has_logical_redundancy]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provider_name = params[:provider_name]
        type
      end
    end

    module InterconnectList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Interconnect.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Lag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Lag, context: context)
        type = Types::Lag.new
        type.connections_bandwidth = params[:connections_bandwidth]
        type.number_of_connections = params[:number_of_connections]
        type.lag_id = params[:lag_id]
        type.owner_account = params[:owner_account]
        type.lag_name = params[:lag_name]
        type.lag_state = params[:lag_state]
        type.location = params[:location]
        type.region = params[:region]
        type.minimum_links = params[:minimum_links]
        type.aws_device = params[:aws_device]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.connections = ConnectionList.build(params[:connections], context: "#{context}[:connections]") unless params[:connections].nil?
        type.allows_hosted_connections = params[:allows_hosted_connections]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.has_logical_redundancy = params[:has_logical_redundancy]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provider_name = params[:provider_name]
        type.mac_sec_capable = params[:mac_sec_capable]
        type.encryption_mode = params[:encryption_mode]
        type.mac_sec_keys = MacSecKeyList.build(params[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless params[:mac_sec_keys].nil?
        type
      end
    end

    module LagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Lag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListVirtualInterfaceTestHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVirtualInterfaceTestHistoryInput, context: context)
        type = Types::ListVirtualInterfaceTestHistoryInput.new
        type.test_id = params[:test_id]
        type.virtual_interface_id = params[:virtual_interface_id]
        type.bgp_peers = BGPPeerIdList.build(params[:bgp_peers], context: "#{context}[:bgp_peers]") unless params[:bgp_peers].nil?
        type.status = params[:status]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListVirtualInterfaceTestHistoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVirtualInterfaceTestHistoryOutput, context: context)
        type = Types::ListVirtualInterfaceTestHistoryOutput.new
        type.virtual_interface_test_history = VirtualInterfaceTestHistoryList.build(params[:virtual_interface_test_history], context: "#{context}[:virtual_interface_test_history]") unless params[:virtual_interface_test_history].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module Loa
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Loa, context: context)
        type = Types::Loa.new
        type.loa_content = params[:loa_content]
        type.loa_content_type = params[:loa_content_type]
        type
      end
    end

    module Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Location, context: context)
        type = Types::Location.new
        type.location_code = params[:location_code]
        type.location_name = params[:location_name]
        type.region = params[:region]
        type.available_port_speeds = AvailablePortSpeeds.build(params[:available_port_speeds], context: "#{context}[:available_port_speeds]") unless params[:available_port_speeds].nil?
        type.available_providers = ProviderList.build(params[:available_providers], context: "#{context}[:available_providers]") unless params[:available_providers].nil?
        type.available_mac_sec_port_speeds = AvailableMacSecPortSpeeds.build(params[:available_mac_sec_port_speeds], context: "#{context}[:available_mac_sec_port_speeds]") unless params[:available_mac_sec_port_speeds].nil?
        type
      end
    end

    module LocationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Location.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MacSecKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MacSecKey, context: context)
        type = Types::MacSecKey.new
        type.secret_arn = params[:secret_arn]
        type.ckn = params[:ckn]
        type.state = params[:state]
        type.start_on = params[:start_on]
        type
      end
    end

    module MacSecKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MacSecKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NewBGPPeer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NewBGPPeer, context: context)
        type = Types::NewBGPPeer.new
        type.asn = params[:asn]
        type.auth_key = params[:auth_key]
        type.address_family = params[:address_family]
        type.amazon_address = params[:amazon_address]
        type.customer_address = params[:customer_address]
        type
      end
    end

    module NewPrivateVirtualInterface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NewPrivateVirtualInterface, context: context)
        type = Types::NewPrivateVirtualInterface.new
        type.virtual_interface_name = params[:virtual_interface_name]
        type.vlan = params[:vlan]
        type.asn = params[:asn]
        type.mtu = params[:mtu]
        type.auth_key = params[:auth_key]
        type.amazon_address = params[:amazon_address]
        type.customer_address = params[:customer_address]
        type.address_family = params[:address_family]
        type.virtual_gateway_id = params[:virtual_gateway_id]
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.enable_site_link = params[:enable_site_link]
        type
      end
    end

    module NewPrivateVirtualInterfaceAllocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NewPrivateVirtualInterfaceAllocation, context: context)
        type = Types::NewPrivateVirtualInterfaceAllocation.new
        type.virtual_interface_name = params[:virtual_interface_name]
        type.vlan = params[:vlan]
        type.asn = params[:asn]
        type.mtu = params[:mtu]
        type.auth_key = params[:auth_key]
        type.amazon_address = params[:amazon_address]
        type.address_family = params[:address_family]
        type.customer_address = params[:customer_address]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module NewPublicVirtualInterface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NewPublicVirtualInterface, context: context)
        type = Types::NewPublicVirtualInterface.new
        type.virtual_interface_name = params[:virtual_interface_name]
        type.vlan = params[:vlan]
        type.asn = params[:asn]
        type.auth_key = params[:auth_key]
        type.amazon_address = params[:amazon_address]
        type.customer_address = params[:customer_address]
        type.address_family = params[:address_family]
        type.route_filter_prefixes = RouteFilterPrefixList.build(params[:route_filter_prefixes], context: "#{context}[:route_filter_prefixes]") unless params[:route_filter_prefixes].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module NewPublicVirtualInterfaceAllocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NewPublicVirtualInterfaceAllocation, context: context)
        type = Types::NewPublicVirtualInterfaceAllocation.new
        type.virtual_interface_name = params[:virtual_interface_name]
        type.vlan = params[:vlan]
        type.asn = params[:asn]
        type.auth_key = params[:auth_key]
        type.amazon_address = params[:amazon_address]
        type.customer_address = params[:customer_address]
        type.address_family = params[:address_family]
        type.route_filter_prefixes = RouteFilterPrefixList.build(params[:route_filter_prefixes], context: "#{context}[:route_filter_prefixes]") unless params[:route_filter_prefixes].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module NewTransitVirtualInterface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NewTransitVirtualInterface, context: context)
        type = Types::NewTransitVirtualInterface.new
        type.virtual_interface_name = params[:virtual_interface_name]
        type.vlan = params[:vlan]
        type.asn = params[:asn]
        type.mtu = params[:mtu]
        type.auth_key = params[:auth_key]
        type.amazon_address = params[:amazon_address]
        type.customer_address = params[:customer_address]
        type.address_family = params[:address_family]
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.enable_site_link = params[:enable_site_link]
        type
      end
    end

    module NewTransitVirtualInterfaceAllocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NewTransitVirtualInterfaceAllocation, context: context)
        type = Types::NewTransitVirtualInterfaceAllocation.new
        type.virtual_interface_name = params[:virtual_interface_name]
        type.vlan = params[:vlan]
        type.asn = params[:asn]
        type.mtu = params[:mtu]
        type.auth_key = params[:auth_key]
        type.amazon_address = params[:amazon_address]
        type.customer_address = params[:customer_address]
        type.address_family = params[:address_family]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ProviderList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceTag, context: context)
        type = Types::ResourceTag.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ResourceTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceTag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RouteFilterPrefix
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RouteFilterPrefix, context: context)
        type = Types::RouteFilterPrefix.new
        type.cidr = params[:cidr]
        type
      end
    end

    module RouteFilterPrefixList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RouteFilterPrefix.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RouterType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RouterType, context: context)
        type = Types::RouterType.new
        type.vendor = params[:vendor]
        type.platform = params[:platform]
        type.software = params[:software]
        type.xslt_template_name = params[:xslt_template_name]
        type.xslt_template_name_for_mac_sec = params[:xslt_template_name_for_mac_sec]
        type.router_type_identifier = params[:router_type_identifier]
        type
      end
    end

    module StartBgpFailoverTestInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBgpFailoverTestInput, context: context)
        type = Types::StartBgpFailoverTestInput.new
        type.virtual_interface_id = params[:virtual_interface_id]
        type.bgp_peers = BGPPeerIdList.build(params[:bgp_peers], context: "#{context}[:bgp_peers]") unless params[:bgp_peers].nil?
        type.test_duration_in_minutes = params[:test_duration_in_minutes]
        type
      end
    end

    module StartBgpFailoverTestOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBgpFailoverTestOutput, context: context)
        type = Types::StartBgpFailoverTestOutput.new
        type.virtual_interface_test = VirtualInterfaceTestHistory.build(params[:virtual_interface_test], context: "#{context}[:virtual_interface_test]") unless params[:virtual_interface_test].nil?
        type
      end
    end

    module StopBgpFailoverTestInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopBgpFailoverTestInput, context: context)
        type = Types::StopBgpFailoverTestInput.new
        type.virtual_interface_id = params[:virtual_interface_id]
        type
      end
    end

    module StopBgpFailoverTestOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopBgpFailoverTestOutput, context: context)
        type = Types::StopBgpFailoverTestOutput.new
        type.virtual_interface_test = VirtualInterfaceTestHistory.build(params[:virtual_interface_test], context: "#{context}[:virtual_interface_test]") unless params[:virtual_interface_test].nil?
        type
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

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectionInput, context: context)
        type = Types::UpdateConnectionInput.new
        type.connection_id = params[:connection_id]
        type.connection_name = params[:connection_name]
        type.encryption_mode = params[:encryption_mode]
        type
      end
    end

    module UpdateConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectionOutput, context: context)
        type = Types::UpdateConnectionOutput.new
        type.owner_account = params[:owner_account]
        type.connection_id = params[:connection_id]
        type.connection_name = params[:connection_name]
        type.connection_state = params[:connection_state]
        type.region = params[:region]
        type.location = params[:location]
        type.bandwidth = params[:bandwidth]
        type.vlan = params[:vlan]
        type.partner_name = params[:partner_name]
        type.loa_issue_time = params[:loa_issue_time]
        type.lag_id = params[:lag_id]
        type.aws_device = params[:aws_device]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.has_logical_redundancy = params[:has_logical_redundancy]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provider_name = params[:provider_name]
        type.mac_sec_capable = params[:mac_sec_capable]
        type.port_encryption_status = params[:port_encryption_status]
        type.encryption_mode = params[:encryption_mode]
        type.mac_sec_keys = MacSecKeyList.build(params[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless params[:mac_sec_keys].nil?
        type
      end
    end

    module UpdateDirectConnectGatewayAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDirectConnectGatewayAssociationInput, context: context)
        type = Types::UpdateDirectConnectGatewayAssociationInput.new
        type.association_id = params[:association_id]
        type.add_allowed_prefixes_to_direct_connect_gateway = RouteFilterPrefixList.build(params[:add_allowed_prefixes_to_direct_connect_gateway], context: "#{context}[:add_allowed_prefixes_to_direct_connect_gateway]") unless params[:add_allowed_prefixes_to_direct_connect_gateway].nil?
        type.remove_allowed_prefixes_to_direct_connect_gateway = RouteFilterPrefixList.build(params[:remove_allowed_prefixes_to_direct_connect_gateway], context: "#{context}[:remove_allowed_prefixes_to_direct_connect_gateway]") unless params[:remove_allowed_prefixes_to_direct_connect_gateway].nil?
        type
      end
    end

    module UpdateDirectConnectGatewayAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDirectConnectGatewayAssociationOutput, context: context)
        type = Types::UpdateDirectConnectGatewayAssociationOutput.new
        type.direct_connect_gateway_association = DirectConnectGatewayAssociation.build(params[:direct_connect_gateway_association], context: "#{context}[:direct_connect_gateway_association]") unless params[:direct_connect_gateway_association].nil?
        type
      end
    end

    module UpdateDirectConnectGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDirectConnectGatewayInput, context: context)
        type = Types::UpdateDirectConnectGatewayInput.new
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.new_direct_connect_gateway_name = params[:new_direct_connect_gateway_name]
        type
      end
    end

    module UpdateDirectConnectGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDirectConnectGatewayOutput, context: context)
        type = Types::UpdateDirectConnectGatewayOutput.new
        type.direct_connect_gateway = DirectConnectGateway.build(params[:direct_connect_gateway], context: "#{context}[:direct_connect_gateway]") unless params[:direct_connect_gateway].nil?
        type
      end
    end

    module UpdateLagInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLagInput, context: context)
        type = Types::UpdateLagInput.new
        type.lag_id = params[:lag_id]
        type.lag_name = params[:lag_name]
        type.minimum_links = params[:minimum_links]
        type.encryption_mode = params[:encryption_mode]
        type
      end
    end

    module UpdateLagOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLagOutput, context: context)
        type = Types::UpdateLagOutput.new
        type.connections_bandwidth = params[:connections_bandwidth]
        type.number_of_connections = params[:number_of_connections]
        type.lag_id = params[:lag_id]
        type.owner_account = params[:owner_account]
        type.lag_name = params[:lag_name]
        type.lag_state = params[:lag_state]
        type.location = params[:location]
        type.region = params[:region]
        type.minimum_links = params[:minimum_links]
        type.aws_device = params[:aws_device]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.connections = ConnectionList.build(params[:connections], context: "#{context}[:connections]") unless params[:connections].nil?
        type.allows_hosted_connections = params[:allows_hosted_connections]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.has_logical_redundancy = params[:has_logical_redundancy]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.provider_name = params[:provider_name]
        type.mac_sec_capable = params[:mac_sec_capable]
        type.encryption_mode = params[:encryption_mode]
        type.mac_sec_keys = MacSecKeyList.build(params[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless params[:mac_sec_keys].nil?
        type
      end
    end

    module UpdateVirtualInterfaceAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVirtualInterfaceAttributesInput, context: context)
        type = Types::UpdateVirtualInterfaceAttributesInput.new
        type.virtual_interface_id = params[:virtual_interface_id]
        type.mtu = params[:mtu]
        type.enable_site_link = params[:enable_site_link]
        type.virtual_interface_name = params[:virtual_interface_name]
        type
      end
    end

    module UpdateVirtualInterfaceAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVirtualInterfaceAttributesOutput, context: context)
        type = Types::UpdateVirtualInterfaceAttributesOutput.new
        type.owner_account = params[:owner_account]
        type.virtual_interface_id = params[:virtual_interface_id]
        type.location = params[:location]
        type.connection_id = params[:connection_id]
        type.virtual_interface_type = params[:virtual_interface_type]
        type.virtual_interface_name = params[:virtual_interface_name]
        type.vlan = params[:vlan]
        type.asn = params[:asn]
        type.amazon_side_asn = params[:amazon_side_asn]
        type.auth_key = params[:auth_key]
        type.amazon_address = params[:amazon_address]
        type.customer_address = params[:customer_address]
        type.address_family = params[:address_family]
        type.virtual_interface_state = params[:virtual_interface_state]
        type.customer_router_config = params[:customer_router_config]
        type.mtu = params[:mtu]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.virtual_gateway_id = params[:virtual_gateway_id]
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.route_filter_prefixes = RouteFilterPrefixList.build(params[:route_filter_prefixes], context: "#{context}[:route_filter_prefixes]") unless params[:route_filter_prefixes].nil?
        type.bgp_peers = BGPPeerList.build(params[:bgp_peers], context: "#{context}[:bgp_peers]") unless params[:bgp_peers].nil?
        type.region = params[:region]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.site_link_enabled = params[:site_link_enabled]
        type
      end
    end

    module VirtualGateway
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGateway, context: context)
        type = Types::VirtualGateway.new
        type.virtual_gateway_id = params[:virtual_gateway_id]
        type.virtual_gateway_state = params[:virtual_gateway_state]
        type
      end
    end

    module VirtualGatewayList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VirtualGateway.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VirtualInterface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualInterface, context: context)
        type = Types::VirtualInterface.new
        type.owner_account = params[:owner_account]
        type.virtual_interface_id = params[:virtual_interface_id]
        type.location = params[:location]
        type.connection_id = params[:connection_id]
        type.virtual_interface_type = params[:virtual_interface_type]
        type.virtual_interface_name = params[:virtual_interface_name]
        type.vlan = params[:vlan]
        type.asn = params[:asn]
        type.amazon_side_asn = params[:amazon_side_asn]
        type.auth_key = params[:auth_key]
        type.amazon_address = params[:amazon_address]
        type.customer_address = params[:customer_address]
        type.address_family = params[:address_family]
        type.virtual_interface_state = params[:virtual_interface_state]
        type.customer_router_config = params[:customer_router_config]
        type.mtu = params[:mtu]
        type.jumbo_frame_capable = params[:jumbo_frame_capable]
        type.virtual_gateway_id = params[:virtual_gateway_id]
        type.direct_connect_gateway_id = params[:direct_connect_gateway_id]
        type.route_filter_prefixes = RouteFilterPrefixList.build(params[:route_filter_prefixes], context: "#{context}[:route_filter_prefixes]") unless params[:route_filter_prefixes].nil?
        type.bgp_peers = BGPPeerList.build(params[:bgp_peers], context: "#{context}[:bgp_peers]") unless params[:bgp_peers].nil?
        type.region = params[:region]
        type.aws_device_v2 = params[:aws_device_v2]
        type.aws_logical_device_id = params[:aws_logical_device_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.site_link_enabled = params[:site_link_enabled]
        type
      end
    end

    module VirtualInterfaceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VirtualInterface.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VirtualInterfaceTestHistory
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualInterfaceTestHistory, context: context)
        type = Types::VirtualInterfaceTestHistory.new
        type.test_id = params[:test_id]
        type.virtual_interface_id = params[:virtual_interface_id]
        type.bgp_peers = BGPPeerIdList.build(params[:bgp_peers], context: "#{context}[:bgp_peers]") unless params[:bgp_peers].nil?
        type.status = params[:status]
        type.owner_account = params[:owner_account]
        type.test_duration_in_minutes = params[:test_duration_in_minutes]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module VirtualInterfaceTestHistoryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VirtualInterfaceTestHistory.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
