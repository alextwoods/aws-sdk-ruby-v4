# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DirectConnect
  module Types

    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute proposal_id
    #   <p>The ID of the request proposal.</p>
    #
    #   @return [String]
    #
    # @!attribute associated_gateway_owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual private gateway or transit gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute override_allowed_prefixes_to_direct_connect_gateway
    #   <p>Overrides the Amazon VPC prefixes advertised to the Direct Connect gateway.</p>
    #            <p>For information about how to set the prefixes, see <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/multi-account-associate-vgw.html allowed-prefixes">Allowed Prefixes</a> in the <i>Direct Connect User Guide</i>.</p>
    #
    #   @return [Array<RouteFilterPrefix>]
    #
    AcceptDirectConnectGatewayAssociationProposalInput = ::Struct.new(
      :direct_connect_gateway_id,
      :proposal_id,
      :associated_gateway_owner_account,
      :override_allowed_prefixes_to_direct_connect_gateway,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateway_association
    #   <p>Information about an association between a Direct Connect gateway and a virtual private gateway or transit gateway.</p>
    #
    #   @return [DirectConnectGatewayAssociation]
    #
    AcceptDirectConnectGatewayAssociationProposalOutput = ::Struct.new(
      :direct_connect_gateway_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AddressFamily
    #
    module AddressFamily
      # No documentation available.
      #
      IPv4 = "ipv4"

      # No documentation available.
      #
      IPv6 = "ipv6"
    end

    # @!attribute bandwidth
    #   <p>The bandwidth of the connection. The possible values are 50Mbps, 100Mbps, 200Mbps,
    #         300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and 10Gbps. Note that only those Direct Connect Partners
    #         who have met specific requirements
    #       are allowed to create a 1Gbps, 2Gbps, 5Gbps or 10Gbps hosted connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the provisioned connection.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account of the customer for whom the connection will be provisioned.</p>
    #
    #   @return [String]
    #
    # @!attribute interconnect_id
    #   <p>The ID of the interconnect on which the connection will be provisioned.</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The dedicated VLAN provisioned to the connection.</p>
    #
    #   @return [Integer]
    #
    AllocateConnectionOnInterconnectInput = ::Struct.new(
      :bandwidth,
      :connection_name,
      :owner_account,
      :interconnect_id,
      :vlan,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
      end

    end

    # <p>Information about an Direct Connect connection.</p>
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute partner_name
    #   <p>The name of the Direct Connect service provider associated with the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #
    #   @return [Time]
    #
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #
    #   Enum, one of: ["unknown", "yes", "no"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the connection supports MAC Security (MACsec).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status of the connection.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) connection encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the connection.</p>
    #
    #   @return [Array<MacSecKey>]
    #
    AllocateConnectionOnInterconnectOutput = ::Struct.new(
      :owner_account,
      :connection_id,
      :connection_name,
      :connection_state,
      :region,
      :location,
      :bandwidth,
      :vlan,
      :partner_name,
      :loa_issue_time,
      :lag_id,
      :aws_device,
      :jumbo_frame_capable,
      :aws_device_v2,
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
      end

    end

    # @!attribute connection_id
    #   <p>The ID of the interconnect or LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account ID of the customer for the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection. The possible values are 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and 10Gbps. Note that only those Direct Connect Partners who have met specific requirements are allowed to create a 1Gbps, 2Gbps, 5Gbps or 10Gbps hosted connection. </p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the hosted connection.</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The dedicated VLAN provisioned to the hosted connection.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #
    #   @return [Array<Tag>]
    #
    AllocateHostedConnectionInput = ::Struct.new(
      :connection_id,
      :owner_account,
      :bandwidth,
      :connection_name,
      :vlan,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
      end

    end

    # <p>Information about an Direct Connect connection.</p>
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute partner_name
    #   <p>The name of the Direct Connect service provider associated with the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #
    #   @return [Time]
    #
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #
    #   Enum, one of: ["unknown", "yes", "no"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the connection supports MAC Security (MACsec).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status of the connection.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) connection encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the connection.</p>
    #
    #   @return [Array<MacSecKey>]
    #
    AllocateHostedConnectionOutput = ::Struct.new(
      :owner_account,
      :connection_id,
      :connection_name,
      :connection_state,
      :region,
      :location,
      :bandwidth,
      :vlan,
      :partner_name,
      :loa_issue_time,
      :lag_id,
      :aws_device,
      :jumbo_frame_capable,
      :aws_device_v2,
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
      end

    end

    # @!attribute connection_id
    #   <p>The ID of the connection on which the private virtual interface is provisioned.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual private interface.</p>
    #
    #   @return [String]
    #
    # @!attribute new_private_virtual_interface_allocation
    #   <p>Information about the private virtual interface.</p>
    #
    #   @return [NewPrivateVirtualInterfaceAllocation]
    #
    AllocatePrivateVirtualInterfaceInput = ::Struct.new(
      :connection_id,
      :owner_account,
      :new_private_virtual_interface_allocation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a virtual interface.</p>
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_type
    #   <p>The type of virtual interface. The possible values are <code>private</code> and <code>public</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute asn
    #   <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
    #            <p>The valid values are 1-2147483647.</p>
    #
    #   @return [Integer]
    #
    # @!attribute amazon_side_asn
    #   <p>The autonomous system number (ASN) for the Amazon side of the connection.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #
    #   Enum, one of: ["ipv4", "ipv6"]
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute customer_router_config
    #   <p>The customer router configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>
    #
    #   @return [Integer]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>
    #
    #   @return [String]
    #
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute route_filter_prefixes
    #   <p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>
    #
    #   @return [Array<RouteFilterPrefix>]
    #
    # @!attribute bgp_peers
    #   <p>The BGP peers configured on this virtual interface.</p>
    #
    #   @return [Array<BGPPeer>]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the virtual interface is located.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the virtual interface.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute site_link_enabled
    #   <p>Indicates whether SiteLink is enabled.</p>
    #
    #   @return [Boolean]
    #
    AllocatePrivateVirtualInterfaceOutput = ::Struct.new(
      :owner_account,
      :virtual_interface_id,
      :location,
      :connection_id,
      :virtual_interface_type,
      :virtual_interface_name,
      :vlan,
      :asn,
      :amazon_side_asn,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :virtual_interface_state,
      :customer_router_config,
      :mtu,
      :jumbo_frame_capable,
      :virtual_gateway_id,
      :direct_connect_gateway_id,
      :route_filter_prefixes,
      :bgp_peers,
      :region,
      :aws_device_v2,
      :aws_logical_device_id,
      :tags,
      :site_link_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
        self.asn ||= 0
      end

    end

    # @!attribute connection_id
    #   <p>The ID of the connection on which the public virtual interface is provisioned.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the public virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute new_public_virtual_interface_allocation
    #   <p>Information about the public virtual interface.</p>
    #
    #   @return [NewPublicVirtualInterfaceAllocation]
    #
    AllocatePublicVirtualInterfaceInput = ::Struct.new(
      :connection_id,
      :owner_account,
      :new_public_virtual_interface_allocation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a virtual interface.</p>
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_type
    #   <p>The type of virtual interface. The possible values are <code>private</code> and <code>public</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute asn
    #   <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
    #            <p>The valid values are 1-2147483647.</p>
    #
    #   @return [Integer]
    #
    # @!attribute amazon_side_asn
    #   <p>The autonomous system number (ASN) for the Amazon side of the connection.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #
    #   Enum, one of: ["ipv4", "ipv6"]
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute customer_router_config
    #   <p>The customer router configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>
    #
    #   @return [Integer]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>
    #
    #   @return [String]
    #
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute route_filter_prefixes
    #   <p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>
    #
    #   @return [Array<RouteFilterPrefix>]
    #
    # @!attribute bgp_peers
    #   <p>The BGP peers configured on this virtual interface.</p>
    #
    #   @return [Array<BGPPeer>]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the virtual interface is located.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the virtual interface.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute site_link_enabled
    #   <p>Indicates whether SiteLink is enabled.</p>
    #
    #   @return [Boolean]
    #
    AllocatePublicVirtualInterfaceOutput = ::Struct.new(
      :owner_account,
      :virtual_interface_id,
      :location,
      :connection_id,
      :virtual_interface_type,
      :virtual_interface_name,
      :vlan,
      :asn,
      :amazon_side_asn,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :virtual_interface_state,
      :customer_router_config,
      :mtu,
      :jumbo_frame_capable,
      :virtual_gateway_id,
      :direct_connect_gateway_id,
      :route_filter_prefixes,
      :bgp_peers,
      :region,
      :aws_device_v2,
      :aws_logical_device_id,
      :tags,
      :site_link_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
        self.asn ||= 0
      end

    end

    # @!attribute connection_id
    #   <p>The ID of the connection on which the transit virtual interface is provisioned.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the transit virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute new_transit_virtual_interface_allocation
    #   <p>Information about the transit virtual interface.</p>
    #
    #   @return [NewTransitVirtualInterfaceAllocation]
    #
    AllocateTransitVirtualInterfaceInput = ::Struct.new(
      :connection_id,
      :owner_account,
      :new_transit_virtual_interface_allocation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_interface
    #   <p>Information about a virtual interface.</p>
    #
    #   @return [VirtualInterface]
    #
    AllocateTransitVirtualInterfaceOutput = ::Struct.new(
      :virtual_interface,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute lag_id
    #   <p>The ID of the LAG with which to associate the connection.</p>
    #
    #   @return [String]
    #
    AssociateConnectionWithLagInput = ::Struct.new(
      :connection_id,
      :lag_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an Direct Connect connection.</p>
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute partner_name
    #   <p>The name of the Direct Connect service provider associated with the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #
    #   @return [Time]
    #
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #
    #   Enum, one of: ["unknown", "yes", "no"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the connection supports MAC Security (MACsec).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status of the connection.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) connection encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the connection.</p>
    #
    #   @return [Array<MacSecKey>]
    #
    AssociateConnectionWithLagOutput = ::Struct.new(
      :owner_account,
      :connection_id,
      :connection_name,
      :connection_state,
      :region,
      :location,
      :bandwidth,
      :vlan,
      :partner_name,
      :loa_issue_time,
      :lag_id,
      :aws_device,
      :jumbo_frame_capable,
      :aws_device_v2,
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
      end

    end

    # @!attribute connection_id
    #   <p>The ID of the hosted connection.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_connection_id
    #   <p>The ID of the interconnect or the LAG.</p>
    #
    #   @return [String]
    #
    AssociateHostedConnectionInput = ::Struct.new(
      :connection_id,
      :parent_connection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an Direct Connect connection.</p>
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute partner_name
    #   <p>The name of the Direct Connect service provider associated with the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #
    #   @return [Time]
    #
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #
    #   Enum, one of: ["unknown", "yes", "no"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the connection supports MAC Security (MACsec).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status of the connection.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) connection encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the connection.</p>
    #
    #   @return [Array<MacSecKey>]
    #
    AssociateHostedConnectionOutput = ::Struct.new(
      :owner_account,
      :connection_id,
      :connection_name,
      :connection_state,
      :region,
      :location,
      :bandwidth,
      :vlan,
      :partner_name,
      :loa_issue_time,
      :lag_id,
      :aws_device,
      :jumbo_frame_capable,
      :aws_device_v2,
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
      end

    end

    # @!attribute connection_id
    #   <p>The ID of the dedicated connection (dxcon-xxxx), or the ID of the LAG (dxlag-xxxx).</p>
    #            <p>You can use <a>DescribeConnections</a> or <a>DescribeLags</a> to retrieve connection ID.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key to associate with the dedicated connection.</p>
    #            <p>You can use <a>DescribeConnections</a> or <a>DescribeLags</a> to retrieve the MAC Security (MACsec) secret key.</p>
    #            <p>If you use this request parameter, you do not use the <code>ckn</code> and <code>cak</code> request parameters.</p>
    #
    #   @return [String]
    #
    # @!attribute ckn
    #   <p>The MAC Security (MACsec) CKN to associate with the dedicated connection.</p>
    #            <p>You can create the CKN/CAK pair using an industry standard tool.</p>
    #            <p> The valid values are 64 hexadecimal characters (0-9, A-E).</p>
    #            <p>If you use this request parameter, you must use the <code>cak</code> request parameter and not use the <code>secretARN</code> request parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute cak
    #   <p>The MAC Security (MACsec) CAK to associate with the dedicated connection.</p>
    #            <p>You can create the CKN/CAK pair using an industry standard tool.</p>
    #            <p> The valid values are 64 hexadecimal characters (0-9, A-E).</p>
    #            <p>If you use this request parameter, you must use the <code>ckn</code> request parameter and not use the <code>secretARN</code> request parameter.</p>
    #
    #   @return [String]
    #
    AssociateMacSecKeyInput = ::Struct.new(
      :connection_id,
      :secret_arn,
      :ckn,
      :cak,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the dedicated connection (dxcon-xxxx), or the ID of the LAG (dxlag-xxxx).</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the dedicated connection.</p>
    #
    #   @return [Array<MacSecKey>]
    #
    AssociateMacSecKeyOutput = ::Struct.new(
      :connection_id,
      :mac_sec_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of the LAG or connection.</p>
    #
    #   @return [String]
    #
    AssociateVirtualInterfaceInput = ::Struct.new(
      :virtual_interface_id,
      :connection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a virtual interface.</p>
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_type
    #   <p>The type of virtual interface. The possible values are <code>private</code> and <code>public</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute asn
    #   <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
    #            <p>The valid values are 1-2147483647.</p>
    #
    #   @return [Integer]
    #
    # @!attribute amazon_side_asn
    #   <p>The autonomous system number (ASN) for the Amazon side of the connection.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #
    #   Enum, one of: ["ipv4", "ipv6"]
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute customer_router_config
    #   <p>The customer router configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>
    #
    #   @return [Integer]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>
    #
    #   @return [String]
    #
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute route_filter_prefixes
    #   <p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>
    #
    #   @return [Array<RouteFilterPrefix>]
    #
    # @!attribute bgp_peers
    #   <p>The BGP peers configured on this virtual interface.</p>
    #
    #   @return [Array<BGPPeer>]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the virtual interface is located.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the virtual interface.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute site_link_enabled
    #   <p>Indicates whether SiteLink is enabled.</p>
    #
    #   @return [Boolean]
    #
    AssociateVirtualInterfaceOutput = ::Struct.new(
      :owner_account,
      :virtual_interface_id,
      :location,
      :connection_id,
      :virtual_interface_type,
      :virtual_interface_name,
      :vlan,
      :asn,
      :amazon_side_asn,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :virtual_interface_state,
      :customer_router_config,
      :mtu,
      :jumbo_frame_capable,
      :virtual_gateway_id,
      :direct_connect_gateway_id,
      :route_filter_prefixes,
      :bgp_peers,
      :region,
      :aws_device_v2,
      :aws_logical_device_id,
      :tags,
      :site_link_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
        self.asn ||= 0
      end

    end

    # <p>Information about the associated gateway.</p>
    #
    # @!attribute id
    #   <p>The ID of the associated gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of associated gateway.</p>
    #
    #   Enum, one of: ["virtualPrivateGateway", "transitGateway"]
    #
    #   @return [String]
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the associated virtual private gateway or transit gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Region where the associated gateway is located.</p>
    #
    #   @return [String]
    #
    AssociatedGateway = ::Struct.new(
      :id,
      :type,
      :owner_account,
      :region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a BGP peer.</p>
    #
    # @!attribute bgp_peer_id
    #   <p>The ID of the BGP peer.</p>
    #
    #   @return [String]
    #
    # @!attribute asn
    #   <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #
    #   Enum, one of: ["ipv4", "ipv6"]
    #
    #   @return [String]
    #
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute bgp_peer_state
    #   <p>The state of the BGP peer. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: The BGP peering addresses or ASN require validation before the BGP peer can be created. This state applies only to public virtual interfaces.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The BGP peer is created, and remains in this state until it is ready to be established.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The BGP peer is ready to be established.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>:  The BGP peer is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>:  The BGP peer is deleted and cannot be established.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["verifying", "pending", "available", "deleting", "deleted"]
    #
    #   @return [String]
    #
    # @!attribute bgp_status
    #   <p>The status of the BGP peer. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>up</code>: The BGP peer is established. This state does not indicate the
    #           state of the routing function. Ensure that you are receiving routes over the BGP session.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The BGP peer is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The BGP peer status is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["up", "down", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the BGP peer.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    BGPPeer = ::Struct.new(
      :bgp_peer_id,
      :asn,
      :auth_key,
      :address_family,
      :amazon_address,
      :customer_address,
      :bgp_peer_state,
      :bgp_status,
      :aws_device_v2,
      :aws_logical_device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.asn ||= 0
      end

    end

    # Includes enum constants for BGPPeerState
    #
    module BGPPeerState
      # No documentation available.
      #
      Verifying = "verifying"

      # No documentation available.
      #
      Pending = "pending"

      # No documentation available.
      #
      Available = "available"

      # No documentation available.
      #
      Deleting = "deleting"

      # No documentation available.
      #
      Deleted = "deleted"
    end

    # Includes enum constants for BGPStatus
    #
    module BGPStatus
      # No documentation available.
      #
      Up = "up"

      # No documentation available.
      #
      Down = "down"

      # No documentation available.
      #
      Unknown = "unknown"
    end

    # @!attribute connection_id
    #   <p>The ID of the hosted connection.</p>
    #
    #   @return [String]
    #
    ConfirmConnectionInput = ::Struct.new(
      :connection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    ConfirmConnectionOutput = ::Struct.new(
      :connection_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute agreement_name
    #   <p>
    #
    #         The name of the customer agreement.
    #
    #       </p>
    #
    #   @return [String]
    #
    ConfirmCustomerAgreementInput = ::Struct.new(
      :agreement_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>
    #         The status of the customer agreement when the connection was created. This will be either <code>signed</code> or <code>unsigned</code>.
    #       </p>
    #
    #   @return [String]
    #
    ConfirmCustomerAgreementOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    ConfirmPrivateVirtualInterfaceInput = ::Struct.new(
      :virtual_interface_id,
      :virtual_gateway_id,
      :direct_connect_gateway_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    ConfirmPrivateVirtualInterfaceOutput = ::Struct.new(
      :virtual_interface_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    #   @return [String]
    #
    ConfirmPublicVirtualInterfaceInput = ::Struct.new(
      :virtual_interface_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    ConfirmPublicVirtualInterfaceOutput = ::Struct.new(
      :virtual_interface_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    ConfirmTransitVirtualInterfaceInput = ::Struct.new(
      :virtual_interface_id,
      :direct_connect_gateway_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    ConfirmTransitVirtualInterfaceOutput = ::Struct.new(
      :virtual_interface_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an Direct Connect connection.</p>
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute partner_name
    #   <p>The name of the Direct Connect service provider associated with the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #
    #   @return [Time]
    #
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #
    #   Enum, one of: ["unknown", "yes", "no"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the connection supports MAC Security (MACsec).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status of the connection.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) connection encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the connection.</p>
    #
    #   @return [Array<MacSecKey>]
    #
    Connection = ::Struct.new(
      :owner_account,
      :connection_id,
      :connection_name,
      :connection_state,
      :region,
      :location,
      :bandwidth,
      :vlan,
      :partner_name,
      :loa_issue_time,
      :lag_id,
      :aws_device,
      :jumbo_frame_capable,
      :aws_device_v2,
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
      end

    end

    # Includes enum constants for ConnectionState
    #
    module ConnectionState
      # No documentation available.
      #
      ordering = "ordering"

      # No documentation available.
      #
      requested = "requested"

      # No documentation available.
      #
      pending = "pending"

      # No documentation available.
      #
      available = "available"

      # No documentation available.
      #
      down = "down"

      # No documentation available.
      #
      deleting = "deleting"

      # No documentation available.
      #
      deleted = "deleted"

      # No documentation available.
      #
      rejected = "rejected"

      # No documentation available.
      #
      unknown = "unknown"
    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute new_bgp_peer
    #   <p>Information about the BGP peer.</p>
    #
    #   @return [NewBGPPeer]
    #
    CreateBGPPeerInput = ::Struct.new(
      :virtual_interface_id,
      :new_bgp_peer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_interface
    #   <p>The virtual interface.</p>
    #
    #   @return [VirtualInterface]
    #
    CreateBGPPeerOutput = ::Struct.new(
      :virtual_interface,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute location
    #   <p>The location of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to associate with the lag.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the requested connection.</p>
    #
    #   @return [String]
    #
    # @!attribute request_mac_sec
    #   <p>Indicates whether you want the connection to support MAC Security (MACsec).</p>
    #            <p>MAC Security (MACsec) is only available on dedicated connections. For information about MAC Security (MACsec) prerequisties, see  <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html mac-sec-prerequisites">MACsec prerequisties</a> in the <i>Direct Connect User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    CreateConnectionInput = ::Struct.new(
      :location,
      :bandwidth,
      :connection_name,
      :lag_id,
      :tags,
      :provider_name,
      :request_mac_sec,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an Direct Connect connection.</p>
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute partner_name
    #   <p>The name of the Direct Connect service provider associated with the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #
    #   @return [Time]
    #
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #
    #   Enum, one of: ["unknown", "yes", "no"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the connection supports MAC Security (MACsec).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status of the connection.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) connection encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the connection.</p>
    #
    #   @return [Array<MacSecKey>]
    #
    CreateConnectionOutput = ::Struct.new(
      :owner_account,
      :connection_id,
      :connection_name,
      :connection_state,
      :region,
      :location,
      :bandwidth,
      :vlan,
      :partner_name,
      :loa_issue_time,
      :lag_id,
      :aws_device,
      :jumbo_frame_capable,
      :aws_device_v2,
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
      end

    end

    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute gateway_id
    #   <p>The ID of the virtual private gateway or transit gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute add_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to advertise to the Direct Connect gateway</p>
    #            <p>This parameter is required when you create an association to a transit gateway.</p>
    #            <p>For information about how to set the prefixes, see <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/multi-account-associate-vgw.html allowed-prefixes">Allowed Prefixes</a> in the <i>Direct Connect User Guide</i>.</p>
    #
    #   @return [Array<RouteFilterPrefix>]
    #
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway.</p>
    #
    #   @return [String]
    #
    CreateDirectConnectGatewayAssociationInput = ::Struct.new(
      :direct_connect_gateway_id,
      :gateway_id,
      :add_allowed_prefixes_to_direct_connect_gateway,
      :virtual_gateway_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateway_association
    #   <p>The association to be created.</p>
    #
    #   @return [DirectConnectGatewayAssociation]
    #
    CreateDirectConnectGatewayAssociationOutput = ::Struct.new(
      :direct_connect_gateway_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute direct_connect_gateway_owner_account
    #   <p>The ID of the Amazon Web Services account that owns the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute gateway_id
    #   <p>The ID of the virtual private gateway or transit gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute add_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>
    #
    #   @return [Array<RouteFilterPrefix>]
    #
    # @!attribute remove_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to no longer advertise to the Direct Connect gateway.</p>
    #
    #   @return [Array<RouteFilterPrefix>]
    #
    CreateDirectConnectGatewayAssociationProposalInput = ::Struct.new(
      :direct_connect_gateway_id,
      :direct_connect_gateway_owner_account,
      :gateway_id,
      :add_allowed_prefixes_to_direct_connect_gateway,
      :remove_allowed_prefixes_to_direct_connect_gateway,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateway_association_proposal
    #   <p>Information about the Direct Connect gateway proposal.</p>
    #
    #   @return [DirectConnectGatewayAssociationProposal]
    #
    CreateDirectConnectGatewayAssociationProposalOutput = ::Struct.new(
      :direct_connect_gateway_association_proposal,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateway_name
    #   <p>The name of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute amazon_side_asn
    #   <p>The autonomous system number (ASN) for Border Gateway Protocol (BGP) to be configured
    #         on the Amazon side of the connection. The ASN must be in the private range of 64,512 to
    #         65,534 or 4,200,000,000 to 4,294,967,294. The default is 64512.</p>
    #
    #   @return [Integer]
    #
    CreateDirectConnectGatewayInput = ::Struct.new(
      :direct_connect_gateway_name,
      :amazon_side_asn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateway
    #   <p>The Direct Connect gateway.</p>
    #
    #   @return [DirectConnectGateway]
    #
    CreateDirectConnectGatewayOutput = ::Struct.new(
      :direct_connect_gateway,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute interconnect_name
    #   <p>The name of the interconnect.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth
    #   <p>The port bandwidth, in Gbps. The possible values are 1 and 10.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the interconnect.</p>
    #
    #   @return [String]
    #
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to associate with the interconnect.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the interconnect.</p>
    #
    #   @return [String]
    #
    CreateInterconnectInput = ::Struct.new(
      :interconnect_name,
      :bandwidth,
      :location,
      :lag_id,
      :tags,
      :provider_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an interconnect.</p>
    #
    # @!attribute interconnect_id
    #   <p>The ID of the interconnect.</p>
    #
    #   @return [String]
    #
    # @!attribute interconnect_name
    #   <p>The name of the interconnect.</p>
    #
    #   @return [String]
    #
    # @!attribute interconnect_state
    #   <p>The state of the interconnect. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of an interconnect. The interconnect stays in the
    #           requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The interconnect is approved, and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up, and the interconnect is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The interconnect is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The interconnect is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the interconnect is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #
    #   @return [Time]
    #
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the interconnect supports a secondary BGP in the same address family (IPv4/IPv6).</p>
    #
    #   Enum, one of: ["unknown", "yes", "no"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the interconnect.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the interconnect.</p>
    #
    #   @return [String]
    #
    CreateInterconnectOutput = ::Struct.new(
      :interconnect_id,
      :interconnect_name,
      :interconnect_state,
      :region,
      :location,
      :bandwidth,
      :loa_issue_time,
      :lag_id,
      :aws_device,
      :jumbo_frame_capable,
      :aws_device_v2,
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute number_of_connections
    #   <p>The number of physical dedicated connections initially provisioned and bundled by the
    #         LAG.</p>
    #
    #   @return [Integer]
    #
    # @!attribute location
    #   <p>The location for the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute connections_bandwidth
    #   <p>The bandwidth of the individual physical dedicated connections bundled by the LAG. The
    #         possible values are 1Gbps and 10Gbps. </p>
    #
    #   @return [String]
    #
    # @!attribute lag_name
    #   <p>The name of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of an existing dedicated connection to migrate to the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to associate with the LAG.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute child_connection_tags
    #   <p>The tags to associate with the automtically created LAGs.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute request_mac_sec
    #   <p>Indicates whether the connection will support MAC Security (MACsec).</p>
    #            <note>
    #               <p>All connections in the LAG must be capable of  supporting MAC Security (MACsec). For information about MAC Security (MACsec) prerequisties, see  <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html mac-sec-prerequisites">MACsec prerequisties</a> in the <i>Direct Connect User Guide</i>.</p>
    #            </note>
    #
    #   @return [Boolean]
    #
    CreateLagInput = ::Struct.new(
      :number_of_connections,
      :location,
      :connections_bandwidth,
      :lag_name,
      :connection_id,
      :tags,
      :child_connection_tags,
      :provider_name,
      :request_mac_sec,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.number_of_connections ||= 0
      end

    end

    # <p>Information about a link aggregation group (LAG).</p>
    #
    # @!attribute connections_bandwidth
    #   <p>The individual bandwidth of the physical connections bundled by the LAG. The possible
    #         values are 1Gbps and 10Gbps. </p>
    #
    #   @return [String]
    #
    # @!attribute number_of_connections
    #   <p>The number of physical dedicated connections bundled by the LAG, up to a maximum of 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute lag_name
    #   <p>The name of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute lag_state
    #   <p>The state of the LAG. The following are the possible values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a LAG. The LAG stays in the
    #                   requested state until the Letter of Authorization (LOA) is available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The LAG has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is established and the LAG is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The LAG is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The LAG is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the LAG is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #
    #   @return [String]
    #
    # @!attribute minimum_links
    #   <p>The minimum number of physical dedicated connections that must be operational for the LAG itself to be operational.</p>
    #
    #   @return [Integer]
    #
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint that hosts the LAG.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that hosts the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connections
    #   <p>The connections bundled by the LAG.</p>
    #
    #   @return [Array<Connection>]
    #
    # @!attribute allows_hosted_connections
    #   <p>Indicates whether the LAG can host other connections.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the LAG supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #
    #   Enum, one of: ["unknown", "yes", "no"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the LAG.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the LAG supports MAC Security (MACsec).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute encryption_mode
    #   <p>The LAG MAC Security (MACsec) encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the LAG.</p>
    #
    #   @return [Array<MacSecKey>]
    #
    CreateLagOutput = ::Struct.new(
      :connections_bandwidth,
      :number_of_connections,
      :lag_id,
      :owner_account,
      :lag_name,
      :lag_state,
      :location,
      :region,
      :minimum_links,
      :aws_device,
      :aws_device_v2,
      :aws_logical_device_id,
      :connections,
      :allows_hosted_connections,
      :jumbo_frame_capable,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :encryption_mode,
      :mac_sec_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.number_of_connections ||= 0
        self.minimum_links ||= 0
        self.allows_hosted_connections ||= false
      end

    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute new_private_virtual_interface
    #   <p>Information about the private virtual interface.</p>
    #
    #   @return [NewPrivateVirtualInterface]
    #
    CreatePrivateVirtualInterfaceInput = ::Struct.new(
      :connection_id,
      :new_private_virtual_interface,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a virtual interface.</p>
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_type
    #   <p>The type of virtual interface. The possible values are <code>private</code> and <code>public</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute asn
    #   <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
    #            <p>The valid values are 1-2147483647.</p>
    #
    #   @return [Integer]
    #
    # @!attribute amazon_side_asn
    #   <p>The autonomous system number (ASN) for the Amazon side of the connection.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #
    #   Enum, one of: ["ipv4", "ipv6"]
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute customer_router_config
    #   <p>The customer router configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>
    #
    #   @return [Integer]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>
    #
    #   @return [String]
    #
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute route_filter_prefixes
    #   <p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>
    #
    #   @return [Array<RouteFilterPrefix>]
    #
    # @!attribute bgp_peers
    #   <p>The BGP peers configured on this virtual interface.</p>
    #
    #   @return [Array<BGPPeer>]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the virtual interface is located.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the virtual interface.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute site_link_enabled
    #   <p>Indicates whether SiteLink is enabled.</p>
    #
    #   @return [Boolean]
    #
    CreatePrivateVirtualInterfaceOutput = ::Struct.new(
      :owner_account,
      :virtual_interface_id,
      :location,
      :connection_id,
      :virtual_interface_type,
      :virtual_interface_name,
      :vlan,
      :asn,
      :amazon_side_asn,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :virtual_interface_state,
      :customer_router_config,
      :mtu,
      :jumbo_frame_capable,
      :virtual_gateway_id,
      :direct_connect_gateway_id,
      :route_filter_prefixes,
      :bgp_peers,
      :region,
      :aws_device_v2,
      :aws_logical_device_id,
      :tags,
      :site_link_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
        self.asn ||= 0
      end

    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute new_public_virtual_interface
    #   <p>Information about the public virtual interface.</p>
    #
    #   @return [NewPublicVirtualInterface]
    #
    CreatePublicVirtualInterfaceInput = ::Struct.new(
      :connection_id,
      :new_public_virtual_interface,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a virtual interface.</p>
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_type
    #   <p>The type of virtual interface. The possible values are <code>private</code> and <code>public</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute asn
    #   <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
    #            <p>The valid values are 1-2147483647.</p>
    #
    #   @return [Integer]
    #
    # @!attribute amazon_side_asn
    #   <p>The autonomous system number (ASN) for the Amazon side of the connection.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #
    #   Enum, one of: ["ipv4", "ipv6"]
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute customer_router_config
    #   <p>The customer router configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>
    #
    #   @return [Integer]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>
    #
    #   @return [String]
    #
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute route_filter_prefixes
    #   <p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>
    #
    #   @return [Array<RouteFilterPrefix>]
    #
    # @!attribute bgp_peers
    #   <p>The BGP peers configured on this virtual interface.</p>
    #
    #   @return [Array<BGPPeer>]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the virtual interface is located.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the virtual interface.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute site_link_enabled
    #   <p>Indicates whether SiteLink is enabled.</p>
    #
    #   @return [Boolean]
    #
    CreatePublicVirtualInterfaceOutput = ::Struct.new(
      :owner_account,
      :virtual_interface_id,
      :location,
      :connection_id,
      :virtual_interface_type,
      :virtual_interface_name,
      :vlan,
      :asn,
      :amazon_side_asn,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :virtual_interface_state,
      :customer_router_config,
      :mtu,
      :jumbo_frame_capable,
      :virtual_gateway_id,
      :direct_connect_gateway_id,
      :route_filter_prefixes,
      :bgp_peers,
      :region,
      :aws_device_v2,
      :aws_logical_device_id,
      :tags,
      :site_link_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
        self.asn ||= 0
      end

    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute new_transit_virtual_interface
    #   <p>Information about the transit virtual interface.</p>
    #
    #   @return [NewTransitVirtualInterface]
    #
    CreateTransitVirtualInterfaceInput = ::Struct.new(
      :connection_id,
      :new_transit_virtual_interface,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_interface
    #   <p>Information about a virtual interface.</p>
    #
    #   @return [VirtualInterface]
    #
    CreateTransitVirtualInterfaceOutput = ::Struct.new(
      :virtual_interface,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The name and status of a customer agreement. </p>
    #
    # @!attribute agreement_name
    #   <p>The name of the agreement.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the customer agreement. This will be either <code>signed</code> or <code>unsigned</code>
    #            </p>
    #
    #   @return [String]
    #
    CustomerAgreement = ::Struct.new(
      :agreement_name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute asn
    #   <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
    #
    #   @return [Integer]
    #
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute bgp_peer_id
    #   <p>The ID of the BGP peer.</p>
    #
    #   @return [String]
    #
    DeleteBGPPeerInput = ::Struct.new(
      :virtual_interface_id,
      :asn,
      :customer_address,
      :bgp_peer_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.asn ||= 0
      end

    end

    # @!attribute virtual_interface
    #   <p>The virtual interface.</p>
    #
    #   @return [VirtualInterface]
    #
    DeleteBGPPeerOutput = ::Struct.new(
      :virtual_interface,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    DeleteConnectionInput = ::Struct.new(
      :connection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an Direct Connect connection.</p>
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute partner_name
    #   <p>The name of the Direct Connect service provider associated with the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #
    #   @return [Time]
    #
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #
    #   Enum, one of: ["unknown", "yes", "no"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the connection supports MAC Security (MACsec).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status of the connection.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) connection encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the connection.</p>
    #
    #   @return [Array<MacSecKey>]
    #
    DeleteConnectionOutput = ::Struct.new(
      :owner_account,
      :connection_id,
      :connection_name,
      :connection_state,
      :region,
      :location,
      :bandwidth,
      :vlan,
      :partner_name,
      :loa_issue_time,
      :lag_id,
      :aws_device,
      :jumbo_frame_capable,
      :aws_device_v2,
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
      end

    end

    # @!attribute association_id
    #   <p>The ID of the Direct Connect gateway association.</p>
    #
    #   @return [String]
    #
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway.</p>
    #
    #   @return [String]
    #
    DeleteDirectConnectGatewayAssociationInput = ::Struct.new(
      :association_id,
      :direct_connect_gateway_id,
      :virtual_gateway_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateway_association
    #   <p>Information about the deleted association.</p>
    #
    #   @return [DirectConnectGatewayAssociation]
    #
    DeleteDirectConnectGatewayAssociationOutput = ::Struct.new(
      :direct_connect_gateway_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute proposal_id
    #   <p>The ID of the proposal.</p>
    #
    #   @return [String]
    #
    DeleteDirectConnectGatewayAssociationProposalInput = ::Struct.new(
      :proposal_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateway_association_proposal
    #   <p>The ID of the associated gateway.</p>
    #
    #   @return [DirectConnectGatewayAssociationProposal]
    #
    DeleteDirectConnectGatewayAssociationProposalOutput = ::Struct.new(
      :direct_connect_gateway_association_proposal,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    DeleteDirectConnectGatewayInput = ::Struct.new(
      :direct_connect_gateway_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateway
    #   <p>The Direct Connect gateway.</p>
    #
    #   @return [DirectConnectGateway]
    #
    DeleteDirectConnectGatewayOutput = ::Struct.new(
      :direct_connect_gateway,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute interconnect_id
    #   <p>The ID of the interconnect.</p>
    #
    #   @return [String]
    #
    DeleteInterconnectInput = ::Struct.new(
      :interconnect_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute interconnect_state
    #   <p>The state of the interconnect. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of an interconnect. The interconnect stays in the
    #           requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The interconnect is approved, and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up, and the interconnect is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The interconnect is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The interconnect is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the interconnect is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"]
    #
    #   @return [String]
    #
    DeleteInterconnectOutput = ::Struct.new(
      :interconnect_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    DeleteLagInput = ::Struct.new(
      :lag_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a link aggregation group (LAG).</p>
    #
    # @!attribute connections_bandwidth
    #   <p>The individual bandwidth of the physical connections bundled by the LAG. The possible
    #         values are 1Gbps and 10Gbps. </p>
    #
    #   @return [String]
    #
    # @!attribute number_of_connections
    #   <p>The number of physical dedicated connections bundled by the LAG, up to a maximum of 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute lag_name
    #   <p>The name of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute lag_state
    #   <p>The state of the LAG. The following are the possible values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a LAG. The LAG stays in the
    #                   requested state until the Letter of Authorization (LOA) is available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The LAG has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is established and the LAG is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The LAG is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The LAG is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the LAG is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #
    #   @return [String]
    #
    # @!attribute minimum_links
    #   <p>The minimum number of physical dedicated connections that must be operational for the LAG itself to be operational.</p>
    #
    #   @return [Integer]
    #
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint that hosts the LAG.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that hosts the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connections
    #   <p>The connections bundled by the LAG.</p>
    #
    #   @return [Array<Connection>]
    #
    # @!attribute allows_hosted_connections
    #   <p>Indicates whether the LAG can host other connections.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the LAG supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #
    #   Enum, one of: ["unknown", "yes", "no"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the LAG.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the LAG supports MAC Security (MACsec).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute encryption_mode
    #   <p>The LAG MAC Security (MACsec) encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the LAG.</p>
    #
    #   @return [Array<MacSecKey>]
    #
    DeleteLagOutput = ::Struct.new(
      :connections_bandwidth,
      :number_of_connections,
      :lag_id,
      :owner_account,
      :lag_name,
      :lag_state,
      :location,
      :region,
      :minimum_links,
      :aws_device,
      :aws_device_v2,
      :aws_logical_device_id,
      :connections,
      :allows_hosted_connections,
      :jumbo_frame_capable,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :encryption_mode,
      :mac_sec_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.number_of_connections ||= 0
        self.minimum_links ||= 0
        self.allows_hosted_connections ||= false
      end

    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    #   @return [String]
    #
    DeleteVirtualInterfaceInput = ::Struct.new(
      :virtual_interface_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    DeleteVirtualInterfaceOutput = ::Struct.new(
      :virtual_interface_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_name
    #   <p>The name of the APN partner or service provider who establishes connectivity on your behalf. If you specify this parameter,
    #         the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>
    #
    #   @return [String]
    #
    # @!attribute loa_content_type
    #   <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
    #
    #   Enum, one of: ["application/pdf"]
    #
    #   @return [String]
    #
    DescribeConnectionLoaInput = ::Struct.new(
      :connection_id,
      :provider_name,
      :loa_content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute loa
    #   <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA).</p>
    #
    #   @return [Loa]
    #
    DescribeConnectionLoaOutput = ::Struct.new(
      :loa,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    DescribeConnectionsInput = ::Struct.new(
      :connection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute interconnect_id
    #   <p>The ID of the interconnect.</p>
    #
    #   @return [String]
    #
    DescribeConnectionsOnInterconnectInput = ::Struct.new(
      :interconnect_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connections
    #   <p>The connections.</p>
    #
    #   @return [Array<Connection>]
    #
    DescribeConnectionsOnInterconnectOutput = ::Struct.new(
      :connections,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connections
    #   <p>The connections.</p>
    #
    #   @return [Array<Connection>]
    #
    DescribeConnectionsOutput = ::Struct.new(
      :connections,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeCustomerMetadataInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute agreements
    #   <p>The list of customer agreements.</p>
    #
    #   @return [Array<CustomerAgreement>]
    #
    # @!attribute nni_partner_type
    #   <p>The type of network-to-network interface (NNI) partner. The partner type will be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>V1: This partner can only allocate 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, or 500Mbps subgigabit connections.</p>
    #               </li>
    #               <li>
    #                  <p>V2: This partner can only allocate 1GB, 2GB, 5GB, or 10GB hosted connections.</p>
    #               </li>
    #               <li>
    #                  <p>nonPartner: The customer is not a partner.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["v1", "v2", "nonPartner"]
    #
    #   @return [String]
    #
    DescribeCustomerMetadataOutput = ::Struct.new(
      :agreements,
      :nni_partner_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute proposal_id
    #   <p>The ID of the proposal.</p>
    #
    #   @return [String]
    #
    # @!attribute associated_gateway_id
    #   <p>The ID of the associated gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   	        <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    DescribeDirectConnectGatewayAssociationProposalsInput = ::Struct.new(
      :direct_connect_gateway_id,
      :proposal_id,
      :associated_gateway_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateway_association_proposals
    #   <p>Describes the Direct Connect gateway association proposals.</p>
    #
    #   @return [Array<DirectConnectGatewayAssociationProposal>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #
    #   @return [String]
    #
    DescribeDirectConnectGatewayAssociationProposalsOutput = ::Struct.new(
      :direct_connect_gateway_association_proposals,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute association_id
    #   <p>The ID of the Direct Connect gateway association.</p>
    #
    #   @return [String]
    #
    # @!attribute associated_gateway_id
    #   <p>The ID of the associated gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   	        <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token provided in the previous call to retrieve the next page.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway or transit gateway.</p>
    #
    #   @return [String]
    #
    DescribeDirectConnectGatewayAssociationsInput = ::Struct.new(
      :association_id,
      :associated_gateway_id,
      :direct_connect_gateway_id,
      :max_results,
      :next_token,
      :virtual_gateway_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateway_associations
    #   <p>Information about the associations.</p>
    #
    #   @return [Array<DirectConnectGatewayAssociation>]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next page.</p>
    #
    #   @return [String]
    #
    DescribeDirectConnectGatewayAssociationsOutput = ::Struct.new(
      :direct_connect_gateway_associations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   	        <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token provided in the previous call to retrieve the next page.</p>
    #
    #   @return [String]
    #
    DescribeDirectConnectGatewayAttachmentsInput = ::Struct.new(
      :direct_connect_gateway_id,
      :virtual_interface_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateway_attachments
    #   <p>The attachments.</p>
    #
    #   @return [Array<DirectConnectGatewayAttachment>]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next page.</p>
    #
    #   @return [String]
    #
    DescribeDirectConnectGatewayAttachmentsOutput = ::Struct.new(
      :direct_connect_gateway_attachments,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   	        <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token provided in the previous call to retrieve the next page.</p>
    #
    #   @return [String]
    #
    DescribeDirectConnectGatewaysInput = ::Struct.new(
      :direct_connect_gateway_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateways
    #   <p>The Direct Connect gateways.</p>
    #
    #   @return [Array<DirectConnectGateway>]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next page.</p>
    #
    #   @return [String]
    #
    DescribeDirectConnectGatewaysOutput = ::Struct.new(
      :direct_connect_gateways,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the interconnect or LAG.</p>
    #
    #   @return [String]
    #
    DescribeHostedConnectionsInput = ::Struct.new(
      :connection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connections
    #   <p>The connections.</p>
    #
    #   @return [Array<Connection>]
    #
    DescribeHostedConnectionsOutput = ::Struct.new(
      :connections,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute interconnect_id
    #   <p>The ID of the interconnect.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider who establishes connectivity on your behalf. If you supply this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>
    #
    #   @return [String]
    #
    # @!attribute loa_content_type
    #   <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
    #
    #   Enum, one of: ["application/pdf"]
    #
    #   @return [String]
    #
    DescribeInterconnectLoaInput = ::Struct.new(
      :interconnect_id,
      :provider_name,
      :loa_content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute loa
    #   <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA).</p>
    #
    #   @return [Loa]
    #
    DescribeInterconnectLoaOutput = ::Struct.new(
      :loa,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute interconnect_id
    #   <p>The ID of the interconnect.</p>
    #
    #   @return [String]
    #
    DescribeInterconnectsInput = ::Struct.new(
      :interconnect_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute interconnects
    #   <p>The interconnects.</p>
    #
    #   @return [Array<Interconnect>]
    #
    DescribeInterconnectsOutput = ::Struct.new(
      :interconnects,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    DescribeLagsInput = ::Struct.new(
      :lag_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lags
    #   <p>The LAGs.</p>
    #
    #   @return [Array<Lag>]
    #
    DescribeLagsOutput = ::Struct.new(
      :lags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of a connection, LAG, or interconnect.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider who establishes connectivity on your behalf. If you specify this parameter, the
    #         LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>
    #
    #   @return [String]
    #
    # @!attribute loa_content_type
    #   <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
    #
    #   Enum, one of: ["application/pdf"]
    #
    #   @return [String]
    #
    DescribeLoaInput = ::Struct.new(
      :connection_id,
      :provider_name,
      :loa_content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a Letter of Authorization - Connecting Facility Assignment (LOA-CFA) for a connection.</p>
    #
    # @!attribute loa_content
    #   <p>The binary contents of the LOA-CFA document.</p>
    #
    #   @return [String]
    #
    # @!attribute loa_content_type
    #   <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
    #
    #   Enum, one of: ["application/pdf"]
    #
    #   @return [String]
    #
    DescribeLoaOutput = ::Struct.new(
      :loa_content,
      :loa_content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeLocationsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute locations
    #   <p>The locations.</p>
    #
    #   @return [Array<Location>]
    #
    DescribeLocationsOutput = ::Struct.new(
      :locations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the details about a virtual interface's router.</p>
    #
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute router_type_identifier
    #   <p>Identifies the router by a combination of vendor, platform, and software version. For example, <code>CiscoSystemsInc-2900SeriesRouters-IOS124</code>.</p>
    #
    #   @return [String]
    #
    DescribeRouterConfigurationInput = ::Struct.new(
      :virtual_interface_id,
      :router_type_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute customer_router_config
    #   <p>The customer router configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute router
    #   <p>The details about the router.</p>
    #
    #   @return [RouterType]
    #
    # @!attribute virtual_interface_id
    #   <p>The ID assigned to the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_name
    #   <p>Provides the details about a virtual interface's router.</p>
    #
    #   @return [String]
    #
    DescribeRouterConfigurationOutput = ::Struct.new(
      :customer_router_config,
      :router,
      :virtual_interface_id,
      :virtual_interface_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arns
    #   <p>The Amazon Resource Names (ARNs) of the resources.</p>
    #
    #   @return [Array<String>]
    #
    DescribeTagsInput = ::Struct.new(
      :resource_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_tags
    #   <p>Information about the tags.</p>
    #
    #   @return [Array<ResourceTag>]
    #
    DescribeTagsOutput = ::Struct.new(
      :resource_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeVirtualGatewaysInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_gateways
    #   <p>The virtual private gateways.</p>
    #
    #   @return [Array<VirtualGateway>]
    #
    DescribeVirtualGatewaysOutput = ::Struct.new(
      :virtual_gateways,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    #   @return [String]
    #
    DescribeVirtualInterfacesInput = ::Struct.new(
      :connection_id,
      :virtual_interface_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_interfaces
    #   <p>The virtual interfaces</p>
    #
    #   @return [Array<VirtualInterface>]
    #
    DescribeVirtualInterfacesOutput = ::Struct.new(
      :virtual_interfaces,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more parameters are not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DirectConnectClientException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a Direct Connect gateway, which enables you to connect virtual interfaces and virtual private gateway or transit gateways.</p>
    #
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute direct_connect_gateway_name
    #   <p>The name of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute amazon_side_asn
    #   <p>The autonomous system number (ASN) for the Amazon side of the connection.</p>
    #
    #   @return [Integer]
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute direct_connect_gateway_state
    #   <p>The state of the Direct Connect gateway. The following are the possible values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The initial state after calling <a>CreateDirectConnectGateway</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The Direct Connect gateway is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The initial state after calling <a>DeleteDirectConnectGateway</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The Direct Connect gateway is deleted and cannot pass traffic.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["pending", "available", "deleting", "deleted"]
    #
    #   @return [String]
    #
    # @!attribute state_change_error
    #   <p>The error message if the state of an object failed to advance.</p>
    #
    #   @return [String]
    #
    DirectConnectGateway = ::Struct.new(
      :direct_connect_gateway_id,
      :direct_connect_gateway_name,
      :amazon_side_asn,
      :owner_account,
      :direct_connect_gateway_state,
      :state_change_error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an association between a Direct Connect gateway and a virtual private gateway or transit gateway.</p>
    #
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute direct_connect_gateway_owner_account
    #   <p>The ID of the Amazon Web Services account that owns the associated gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute association_state
    #   <p>The state of the association. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>associating</code>: The initial state after calling <a>CreateDirectConnectGatewayAssociation</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>associated</code>: The Direct Connect gateway and virtual private gateway or transit gateway are successfully associated and ready to pass traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>disassociating</code>: The initial state after calling <a>DeleteDirectConnectGatewayAssociation</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>disassociated</code>: The virtual private gateway or transit gateway is disassociated from the Direct Connect gateway. Traffic flow between the Direct Connect gateway and virtual private gateway or transit gateway is stopped.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["associating", "associated", "disassociating", "disassociated", "updating"]
    #
    #   @return [String]
    #
    # @!attribute state_change_error
    #   <p>The error message if the state of an object failed to advance.</p>
    #
    #   @return [String]
    #
    # @!attribute associated_gateway
    #   <p>Information about the associated gateway.</p>
    #
    #   @return [AssociatedGateway]
    #
    # @!attribute association_id
    #   <p>The ID of the Direct Connect gateway association.</p>
    #
    #   @return [String]
    #
    # @!attribute allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>
    #
    #   @return [Array<RouteFilterPrefix>]
    #
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_gateway_region
    #   <p>The Amazon Web Services Region where the virtual private gateway is located.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute virtual_gateway_owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual private gateway.</p>
    #
    #   @return [String]
    #
    DirectConnectGatewayAssociation = ::Struct.new(
      :direct_connect_gateway_id,
      :direct_connect_gateway_owner_account,
      :association_state,
      :state_change_error,
      :associated_gateway,
      :association_id,
      :allowed_prefixes_to_direct_connect_gateway,
      :virtual_gateway_id,
      :virtual_gateway_region,
      :virtual_gateway_owner_account,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the  proposal request to attach a virtual private gateway to a Direct Connect gateway. </p>
    #
    # @!attribute proposal_id
    #   <p>The ID of the association proposal.</p>
    #
    #   @return [String]
    #
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute direct_connect_gateway_owner_account
    #   <p>The ID of the Amazon Web Services account that owns the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute proposal_state
    #   <p>The state of the proposal. The following are possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>accepted</code>: The proposal has been accepted. The Direct Connect gateway association is available to use in this state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The proposal has been deleted by the owner that made the proposal.  The Direct Connect gateway association cannot be used in this state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The proposal has been requested. The Direct Connect gateway association cannot be used in this state.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["requested", "accepted", "deleted"]
    #
    #   @return [String]
    #
    # @!attribute associated_gateway
    #   <p>Information about the associated gateway.</p>
    #
    #   @return [AssociatedGateway]
    #
    # @!attribute existing_allowed_prefixes_to_direct_connect_gateway
    #   <p>The existing Amazon VPC prefixes advertised to the Direct Connect gateway.</p>
    #
    #   @return [Array<RouteFilterPrefix>]
    #
    # @!attribute requested_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>
    #
    #   @return [Array<RouteFilterPrefix>]
    #
    DirectConnectGatewayAssociationProposal = ::Struct.new(
      :proposal_id,
      :direct_connect_gateway_id,
      :direct_connect_gateway_owner_account,
      :proposal_state,
      :associated_gateway,
      :existing_allowed_prefixes_to_direct_connect_gateway,
      :requested_allowed_prefixes_to_direct_connect_gateway,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DirectConnectGatewayAssociationProposalState
    #
    module DirectConnectGatewayAssociationProposalState
      # No documentation available.
      #
      requested = "requested"

      # No documentation available.
      #
      accepted = "accepted"

      # No documentation available.
      #
      deleted = "deleted"
    end

    # Includes enum constants for DirectConnectGatewayAssociationState
    #
    module DirectConnectGatewayAssociationState
      # No documentation available.
      #
      associating = "associating"

      # No documentation available.
      #
      associated = "associated"

      # No documentation available.
      #
      disassociating = "disassociating"

      # No documentation available.
      #
      disassociated = "disassociated"

      # No documentation available.
      #
      updating = "updating"
    end

    # <p>Information about an attachment between a Direct Connect gateway and a virtual interface.</p>
    #
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_region
    #   <p>The Amazon Web Services Region where the virtual interface is located.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute attachment_state
    #   <p>The state of the attachment. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>attaching</code>: The initial state after a virtual interface is created using the Direct Connect gateway.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>attached</code>: The Direct Connect gateway and virtual interface are attached and ready to pass traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>detaching</code>: The initial state after calling <a>DeleteVirtualInterface</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>detached</code>: The virtual interface is detached from the Direct Connect gateway. Traffic flow between the Direct Connect gateway and virtual interface is stopped.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["attaching", "attached", "detaching", "detached"]
    #
    #   @return [String]
    #
    # @!attribute attachment_type
    #   <p>The type of attachment.</p>
    #
    #   Enum, one of: ["TransitVirtualInterface", "PrivateVirtualInterface"]
    #
    #   @return [String]
    #
    # @!attribute state_change_error
    #   <p>The error message if the state of an object failed to advance.</p>
    #
    #   @return [String]
    #
    DirectConnectGatewayAttachment = ::Struct.new(
      :direct_connect_gateway_id,
      :virtual_interface_id,
      :virtual_interface_region,
      :virtual_interface_owner_account,
      :attachment_state,
      :attachment_type,
      :state_change_error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DirectConnectGatewayAttachmentState
    #
    module DirectConnectGatewayAttachmentState
      # No documentation available.
      #
      attaching = "attaching"

      # No documentation available.
      #
      attached = "attached"

      # No documentation available.
      #
      detaching = "detaching"

      # No documentation available.
      #
      detached = "detached"
    end

    # Includes enum constants for DirectConnectGatewayAttachmentType
    #
    module DirectConnectGatewayAttachmentType
      # No documentation available.
      #
      TransitVirtualInterface = "TransitVirtualInterface"

      # No documentation available.
      #
      PrivateVirtualInterface = "PrivateVirtualInterface"
    end

    # Includes enum constants for DirectConnectGatewayState
    #
    module DirectConnectGatewayState
      # No documentation available.
      #
      pending = "pending"

      # No documentation available.
      #
      available = "available"

      # No documentation available.
      #
      deleting = "deleting"

      # No documentation available.
      #
      deleted = "deleted"
    end

    # <p>A server-side error occurred.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DirectConnectServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    DisassociateConnectionFromLagInput = ::Struct.new(
      :connection_id,
      :lag_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an Direct Connect connection.</p>
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute partner_name
    #   <p>The name of the Direct Connect service provider associated with the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #
    #   @return [Time]
    #
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #
    #   Enum, one of: ["unknown", "yes", "no"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the connection supports MAC Security (MACsec).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status of the connection.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) connection encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the connection.</p>
    #
    #   @return [Array<MacSecKey>]
    #
    DisassociateConnectionFromLagOutput = ::Struct.new(
      :owner_account,
      :connection_id,
      :connection_name,
      :connection_state,
      :region,
      :location,
      :bandwidth,
      :vlan,
      :partner_name,
      :loa_issue_time,
      :lag_id,
      :aws_device,
      :jumbo_frame_capable,
      :aws_device_v2,
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
      end

    end

    # @!attribute connection_id
    #   <p>The ID of the dedicated connection (dxcon-xxxx), or the ID of the LAG (dxlag-xxxx).</p>
    #            <p>You can use <a>DescribeConnections</a> or <a>DescribeLags</a> to retrieve connection ID.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key.</p>
    #            <p>You can use <a>DescribeConnections</a> to retrieve the ARN of the MAC Security (MACsec) secret key.</p>
    #
    #   @return [String]
    #
    DisassociateMacSecKeyInput = ::Struct.new(
      :connection_id,
      :secret_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the dedicated connection (dxcon-xxxx), or the ID of the LAG (dxlag-xxxx).</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys no longer associated with the dedicated connection.</p>
    #
    #   @return [Array<MacSecKey>]
    #
    DisassociateMacSecKeyOutput = ::Struct.new(
      :connection_id,
      :mac_sec_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A tag key was specified more than once.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DuplicateTagKeysException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GatewayType
    #
    module GatewayType
      # No documentation available.
      #
      VirtualPrivateGateway = "virtualPrivateGateway"

      # No documentation available.
      #
      TransitGateway = "transitGateway"
    end

    # Includes enum constants for HasLogicalRedundancy
    #
    module HasLogicalRedundancy
      # No documentation available.
      #
      Unknown = "unknown"

      # No documentation available.
      #
      Yes = "yes"

      # No documentation available.
      #
      No = "no"
    end

    # <p>Information about an interconnect.</p>
    #
    # @!attribute interconnect_id
    #   <p>The ID of the interconnect.</p>
    #
    #   @return [String]
    #
    # @!attribute interconnect_name
    #   <p>The name of the interconnect.</p>
    #
    #   @return [String]
    #
    # @!attribute interconnect_state
    #   <p>The state of the interconnect. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of an interconnect. The interconnect stays in the
    #           requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The interconnect is approved, and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up, and the interconnect is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The interconnect is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The interconnect is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the interconnect is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #
    #   @return [Time]
    #
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the interconnect supports a secondary BGP in the same address family (IPv4/IPv6).</p>
    #
    #   Enum, one of: ["unknown", "yes", "no"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the interconnect.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the interconnect.</p>
    #
    #   @return [String]
    #
    Interconnect = ::Struct.new(
      :interconnect_id,
      :interconnect_name,
      :interconnect_state,
      :region,
      :location,
      :bandwidth,
      :loa_issue_time,
      :lag_id,
      :aws_device,
      :jumbo_frame_capable,
      :aws_device_v2,
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InterconnectState
    #
    module InterconnectState
      # No documentation available.
      #
      requested = "requested"

      # No documentation available.
      #
      pending = "pending"

      # No documentation available.
      #
      available = "available"

      # No documentation available.
      #
      down = "down"

      # No documentation available.
      #
      deleting = "deleting"

      # No documentation available.
      #
      deleted = "deleted"

      # No documentation available.
      #
      unknown = "unknown"
    end

    # <p>Information about a link aggregation group (LAG).</p>
    #
    # @!attribute connections_bandwidth
    #   <p>The individual bandwidth of the physical connections bundled by the LAG. The possible
    #         values are 1Gbps and 10Gbps. </p>
    #
    #   @return [String]
    #
    # @!attribute number_of_connections
    #   <p>The number of physical dedicated connections bundled by the LAG, up to a maximum of 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute lag_name
    #   <p>The name of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute lag_state
    #   <p>The state of the LAG. The following are the possible values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a LAG. The LAG stays in the
    #                   requested state until the Letter of Authorization (LOA) is available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The LAG has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is established and the LAG is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The LAG is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The LAG is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the LAG is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #
    #   @return [String]
    #
    # @!attribute minimum_links
    #   <p>The minimum number of physical dedicated connections that must be operational for the LAG itself to be operational.</p>
    #
    #   @return [Integer]
    #
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint that hosts the LAG.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that hosts the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connections
    #   <p>The connections bundled by the LAG.</p>
    #
    #   @return [Array<Connection>]
    #
    # @!attribute allows_hosted_connections
    #   <p>Indicates whether the LAG can host other connections.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the LAG supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #
    #   Enum, one of: ["unknown", "yes", "no"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the LAG.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the LAG supports MAC Security (MACsec).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute encryption_mode
    #   <p>The LAG MAC Security (MACsec) encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the LAG.</p>
    #
    #   @return [Array<MacSecKey>]
    #
    Lag = ::Struct.new(
      :connections_bandwidth,
      :number_of_connections,
      :lag_id,
      :owner_account,
      :lag_name,
      :lag_state,
      :location,
      :region,
      :minimum_links,
      :aws_device,
      :aws_device_v2,
      :aws_logical_device_id,
      :connections,
      :allows_hosted_connections,
      :jumbo_frame_capable,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :encryption_mode,
      :mac_sec_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.number_of_connections ||= 0
        self.minimum_links ||= 0
        self.allows_hosted_connections ||= false
      end

    end

    # Includes enum constants for LagState
    #
    module LagState
      # No documentation available.
      #
      requested = "requested"

      # No documentation available.
      #
      pending = "pending"

      # No documentation available.
      #
      available = "available"

      # No documentation available.
      #
      down = "down"

      # No documentation available.
      #
      deleting = "deleting"

      # No documentation available.
      #
      deleted = "deleted"

      # No documentation available.
      #
      unknown = "unknown"
    end

    # @!attribute test_id
    #   <p>The ID of the virtual interface failover test.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface that was tested.</p>
    #
    #   @return [String]
    #
    # @!attribute bgp_peers
    #   <p>The BGP peers that were placed in the DOWN state during the virtual interface failover test.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute status
    #   <p>The status of the virtual interface failover test.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   	        <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListVirtualInterfaceTestHistoryInput = ::Struct.new(
      :test_id,
      :virtual_interface_id,
      :bgp_peers,
      :status,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_interface_test_history
    #   <p>The ID of the tested virtual interface.</p>
    #
    #   @return [Array<VirtualInterfaceTestHistory>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListVirtualInterfaceTestHistoryOutput = ::Struct.new(
      :virtual_interface_test_history,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a Letter of Authorization - Connecting Facility Assignment (LOA-CFA) for a connection.</p>
    #
    # @!attribute loa_content
    #   <p>The binary contents of the LOA-CFA document.</p>
    #
    #   @return [String]
    #
    # @!attribute loa_content_type
    #   <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
    #
    #   Enum, one of: ["application/pdf"]
    #
    #   @return [String]
    #
    Loa = ::Struct.new(
      :loa_content,
      :loa_content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LoaContentType
    #
    module LoaContentType
      # No documentation available.
      #
      PDF = "application/pdf"
    end

    # <p>Information about an Direct Connect location.</p>
    #
    # @!attribute location_code
    #   <p>The code for the location.</p>
    #
    #   @return [String]
    #
    # @!attribute location_name
    #   <p>The name of the location. This includes the name of the colocation partner and the physical site of the building.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region for the location.</p>
    #
    #   @return [String]
    #
    # @!attribute available_port_speeds
    #   <p>The available port speeds for the location.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute available_providers
    #   <p>The name of the service provider for the location.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute available_mac_sec_port_speeds
    #   <p>The available MAC Security (MACsec) port speeds for the location.</p>
    #
    #   @return [Array<String>]
    #
    Location = ::Struct.new(
      :location_code,
      :location_name,
      :region,
      :available_port_speeds,
      :available_providers,
      :available_mac_sec_port_speeds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the MAC Security (MACsec) secret key.</p>
    #
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key.</p>
    #
    #   @return [String]
    #
    # @!attribute ckn
    #   <p>The Connection Key Name (CKN) for the MAC Security secret key.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the MAC Security (MACsec) secret key.</p>
    #            <p>The possible values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>associating</code>: The MAC Security (MACsec) secret key is being validated and not yet associated with the connection or LAG.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>associated</code>: The MAC Security (MACsec) secret key is validated and associated with the connection or LAG.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>disassociating</code>: The MAC Security (MACsec) secret key is being disassociated from the connection or LAG</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>disassociated</code>: The MAC Security (MACsec) secret key is no longer associated with the connection or LAG.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute start_on
    #   <p>The date that the MAC Security (MACsec) secret key takes effect. The value is displayed in UTC format.</p>
    #
    #   @return [String]
    #
    MacSecKey = ::Struct.new(
      :secret_arn,
      :ckn,
      :state,
      :start_on,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a new BGP peer.</p>
    #
    # @!attribute asn
    #   <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #
    #   Enum, one of: ["ipv4", "ipv6"]
    #
    #   @return [String]
    #
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #
    #   @return [String]
    #
    NewBGPPeer = ::Struct.new(
      :asn,
      :auth_key,
      :address_family,
      :amazon_address,
      :customer_address,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.asn ||= 0
      end

    end

    # <p>Information about a private virtual interface.</p>
    #
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute asn
    #   <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
    #            <p>The valid values are 1-2147483647.</p>
    #
    #   @return [Integer]
    #
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #
    #   Enum, one of: ["ipv4", "ipv6"]
    #
    #   @return [String]
    #
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the private virtual interface.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute enable_site_link
    #   <p>Indicates whether to enable or disable SiteLink.</p>
    #
    #   @return [Boolean]
    #
    NewPrivateVirtualInterface = ::Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :mtu,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :virtual_gateway_id,
      :direct_connect_gateway_id,
      :tags,
      :enable_site_link,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
        self.asn ||= 0
      end

    end

    # <p>Information about a private virtual interface to be provisioned on a connection.</p>
    #
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute asn
    #   <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
    #            <p>The valid values are 1-2147483647.</p>
    #
    #   @return [Integer]
    #
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #
    #   @return [String]
    #
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #
    #   Enum, one of: ["ipv4", "ipv6"]
    #
    #   @return [String]
    #
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the private virtual interface.</p>
    #
    #   @return [Array<Tag>]
    #
    NewPrivateVirtualInterfaceAllocation = ::Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :mtu,
      :auth_key,
      :amazon_address,
      :address_family,
      :customer_address,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
        self.asn ||= 0
      end

    end

    # <p>Information about a public virtual interface.</p>
    #
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute asn
    #   <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
    #            <p>The valid values are 1-2147483647.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #
    #   Enum, one of: ["ipv4", "ipv6"]
    #
    #   @return [String]
    #
    # @!attribute route_filter_prefixes
    #   <p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>
    #
    #   @return [Array<RouteFilterPrefix>]
    #
    # @!attribute tags
    #   <p>The tags associated with the public virtual interface.</p>
    #
    #   @return [Array<Tag>]
    #
    NewPublicVirtualInterface = ::Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :route_filter_prefixes,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
        self.asn ||= 0
      end

    end

    # <p>Information about a public virtual interface to be provisioned on a connection.</p>
    #
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute asn
    #   <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
    #            <p>The valid values are 1-2147483647.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #
    #   Enum, one of: ["ipv4", "ipv6"]
    #
    #   @return [String]
    #
    # @!attribute route_filter_prefixes
    #   <p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>
    #
    #   @return [Array<RouteFilterPrefix>]
    #
    # @!attribute tags
    #   <p>The tags associated with the public virtual interface.</p>
    #
    #   @return [Array<Tag>]
    #
    NewPublicVirtualInterfaceAllocation = ::Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :route_filter_prefixes,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
        self.asn ||= 0
      end

    end

    # <p>Information about a transit virtual interface.</p>
    #
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute asn
    #   <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
    #            <p>The valid values are 1-2147483647.</p>
    #
    #   @return [Integer]
    #
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #
    #   Enum, one of: ["ipv4", "ipv6"]
    #
    #   @return [String]
    #
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the transitive virtual interface.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute enable_site_link
    #   <p>Indicates whether to enable or disable SiteLink.</p>
    #
    #   @return [Boolean]
    #
    NewTransitVirtualInterface = ::Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :mtu,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :direct_connect_gateway_id,
      :tags,
      :enable_site_link,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
        self.asn ||= 0
      end

    end

    # <p>Information about a transit virtual interface to be provisioned on a connection.</p>
    #
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute asn
    #   <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
    #            <p>The valid values are 1-2147483647.</p>
    #
    #   @return [Integer]
    #
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500. </p>
    #
    #   @return [Integer]
    #
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #
    #   Enum, one of: ["ipv4", "ipv6"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the transitive virtual interface.</p>
    #
    #   @return [Array<Tag>]
    #
    NewTransitVirtualInterfaceAllocation = ::Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :mtu,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
        self.asn ||= 0
      end

    end

    # Includes enum constants for NniPartnerType
    #
    module NniPartnerType
      # No documentation available.
      #
      V1 = "v1"

      # No documentation available.
      #
      V2 = "v2"

      # No documentation available.
      #
      NonPartner = "nonPartner"
    end

    # <p>Information about a tag associated with an Direct Connect resource.</p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags.</p>
    #
    #   @return [Array<Tag>]
    #
    ResourceTag = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a route filter prefix that a customer can advertise through Border Gateway Protocol (BGP)
    #         over a public virtual interface.</p>
    #
    # @!attribute cidr
    #   <p>The CIDR block for the advertised route. Separate multiple routes using commas. An IPv6 CIDR must use /64 or shorter.</p>
    #
    #   @return [String]
    #
    RouteFilterPrefix = ::Struct.new(
      :cidr,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the virtual router.</p>
    #
    # @!attribute vendor
    #   <p>The vendor for the virtual interface's router.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The virtual interface router platform.</p>
    #
    #   @return [String]
    #
    # @!attribute software
    #   <p>The router software. </p>
    #
    #   @return [String]
    #
    # @!attribute xslt_template_name
    #   <p>The template for the virtual interface's router.</p>
    #
    #   @return [String]
    #
    # @!attribute xslt_template_name_for_mac_sec
    #   <p>The MAC Security (MACsec) template for the virtual interface's router.</p>
    #
    #   @return [String]
    #
    # @!attribute router_type_identifier
    #   <p>Identifies the router by a combination of vendor, platform, and software version. For example, <code>CiscoSystemsInc-2900SeriesRouters-IOS124</code>.</p>
    #
    #   @return [String]
    #
    RouterType = ::Struct.new(
      :vendor,
      :platform,
      :software,
      :xslt_template_name,
      :xslt_template_name_for_mac_sec,
      :router_type_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface you want to test.</p>
    #
    #   @return [String]
    #
    # @!attribute bgp_peers
    #   <p>The BGP peers to place in the DOWN state.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute test_duration_in_minutes
    #   <p>The time in minutes that the virtual interface failover test will last.</p>
    #            <p>Maximum value: 180 minutes (3 hours).</p>
    #            <p>Default: 180 minutes (3 hours).</p>
    #
    #   @return [Integer]
    #
    StartBgpFailoverTestInput = ::Struct.new(
      :virtual_interface_id,
      :bgp_peers,
      :test_duration_in_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_interface_test
    #   <p>Information about the virtual interface failover test.</p>
    #
    #   @return [VirtualInterfaceTestHistory]
    #
    StartBgpFailoverTestOutput = ::Struct.new(
      :virtual_interface_test,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface you no longer want to test.</p>
    #
    #   @return [String]
    #
    StopBgpFailoverTestInput = ::Struct.new(
      :virtual_interface_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_interface_test
    #   <p>Information about the virtual interface failover test.</p>
    #
    #   @return [VirtualInterfaceTestHistory]
    #
    StopBgpFailoverTestOutput = ::Struct.new(
      :virtual_interface_test,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a tag.</p>
    #
    # @!attribute key
    #   <p>The key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to add.</p>
    #
    #   @return [Array<Tag>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have reached the limit on the number of tags that can be assigned.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyTagsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys of the tags to remove.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the dedicated connection.</p>
    #            <p>You can use <a>DescribeConnections</a> to retrieve the connection ID.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_mode
    #   <p>The connection MAC Security (MACsec) encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #
    #   @return [String]
    #
    UpdateConnectionInput = ::Struct.new(
      :connection_id,
      :connection_name,
      :encryption_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an Direct Connect connection.</p>
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute partner_name
    #   <p>The name of the Direct Connect service provider associated with the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #
    #   @return [Time]
    #
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #
    #   Enum, one of: ["unknown", "yes", "no"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the connection supports MAC Security (MACsec).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status of the connection.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) connection encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the connection.</p>
    #
    #   @return [Array<MacSecKey>]
    #
    UpdateConnectionOutput = ::Struct.new(
      :owner_account,
      :connection_id,
      :connection_name,
      :connection_state,
      :region,
      :location,
      :bandwidth,
      :vlan,
      :partner_name,
      :loa_issue_time,
      :lag_id,
      :aws_device,
      :jumbo_frame_capable,
      :aws_device_v2,
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
      end

    end

    # @!attribute association_id
    #   <p>The ID of the Direct Connect gateway association.</p>
    #
    #   @return [String]
    #
    # @!attribute add_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>
    #
    #   @return [Array<RouteFilterPrefix>]
    #
    # @!attribute remove_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to no longer advertise to the Direct Connect gateway.</p>
    #
    #   @return [Array<RouteFilterPrefix>]
    #
    UpdateDirectConnectGatewayAssociationInput = ::Struct.new(
      :association_id,
      :add_allowed_prefixes_to_direct_connect_gateway,
      :remove_allowed_prefixes_to_direct_connect_gateway,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateway_association
    #   <p>Information about an association between a Direct Connect gateway and a virtual private gateway or transit gateway.</p>
    #
    #   @return [DirectConnectGatewayAssociation]
    #
    UpdateDirectConnectGatewayAssociationOutput = ::Struct.new(
      :direct_connect_gateway_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway to update.</p>
    #
    #   @return [String]
    #
    # @!attribute new_direct_connect_gateway_name
    #   <p>The new name for the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    UpdateDirectConnectGatewayInput = ::Struct.new(
      :direct_connect_gateway_id,
      :new_direct_connect_gateway_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute direct_connect_gateway
    #   <p>Information about a Direct Connect gateway, which enables you to connect virtual interfaces and virtual private gateway or transit gateways.</p>
    #
    #   @return [DirectConnectGateway]
    #
    UpdateDirectConnectGatewayOutput = ::Struct.new(
      :direct_connect_gateway,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute lag_name
    #   <p>The name of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute minimum_links
    #   <p>The minimum number of physical connections that must be operational for the LAG itself to be operational.</p>
    #
    #   @return [Integer]
    #
    # @!attribute encryption_mode
    #   <p>The LAG MAC Security (MACsec) encryption mode.</p>
    #            <p>Amazon Web Services applies the value to all connections which are part of the LAG.</p>
    #
    #   @return [String]
    #
    UpdateLagInput = ::Struct.new(
      :lag_id,
      :lag_name,
      :minimum_links,
      :encryption_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.minimum_links ||= 0
      end

    end

    # <p>Information about a link aggregation group (LAG).</p>
    #
    # @!attribute connections_bandwidth
    #   <p>The individual bandwidth of the physical connections bundled by the LAG. The possible
    #         values are 1Gbps and 10Gbps. </p>
    #
    #   @return [String]
    #
    # @!attribute number_of_connections
    #   <p>The number of physical dedicated connections bundled by the LAG, up to a maximum of 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute lag_name
    #   <p>The name of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute lag_state
    #   <p>The state of the LAG. The following are the possible values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a LAG. The LAG stays in the
    #                   requested state until the Letter of Authorization (LOA) is available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The LAG has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is established and the LAG is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The LAG is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The LAG is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the LAG is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #
    #   @return [String]
    #
    # @!attribute minimum_links
    #   <p>The minimum number of physical dedicated connections that must be operational for the LAG itself to be operational.</p>
    #
    #   @return [Integer]
    #
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint that hosts the LAG.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that hosts the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connections
    #   <p>The connections bundled by the LAG.</p>
    #
    #   @return [Array<Connection>]
    #
    # @!attribute allows_hosted_connections
    #   <p>Indicates whether the LAG can host other connections.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the LAG supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #
    #   Enum, one of: ["unknown", "yes", "no"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the LAG.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the LAG.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the LAG supports MAC Security (MACsec).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute encryption_mode
    #   <p>The LAG MAC Security (MACsec) encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the LAG.</p>
    #
    #   @return [Array<MacSecKey>]
    #
    UpdateLagOutput = ::Struct.new(
      :connections_bandwidth,
      :number_of_connections,
      :lag_id,
      :owner_account,
      :lag_name,
      :lag_state,
      :location,
      :region,
      :minimum_links,
      :aws_device,
      :aws_device_v2,
      :aws_logical_device_id,
      :connections,
      :allows_hosted_connections,
      :jumbo_frame_capable,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :encryption_mode,
      :mac_sec_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.number_of_connections ||= 0
        self.minimum_links ||= 0
        self.allows_hosted_connections ||= false
      end

    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual private interface.</p>
    #
    #   @return [String]
    #
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enable_site_link
    #   <p>Indicates whether to enable or disable SiteLink.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual private interface.</p>
    #
    #   @return [String]
    #
    UpdateVirtualInterfaceAttributesInput = ::Struct.new(
      :virtual_interface_id,
      :mtu,
      :enable_site_link,
      :virtual_interface_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a virtual interface.</p>
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_type
    #   <p>The type of virtual interface. The possible values are <code>private</code> and <code>public</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute asn
    #   <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
    #            <p>The valid values are 1-2147483647.</p>
    #
    #   @return [Integer]
    #
    # @!attribute amazon_side_asn
    #   <p>The autonomous system number (ASN) for the Amazon side of the connection.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #
    #   Enum, one of: ["ipv4", "ipv6"]
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute customer_router_config
    #   <p>The customer router configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>
    #
    #   @return [Integer]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>
    #
    #   @return [String]
    #
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute route_filter_prefixes
    #   <p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>
    #
    #   @return [Array<RouteFilterPrefix>]
    #
    # @!attribute bgp_peers
    #   <p>The BGP peers configured on this virtual interface.</p>
    #
    #   @return [Array<BGPPeer>]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the virtual interface is located.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the virtual interface.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute site_link_enabled
    #   <p>Indicates whether SiteLink is enabled.</p>
    #
    #   @return [Boolean]
    #
    UpdateVirtualInterfaceAttributesOutput = ::Struct.new(
      :owner_account,
      :virtual_interface_id,
      :location,
      :connection_id,
      :virtual_interface_type,
      :virtual_interface_name,
      :vlan,
      :asn,
      :amazon_side_asn,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :virtual_interface_state,
      :customer_router_config,
      :mtu,
      :jumbo_frame_capable,
      :virtual_gateway_id,
      :direct_connect_gateway_id,
      :route_filter_prefixes,
      :bgp_peers,
      :region,
      :aws_device_v2,
      :aws_logical_device_id,
      :tags,
      :site_link_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
        self.asn ||= 0
      end

    end

    # <p>Information about a virtual private gateway for a private virtual interface.</p>
    #
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_gateway_state
    #   <p>The state of the virtual private gateway. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: Initial state after creating the virtual private gateway.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: Ready for use by a private virtual interface.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: Initial state after deleting the virtual private gateway.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The virtual private gateway is deleted. The private virtual interface is unable to send traffic over this gateway.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    VirtualGateway = ::Struct.new(
      :virtual_gateway_id,
      :virtual_gateway_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a virtual interface.</p>
    #
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_type
    #   <p>The type of virtual interface. The possible values are <code>private</code> and <code>public</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #
    #   @return [String]
    #
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute asn
    #   <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
    #            <p>The valid values are 1-2147483647.</p>
    #
    #   @return [Integer]
    #
    # @!attribute amazon_side_asn
    #   <p>The autonomous system number (ASN) for the Amazon side of the connection.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #
    #   Enum, one of: ["ipv4", "ipv6"]
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute customer_router_config
    #   <p>The customer router configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>
    #
    #   @return [Integer]
    #
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>
    #
    #   @return [String]
    #
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute route_filter_prefixes
    #   <p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>
    #
    #   @return [Array<RouteFilterPrefix>]
    #
    # @!attribute bgp_peers
    #   <p>The BGP peers configured on this virtual interface.</p>
    #
    #   @return [Array<BGPPeer>]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region where the virtual interface is located.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the virtual interface.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute site_link_enabled
    #   <p>Indicates whether SiteLink is enabled.</p>
    #
    #   @return [Boolean]
    #
    VirtualInterface = ::Struct.new(
      :owner_account,
      :virtual_interface_id,
      :location,
      :connection_id,
      :virtual_interface_type,
      :virtual_interface_name,
      :vlan,
      :asn,
      :amazon_side_asn,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :virtual_interface_state,
      :customer_router_config,
      :mtu,
      :jumbo_frame_capable,
      :virtual_gateway_id,
      :direct_connect_gateway_id,
      :route_filter_prefixes,
      :bgp_peers,
      :region,
      :aws_device_v2,
      :aws_logical_device_id,
      :tags,
      :site_link_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.vlan ||= 0
        self.asn ||= 0
      end

    end

    # Includes enum constants for VirtualInterfaceState
    #
    module VirtualInterfaceState
      # No documentation available.
      #
      confirming = "confirming"

      # No documentation available.
      #
      verifying = "verifying"

      # No documentation available.
      #
      pending = "pending"

      # No documentation available.
      #
      available = "available"

      # No documentation available.
      #
      down = "down"

      # No documentation available.
      #
      deleting = "deleting"

      # No documentation available.
      #
      deleted = "deleted"

      # No documentation available.
      #
      rejected = "rejected"

      # No documentation available.
      #
      unknown = "unknown"
    end

    # <p>Information about the virtual interface failover test.</p>
    #
    # @!attribute test_id
    #   <p>The ID of the virtual interface failover test.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_interface_id
    #   <p>The ID of the tested virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute bgp_peers
    #   <p>The BGP peers that were put in the DOWN state as part of the virtual interface failover test.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute status
    #   <p>The status of the virtual interface failover test.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account
    #   <p>The owner ID of the tested virtual interface.</p>
    #
    #   @return [String]
    #
    # @!attribute test_duration_in_minutes
    #   <p>The time that the virtual interface failover test ran in minutes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute start_time
    #   <p>The time that the virtual interface moves to the DOWN state.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time that the virtual interface moves out of the DOWN state.</p>
    #
    #   @return [Time]
    #
    VirtualInterfaceTestHistory = ::Struct.new(
      :test_id,
      :virtual_interface_id,
      :bgp_peers,
      :status,
      :owner_account,
      :test_duration_in_minutes,
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
