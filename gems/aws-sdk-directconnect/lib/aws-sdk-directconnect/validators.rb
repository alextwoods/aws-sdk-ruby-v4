# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DirectConnect
  module Validators

    class AcceptDirectConnectGatewayAssociationProposalInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptDirectConnectGatewayAssociationProposalInput, context: context)
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Hearth::Validator.validate!(input[:proposal_id], ::String, context: "#{context}[:proposal_id]")
        Hearth::Validator.validate!(input[:associated_gateway_owner_account], ::String, context: "#{context}[:associated_gateway_owner_account]")
        Validators::RouteFilterPrefixList.validate!(input[:override_allowed_prefixes_to_direct_connect_gateway], context: "#{context}[:override_allowed_prefixes_to_direct_connect_gateway]") unless input[:override_allowed_prefixes_to_direct_connect_gateway].nil?
      end
    end

    class AcceptDirectConnectGatewayAssociationProposalOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptDirectConnectGatewayAssociationProposalOutput, context: context)
        Validators::DirectConnectGatewayAssociation.validate!(input[:direct_connect_gateway_association], context: "#{context}[:direct_connect_gateway_association]") unless input[:direct_connect_gateway_association].nil?
      end
    end

    class AgreementList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CustomerAgreement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AllocateConnectionOnInterconnectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllocateConnectionOnInterconnectInput, context: context)
        Hearth::Validator.validate!(input[:bandwidth], ::String, context: "#{context}[:bandwidth]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:interconnect_id], ::String, context: "#{context}[:interconnect_id]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
      end
    end

    class AllocateConnectionOnInterconnectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllocateConnectionOnInterconnectOutput, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:bandwidth], ::String, context: "#{context}[:bandwidth]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:partner_name], ::String, context: "#{context}[:partner_name]")
        Hearth::Validator.validate!(input[:loa_issue_time], ::Time, context: "#{context}[:loa_issue_time]")
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
        Hearth::Validator.validate!(input[:aws_device], ::String, context: "#{context}[:aws_device]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Hearth::Validator.validate!(input[:has_logical_redundancy], ::String, context: "#{context}[:has_logical_redundancy]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:mac_sec_capable], ::TrueClass, ::FalseClass, context: "#{context}[:mac_sec_capable]")
        Hearth::Validator.validate!(input[:port_encryption_status], ::String, context: "#{context}[:port_encryption_status]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Validators::MacSecKeyList.validate!(input[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless input[:mac_sec_keys].nil?
      end
    end

    class AllocateHostedConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllocateHostedConnectionInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:bandwidth], ::String, context: "#{context}[:bandwidth]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AllocateHostedConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllocateHostedConnectionOutput, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:bandwidth], ::String, context: "#{context}[:bandwidth]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:partner_name], ::String, context: "#{context}[:partner_name]")
        Hearth::Validator.validate!(input[:loa_issue_time], ::Time, context: "#{context}[:loa_issue_time]")
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
        Hearth::Validator.validate!(input[:aws_device], ::String, context: "#{context}[:aws_device]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Hearth::Validator.validate!(input[:has_logical_redundancy], ::String, context: "#{context}[:has_logical_redundancy]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:mac_sec_capable], ::TrueClass, ::FalseClass, context: "#{context}[:mac_sec_capable]")
        Hearth::Validator.validate!(input[:port_encryption_status], ::String, context: "#{context}[:port_encryption_status]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Validators::MacSecKeyList.validate!(input[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless input[:mac_sec_keys].nil?
      end
    end

    class AllocatePrivateVirtualInterfaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllocatePrivateVirtualInterfaceInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Validators::NewPrivateVirtualInterfaceAllocation.validate!(input[:new_private_virtual_interface_allocation], context: "#{context}[:new_private_virtual_interface_allocation]") unless input[:new_private_virtual_interface_allocation].nil?
      end
    end

    class AllocatePrivateVirtualInterfaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllocatePrivateVirtualInterfaceOutput, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:virtual_interface_type], ::String, context: "#{context}[:virtual_interface_type]")
        Hearth::Validator.validate!(input[:virtual_interface_name], ::String, context: "#{context}[:virtual_interface_name]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:asn], ::Integer, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:amazon_side_asn], ::Integer, context: "#{context}[:amazon_side_asn]")
        Hearth::Validator.validate!(input[:auth_key], ::String, context: "#{context}[:auth_key]")
        Hearth::Validator.validate!(input[:amazon_address], ::String, context: "#{context}[:amazon_address]")
        Hearth::Validator.validate!(input[:customer_address], ::String, context: "#{context}[:customer_address]")
        Hearth::Validator.validate!(input[:address_family], ::String, context: "#{context}[:address_family]")
        Hearth::Validator.validate!(input[:virtual_interface_state], ::String, context: "#{context}[:virtual_interface_state]")
        Hearth::Validator.validate!(input[:customer_router_config], ::String, context: "#{context}[:customer_router_config]")
        Hearth::Validator.validate!(input[:mtu], ::Integer, context: "#{context}[:mtu]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:virtual_gateway_id], ::String, context: "#{context}[:virtual_gateway_id]")
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Validators::RouteFilterPrefixList.validate!(input[:route_filter_prefixes], context: "#{context}[:route_filter_prefixes]") unless input[:route_filter_prefixes].nil?
        Validators::BGPPeerList.validate!(input[:bgp_peers], context: "#{context}[:bgp_peers]") unless input[:bgp_peers].nil?
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:site_link_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:site_link_enabled]")
      end
    end

    class AllocatePublicVirtualInterfaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllocatePublicVirtualInterfaceInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Validators::NewPublicVirtualInterfaceAllocation.validate!(input[:new_public_virtual_interface_allocation], context: "#{context}[:new_public_virtual_interface_allocation]") unless input[:new_public_virtual_interface_allocation].nil?
      end
    end

    class AllocatePublicVirtualInterfaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllocatePublicVirtualInterfaceOutput, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:virtual_interface_type], ::String, context: "#{context}[:virtual_interface_type]")
        Hearth::Validator.validate!(input[:virtual_interface_name], ::String, context: "#{context}[:virtual_interface_name]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:asn], ::Integer, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:amazon_side_asn], ::Integer, context: "#{context}[:amazon_side_asn]")
        Hearth::Validator.validate!(input[:auth_key], ::String, context: "#{context}[:auth_key]")
        Hearth::Validator.validate!(input[:amazon_address], ::String, context: "#{context}[:amazon_address]")
        Hearth::Validator.validate!(input[:customer_address], ::String, context: "#{context}[:customer_address]")
        Hearth::Validator.validate!(input[:address_family], ::String, context: "#{context}[:address_family]")
        Hearth::Validator.validate!(input[:virtual_interface_state], ::String, context: "#{context}[:virtual_interface_state]")
        Hearth::Validator.validate!(input[:customer_router_config], ::String, context: "#{context}[:customer_router_config]")
        Hearth::Validator.validate!(input[:mtu], ::Integer, context: "#{context}[:mtu]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:virtual_gateway_id], ::String, context: "#{context}[:virtual_gateway_id]")
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Validators::RouteFilterPrefixList.validate!(input[:route_filter_prefixes], context: "#{context}[:route_filter_prefixes]") unless input[:route_filter_prefixes].nil?
        Validators::BGPPeerList.validate!(input[:bgp_peers], context: "#{context}[:bgp_peers]") unless input[:bgp_peers].nil?
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:site_link_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:site_link_enabled]")
      end
    end

    class AllocateTransitVirtualInterfaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllocateTransitVirtualInterfaceInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Validators::NewTransitVirtualInterfaceAllocation.validate!(input[:new_transit_virtual_interface_allocation], context: "#{context}[:new_transit_virtual_interface_allocation]") unless input[:new_transit_virtual_interface_allocation].nil?
      end
    end

    class AllocateTransitVirtualInterfaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllocateTransitVirtualInterfaceOutput, context: context)
        Validators::VirtualInterface.validate!(input[:virtual_interface], context: "#{context}[:virtual_interface]") unless input[:virtual_interface].nil?
      end
    end

    class AssociateConnectionWithLagInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateConnectionWithLagInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
      end
    end

    class AssociateConnectionWithLagOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateConnectionWithLagOutput, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:bandwidth], ::String, context: "#{context}[:bandwidth]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:partner_name], ::String, context: "#{context}[:partner_name]")
        Hearth::Validator.validate!(input[:loa_issue_time], ::Time, context: "#{context}[:loa_issue_time]")
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
        Hearth::Validator.validate!(input[:aws_device], ::String, context: "#{context}[:aws_device]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Hearth::Validator.validate!(input[:has_logical_redundancy], ::String, context: "#{context}[:has_logical_redundancy]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:mac_sec_capable], ::TrueClass, ::FalseClass, context: "#{context}[:mac_sec_capable]")
        Hearth::Validator.validate!(input[:port_encryption_status], ::String, context: "#{context}[:port_encryption_status]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Validators::MacSecKeyList.validate!(input[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless input[:mac_sec_keys].nil?
      end
    end

    class AssociateHostedConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateHostedConnectionInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:parent_connection_id], ::String, context: "#{context}[:parent_connection_id]")
      end
    end

    class AssociateHostedConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateHostedConnectionOutput, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:bandwidth], ::String, context: "#{context}[:bandwidth]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:partner_name], ::String, context: "#{context}[:partner_name]")
        Hearth::Validator.validate!(input[:loa_issue_time], ::Time, context: "#{context}[:loa_issue_time]")
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
        Hearth::Validator.validate!(input[:aws_device], ::String, context: "#{context}[:aws_device]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Hearth::Validator.validate!(input[:has_logical_redundancy], ::String, context: "#{context}[:has_logical_redundancy]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:mac_sec_capable], ::TrueClass, ::FalseClass, context: "#{context}[:mac_sec_capable]")
        Hearth::Validator.validate!(input[:port_encryption_status], ::String, context: "#{context}[:port_encryption_status]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Validators::MacSecKeyList.validate!(input[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless input[:mac_sec_keys].nil?
      end
    end

    class AssociateMacSecKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateMacSecKeyInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:ckn], ::String, context: "#{context}[:ckn]")
        Hearth::Validator.validate!(input[:cak], ::String, context: "#{context}[:cak]")
      end
    end

    class AssociateMacSecKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateMacSecKeyOutput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Validators::MacSecKeyList.validate!(input[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless input[:mac_sec_keys].nil?
      end
    end

    class AssociateVirtualInterfaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateVirtualInterfaceInput, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
      end
    end

    class AssociateVirtualInterfaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateVirtualInterfaceOutput, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:virtual_interface_type], ::String, context: "#{context}[:virtual_interface_type]")
        Hearth::Validator.validate!(input[:virtual_interface_name], ::String, context: "#{context}[:virtual_interface_name]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:asn], ::Integer, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:amazon_side_asn], ::Integer, context: "#{context}[:amazon_side_asn]")
        Hearth::Validator.validate!(input[:auth_key], ::String, context: "#{context}[:auth_key]")
        Hearth::Validator.validate!(input[:amazon_address], ::String, context: "#{context}[:amazon_address]")
        Hearth::Validator.validate!(input[:customer_address], ::String, context: "#{context}[:customer_address]")
        Hearth::Validator.validate!(input[:address_family], ::String, context: "#{context}[:address_family]")
        Hearth::Validator.validate!(input[:virtual_interface_state], ::String, context: "#{context}[:virtual_interface_state]")
        Hearth::Validator.validate!(input[:customer_router_config], ::String, context: "#{context}[:customer_router_config]")
        Hearth::Validator.validate!(input[:mtu], ::Integer, context: "#{context}[:mtu]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:virtual_gateway_id], ::String, context: "#{context}[:virtual_gateway_id]")
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Validators::RouteFilterPrefixList.validate!(input[:route_filter_prefixes], context: "#{context}[:route_filter_prefixes]") unless input[:route_filter_prefixes].nil?
        Validators::BGPPeerList.validate!(input[:bgp_peers], context: "#{context}[:bgp_peers]") unless input[:bgp_peers].nil?
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:site_link_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:site_link_enabled]")
      end
    end

    class AssociatedGateway
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatedGateway, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
      end
    end

    class AvailableMacSecPortSpeeds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AvailablePortSpeeds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BGPPeer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BGPPeer, context: context)
        Hearth::Validator.validate!(input[:bgp_peer_id], ::String, context: "#{context}[:bgp_peer_id]")
        Hearth::Validator.validate!(input[:asn], ::Integer, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:auth_key], ::String, context: "#{context}[:auth_key]")
        Hearth::Validator.validate!(input[:address_family], ::String, context: "#{context}[:address_family]")
        Hearth::Validator.validate!(input[:amazon_address], ::String, context: "#{context}[:amazon_address]")
        Hearth::Validator.validate!(input[:customer_address], ::String, context: "#{context}[:customer_address]")
        Hearth::Validator.validate!(input[:bgp_peer_state], ::String, context: "#{context}[:bgp_peer_state]")
        Hearth::Validator.validate!(input[:bgp_status], ::String, context: "#{context}[:bgp_status]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
      end
    end

    class BGPPeerIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BGPPeerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BGPPeer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfirmConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmConnectionInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
      end
    end

    class ConfirmConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmConnectionOutput, context: context)
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
      end
    end

    class ConfirmCustomerAgreementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmCustomerAgreementInput, context: context)
        Hearth::Validator.validate!(input[:agreement_name], ::String, context: "#{context}[:agreement_name]")
      end
    end

    class ConfirmCustomerAgreementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmCustomerAgreementOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ConfirmPrivateVirtualInterfaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmPrivateVirtualInterfaceInput, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Hearth::Validator.validate!(input[:virtual_gateway_id], ::String, context: "#{context}[:virtual_gateway_id]")
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
      end
    end

    class ConfirmPrivateVirtualInterfaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmPrivateVirtualInterfaceOutput, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_state], ::String, context: "#{context}[:virtual_interface_state]")
      end
    end

    class ConfirmPublicVirtualInterfaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmPublicVirtualInterfaceInput, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
      end
    end

    class ConfirmPublicVirtualInterfaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmPublicVirtualInterfaceOutput, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_state], ::String, context: "#{context}[:virtual_interface_state]")
      end
    end

    class ConfirmTransitVirtualInterfaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmTransitVirtualInterfaceInput, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
      end
    end

    class ConfirmTransitVirtualInterfaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmTransitVirtualInterfaceOutput, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_state], ::String, context: "#{context}[:virtual_interface_state]")
      end
    end

    class Connection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Connection, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:bandwidth], ::String, context: "#{context}[:bandwidth]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:partner_name], ::String, context: "#{context}[:partner_name]")
        Hearth::Validator.validate!(input[:loa_issue_time], ::Time, context: "#{context}[:loa_issue_time]")
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
        Hearth::Validator.validate!(input[:aws_device], ::String, context: "#{context}[:aws_device]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Hearth::Validator.validate!(input[:has_logical_redundancy], ::String, context: "#{context}[:has_logical_redundancy]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:mac_sec_capable], ::TrueClass, ::FalseClass, context: "#{context}[:mac_sec_capable]")
        Hearth::Validator.validate!(input[:port_encryption_status], ::String, context: "#{context}[:port_encryption_status]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Validators::MacSecKeyList.validate!(input[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless input[:mac_sec_keys].nil?
      end
    end

    class ConnectionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Connection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateBGPPeerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBGPPeerInput, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Validators::NewBGPPeer.validate!(input[:new_bgp_peer], context: "#{context}[:new_bgp_peer]") unless input[:new_bgp_peer].nil?
      end
    end

    class CreateBGPPeerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBGPPeerOutput, context: context)
        Validators::VirtualInterface.validate!(input[:virtual_interface], context: "#{context}[:virtual_interface]") unless input[:virtual_interface].nil?
      end
    end

    class CreateConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectionInput, context: context)
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:bandwidth], ::String, context: "#{context}[:bandwidth]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:request_mac_sec], ::TrueClass, ::FalseClass, context: "#{context}[:request_mac_sec]")
      end
    end

    class CreateConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectionOutput, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:bandwidth], ::String, context: "#{context}[:bandwidth]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:partner_name], ::String, context: "#{context}[:partner_name]")
        Hearth::Validator.validate!(input[:loa_issue_time], ::Time, context: "#{context}[:loa_issue_time]")
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
        Hearth::Validator.validate!(input[:aws_device], ::String, context: "#{context}[:aws_device]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Hearth::Validator.validate!(input[:has_logical_redundancy], ::String, context: "#{context}[:has_logical_redundancy]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:mac_sec_capable], ::TrueClass, ::FalseClass, context: "#{context}[:mac_sec_capable]")
        Hearth::Validator.validate!(input[:port_encryption_status], ::String, context: "#{context}[:port_encryption_status]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Validators::MacSecKeyList.validate!(input[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless input[:mac_sec_keys].nil?
      end
    end

    class CreateDirectConnectGatewayAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDirectConnectGatewayAssociationInput, context: context)
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
        Validators::RouteFilterPrefixList.validate!(input[:add_allowed_prefixes_to_direct_connect_gateway], context: "#{context}[:add_allowed_prefixes_to_direct_connect_gateway]") unless input[:add_allowed_prefixes_to_direct_connect_gateway].nil?
        Hearth::Validator.validate!(input[:virtual_gateway_id], ::String, context: "#{context}[:virtual_gateway_id]")
      end
    end

    class CreateDirectConnectGatewayAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDirectConnectGatewayAssociationOutput, context: context)
        Validators::DirectConnectGatewayAssociation.validate!(input[:direct_connect_gateway_association], context: "#{context}[:direct_connect_gateway_association]") unless input[:direct_connect_gateway_association].nil?
      end
    end

    class CreateDirectConnectGatewayAssociationProposalInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDirectConnectGatewayAssociationProposalInput, context: context)
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Hearth::Validator.validate!(input[:direct_connect_gateway_owner_account], ::String, context: "#{context}[:direct_connect_gateway_owner_account]")
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
        Validators::RouteFilterPrefixList.validate!(input[:add_allowed_prefixes_to_direct_connect_gateway], context: "#{context}[:add_allowed_prefixes_to_direct_connect_gateway]") unless input[:add_allowed_prefixes_to_direct_connect_gateway].nil?
        Validators::RouteFilterPrefixList.validate!(input[:remove_allowed_prefixes_to_direct_connect_gateway], context: "#{context}[:remove_allowed_prefixes_to_direct_connect_gateway]") unless input[:remove_allowed_prefixes_to_direct_connect_gateway].nil?
      end
    end

    class CreateDirectConnectGatewayAssociationProposalOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDirectConnectGatewayAssociationProposalOutput, context: context)
        Validators::DirectConnectGatewayAssociationProposal.validate!(input[:direct_connect_gateway_association_proposal], context: "#{context}[:direct_connect_gateway_association_proposal]") unless input[:direct_connect_gateway_association_proposal].nil?
      end
    end

    class CreateDirectConnectGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDirectConnectGatewayInput, context: context)
        Hearth::Validator.validate!(input[:direct_connect_gateway_name], ::String, context: "#{context}[:direct_connect_gateway_name]")
        Hearth::Validator.validate!(input[:amazon_side_asn], ::Integer, context: "#{context}[:amazon_side_asn]")
      end
    end

    class CreateDirectConnectGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDirectConnectGatewayOutput, context: context)
        Validators::DirectConnectGateway.validate!(input[:direct_connect_gateway], context: "#{context}[:direct_connect_gateway]") unless input[:direct_connect_gateway].nil?
      end
    end

    class CreateInterconnectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInterconnectInput, context: context)
        Hearth::Validator.validate!(input[:interconnect_name], ::String, context: "#{context}[:interconnect_name]")
        Hearth::Validator.validate!(input[:bandwidth], ::String, context: "#{context}[:bandwidth]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
      end
    end

    class CreateInterconnectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInterconnectOutput, context: context)
        Hearth::Validator.validate!(input[:interconnect_id], ::String, context: "#{context}[:interconnect_id]")
        Hearth::Validator.validate!(input[:interconnect_name], ::String, context: "#{context}[:interconnect_name]")
        Hearth::Validator.validate!(input[:interconnect_state], ::String, context: "#{context}[:interconnect_state]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:bandwidth], ::String, context: "#{context}[:bandwidth]")
        Hearth::Validator.validate!(input[:loa_issue_time], ::Time, context: "#{context}[:loa_issue_time]")
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
        Hearth::Validator.validate!(input[:aws_device], ::String, context: "#{context}[:aws_device]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Hearth::Validator.validate!(input[:has_logical_redundancy], ::String, context: "#{context}[:has_logical_redundancy]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
      end
    end

    class CreateLagInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLagInput, context: context)
        Hearth::Validator.validate!(input[:number_of_connections], ::Integer, context: "#{context}[:number_of_connections]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:connections_bandwidth], ::String, context: "#{context}[:connections_bandwidth]")
        Hearth::Validator.validate!(input[:lag_name], ::String, context: "#{context}[:lag_name]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::TagList.validate!(input[:child_connection_tags], context: "#{context}[:child_connection_tags]") unless input[:child_connection_tags].nil?
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:request_mac_sec], ::TrueClass, ::FalseClass, context: "#{context}[:request_mac_sec]")
      end
    end

    class CreateLagOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLagOutput, context: context)
        Hearth::Validator.validate!(input[:connections_bandwidth], ::String, context: "#{context}[:connections_bandwidth]")
        Hearth::Validator.validate!(input[:number_of_connections], ::Integer, context: "#{context}[:number_of_connections]")
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:lag_name], ::String, context: "#{context}[:lag_name]")
        Hearth::Validator.validate!(input[:lag_state], ::String, context: "#{context}[:lag_state]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:minimum_links], ::Integer, context: "#{context}[:minimum_links]")
        Hearth::Validator.validate!(input[:aws_device], ::String, context: "#{context}[:aws_device]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Validators::ConnectionList.validate!(input[:connections], context: "#{context}[:connections]") unless input[:connections].nil?
        Hearth::Validator.validate!(input[:allows_hosted_connections], ::TrueClass, ::FalseClass, context: "#{context}[:allows_hosted_connections]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:has_logical_redundancy], ::String, context: "#{context}[:has_logical_redundancy]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:mac_sec_capable], ::TrueClass, ::FalseClass, context: "#{context}[:mac_sec_capable]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Validators::MacSecKeyList.validate!(input[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless input[:mac_sec_keys].nil?
      end
    end

    class CreatePrivateVirtualInterfaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePrivateVirtualInterfaceInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Validators::NewPrivateVirtualInterface.validate!(input[:new_private_virtual_interface], context: "#{context}[:new_private_virtual_interface]") unless input[:new_private_virtual_interface].nil?
      end
    end

    class CreatePrivateVirtualInterfaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePrivateVirtualInterfaceOutput, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:virtual_interface_type], ::String, context: "#{context}[:virtual_interface_type]")
        Hearth::Validator.validate!(input[:virtual_interface_name], ::String, context: "#{context}[:virtual_interface_name]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:asn], ::Integer, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:amazon_side_asn], ::Integer, context: "#{context}[:amazon_side_asn]")
        Hearth::Validator.validate!(input[:auth_key], ::String, context: "#{context}[:auth_key]")
        Hearth::Validator.validate!(input[:amazon_address], ::String, context: "#{context}[:amazon_address]")
        Hearth::Validator.validate!(input[:customer_address], ::String, context: "#{context}[:customer_address]")
        Hearth::Validator.validate!(input[:address_family], ::String, context: "#{context}[:address_family]")
        Hearth::Validator.validate!(input[:virtual_interface_state], ::String, context: "#{context}[:virtual_interface_state]")
        Hearth::Validator.validate!(input[:customer_router_config], ::String, context: "#{context}[:customer_router_config]")
        Hearth::Validator.validate!(input[:mtu], ::Integer, context: "#{context}[:mtu]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:virtual_gateway_id], ::String, context: "#{context}[:virtual_gateway_id]")
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Validators::RouteFilterPrefixList.validate!(input[:route_filter_prefixes], context: "#{context}[:route_filter_prefixes]") unless input[:route_filter_prefixes].nil?
        Validators::BGPPeerList.validate!(input[:bgp_peers], context: "#{context}[:bgp_peers]") unless input[:bgp_peers].nil?
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:site_link_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:site_link_enabled]")
      end
    end

    class CreatePublicVirtualInterfaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePublicVirtualInterfaceInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Validators::NewPublicVirtualInterface.validate!(input[:new_public_virtual_interface], context: "#{context}[:new_public_virtual_interface]") unless input[:new_public_virtual_interface].nil?
      end
    end

    class CreatePublicVirtualInterfaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePublicVirtualInterfaceOutput, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:virtual_interface_type], ::String, context: "#{context}[:virtual_interface_type]")
        Hearth::Validator.validate!(input[:virtual_interface_name], ::String, context: "#{context}[:virtual_interface_name]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:asn], ::Integer, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:amazon_side_asn], ::Integer, context: "#{context}[:amazon_side_asn]")
        Hearth::Validator.validate!(input[:auth_key], ::String, context: "#{context}[:auth_key]")
        Hearth::Validator.validate!(input[:amazon_address], ::String, context: "#{context}[:amazon_address]")
        Hearth::Validator.validate!(input[:customer_address], ::String, context: "#{context}[:customer_address]")
        Hearth::Validator.validate!(input[:address_family], ::String, context: "#{context}[:address_family]")
        Hearth::Validator.validate!(input[:virtual_interface_state], ::String, context: "#{context}[:virtual_interface_state]")
        Hearth::Validator.validate!(input[:customer_router_config], ::String, context: "#{context}[:customer_router_config]")
        Hearth::Validator.validate!(input[:mtu], ::Integer, context: "#{context}[:mtu]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:virtual_gateway_id], ::String, context: "#{context}[:virtual_gateway_id]")
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Validators::RouteFilterPrefixList.validate!(input[:route_filter_prefixes], context: "#{context}[:route_filter_prefixes]") unless input[:route_filter_prefixes].nil?
        Validators::BGPPeerList.validate!(input[:bgp_peers], context: "#{context}[:bgp_peers]") unless input[:bgp_peers].nil?
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:site_link_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:site_link_enabled]")
      end
    end

    class CreateTransitVirtualInterfaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTransitVirtualInterfaceInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Validators::NewTransitVirtualInterface.validate!(input[:new_transit_virtual_interface], context: "#{context}[:new_transit_virtual_interface]") unless input[:new_transit_virtual_interface].nil?
      end
    end

    class CreateTransitVirtualInterfaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTransitVirtualInterfaceOutput, context: context)
        Validators::VirtualInterface.validate!(input[:virtual_interface], context: "#{context}[:virtual_interface]") unless input[:virtual_interface].nil?
      end
    end

    class CustomerAgreement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomerAgreement, context: context)
        Hearth::Validator.validate!(input[:agreement_name], ::String, context: "#{context}[:agreement_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DeleteBGPPeerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBGPPeerInput, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Hearth::Validator.validate!(input[:asn], ::Integer, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:customer_address], ::String, context: "#{context}[:customer_address]")
        Hearth::Validator.validate!(input[:bgp_peer_id], ::String, context: "#{context}[:bgp_peer_id]")
      end
    end

    class DeleteBGPPeerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBGPPeerOutput, context: context)
        Validators::VirtualInterface.validate!(input[:virtual_interface], context: "#{context}[:virtual_interface]") unless input[:virtual_interface].nil?
      end
    end

    class DeleteConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectionInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
      end
    end

    class DeleteConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectionOutput, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:bandwidth], ::String, context: "#{context}[:bandwidth]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:partner_name], ::String, context: "#{context}[:partner_name]")
        Hearth::Validator.validate!(input[:loa_issue_time], ::Time, context: "#{context}[:loa_issue_time]")
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
        Hearth::Validator.validate!(input[:aws_device], ::String, context: "#{context}[:aws_device]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Hearth::Validator.validate!(input[:has_logical_redundancy], ::String, context: "#{context}[:has_logical_redundancy]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:mac_sec_capable], ::TrueClass, ::FalseClass, context: "#{context}[:mac_sec_capable]")
        Hearth::Validator.validate!(input[:port_encryption_status], ::String, context: "#{context}[:port_encryption_status]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Validators::MacSecKeyList.validate!(input[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless input[:mac_sec_keys].nil?
      end
    end

    class DeleteDirectConnectGatewayAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDirectConnectGatewayAssociationInput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Hearth::Validator.validate!(input[:virtual_gateway_id], ::String, context: "#{context}[:virtual_gateway_id]")
      end
    end

    class DeleteDirectConnectGatewayAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDirectConnectGatewayAssociationOutput, context: context)
        Validators::DirectConnectGatewayAssociation.validate!(input[:direct_connect_gateway_association], context: "#{context}[:direct_connect_gateway_association]") unless input[:direct_connect_gateway_association].nil?
      end
    end

    class DeleteDirectConnectGatewayAssociationProposalInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDirectConnectGatewayAssociationProposalInput, context: context)
        Hearth::Validator.validate!(input[:proposal_id], ::String, context: "#{context}[:proposal_id]")
      end
    end

    class DeleteDirectConnectGatewayAssociationProposalOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDirectConnectGatewayAssociationProposalOutput, context: context)
        Validators::DirectConnectGatewayAssociationProposal.validate!(input[:direct_connect_gateway_association_proposal], context: "#{context}[:direct_connect_gateway_association_proposal]") unless input[:direct_connect_gateway_association_proposal].nil?
      end
    end

    class DeleteDirectConnectGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDirectConnectGatewayInput, context: context)
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
      end
    end

    class DeleteDirectConnectGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDirectConnectGatewayOutput, context: context)
        Validators::DirectConnectGateway.validate!(input[:direct_connect_gateway], context: "#{context}[:direct_connect_gateway]") unless input[:direct_connect_gateway].nil?
      end
    end

    class DeleteInterconnectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInterconnectInput, context: context)
        Hearth::Validator.validate!(input[:interconnect_id], ::String, context: "#{context}[:interconnect_id]")
      end
    end

    class DeleteInterconnectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInterconnectOutput, context: context)
        Hearth::Validator.validate!(input[:interconnect_state], ::String, context: "#{context}[:interconnect_state]")
      end
    end

    class DeleteLagInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLagInput, context: context)
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
      end
    end

    class DeleteLagOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLagOutput, context: context)
        Hearth::Validator.validate!(input[:connections_bandwidth], ::String, context: "#{context}[:connections_bandwidth]")
        Hearth::Validator.validate!(input[:number_of_connections], ::Integer, context: "#{context}[:number_of_connections]")
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:lag_name], ::String, context: "#{context}[:lag_name]")
        Hearth::Validator.validate!(input[:lag_state], ::String, context: "#{context}[:lag_state]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:minimum_links], ::Integer, context: "#{context}[:minimum_links]")
        Hearth::Validator.validate!(input[:aws_device], ::String, context: "#{context}[:aws_device]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Validators::ConnectionList.validate!(input[:connections], context: "#{context}[:connections]") unless input[:connections].nil?
        Hearth::Validator.validate!(input[:allows_hosted_connections], ::TrueClass, ::FalseClass, context: "#{context}[:allows_hosted_connections]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:has_logical_redundancy], ::String, context: "#{context}[:has_logical_redundancy]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:mac_sec_capable], ::TrueClass, ::FalseClass, context: "#{context}[:mac_sec_capable]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Validators::MacSecKeyList.validate!(input[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless input[:mac_sec_keys].nil?
      end
    end

    class DeleteVirtualInterfaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVirtualInterfaceInput, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
      end
    end

    class DeleteVirtualInterfaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVirtualInterfaceOutput, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_state], ::String, context: "#{context}[:virtual_interface_state]")
      end
    end

    class DescribeConnectionLoaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectionLoaInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:loa_content_type], ::String, context: "#{context}[:loa_content_type]")
      end
    end

    class DescribeConnectionLoaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectionLoaOutput, context: context)
        Validators::Loa.validate!(input[:loa], context: "#{context}[:loa]") unless input[:loa].nil?
      end
    end

    class DescribeConnectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectionsInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
      end
    end

    class DescribeConnectionsOnInterconnectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectionsOnInterconnectInput, context: context)
        Hearth::Validator.validate!(input[:interconnect_id], ::String, context: "#{context}[:interconnect_id]")
      end
    end

    class DescribeConnectionsOnInterconnectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectionsOnInterconnectOutput, context: context)
        Validators::ConnectionList.validate!(input[:connections], context: "#{context}[:connections]") unless input[:connections].nil?
      end
    end

    class DescribeConnectionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectionsOutput, context: context)
        Validators::ConnectionList.validate!(input[:connections], context: "#{context}[:connections]") unless input[:connections].nil?
      end
    end

    class DescribeCustomerMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomerMetadataInput, context: context)
      end
    end

    class DescribeCustomerMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomerMetadataOutput, context: context)
        Validators::AgreementList.validate!(input[:agreements], context: "#{context}[:agreements]") unless input[:agreements].nil?
        Hearth::Validator.validate!(input[:nni_partner_type], ::String, context: "#{context}[:nni_partner_type]")
      end
    end

    class DescribeDirectConnectGatewayAssociationProposalsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDirectConnectGatewayAssociationProposalsInput, context: context)
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Hearth::Validator.validate!(input[:proposal_id], ::String, context: "#{context}[:proposal_id]")
        Hearth::Validator.validate!(input[:associated_gateway_id], ::String, context: "#{context}[:associated_gateway_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDirectConnectGatewayAssociationProposalsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDirectConnectGatewayAssociationProposalsOutput, context: context)
        Validators::DirectConnectGatewayAssociationProposalList.validate!(input[:direct_connect_gateway_association_proposals], context: "#{context}[:direct_connect_gateway_association_proposals]") unless input[:direct_connect_gateway_association_proposals].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDirectConnectGatewayAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDirectConnectGatewayAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:associated_gateway_id], ::String, context: "#{context}[:associated_gateway_id]")
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:virtual_gateway_id], ::String, context: "#{context}[:virtual_gateway_id]")
      end
    end

    class DescribeDirectConnectGatewayAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDirectConnectGatewayAssociationsOutput, context: context)
        Validators::DirectConnectGatewayAssociationList.validate!(input[:direct_connect_gateway_associations], context: "#{context}[:direct_connect_gateway_associations]") unless input[:direct_connect_gateway_associations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDirectConnectGatewayAttachmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDirectConnectGatewayAttachmentsInput, context: context)
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDirectConnectGatewayAttachmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDirectConnectGatewayAttachmentsOutput, context: context)
        Validators::DirectConnectGatewayAttachmentList.validate!(input[:direct_connect_gateway_attachments], context: "#{context}[:direct_connect_gateway_attachments]") unless input[:direct_connect_gateway_attachments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDirectConnectGatewaysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDirectConnectGatewaysInput, context: context)
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDirectConnectGatewaysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDirectConnectGatewaysOutput, context: context)
        Validators::DirectConnectGatewayList.validate!(input[:direct_connect_gateways], context: "#{context}[:direct_connect_gateways]") unless input[:direct_connect_gateways].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeHostedConnectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHostedConnectionsInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
      end
    end

    class DescribeHostedConnectionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHostedConnectionsOutput, context: context)
        Validators::ConnectionList.validate!(input[:connections], context: "#{context}[:connections]") unless input[:connections].nil?
      end
    end

    class DescribeInterconnectLoaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInterconnectLoaInput, context: context)
        Hearth::Validator.validate!(input[:interconnect_id], ::String, context: "#{context}[:interconnect_id]")
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:loa_content_type], ::String, context: "#{context}[:loa_content_type]")
      end
    end

    class DescribeInterconnectLoaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInterconnectLoaOutput, context: context)
        Validators::Loa.validate!(input[:loa], context: "#{context}[:loa]") unless input[:loa].nil?
      end
    end

    class DescribeInterconnectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInterconnectsInput, context: context)
        Hearth::Validator.validate!(input[:interconnect_id], ::String, context: "#{context}[:interconnect_id]")
      end
    end

    class DescribeInterconnectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInterconnectsOutput, context: context)
        Validators::InterconnectList.validate!(input[:interconnects], context: "#{context}[:interconnects]") unless input[:interconnects].nil?
      end
    end

    class DescribeLagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLagsInput, context: context)
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
      end
    end

    class DescribeLagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLagsOutput, context: context)
        Validators::LagList.validate!(input[:lags], context: "#{context}[:lags]") unless input[:lags].nil?
      end
    end

    class DescribeLoaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoaInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:loa_content_type], ::String, context: "#{context}[:loa_content_type]")
      end
    end

    class DescribeLoaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoaOutput, context: context)
        Hearth::Validator.validate!(input[:loa_content], ::String, context: "#{context}[:loa_content]")
        Hearth::Validator.validate!(input[:loa_content_type], ::String, context: "#{context}[:loa_content_type]")
      end
    end

    class DescribeLocationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationsInput, context: context)
      end
    end

    class DescribeLocationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationsOutput, context: context)
        Validators::LocationList.validate!(input[:locations], context: "#{context}[:locations]") unless input[:locations].nil?
      end
    end

    class DescribeRouterConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRouterConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Hearth::Validator.validate!(input[:router_type_identifier], ::String, context: "#{context}[:router_type_identifier]")
      end
    end

    class DescribeRouterConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRouterConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:customer_router_config], ::String, context: "#{context}[:customer_router_config]")
        Validators::RouterType.validate!(input[:router], context: "#{context}[:router]") unless input[:router].nil?
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Hearth::Validator.validate!(input[:virtual_interface_name], ::String, context: "#{context}[:virtual_interface_name]")
      end
    end

    class DescribeTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagsInput, context: context)
        Validators::ResourceArnList.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
      end
    end

    class DescribeTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagsOutput, context: context)
        Validators::ResourceTagList.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
      end
    end

    class DescribeVirtualGatewaysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVirtualGatewaysInput, context: context)
      end
    end

    class DescribeVirtualGatewaysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVirtualGatewaysOutput, context: context)
        Validators::VirtualGatewayList.validate!(input[:virtual_gateways], context: "#{context}[:virtual_gateways]") unless input[:virtual_gateways].nil?
      end
    end

    class DescribeVirtualInterfacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVirtualInterfacesInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
      end
    end

    class DescribeVirtualInterfacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVirtualInterfacesOutput, context: context)
        Validators::VirtualInterfaceList.validate!(input[:virtual_interfaces], context: "#{context}[:virtual_interfaces]") unless input[:virtual_interfaces].nil?
      end
    end

    class DirectConnectClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectConnectClientException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DirectConnectGateway
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectConnectGateway, context: context)
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Hearth::Validator.validate!(input[:direct_connect_gateway_name], ::String, context: "#{context}[:direct_connect_gateway_name]")
        Hearth::Validator.validate!(input[:amazon_side_asn], ::Integer, context: "#{context}[:amazon_side_asn]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:direct_connect_gateway_state], ::String, context: "#{context}[:direct_connect_gateway_state]")
        Hearth::Validator.validate!(input[:state_change_error], ::String, context: "#{context}[:state_change_error]")
      end
    end

    class DirectConnectGatewayAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectConnectGatewayAssociation, context: context)
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Hearth::Validator.validate!(input[:direct_connect_gateway_owner_account], ::String, context: "#{context}[:direct_connect_gateway_owner_account]")
        Hearth::Validator.validate!(input[:association_state], ::String, context: "#{context}[:association_state]")
        Hearth::Validator.validate!(input[:state_change_error], ::String, context: "#{context}[:state_change_error]")
        Validators::AssociatedGateway.validate!(input[:associated_gateway], context: "#{context}[:associated_gateway]") unless input[:associated_gateway].nil?
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Validators::RouteFilterPrefixList.validate!(input[:allowed_prefixes_to_direct_connect_gateway], context: "#{context}[:allowed_prefixes_to_direct_connect_gateway]") unless input[:allowed_prefixes_to_direct_connect_gateway].nil?
        Hearth::Validator.validate!(input[:virtual_gateway_id], ::String, context: "#{context}[:virtual_gateway_id]")
        Hearth::Validator.validate!(input[:virtual_gateway_region], ::String, context: "#{context}[:virtual_gateway_region]")
        Hearth::Validator.validate!(input[:virtual_gateway_owner_account], ::String, context: "#{context}[:virtual_gateway_owner_account]")
      end
    end

    class DirectConnectGatewayAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DirectConnectGatewayAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DirectConnectGatewayAssociationProposal
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectConnectGatewayAssociationProposal, context: context)
        Hearth::Validator.validate!(input[:proposal_id], ::String, context: "#{context}[:proposal_id]")
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Hearth::Validator.validate!(input[:direct_connect_gateway_owner_account], ::String, context: "#{context}[:direct_connect_gateway_owner_account]")
        Hearth::Validator.validate!(input[:proposal_state], ::String, context: "#{context}[:proposal_state]")
        Validators::AssociatedGateway.validate!(input[:associated_gateway], context: "#{context}[:associated_gateway]") unless input[:associated_gateway].nil?
        Validators::RouteFilterPrefixList.validate!(input[:existing_allowed_prefixes_to_direct_connect_gateway], context: "#{context}[:existing_allowed_prefixes_to_direct_connect_gateway]") unless input[:existing_allowed_prefixes_to_direct_connect_gateway].nil?
        Validators::RouteFilterPrefixList.validate!(input[:requested_allowed_prefixes_to_direct_connect_gateway], context: "#{context}[:requested_allowed_prefixes_to_direct_connect_gateway]") unless input[:requested_allowed_prefixes_to_direct_connect_gateway].nil?
      end
    end

    class DirectConnectGatewayAssociationProposalList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DirectConnectGatewayAssociationProposal.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DirectConnectGatewayAttachment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectConnectGatewayAttachment, context: context)
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Hearth::Validator.validate!(input[:virtual_interface_region], ::String, context: "#{context}[:virtual_interface_region]")
        Hearth::Validator.validate!(input[:virtual_interface_owner_account], ::String, context: "#{context}[:virtual_interface_owner_account]")
        Hearth::Validator.validate!(input[:attachment_state], ::String, context: "#{context}[:attachment_state]")
        Hearth::Validator.validate!(input[:attachment_type], ::String, context: "#{context}[:attachment_type]")
        Hearth::Validator.validate!(input[:state_change_error], ::String, context: "#{context}[:state_change_error]")
      end
    end

    class DirectConnectGatewayAttachmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DirectConnectGatewayAttachment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DirectConnectGatewayList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DirectConnectGateway.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DirectConnectServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectConnectServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DisassociateConnectionFromLagInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateConnectionFromLagInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
      end
    end

    class DisassociateConnectionFromLagOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateConnectionFromLagOutput, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:bandwidth], ::String, context: "#{context}[:bandwidth]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:partner_name], ::String, context: "#{context}[:partner_name]")
        Hearth::Validator.validate!(input[:loa_issue_time], ::Time, context: "#{context}[:loa_issue_time]")
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
        Hearth::Validator.validate!(input[:aws_device], ::String, context: "#{context}[:aws_device]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Hearth::Validator.validate!(input[:has_logical_redundancy], ::String, context: "#{context}[:has_logical_redundancy]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:mac_sec_capable], ::TrueClass, ::FalseClass, context: "#{context}[:mac_sec_capable]")
        Hearth::Validator.validate!(input[:port_encryption_status], ::String, context: "#{context}[:port_encryption_status]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Validators::MacSecKeyList.validate!(input[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless input[:mac_sec_keys].nil?
      end
    end

    class DisassociateMacSecKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateMacSecKeyInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
      end
    end

    class DisassociateMacSecKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateMacSecKeyOutput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Validators::MacSecKeyList.validate!(input[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless input[:mac_sec_keys].nil?
      end
    end

    class DuplicateTagKeysException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateTagKeysException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Interconnect
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Interconnect, context: context)
        Hearth::Validator.validate!(input[:interconnect_id], ::String, context: "#{context}[:interconnect_id]")
        Hearth::Validator.validate!(input[:interconnect_name], ::String, context: "#{context}[:interconnect_name]")
        Hearth::Validator.validate!(input[:interconnect_state], ::String, context: "#{context}[:interconnect_state]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:bandwidth], ::String, context: "#{context}[:bandwidth]")
        Hearth::Validator.validate!(input[:loa_issue_time], ::Time, context: "#{context}[:loa_issue_time]")
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
        Hearth::Validator.validate!(input[:aws_device], ::String, context: "#{context}[:aws_device]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Hearth::Validator.validate!(input[:has_logical_redundancy], ::String, context: "#{context}[:has_logical_redundancy]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
      end
    end

    class InterconnectList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Interconnect.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Lag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Lag, context: context)
        Hearth::Validator.validate!(input[:connections_bandwidth], ::String, context: "#{context}[:connections_bandwidth]")
        Hearth::Validator.validate!(input[:number_of_connections], ::Integer, context: "#{context}[:number_of_connections]")
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:lag_name], ::String, context: "#{context}[:lag_name]")
        Hearth::Validator.validate!(input[:lag_state], ::String, context: "#{context}[:lag_state]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:minimum_links], ::Integer, context: "#{context}[:minimum_links]")
        Hearth::Validator.validate!(input[:aws_device], ::String, context: "#{context}[:aws_device]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Validators::ConnectionList.validate!(input[:connections], context: "#{context}[:connections]") unless input[:connections].nil?
        Hearth::Validator.validate!(input[:allows_hosted_connections], ::TrueClass, ::FalseClass, context: "#{context}[:allows_hosted_connections]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:has_logical_redundancy], ::String, context: "#{context}[:has_logical_redundancy]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:mac_sec_capable], ::TrueClass, ::FalseClass, context: "#{context}[:mac_sec_capable]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Validators::MacSecKeyList.validate!(input[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless input[:mac_sec_keys].nil?
      end
    end

    class LagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Lag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListVirtualInterfaceTestHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVirtualInterfaceTestHistoryInput, context: context)
        Hearth::Validator.validate!(input[:test_id], ::String, context: "#{context}[:test_id]")
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Validators::BGPPeerIdList.validate!(input[:bgp_peers], context: "#{context}[:bgp_peers]") unless input[:bgp_peers].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListVirtualInterfaceTestHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVirtualInterfaceTestHistoryOutput, context: context)
        Validators::VirtualInterfaceTestHistoryList.validate!(input[:virtual_interface_test_history], context: "#{context}[:virtual_interface_test_history]") unless input[:virtual_interface_test_history].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class Loa
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Loa, context: context)
        Hearth::Validator.validate!(input[:loa_content], ::String, context: "#{context}[:loa_content]")
        Hearth::Validator.validate!(input[:loa_content_type], ::String, context: "#{context}[:loa_content_type]")
      end
    end

    class Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Location, context: context)
        Hearth::Validator.validate!(input[:location_code], ::String, context: "#{context}[:location_code]")
        Hearth::Validator.validate!(input[:location_name], ::String, context: "#{context}[:location_name]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Validators::AvailablePortSpeeds.validate!(input[:available_port_speeds], context: "#{context}[:available_port_speeds]") unless input[:available_port_speeds].nil?
        Validators::ProviderList.validate!(input[:available_providers], context: "#{context}[:available_providers]") unless input[:available_providers].nil?
        Validators::AvailableMacSecPortSpeeds.validate!(input[:available_mac_sec_port_speeds], context: "#{context}[:available_mac_sec_port_speeds]") unless input[:available_mac_sec_port_speeds].nil?
      end
    end

    class LocationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Location.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MacSecKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MacSecKey, context: context)
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:ckn], ::String, context: "#{context}[:ckn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:start_on], ::String, context: "#{context}[:start_on]")
      end
    end

    class MacSecKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MacSecKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NewBGPPeer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NewBGPPeer, context: context)
        Hearth::Validator.validate!(input[:asn], ::Integer, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:auth_key], ::String, context: "#{context}[:auth_key]")
        Hearth::Validator.validate!(input[:address_family], ::String, context: "#{context}[:address_family]")
        Hearth::Validator.validate!(input[:amazon_address], ::String, context: "#{context}[:amazon_address]")
        Hearth::Validator.validate!(input[:customer_address], ::String, context: "#{context}[:customer_address]")
      end
    end

    class NewPrivateVirtualInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NewPrivateVirtualInterface, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_name], ::String, context: "#{context}[:virtual_interface_name]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:asn], ::Integer, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:mtu], ::Integer, context: "#{context}[:mtu]")
        Hearth::Validator.validate!(input[:auth_key], ::String, context: "#{context}[:auth_key]")
        Hearth::Validator.validate!(input[:amazon_address], ::String, context: "#{context}[:amazon_address]")
        Hearth::Validator.validate!(input[:customer_address], ::String, context: "#{context}[:customer_address]")
        Hearth::Validator.validate!(input[:address_family], ::String, context: "#{context}[:address_family]")
        Hearth::Validator.validate!(input[:virtual_gateway_id], ::String, context: "#{context}[:virtual_gateway_id]")
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:enable_site_link], ::TrueClass, ::FalseClass, context: "#{context}[:enable_site_link]")
      end
    end

    class NewPrivateVirtualInterfaceAllocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NewPrivateVirtualInterfaceAllocation, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_name], ::String, context: "#{context}[:virtual_interface_name]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:asn], ::Integer, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:mtu], ::Integer, context: "#{context}[:mtu]")
        Hearth::Validator.validate!(input[:auth_key], ::String, context: "#{context}[:auth_key]")
        Hearth::Validator.validate!(input[:amazon_address], ::String, context: "#{context}[:amazon_address]")
        Hearth::Validator.validate!(input[:address_family], ::String, context: "#{context}[:address_family]")
        Hearth::Validator.validate!(input[:customer_address], ::String, context: "#{context}[:customer_address]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class NewPublicVirtualInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NewPublicVirtualInterface, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_name], ::String, context: "#{context}[:virtual_interface_name]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:asn], ::Integer, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:auth_key], ::String, context: "#{context}[:auth_key]")
        Hearth::Validator.validate!(input[:amazon_address], ::String, context: "#{context}[:amazon_address]")
        Hearth::Validator.validate!(input[:customer_address], ::String, context: "#{context}[:customer_address]")
        Hearth::Validator.validate!(input[:address_family], ::String, context: "#{context}[:address_family]")
        Validators::RouteFilterPrefixList.validate!(input[:route_filter_prefixes], context: "#{context}[:route_filter_prefixes]") unless input[:route_filter_prefixes].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class NewPublicVirtualInterfaceAllocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NewPublicVirtualInterfaceAllocation, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_name], ::String, context: "#{context}[:virtual_interface_name]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:asn], ::Integer, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:auth_key], ::String, context: "#{context}[:auth_key]")
        Hearth::Validator.validate!(input[:amazon_address], ::String, context: "#{context}[:amazon_address]")
        Hearth::Validator.validate!(input[:customer_address], ::String, context: "#{context}[:customer_address]")
        Hearth::Validator.validate!(input[:address_family], ::String, context: "#{context}[:address_family]")
        Validators::RouteFilterPrefixList.validate!(input[:route_filter_prefixes], context: "#{context}[:route_filter_prefixes]") unless input[:route_filter_prefixes].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class NewTransitVirtualInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NewTransitVirtualInterface, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_name], ::String, context: "#{context}[:virtual_interface_name]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:asn], ::Integer, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:mtu], ::Integer, context: "#{context}[:mtu]")
        Hearth::Validator.validate!(input[:auth_key], ::String, context: "#{context}[:auth_key]")
        Hearth::Validator.validate!(input[:amazon_address], ::String, context: "#{context}[:amazon_address]")
        Hearth::Validator.validate!(input[:customer_address], ::String, context: "#{context}[:customer_address]")
        Hearth::Validator.validate!(input[:address_family], ::String, context: "#{context}[:address_family]")
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:enable_site_link], ::TrueClass, ::FalseClass, context: "#{context}[:enable_site_link]")
      end
    end

    class NewTransitVirtualInterfaceAllocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NewTransitVirtualInterfaceAllocation, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_name], ::String, context: "#{context}[:virtual_interface_name]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:asn], ::Integer, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:mtu], ::Integer, context: "#{context}[:mtu]")
        Hearth::Validator.validate!(input[:auth_key], ::String, context: "#{context}[:auth_key]")
        Hearth::Validator.validate!(input[:amazon_address], ::String, context: "#{context}[:amazon_address]")
        Hearth::Validator.validate!(input[:customer_address], ::String, context: "#{context}[:customer_address]")
        Hearth::Validator.validate!(input[:address_family], ::String, context: "#{context}[:address_family]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ProviderList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceTag, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ResourceTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RouteFilterPrefix
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RouteFilterPrefix, context: context)
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
      end
    end

    class RouteFilterPrefixList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RouteFilterPrefix.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RouterType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RouterType, context: context)
        Hearth::Validator.validate!(input[:vendor], ::String, context: "#{context}[:vendor]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:software], ::String, context: "#{context}[:software]")
        Hearth::Validator.validate!(input[:xslt_template_name], ::String, context: "#{context}[:xslt_template_name]")
        Hearth::Validator.validate!(input[:xslt_template_name_for_mac_sec], ::String, context: "#{context}[:xslt_template_name_for_mac_sec]")
        Hearth::Validator.validate!(input[:router_type_identifier], ::String, context: "#{context}[:router_type_identifier]")
      end
    end

    class StartBgpFailoverTestInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBgpFailoverTestInput, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Validators::BGPPeerIdList.validate!(input[:bgp_peers], context: "#{context}[:bgp_peers]") unless input[:bgp_peers].nil?
        Hearth::Validator.validate!(input[:test_duration_in_minutes], ::Integer, context: "#{context}[:test_duration_in_minutes]")
      end
    end

    class StartBgpFailoverTestOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBgpFailoverTestOutput, context: context)
        Validators::VirtualInterfaceTestHistory.validate!(input[:virtual_interface_test], context: "#{context}[:virtual_interface_test]") unless input[:virtual_interface_test].nil?
      end
    end

    class StopBgpFailoverTestInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopBgpFailoverTestInput, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
      end
    end

    class StopBgpFailoverTestOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopBgpFailoverTestOutput, context: context)
        Validators::VirtualInterfaceTestHistory.validate!(input[:virtual_interface_test], context: "#{context}[:virtual_interface_test]") unless input[:virtual_interface_test].nil?
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectionInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
      end
    end

    class UpdateConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectionOutput, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:bandwidth], ::String, context: "#{context}[:bandwidth]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:partner_name], ::String, context: "#{context}[:partner_name]")
        Hearth::Validator.validate!(input[:loa_issue_time], ::Time, context: "#{context}[:loa_issue_time]")
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
        Hearth::Validator.validate!(input[:aws_device], ::String, context: "#{context}[:aws_device]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Hearth::Validator.validate!(input[:has_logical_redundancy], ::String, context: "#{context}[:has_logical_redundancy]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:mac_sec_capable], ::TrueClass, ::FalseClass, context: "#{context}[:mac_sec_capable]")
        Hearth::Validator.validate!(input[:port_encryption_status], ::String, context: "#{context}[:port_encryption_status]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Validators::MacSecKeyList.validate!(input[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless input[:mac_sec_keys].nil?
      end
    end

    class UpdateDirectConnectGatewayAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDirectConnectGatewayAssociationInput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Validators::RouteFilterPrefixList.validate!(input[:add_allowed_prefixes_to_direct_connect_gateway], context: "#{context}[:add_allowed_prefixes_to_direct_connect_gateway]") unless input[:add_allowed_prefixes_to_direct_connect_gateway].nil?
        Validators::RouteFilterPrefixList.validate!(input[:remove_allowed_prefixes_to_direct_connect_gateway], context: "#{context}[:remove_allowed_prefixes_to_direct_connect_gateway]") unless input[:remove_allowed_prefixes_to_direct_connect_gateway].nil?
      end
    end

    class UpdateDirectConnectGatewayAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDirectConnectGatewayAssociationOutput, context: context)
        Validators::DirectConnectGatewayAssociation.validate!(input[:direct_connect_gateway_association], context: "#{context}[:direct_connect_gateway_association]") unless input[:direct_connect_gateway_association].nil?
      end
    end

    class UpdateDirectConnectGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDirectConnectGatewayInput, context: context)
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Hearth::Validator.validate!(input[:new_direct_connect_gateway_name], ::String, context: "#{context}[:new_direct_connect_gateway_name]")
      end
    end

    class UpdateDirectConnectGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDirectConnectGatewayOutput, context: context)
        Validators::DirectConnectGateway.validate!(input[:direct_connect_gateway], context: "#{context}[:direct_connect_gateway]") unless input[:direct_connect_gateway].nil?
      end
    end

    class UpdateLagInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLagInput, context: context)
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
        Hearth::Validator.validate!(input[:lag_name], ::String, context: "#{context}[:lag_name]")
        Hearth::Validator.validate!(input[:minimum_links], ::Integer, context: "#{context}[:minimum_links]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
      end
    end

    class UpdateLagOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLagOutput, context: context)
        Hearth::Validator.validate!(input[:connections_bandwidth], ::String, context: "#{context}[:connections_bandwidth]")
        Hearth::Validator.validate!(input[:number_of_connections], ::Integer, context: "#{context}[:number_of_connections]")
        Hearth::Validator.validate!(input[:lag_id], ::String, context: "#{context}[:lag_id]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:lag_name], ::String, context: "#{context}[:lag_name]")
        Hearth::Validator.validate!(input[:lag_state], ::String, context: "#{context}[:lag_state]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:minimum_links], ::Integer, context: "#{context}[:minimum_links]")
        Hearth::Validator.validate!(input[:aws_device], ::String, context: "#{context}[:aws_device]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Validators::ConnectionList.validate!(input[:connections], context: "#{context}[:connections]") unless input[:connections].nil?
        Hearth::Validator.validate!(input[:allows_hosted_connections], ::TrueClass, ::FalseClass, context: "#{context}[:allows_hosted_connections]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:has_logical_redundancy], ::String, context: "#{context}[:has_logical_redundancy]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:mac_sec_capable], ::TrueClass, ::FalseClass, context: "#{context}[:mac_sec_capable]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Validators::MacSecKeyList.validate!(input[:mac_sec_keys], context: "#{context}[:mac_sec_keys]") unless input[:mac_sec_keys].nil?
      end
    end

    class UpdateVirtualInterfaceAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVirtualInterfaceAttributesInput, context: context)
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Hearth::Validator.validate!(input[:mtu], ::Integer, context: "#{context}[:mtu]")
        Hearth::Validator.validate!(input[:enable_site_link], ::TrueClass, ::FalseClass, context: "#{context}[:enable_site_link]")
        Hearth::Validator.validate!(input[:virtual_interface_name], ::String, context: "#{context}[:virtual_interface_name]")
      end
    end

    class UpdateVirtualInterfaceAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVirtualInterfaceAttributesOutput, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:virtual_interface_type], ::String, context: "#{context}[:virtual_interface_type]")
        Hearth::Validator.validate!(input[:virtual_interface_name], ::String, context: "#{context}[:virtual_interface_name]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:asn], ::Integer, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:amazon_side_asn], ::Integer, context: "#{context}[:amazon_side_asn]")
        Hearth::Validator.validate!(input[:auth_key], ::String, context: "#{context}[:auth_key]")
        Hearth::Validator.validate!(input[:amazon_address], ::String, context: "#{context}[:amazon_address]")
        Hearth::Validator.validate!(input[:customer_address], ::String, context: "#{context}[:customer_address]")
        Hearth::Validator.validate!(input[:address_family], ::String, context: "#{context}[:address_family]")
        Hearth::Validator.validate!(input[:virtual_interface_state], ::String, context: "#{context}[:virtual_interface_state]")
        Hearth::Validator.validate!(input[:customer_router_config], ::String, context: "#{context}[:customer_router_config]")
        Hearth::Validator.validate!(input[:mtu], ::Integer, context: "#{context}[:mtu]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:virtual_gateway_id], ::String, context: "#{context}[:virtual_gateway_id]")
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Validators::RouteFilterPrefixList.validate!(input[:route_filter_prefixes], context: "#{context}[:route_filter_prefixes]") unless input[:route_filter_prefixes].nil?
        Validators::BGPPeerList.validate!(input[:bgp_peers], context: "#{context}[:bgp_peers]") unless input[:bgp_peers].nil?
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:site_link_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:site_link_enabled]")
      end
    end

    class VirtualGateway
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGateway, context: context)
        Hearth::Validator.validate!(input[:virtual_gateway_id], ::String, context: "#{context}[:virtual_gateway_id]")
        Hearth::Validator.validate!(input[:virtual_gateway_state], ::String, context: "#{context}[:virtual_gateway_state]")
      end
    end

    class VirtualGatewayList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VirtualGateway.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VirtualInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualInterface, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:virtual_interface_type], ::String, context: "#{context}[:virtual_interface_type]")
        Hearth::Validator.validate!(input[:virtual_interface_name], ::String, context: "#{context}[:virtual_interface_name]")
        Hearth::Validator.validate!(input[:vlan], ::Integer, context: "#{context}[:vlan]")
        Hearth::Validator.validate!(input[:asn], ::Integer, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:amazon_side_asn], ::Integer, context: "#{context}[:amazon_side_asn]")
        Hearth::Validator.validate!(input[:auth_key], ::String, context: "#{context}[:auth_key]")
        Hearth::Validator.validate!(input[:amazon_address], ::String, context: "#{context}[:amazon_address]")
        Hearth::Validator.validate!(input[:customer_address], ::String, context: "#{context}[:customer_address]")
        Hearth::Validator.validate!(input[:address_family], ::String, context: "#{context}[:address_family]")
        Hearth::Validator.validate!(input[:virtual_interface_state], ::String, context: "#{context}[:virtual_interface_state]")
        Hearth::Validator.validate!(input[:customer_router_config], ::String, context: "#{context}[:customer_router_config]")
        Hearth::Validator.validate!(input[:mtu], ::Integer, context: "#{context}[:mtu]")
        Hearth::Validator.validate!(input[:jumbo_frame_capable], ::TrueClass, ::FalseClass, context: "#{context}[:jumbo_frame_capable]")
        Hearth::Validator.validate!(input[:virtual_gateway_id], ::String, context: "#{context}[:virtual_gateway_id]")
        Hearth::Validator.validate!(input[:direct_connect_gateway_id], ::String, context: "#{context}[:direct_connect_gateway_id]")
        Validators::RouteFilterPrefixList.validate!(input[:route_filter_prefixes], context: "#{context}[:route_filter_prefixes]") unless input[:route_filter_prefixes].nil?
        Validators::BGPPeerList.validate!(input[:bgp_peers], context: "#{context}[:bgp_peers]") unless input[:bgp_peers].nil?
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:aws_device_v2], ::String, context: "#{context}[:aws_device_v2]")
        Hearth::Validator.validate!(input[:aws_logical_device_id], ::String, context: "#{context}[:aws_logical_device_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:site_link_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:site_link_enabled]")
      end
    end

    class VirtualInterfaceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VirtualInterface.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VirtualInterfaceTestHistory
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualInterfaceTestHistory, context: context)
        Hearth::Validator.validate!(input[:test_id], ::String, context: "#{context}[:test_id]")
        Hearth::Validator.validate!(input[:virtual_interface_id], ::String, context: "#{context}[:virtual_interface_id]")
        Validators::BGPPeerIdList.validate!(input[:bgp_peers], context: "#{context}[:bgp_peers]") unless input[:bgp_peers].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:test_duration_in_minutes], ::Integer, context: "#{context}[:test_duration_in_minutes]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class VirtualInterfaceTestHistoryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VirtualInterfaceTestHistory.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
