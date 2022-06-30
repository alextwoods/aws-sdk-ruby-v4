# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::NetworkManager
  module Types

    # <p>Specifies a location in Amazon Web Services.</p>
    #
    # @!attribute zone
    #   <p>The Zone that the device is located in. Specify the ID of an Availability Zone, Local
    #               Zone, Wavelength Zone, or an Outpost.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_arn
    #   <p>The Amazon Resource Name (ARN) of the subnet that the device is located in.</p>
    #
    #   @return [String]
    #
    AWSLocation = ::Struct.new(
      :zone,
      :subnet_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attachment_id
    #   <p>The ID of the attachment. </p>
    #
    #   @return [String]
    #
    AcceptAttachmentInput = ::Struct.new(
      :attachment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attachment
    #   <p>The response to the attachment request. </p>
    #
    #   @return [Attachment]
    #
    AcceptAttachmentOutput = ::Struct.new(
      :attachment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You do not have sufficient access to perform this action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #
    #   @return [String]
    #
    # @!attribute slr_deployment_status
    #
    #   @return [String]
    #
    AccountStatus = ::Struct.new(
      :account_id,
      :slr_deployment_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of your global network.</p>
    #
    #   @return [String]
    #
    # @!attribute connect_peer_id
    #   <p>The ID of the Connect peer.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #
    #   @return [String]
    #
    AssociateConnectPeerInput = ::Struct.new(
      :global_network_id,
      :connect_peer_id,
      :device_id,
      :link_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connect_peer_association
    #   <p>The response to the Connect peer request.</p>
    #
    #   @return [ConnectPeerAssociation]
    #
    AssociateConnectPeerOutput = ::Struct.new(
      :connect_peer_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute customer_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the customer gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #
    #   @return [String]
    #
    AssociateCustomerGatewayInput = ::Struct.new(
      :customer_gateway_arn,
      :global_network_id,
      :device_id,
      :link_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute customer_gateway_association
    #   <p>The customer gateway association.</p>
    #
    #   @return [CustomerGatewayAssociation]
    #
    AssociateCustomerGatewayOutput = ::Struct.new(
      :customer_gateway_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #
    #   @return [String]
    #
    AssociateLinkInput = ::Struct.new(
      :global_network_id,
      :device_id,
      :link_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute link_association
    #   <p>The link association.</p>
    #
    #   @return [LinkAssociation]
    #
    AssociateLinkOutput = ::Struct.new(
      :link_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute transit_gateway_connect_peer_arn
    #   <p>The Amazon Resource Name (ARN) of the Connect peer.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #
    #   @return [String]
    #
    AssociateTransitGatewayConnectPeerInput = ::Struct.new(
      :global_network_id,
      :transit_gateway_connect_peer_arn,
      :device_id,
      :link_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transit_gateway_connect_peer_association
    #   <p>The transit gateway Connect peer association.</p>
    #
    #   @return [TransitGatewayConnectPeerAssociation]
    #
    AssociateTransitGatewayConnectPeerOutput = ::Struct.new(
      :transit_gateway_connect_peer_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a core network attachment.</p>
    #
    # @!attribute core_network_id
    #   <p>A core network ID.</p>
    #
    #   @return [String]
    #
    # @!attribute core_network_arn
    #   <p>The ARN of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute attachment_id
    #   <p>The ID of the attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>The ID of the attachment account owner.</p>
    #
    #   @return [String]
    #
    # @!attribute attachment_type
    #   <p>The type of attachment.</p>
    #
    #   Enum, one of: ["CONNECT", "SITE_TO_SITE_VPN", "VPC"]
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the attachment.</p>
    #
    #   Enum, one of: ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute edge_location
    #   <p>The Region where the edge is located.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The attachment resource ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute attachment_policy_rule_number
    #   <p>The policy rule number associated with the attachment.</p>
    #
    #   @return [Integer]
    #
    # @!attribute segment_name
    #   <p>The name of the segment attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the attachment.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute proposed_segment_change
    #   <p>The attachment to move from one segment to another.</p>
    #
    #   @return [ProposedSegmentChange]
    #
    # @!attribute created_at
    #   <p>The timestamp when the attachment was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The timestamp when the attachment was last updated.</p>
    #
    #   @return [Time]
    #
    Attachment = ::Struct.new(
      :core_network_id,
      :core_network_arn,
      :attachment_id,
      :owner_account_id,
      :attachment_type,
      :state,
      :edge_location,
      :resource_arn,
      :attachment_policy_rule_number,
      :segment_name,
      :tags,
      :proposed_segment_change,
      :created_at,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AttachmentState
    #
    module AttachmentState
      # No documentation available.
      #
      REJECTED = "REJECTED"

      # No documentation available.
      #
      PENDING_ATTACHMENT_ACCEPTANCE = "PENDING_ATTACHMENT_ACCEPTANCE"

      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      PENDING_NETWORK_UPDATE = "PENDING_NETWORK_UPDATE"

      # No documentation available.
      #
      PENDING_TAG_ACCEPTANCE = "PENDING_TAG_ACCEPTANCE"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # Includes enum constants for AttachmentType
    #
    module AttachmentType
      # No documentation available.
      #
      CONNECT = "CONNECT"

      # No documentation available.
      #
      SITE_TO_SITE_VPN = "SITE_TO_SITE_VPN"

      # No documentation available.
      #
      VPC = "VPC"
    end

    # <p>Describes bandwidth information.</p>
    #
    # @!attribute upload_speed
    #   <p>Upload speed in Mbps.</p>
    #
    #   @return [Integer]
    #
    # @!attribute download_speed
    #   <p>Download speed in Mbps.</p>
    #
    #   @return [Integer]
    #
    Bandwidth = ::Struct.new(
      :upload_speed,
      :download_speed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the BGP options.</p>
    #
    # @!attribute peer_asn
    #   <p>The Peer ASN of the BGP.</p>
    #
    #   @return [Integer]
    #
    BgpOptions = ::Struct.new(
      :peer_asn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChangeAction
    #
    module ChangeAction
      # No documentation available.
      #
      ADD = "ADD"

      # No documentation available.
      #
      MODIFY = "MODIFY"

      # No documentation available.
      #
      REMOVE = "REMOVE"
    end

    # Includes enum constants for ChangeSetState
    #
    module ChangeSetState
      # No documentation available.
      #
      PENDING_GENERATION = "PENDING_GENERATION"

      # No documentation available.
      #
      FAILED_GENERATION = "FAILED_GENERATION"

      # No documentation available.
      #
      READY_TO_EXECUTE = "READY_TO_EXECUTE"

      # No documentation available.
      #
      EXECUTING = "EXECUTING"

      # No documentation available.
      #
      EXECUTION_SUCCEEDED = "EXECUTION_SUCCEEDED"

      # No documentation available.
      #
      OUT_OF_DATE = "OUT_OF_DATE"
    end

    # Includes enum constants for ChangeType
    #
    module ChangeType
      # No documentation available.
      #
      CORE_NETWORK_SEGMENT = "CORE_NETWORK_SEGMENT"

      # No documentation available.
      #
      CORE_NETWORK_EDGE = "CORE_NETWORK_EDGE"

      # No documentation available.
      #
      ATTACHMENT_MAPPING = "ATTACHMENT_MAPPING"

      # No documentation available.
      #
      ATTACHMENT_ROUTE_PROPAGATION = "ATTACHMENT_ROUTE_PROPAGATION"

      # No documentation available.
      #
      ATTACHMENT_ROUTE_STATIC = "ATTACHMENT_ROUTE_STATIC"
    end

    # <p>There was a conflict processing the request. Updating or deleting the resource can
    #             cause an inconsistent state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a core network Connect attachment.</p>
    #
    # @!attribute attachment
    #   <p>The attachment details.</p>
    #
    #   @return [Attachment]
    #
    # @!attribute transport_attachment_id
    #   <p>The ID of the transport attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute options
    #   <p>Options for connecting an attachment.</p>
    #
    #   @return [ConnectAttachmentOptions]
    #
    ConnectAttachment = ::Struct.new(
      :attachment,
      :transport_attachment_id,
      :options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a core network Connect attachment options.</p>
    #
    # @!attribute protocol
    #   <p>The protocol used for the attachment connection.</p>
    #
    #   Enum, one of: ["GRE"]
    #
    #   @return [String]
    #
    ConnectAttachmentOptions = ::Struct.new(
      :protocol,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a core network Connect peer.</p>
    #
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute connect_attachment_id
    #   <p>The ID of the attachment to connect.</p>
    #
    #   @return [String]
    #
    # @!attribute connect_peer_id
    #   <p>The ID of the Connect peer.</p>
    #
    #   @return [String]
    #
    # @!attribute edge_location
    #   <p>The Connect peer Regions where edges are located.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the Connect peer.</p>
    #
    #   Enum, one of: ["CREATING", "FAILED", "AVAILABLE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The timestamp when the Connect peer was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute configuration
    #   <p>The configuration of the Connect peer.</p>
    #
    #   @return [ConnectPeerConfiguration]
    #
    # @!attribute tags
    #   <p>The tags associated with the Connect peer.</p>
    #
    #   @return [Array<Tag>]
    #
    ConnectPeer = ::Struct.new(
      :core_network_id,
      :connect_attachment_id,
      :connect_peer_id,
      :edge_location,
      :state,
      :created_at,
      :configuration,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a core network Connect peer association.</p>
    #
    # @!attribute connect_peer_id
    #   <p>The ID of the Connect peer.</p>
    #
    #   @return [String]
    #
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The ID of the device to connect to.</p>
    #
    #   @return [String]
    #
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the Connect peer association.</p>
    #
    #   Enum, one of: ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    ConnectPeerAssociation = ::Struct.new(
      :connect_peer_id,
      :global_network_id,
      :device_id,
      :link_id,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConnectPeerAssociationState
    #
    module ConnectPeerAssociationState
      # No documentation available.
      #
      pending = "PENDING"

      # No documentation available.
      #
      available = "AVAILABLE"

      # No documentation available.
      #
      deleting = "DELETING"

      # No documentation available.
      #
      deleted = "DELETED"
    end

    # <p>Describes a core network BGP configuration.</p>
    #
    # @!attribute core_network_asn
    #   <p>The ASN of the Coret Network.</p>
    #
    #   @return [Integer]
    #
    # @!attribute peer_asn
    #   <p>The ASN of the Connect peer.</p>
    #
    #   @return [Integer]
    #
    # @!attribute core_network_address
    #   <p>The address of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute peer_address
    #   <p>The address of a core network Connect peer.</p>
    #
    #   @return [String]
    #
    ConnectPeerBgpConfiguration = ::Struct.new(
      :core_network_asn,
      :peer_asn,
      :core_network_address,
      :peer_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a core network Connect peer configuration.</p>
    #
    # @!attribute core_network_address
    #   <p>The IP address of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute peer_address
    #   <p>The IP address of the Connect peer.</p>
    #
    #   @return [String]
    #
    # @!attribute inside_cidr_blocks
    #   <p>The inside IP addresses used for a Connect peer configuration.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute protocol
    #   <p>The protocol used for a Connect peer configuration.</p>
    #
    #   Enum, one of: ["GRE"]
    #
    #   @return [String]
    #
    # @!attribute bgp_configurations
    #   <p>The Connect peer BGP configurations.</p>
    #
    #   @return [Array<ConnectPeerBgpConfiguration>]
    #
    ConnectPeerConfiguration = ::Struct.new(
      :core_network_address,
      :peer_address,
      :inside_cidr_blocks,
      :protocol,
      :bgp_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConnectPeerState
    #
    module ConnectPeerState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # <p>Summary description of a Connect peer.</p>
    #
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute connect_attachment_id
    #   <p>The ID of a Connect peer attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute connect_peer_id
    #   <p>The ID of a Connect peer.</p>
    #
    #   @return [String]
    #
    # @!attribute edge_location
    #   <p>The Region where the edge is located.</p>
    #
    #   @return [String]
    #
    # @!attribute connect_peer_state
    #   <p>The state of a Connect peer.</p>
    #
    #   Enum, one of: ["CREATING", "FAILED", "AVAILABLE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The timestamp when a Connect peer was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags associated with a Connect peer summary.</p>
    #
    #   @return [Array<Tag>]
    #
    ConnectPeerSummary = ::Struct.new(
      :core_network_id,
      :connect_attachment_id,
      :connect_peer_id,
      :edge_location,
      :connect_peer_state,
      :created_at,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a connection.</p>
    #
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The ID of the first device in the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connected_device_id
    #   <p>The ID of the second device in the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute link_id
    #   <p>The ID of the link for the first device in the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connected_link_id
    #   <p>The ID of the link for the second device in the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the connection was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute state
    #   <p>The state of the connection.</p>
    #
    #   Enum, one of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the connection.</p>
    #
    #   @return [Array<Tag>]
    #
    Connection = ::Struct.new(
      :connection_id,
      :connection_arn,
      :global_network_id,
      :device_id,
      :connected_device_id,
      :link_id,
      :connected_link_id,
      :description,
      :created_at,
      :state,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes connection health.</p>
    #
    # @!attribute type
    #   <p>The connection type.</p>
    #
    #   Enum, one of: ["BGP", "IPSEC"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The connection status.</p>
    #
    #   Enum, one of: ["UP", "DOWN"]
    #
    #   @return [String]
    #
    # @!attribute timestamp
    #   <p>The time the status was last updated.</p>
    #
    #   @return [Time]
    #
    ConnectionHealth = ::Struct.new(
      :type,
      :status,
      :timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConnectionState
    #
    module ConnectionState
      # No documentation available.
      #
      pending = "PENDING"

      # No documentation available.
      #
      available = "AVAILABLE"

      # No documentation available.
      #
      deleting = "DELETING"

      # No documentation available.
      #
      updating = "UPDATING"
    end

    # Includes enum constants for ConnectionStatus
    #
    module ConnectionStatus
      # No documentation available.
      #
      UP = "UP"

      # No documentation available.
      #
      DOWN = "DOWN"
    end

    # Includes enum constants for ConnectionType
    #
    module ConnectionType
      # No documentation available.
      #
      BGP = "BGP"

      # No documentation available.
      #
      IPSEC = "IPSEC"
    end

    # <p>Describes a core network.</p>
    #
    # @!attribute global_network_id
    #   <p>The ID of the global network that your core network is a part of. </p>
    #
    #   @return [String]
    #
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute core_network_arn
    #   <p>The ARN of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The timestamp when a core network was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute state
    #   <p>The current state of a core network.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "AVAILABLE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute segments
    #   <p>The segments within a core network.</p>
    #
    #   @return [Array<CoreNetworkSegment>]
    #
    # @!attribute edges
    #   <p>The edges within a core network.</p>
    #
    #   @return [Array<CoreNetworkEdge>]
    #
    # @!attribute tags
    #   <p>The tags associated with a core network.</p>
    #
    #   @return [Array<Tag>]
    #
    CoreNetwork = ::Struct.new(
      :global_network_id,
      :core_network_id,
      :core_network_arn,
      :description,
      :created_at,
      :state,
      :segments,
      :edges,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details describing a core network change.</p>
    #
    # @!attribute type
    #   <p>The type of change.</p>
    #
    #   Enum, one of: ["CORE_NETWORK_SEGMENT", "CORE_NETWORK_EDGE", "ATTACHMENT_MAPPING", "ATTACHMENT_ROUTE_PROPAGATION", "ATTACHMENT_ROUTE_STATIC"]
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>The action to take for a core network.</p>
    #
    #   Enum, one of: ["ADD", "MODIFY", "REMOVE"]
    #
    #   @return [String]
    #
    # @!attribute identifier
    #   <p>The resource identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute previous_values
    #   <p>The previous values for a core network.</p>
    #
    #   @return [CoreNetworkChangeValues]
    #
    # @!attribute new_values
    #   <p>The new value for a core network</p>
    #
    #   @return [CoreNetworkChangeValues]
    #
    CoreNetworkChange = ::Struct.new(
      :type,
      :action,
      :identifier,
      :previous_values,
      :new_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a core network change.</p>
    #
    # @!attribute segment_name
    #   <p>The names of the segments in a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute edge_locations
    #   <p>The Regions where edges are located in a core network. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute asn
    #   <p>The ASN of a core network.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cidr
    #   <p>The IP addresses used for a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_identifier
    #   <p>The ID of the destination.</p>
    #
    #   @return [String]
    #
    # @!attribute inside_cidr_blocks
    #   <p>The inside IP addresses used for core network change values.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute shared_segments
    #   <p>The shared segments for a core network change value. </p>
    #
    #   @return [Array<String>]
    #
    CoreNetworkChangeValues = ::Struct.new(
      :segment_name,
      :edge_locations,
      :asn,
      :cidr,
      :destination_identifier,
      :inside_cidr_blocks,
      :shared_segments,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a core network edge.</p>
    #
    # @!attribute edge_location
    #   <p>The Region where a core network edge is located.</p>
    #
    #   @return [String]
    #
    # @!attribute asn
    #   <p>The ASN of a core network edge.</p>
    #
    #   @return [Integer]
    #
    # @!attribute inside_cidr_blocks
    #   <p>The inside IP addresses used for core network edges.</p>
    #
    #   @return [Array<String>]
    #
    CoreNetworkEdge = ::Struct.new(
      :edge_location,
      :asn,
      :inside_cidr_blocks,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a core network policy. You can have only one LIVE Core Policy.</p>
    #
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_version_id
    #   <p>The ID of the policy version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute alias
    #   <p>Whether a core network policy is the current LIVE policy or the most recently submitted policy.</p>
    #
    #   Enum, one of: ["LIVE", "LATEST"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of a core network policy.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The timestamp when a core network policy was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute change_set_state
    #   <p>The state of a core network policy.</p>
    #
    #   Enum, one of: ["PENDING_GENERATION", "FAILED_GENERATION", "READY_TO_EXECUTE", "EXECUTING", "EXECUTION_SUCCEEDED", "OUT_OF_DATE"]
    #
    #   @return [String]
    #
    # @!attribute policy_errors
    #   <p>Describes any errors in a core network policy.</p>
    #
    #   @return [Array<CoreNetworkPolicyError>]
    #
    # @!attribute policy_document
    #   <p>Describes a core network policy.</p>
    #
    #   @return [String]
    #
    CoreNetworkPolicy = ::Struct.new(
      :core_network_id,
      :policy_version_id,
      :alias,
      :description,
      :created_at,
      :change_set_state,
      :policy_errors,
      :policy_document,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CoreNetworkPolicyAlias
    #
    module CoreNetworkPolicyAlias
      # No documentation available.
      #
      LIVE = "LIVE"

      # No documentation available.
      #
      LATEST = "LATEST"
    end

    # <p>Provides details about an error in a core network policy.</p>
    #
    # @!attribute error_code
    #   <p>The error code associated with a core network policy error.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message associated with a core network policy error code.</p>
    #
    #   @return [String]
    #
    # @!attribute path
    #   <p>The JSON path where the error was discovered in the policy document.</p>
    #
    #   @return [String]
    #
    CoreNetworkPolicyError = ::Struct.new(
      :error_code,
      :message,
      :path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a core network policy exception.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute errors
    #   <p>Describes a core network policy exception.</p>
    #
    #   @return [Array<CoreNetworkPolicyError>]
    #
    CoreNetworkPolicyException = ::Struct.new(
      :message,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a core network policy version.</p>
    #
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_version_id
    #   <p>The ID of the policy version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute alias
    #   <p>Whether a core network policy is the current policy or the most recently submitted policy.</p>
    #
    #   Enum, one of: ["LIVE", "LATEST"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of a core network policy version.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The timestamp when a core network policy version was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute change_set_state
    #   <p>The status of the policy version change set.</p>
    #
    #   Enum, one of: ["PENDING_GENERATION", "FAILED_GENERATION", "READY_TO_EXECUTE", "EXECUTING", "EXECUTION_SUCCEEDED", "OUT_OF_DATE"]
    #
    #   @return [String]
    #
    CoreNetworkPolicyVersion = ::Struct.new(
      :core_network_id,
      :policy_version_id,
      :alias,
      :description,
      :created_at,
      :change_set_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a core network segment, which are dedicated routes. Only attachments within this segment can communicate with each other.</p>
    #
    # @!attribute name
    #   <p>The name of a core network segment.</p>
    #
    #   @return [String]
    #
    # @!attribute edge_locations
    #   <p>The Regions where the edges are located.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute shared_segments
    #   <p>The shared segments of a core network.</p>
    #
    #   @return [Array<String>]
    #
    CoreNetworkSegment = ::Struct.new(
      :name,
      :edge_locations,
      :shared_segments,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns details about a core network edge.</p>
    #
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_name
    #   <p>The name of the segment edge.</p>
    #
    #   @return [String]
    #
    # @!attribute edge_location
    #   <p>The Region where the segment edge is located.</p>
    #
    #   @return [String]
    #
    CoreNetworkSegmentEdgeIdentifier = ::Struct.new(
      :core_network_id,
      :segment_name,
      :edge_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CoreNetworkState
    #
    module CoreNetworkState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # <p>Returns summary information about a core network.</p>
    #
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute core_network_arn
    #   <p>a core network ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute global_network_id
    #   <p>The global network ID.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>The ID of the account owner.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of a core network.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "AVAILABLE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key-value tags associated with a core network summary.</p>
    #
    #   @return [Array<Tag>]
    #
    CoreNetworkSummary = ::Struct.new(
      :core_network_id,
      :core_network_arn,
      :global_network_id,
      :owner_account_id,
      :state,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network where you want to create the attachment. </p>
    #
    #   @return [String]
    #
    # @!attribute edge_location
    #   <p>The Region where the edge is located.</p>
    #
    #   @return [String]
    #
    # @!attribute transport_attachment_id
    #   <p>The ID of the attachment between the two connections.</p>
    #
    #   @return [String]
    #
    # @!attribute options
    #   <p>Options for creating an attachment.</p>
    #
    #   @return [ConnectAttachmentOptions]
    #
    # @!attribute tags
    #   <p>The list of key-value tags associated with the request.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute client_token
    #   <p>The client token associated with the request.</p>
    #
    #   @return [String]
    #
    CreateConnectAttachmentInput = ::Struct.new(
      :core_network_id,
      :edge_location,
      :transport_attachment_id,
      :options,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connect_attachment
    #   <p>The response to a Connect attachment request.</p>
    #
    #   @return [ConnectAttachment]
    #
    CreateConnectAttachmentOutput = ::Struct.new(
      :connect_attachment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connect_attachment_id
    #   <p>The ID of the connection attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute core_network_address
    #   <p>A Connect peer core network address.</p>
    #
    #   @return [String]
    #
    # @!attribute peer_address
    #   <p>The Connect peer address.</p>
    #
    #   @return [String]
    #
    # @!attribute bgp_options
    #   <p>The Connect peer BGP options.</p>
    #
    #   @return [BgpOptions]
    #
    # @!attribute inside_cidr_blocks
    #   <p>The inside IP addresses used for BGP peering.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The tags associated with the peer request.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute client_token
    #   <p>The client token associated with the request.</p>
    #
    #   @return [String]
    #
    CreateConnectPeerInput = ::Struct.new(
      :connect_attachment_id,
      :core_network_address,
      :peer_address,
      :bgp_options,
      :inside_cidr_blocks,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connect_peer
    #   <p>The response to the request.</p>
    #
    #   @return [ConnectPeer]
    #
    CreateConnectPeerOutput = ::Struct.new(
      :connect_peer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The ID of the first device in the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connected_device_id
    #   <p>The ID of the second device in the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute link_id
    #   <p>The ID of the link for the first device.</p>
    #
    #   @return [String]
    #
    # @!attribute connected_link_id
    #   <p>The ID of the link for the second device.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the connection.</p>
    #           <p>Length Constraints: Maximum length of 256 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to apply to the resource during creation.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateConnectionInput = ::Struct.new(
      :global_network_id,
      :device_id,
      :connected_device_id,
      :link_id,
      :connected_link_id,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection
    #   <p>Information about the connection.</p>
    #
    #   @return [Connection]
    #
    CreateConnectionOutput = ::Struct.new(
      :connection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network that a core network will be a part of. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Key-value tags associated with a core network request.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute policy_document
    #   <p>The policy document for creating a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The client token associated with a core network request.</p>
    #
    #   @return [String]
    #
    CreateCoreNetworkInput = ::Struct.new(
      :global_network_id,
      :description,
      :tags,
      :policy_document,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network
    #   <p>Returns details about a core network.</p>
    #
    #   @return [CoreNetwork]
    #
    CreateCoreNetworkOutput = ::Struct.new(
      :core_network,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_location
    #   <p>The Amazon Web Services location of the device, if applicable. For an on-premises device, you can omit this parameter.</p>
    #
    #   @return [AWSLocation]
    #
    # @!attribute description
    #   <p>A description of the device.</p>
    #           <p>Constraints: Maximum length of 256 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute vendor
    #   <p>The vendor of the device.</p>
    #           <p>Constraints: Maximum length of 128 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute model
    #   <p>The model of the device.</p>
    #           <p>Constraints: Maximum length of 128 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute serial_number
    #   <p>The serial number of the device.</p>
    #           <p>Constraints: Maximum length of 128 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the device.</p>
    #
    #   @return [Location]
    #
    # @!attribute site_id
    #   <p>The ID of the site.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to apply to the resource during creation.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateDeviceInput = ::Struct.new(
      :global_network_id,
      :aws_location,
      :description,
      :type,
      :vendor,
      :model,
      :serial_number,
      :location,
      :site_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::NetworkManager::Types::CreateDeviceInput "\
          "global_network_id=#{global_network_id || 'nil'}, "\
          "aws_location=#{aws_location || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "vendor=#{vendor || 'nil'}, "\
          "model=#{model || 'nil'}, "\
          "serial_number=#{serial_number || 'nil'}, "\
          "location=\"[SENSITIVE]\", "\
          "site_id=#{site_id || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute device
    #   <p>Information about the device.</p>
    #
    #   @return [Device]
    #
    CreateDeviceOutput = ::Struct.new(
      :device,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>A description of the global network.</p>
    #           <p>Constraints: Maximum length of 256 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to apply to the resource during creation.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateGlobalNetworkInput = ::Struct.new(
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network
    #   <p>Information about the global network object.</p>
    #
    #   @return [GlobalNetwork]
    #
    CreateGlobalNetworkOutput = ::Struct.new(
      :global_network,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the link.</p>
    #           <p>Constraints: Maximum length of 256 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the link.</p>
    #           <p>Constraints: Maximum length of 128 characters. Cannot include the following characters: | \ ^</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth
    #   <p> The upload speed and download speed in Mbps. </p>
    #
    #   @return [Bandwidth]
    #
    # @!attribute provider
    #   <p>The provider of the link.</p>
    #           <p>Constraints: Maximum length of 128 characters. Cannot include the following characters: | \ ^</p>
    #
    #   @return [String]
    #
    # @!attribute site_id
    #   <p>The ID of the site.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to apply to the resource during creation.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateLinkInput = ::Struct.new(
      :global_network_id,
      :description,
      :type,
      :bandwidth,
      :provider,
      :site_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute link
    #   <p>Information about the link.</p>
    #
    #   @return [Link]
    #
    CreateLinkOutput = ::Struct.new(
      :link,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of your site.</p>
    #           <p>Constraints: Maximum length of 256 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The site location. This information is used for visualization in the Network Manager console. If you specify the address, the latitude and longitude are automatically calculated.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>Address</code>: The physical address of the site.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Latitude</code>: The latitude of the site. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Longitude</code>: The longitude of the site.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Location]
    #
    # @!attribute tags
    #   <p>The tags to apply to the resource during creation.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateSiteInput = ::Struct.new(
      :global_network_id,
      :description,
      :location,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::NetworkManager::Types::CreateSiteInput "\
          "global_network_id=#{global_network_id || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "location=\"[SENSITIVE]\", "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute site
    #   <p>Information about the site.</p>
    #
    #   @return [Site]
    #
    CreateSiteOutput = ::Struct.new(
      :site,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network where you're creating a site-to-site VPN attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute vpn_connection_arn
    #   <p>The ARN identifying the VPN attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the request.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute client_token
    #   <p>The client token associated with the request.</p>
    #
    #   @return [String]
    #
    CreateSiteToSiteVpnAttachmentInput = ::Struct.new(
      :core_network_id,
      :vpn_connection_arn,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute site_to_site_vpn_attachment
    #   <p>Details about a site-to-site VPN attachment.</p>
    #
    #   @return [SiteToSiteVpnAttachment]
    #
    CreateSiteToSiteVpnAttachmentOutput = ::Struct.new(
      :site_to_site_vpn_attachment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network for the VPC attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_arn
    #   <p>The ARN of the VPC.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_arns
    #   <p>The subnet ARN of the VPC attachment.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute options
    #   <p>Options for the VPC attachment.</p>
    #
    #   @return [VpcOptions]
    #
    # @!attribute tags
    #   <p>The key-value tags associated with the request.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute client_token
    #   <p>The client token associated with the request.</p>
    #
    #   @return [String]
    #
    CreateVpcAttachmentInput = ::Struct.new(
      :core_network_id,
      :vpc_arn,
      :subnet_arns,
      :options,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vpc_attachment
    #   <p>Provides details about the VPC attachment.</p>
    #
    #   @return [VpcAttachment]
    #
    CreateVpcAttachmentOutput = ::Struct.new(
      :vpc_attachment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the association between a customer gateway, a device, and a link.</p>
    #
    # @!attribute customer_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the customer gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The association state.</p>
    #
    #   Enum, one of: ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    CustomerGatewayAssociation = ::Struct.new(
      :customer_gateway_arn,
      :global_network_id,
      :device_id,
      :link_id,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CustomerGatewayAssociationState
    #
    module CustomerGatewayAssociationState
      # No documentation available.
      #
      pending = "PENDING"

      # No documentation available.
      #
      available = "AVAILABLE"

      # No documentation available.
      #
      deleting = "DELETING"

      # No documentation available.
      #
      deleted = "DELETED"
    end

    # @!attribute attachment_id
    #   <p>The ID of the attachment to delete.</p>
    #
    #   @return [String]
    #
    DeleteAttachmentInput = ::Struct.new(
      :attachment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attachment
    #   <p>Information about the deleted attachment.</p>
    #
    #   @return [Attachment]
    #
    DeleteAttachmentOutput = ::Struct.new(
      :attachment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connect_peer_id
    #   <p>The ID of the deleted Connect peer.</p>
    #
    #   @return [String]
    #
    DeleteConnectPeerInput = ::Struct.new(
      :connect_peer_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connect_peer
    #   <p>Information about the deleted Connect peer.</p>
    #
    #   @return [ConnectPeer]
    #
    DeleteConnectPeerOutput = ::Struct.new(
      :connect_peer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    DeleteConnectionInput = ::Struct.new(
      :global_network_id,
      :connection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection
    #   <p>Information about the connection.</p>
    #
    #   @return [Connection]
    #
    DeleteConnectionOutput = ::Struct.new(
      :connection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_id
    #   <p>The network ID of the deleted core network.</p>
    #
    #   @return [String]
    #
    DeleteCoreNetworkInput = ::Struct.new(
      :core_network_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network
    #   <p>Information about the deleted core network.</p>
    #
    #   @return [CoreNetwork]
    #
    DeleteCoreNetworkOutput = ::Struct.new(
      :core_network,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network for the deleted policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_version_id
    #   <p>The version ID of the deleted policy.</p>
    #
    #   @return [Integer]
    #
    DeleteCoreNetworkPolicyVersionInput = ::Struct.new(
      :core_network_id,
      :policy_version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_policy
    #   <p>Returns information about the deleted policy version. </p>
    #
    #   @return [CoreNetworkPolicy]
    #
    DeleteCoreNetworkPolicyVersionOutput = ::Struct.new(
      :core_network_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #
    #   @return [String]
    #
    DeleteDeviceInput = ::Struct.new(
      :global_network_id,
      :device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device
    #   <p>Information about the device.</p>
    #
    #   @return [Device]
    #
    DeleteDeviceOutput = ::Struct.new(
      :device,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    DeleteGlobalNetworkInput = ::Struct.new(
      :global_network_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network
    #   <p>Information about the global network.</p>
    #
    #   @return [GlobalNetwork]
    #
    DeleteGlobalNetworkOutput = ::Struct.new(
      :global_network,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #
    #   @return [String]
    #
    DeleteLinkInput = ::Struct.new(
      :global_network_id,
      :link_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute link
    #   <p>Information about the link.</p>
    #
    #   @return [Link]
    #
    DeleteLinkOutput = ::Struct.new(
      :link,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the policy to delete.</p>
    #
    #   @return [String]
    #
    DeleteResourcePolicyInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteResourcePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute site_id
    #   <p>The ID of the site.</p>
    #
    #   @return [String]
    #
    DeleteSiteInput = ::Struct.new(
      :global_network_id,
      :site_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute site
    #   <p>Information about the site.</p>
    #
    #   @return [Site]
    #
    DeleteSiteOutput = ::Struct.new(
      :site,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute transit_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the transit gateway.</p>
    #
    #   @return [String]
    #
    DeregisterTransitGatewayInput = ::Struct.new(
      :global_network_id,
      :transit_gateway_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transit_gateway_registration
    #   <p>The transit gateway registration information.</p>
    #
    #   @return [TransitGatewayRegistration]
    #
    DeregisterTransitGatewayOutput = ::Struct.new(
      :transit_gateway_registration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_ids
    #   <p>The IDs of one or more global networks. The maximum is 10.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    DescribeGlobalNetworksInput = ::Struct.new(
      :global_network_ids,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_networks
    #   <p>Information about the global networks.</p>
    #
    #   @return [Array<GlobalNetwork>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    DescribeGlobalNetworksOutput = ::Struct.new(
      :global_networks,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a device.</p>
    #
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_arn
    #   <p>The Amazon Resource Name (ARN) of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_location
    #   <p>The Amazon Web Services location of the device.</p>
    #
    #   @return [AWSLocation]
    #
    # @!attribute description
    #   <p>The description of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The device type.</p>
    #
    #   @return [String]
    #
    # @!attribute vendor
    #   <p>The device vendor.</p>
    #
    #   @return [String]
    #
    # @!attribute model
    #   <p>The device model.</p>
    #
    #   @return [String]
    #
    # @!attribute serial_number
    #   <p>The device serial number.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The site location.</p>
    #
    #   @return [Location]
    #
    # @!attribute site_id
    #   <p>The site ID.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the site was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute state
    #   <p>The device state.</p>
    #
    #   Enum, one of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the device.</p>
    #
    #   @return [Array<Tag>]
    #
    Device = ::Struct.new(
      :device_id,
      :device_arn,
      :global_network_id,
      :aws_location,
      :description,
      :type,
      :vendor,
      :model,
      :serial_number,
      :location,
      :site_id,
      :created_at,
      :state,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::NetworkManager::Types::Device "\
          "device_id=#{device_id || 'nil'}, "\
          "device_arn=#{device_arn || 'nil'}, "\
          "global_network_id=#{global_network_id || 'nil'}, "\
          "aws_location=#{aws_location || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "vendor=#{vendor || 'nil'}, "\
          "model=#{model || 'nil'}, "\
          "serial_number=#{serial_number || 'nil'}, "\
          "location=\"[SENSITIVE]\", "\
          "site_id=#{site_id || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "state=#{state || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # Includes enum constants for DeviceState
    #
    module DeviceState
      # No documentation available.
      #
      pending = "PENDING"

      # No documentation available.
      #
      available = "AVAILABLE"

      # No documentation available.
      #
      deleting = "DELETING"

      # No documentation available.
      #
      updating = "UPDATING"
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute connect_peer_id
    #   <p>The ID of the Connect peer to disassociate from a device.</p>
    #
    #   @return [String]
    #
    DisassociateConnectPeerInput = ::Struct.new(
      :global_network_id,
      :connect_peer_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connect_peer_association
    #   <p>Describes the Connect peer association.</p>
    #
    #   @return [ConnectPeerAssociation]
    #
    DisassociateConnectPeerOutput = ::Struct.new(
      :connect_peer_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the customer gateway.</p>
    #
    #   @return [String]
    #
    DisassociateCustomerGatewayInput = ::Struct.new(
      :global_network_id,
      :customer_gateway_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute customer_gateway_association
    #   <p>Information about the customer gateway association.</p>
    #
    #   @return [CustomerGatewayAssociation]
    #
    DisassociateCustomerGatewayOutput = ::Struct.new(
      :customer_gateway_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #
    #   @return [String]
    #
    DisassociateLinkInput = ::Struct.new(
      :global_network_id,
      :device_id,
      :link_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute link_association
    #   <p>Information about the link association.</p>
    #
    #   @return [LinkAssociation]
    #
    DisassociateLinkOutput = ::Struct.new(
      :link_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute transit_gateway_connect_peer_arn
    #   <p>The Amazon Resource Name (ARN) of the transit gateway Connect peer.</p>
    #
    #   @return [String]
    #
    DisassociateTransitGatewayConnectPeerInput = ::Struct.new(
      :global_network_id,
      :transit_gateway_connect_peer_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transit_gateway_connect_peer_association
    #   <p>The transit gateway Connect peer association.</p>
    #
    #   @return [TransitGatewayConnectPeerAssociation]
    #
    DisassociateTransitGatewayConnectPeerOutput = ::Struct.new(
      :transit_gateway_connect_peer_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_version_id
    #   <p>The ID of the policy version.</p>
    #
    #   @return [Integer]
    #
    ExecuteCoreNetworkChangeSetInput = ::Struct.new(
      :core_network_id,
      :policy_version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ExecuteCoreNetworkChangeSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attachment_id
    #   <p>The ID of the attachment.</p>
    #
    #   @return [String]
    #
    GetConnectAttachmentInput = ::Struct.new(
      :attachment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connect_attachment
    #   <p>Details about the Connect attachment.</p>
    #
    #   @return [ConnectAttachment]
    #
    GetConnectAttachmentOutput = ::Struct.new(
      :connect_attachment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute connect_peer_ids
    #   <p>The IDs of the Connect peers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetConnectPeerAssociationsInput = ::Struct.new(
      :global_network_id,
      :connect_peer_ids,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connect_peer_associations
    #   <p>Displays a list of Connect peer associations.</p>
    #
    #   @return [Array<ConnectPeerAssociation>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetConnectPeerAssociationsOutput = ::Struct.new(
      :connect_peer_associations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connect_peer_id
    #   <p>The ID of the Connect peer.</p>
    #
    #   @return [String]
    #
    GetConnectPeerInput = ::Struct.new(
      :connect_peer_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connect_peer
    #   <p>Returns information about a core network Connect peer.</p>
    #
    #   @return [ConnectPeer]
    #
    GetConnectPeerOutput = ::Struct.new(
      :connect_peer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_ids
    #   <p>One or more connection IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetConnectionsInput = ::Struct.new(
      :global_network_id,
      :connection_ids,
      :device_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connections
    #   <p>Information about the connections.</p>
    #
    #   @return [Array<Connection>]
    #
    # @!attribute next_token
    #   <p>The token to use for the next page of results.</p>
    #
    #   @return [String]
    #
    GetConnectionsOutput = ::Struct.new(
      :connections,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_version_id
    #   <p>The ID of the policy version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetCoreNetworkChangeSetInput = ::Struct.new(
      :core_network_id,
      :policy_version_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_changes
    #   <p>Describes a core network changes.</p>
    #
    #   @return [Array<CoreNetworkChange>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetCoreNetworkChangeSetOutput = ::Struct.new(
      :core_network_changes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    GetCoreNetworkInput = ::Struct.new(
      :core_network_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network
    #   <p>Details about a core network.</p>
    #
    #   @return [CoreNetwork]
    #
    GetCoreNetworkOutput = ::Struct.new(
      :core_network,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_version_id
    #   <p>The ID of a core network policy version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute alias
    #   <p>The alias of a core network policy </p>
    #
    #   Enum, one of: ["LIVE", "LATEST"]
    #
    #   @return [String]
    #
    GetCoreNetworkPolicyInput = ::Struct.new(
      :core_network_id,
      :policy_version_id,
      :alias,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_policy
    #   <p>The details about a core network policy.</p>
    #
    #   @return [CoreNetworkPolicy]
    #
    GetCoreNetworkPolicyOutput = ::Struct.new(
      :core_network_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_gateway_arns
    #   <p>One or more customer gateway Amazon Resource Names (ARNs). The maximum is 10.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetCustomerGatewayAssociationsInput = ::Struct.new(
      :global_network_id,
      :customer_gateway_arns,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute customer_gateway_associations
    #   <p>The customer gateway associations.</p>
    #
    #   @return [Array<CustomerGatewayAssociation>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetCustomerGatewayAssociationsOutput = ::Struct.new(
      :customer_gateway_associations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute device_ids
    #   <p>One or more device IDs. The maximum is 10.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute site_id
    #   <p>The ID of the site.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetDevicesInput = ::Struct.new(
      :global_network_id,
      :device_ids,
      :site_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute devices
    #   <p>The devices.</p>
    #
    #   @return [Array<Device>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetDevicesOutput = ::Struct.new(
      :devices,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetLinkAssociationsInput = ::Struct.new(
      :global_network_id,
      :device_id,
      :link_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute link_associations
    #   <p>The link associations.</p>
    #
    #   @return [Array<LinkAssociation>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetLinkAssociationsOutput = ::Struct.new(
      :link_associations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute link_ids
    #   <p>One or more link IDs. The maximum is 10.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute site_id
    #   <p>The ID of the site.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The link type.</p>
    #
    #   @return [String]
    #
    # @!attribute provider
    #   <p>The link provider.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetLinksInput = ::Struct.new(
      :global_network_id,
      :link_ids,
      :site_id,
      :type,
      :provider,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute links
    #   <p>The links.</p>
    #
    #   @return [Array<Link>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetLinksOutput = ::Struct.new(
      :links,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #            <p>The following are the supported resource types for Direct Connect:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>dxcon</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>dx-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>dx-vif</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #           <p>The following are the supported resource types for Network Manager:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>connection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>device</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>link</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>site</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #           <p>The following are the supported resource types for Amazon VPC:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>customer-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-attachment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-connect-peer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-route-table</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>vpn-connection</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetNetworkResourceCountsInput = ::Struct.new(
      :global_network_id,
      :resource_type,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute network_resource_counts
    #   <p>The count of resources.</p>
    #
    #   @return [Array<NetworkResourceCount>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetNetworkResourceCountsOutput = ::Struct.new(
      :network_resource_counts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute registered_gateway_arn
    #   <p>The ARN of the registered gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #           <p>The following are the supported resource types for Direct Connect:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>dxcon</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>dx-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>dx-vif</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #           <p>The following are the supported resource types for Network Manager:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>connection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>device</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>link</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>site</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #           <p>The following are the supported resource types for Amazon VPC:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>customer-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-attachment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-connect-peer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-route-table</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>vpn-connection</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN of the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetNetworkResourceRelationshipsInput = ::Struct.new(
      :global_network_id,
      :core_network_id,
      :registered_gateway_arn,
      :aws_region,
      :account_id,
      :resource_type,
      :resource_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute relationships
    #   <p>The resource relationships.</p>
    #
    #   @return [Array<Relationship>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetNetworkResourceRelationshipsOutput = ::Struct.new(
      :relationships,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute registered_gateway_arn
    #   <p>The ARN of the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #            <p>The following are the supported resource types for Direct Connect:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>dxcon</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/directconnect/latest/APIReference/API_Connection.html">Connection</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dx-gateway</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DirectConnectGateway.html">DirectConnectGateway</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dx-vif</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/directconnect/latest/APIReference/API_VirtualInterface.html">VirtualInterface</a>.</p>
    #               </li>
    #            </ul>
    #
    #            <p>The following are the supported resource types for Network Manager:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>connection</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Connection.html">Connection</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>device</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Device.html">Device</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>link</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Link.html">Link</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>site</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Site.html">Site</a>.</p>
    #               </li>
    #            </ul>
    #
    #            <p>The following are the supported resource types for Amazon VPC:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>customer-gateway</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CustomerGateway.html">CustomerGateway</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGateway.html">TransitGateway</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway-attachment</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayAttachment.html">TransitGatewayAttachment</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway-connect-peer</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayConnectPeer.html">TransitGatewayConnectPeer</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway-route-table</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayRouteTable.html">TransitGatewayRouteTable</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vpn-connection</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VpnConnection.html">VpnConnection</a>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetNetworkResourcesInput = ::Struct.new(
      :global_network_id,
      :core_network_id,
      :registered_gateway_arn,
      :aws_region,
      :account_id,
      :resource_type,
      :resource_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute network_resources
    #   <p>The network resources.</p>
    #
    #   @return [Array<NetworkResource>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetNetworkResourcesOutput = ::Struct.new(
      :network_resources,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute route_table_identifier
    #   <p>The ID of the route table.</p>
    #
    #   @return [RouteTableIdentifier]
    #
    # @!attribute exact_cidr_matches
    #   <p>An exact CIDR block.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute longest_prefix_matches
    #   <p>The most specific route that matches the traffic (longest prefix match).</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subnet_of_matches
    #   <p>The routes with a subnet that match the specified CIDR filter.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supernet_of_matches
    #   <p>The routes with a CIDR that encompasses the CIDR filter. Example: If you specify 10.0.1.0/30, then the result returns 10.0.1.0/29.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute prefix_list_ids
    #   <p>The IDs of the prefix lists.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute states
    #   <p>The route states.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute types
    #   <p>The route types.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute destination_filters
    #   <p>Filter by route table destination. Possible Values: TRANSIT_GATEWAY_ATTACHMENT_ID, RESOURCE_ID, or RESOURCE_TYPE.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    GetNetworkRoutesInput = ::Struct.new(
      :global_network_id,
      :route_table_identifier,
      :exact_cidr_matches,
      :longest_prefix_matches,
      :subnet_of_matches,
      :supernet_of_matches,
      :prefix_list_ids,
      :states,
      :types,
      :destination_filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute route_table_arn
    #   <p>The ARN of the route table.</p>
    #
    #   @return [String]
    #
    # @!attribute core_network_segment_edge
    #   <p>Describes a core network segment edge.</p>
    #
    #   @return [CoreNetworkSegmentEdgeIdentifier]
    #
    # @!attribute route_table_type
    #   <p>The route table type.</p>
    #
    #   Enum, one of: ["TRANSIT_GATEWAY_ROUTE_TABLE", "CORE_NETWORK_SEGMENT"]
    #
    #   @return [String]
    #
    # @!attribute route_table_timestamp
    #   <p>The route table creation time.</p>
    #
    #   @return [Time]
    #
    # @!attribute network_routes
    #   <p>The network routes.</p>
    #
    #   @return [Array<NetworkRoute>]
    #
    GetNetworkRoutesOutput = ::Struct.new(
      :route_table_arn,
      :core_network_segment_edge,
      :route_table_type,
      :route_table_timestamp,
      :network_routes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute registered_gateway_arn
    #   <p>The ARN of the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #           <p>The following are the supported resource types for Direct Connect:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>dxcon</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>dx-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>dx-vif</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #           <p>The following are the supported resource types for Network Manager:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>connection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>device</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>link</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>site</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #           <p>The following are the supported resource types for Amazon VPC:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>customer-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-attachment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-connect-peer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-route-table</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>vpn-connection</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetNetworkTelemetryInput = ::Struct.new(
      :global_network_id,
      :core_network_id,
      :registered_gateway_arn,
      :aws_region,
      :account_id,
      :resource_type,
      :resource_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute network_telemetry
    #   <p>The network telemetry.</p>
    #
    #   @return [Array<NetworkTelemetry>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetNetworkTelemetryOutput = ::Struct.new(
      :network_telemetry,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    GetResourcePolicyInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_document
    #   <p>The resource policy document.</p>
    #
    #   @return [String]
    #
    GetResourcePolicyOutput = ::Struct.new(
      :policy_document,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute route_analysis_id
    #   <p>The ID of the route analysis.</p>
    #
    #   @return [String]
    #
    GetRouteAnalysisInput = ::Struct.new(
      :global_network_id,
      :route_analysis_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute route_analysis
    #   <p>The route analysis.</p>
    #
    #   @return [RouteAnalysis]
    #
    GetRouteAnalysisOutput = ::Struct.new(
      :route_analysis,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attachment_id
    #   <p>The ID of the attachment.</p>
    #
    #   @return [String]
    #
    GetSiteToSiteVpnAttachmentInput = ::Struct.new(
      :attachment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute site_to_site_vpn_attachment
    #   <p>Describes the site-to-site attachment.</p>
    #
    #   @return [SiteToSiteVpnAttachment]
    #
    GetSiteToSiteVpnAttachmentOutput = ::Struct.new(
      :site_to_site_vpn_attachment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute site_ids
    #   <p>One or more site IDs. The maximum is 10.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetSitesInput = ::Struct.new(
      :global_network_id,
      :site_ids,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sites
    #   <p>The sites.</p>
    #
    #   @return [Array<Site>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetSitesOutput = ::Struct.new(
      :sites,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute transit_gateway_connect_peer_arns
    #   <p>One or more transit gateway Connect peer Amazon Resource Names (ARNs).</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetTransitGatewayConnectPeerAssociationsInput = ::Struct.new(
      :global_network_id,
      :transit_gateway_connect_peer_arns,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transit_gateway_connect_peer_associations
    #   <p>Information about the transit gateway Connect peer associations.</p>
    #
    #   @return [Array<TransitGatewayConnectPeerAssociation>]
    #
    # @!attribute next_token
    #   <p>The token to use for the next page of results.</p>
    #
    #   @return [String]
    #
    GetTransitGatewayConnectPeerAssociationsOutput = ::Struct.new(
      :transit_gateway_connect_peer_associations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute transit_gateway_arns
    #   <p>The Amazon Resource Names (ARNs) of one or more transit gateways. The maximum is
    #               10.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetTransitGatewayRegistrationsInput = ::Struct.new(
      :global_network_id,
      :transit_gateway_arns,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transit_gateway_registrations
    #   <p>The transit gateway registrations.</p>
    #
    #   @return [Array<TransitGatewayRegistration>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    GetTransitGatewayRegistrationsOutput = ::Struct.new(
      :transit_gateway_registrations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attachment_id
    #   <p>The ID of the attachment.</p>
    #
    #   @return [String]
    #
    GetVpcAttachmentInput = ::Struct.new(
      :attachment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vpc_attachment
    #   <p>Returns details about a VPC attachment.</p>
    #
    #   @return [VpcAttachment]
    #
    GetVpcAttachmentOutput = ::Struct.new(
      :vpc_attachment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a global network. This is a single private network acting as a high-level container for your network objects, including an Amazon Web Services-managed Core Network.</p>
    #
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute global_network_arn
    #   <p>The Amazon Resource Name (ARN) of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the global network was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute state
    #   <p>The state of the global network.</p>
    #
    #   Enum, one of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the global network.</p>
    #
    #   @return [Array<Tag>]
    #
    GlobalNetwork = ::Struct.new(
      :global_network_id,
      :global_network_arn,
      :description,
      :created_at,
      :state,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GlobalNetworkState
    #
    module GlobalNetworkState
      # No documentation available.
      #
      pending = "PENDING"

      # No documentation available.
      #
      available = "AVAILABLE"

      # No documentation available.
      #
      deleting = "DELETING"

      # No documentation available.
      #
      updating = "UPDATING"
    end

    # <p>The request has failed due to an internal error.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>Indicates when to retry the request.</p>
    #
    #   @return [Integer]
    #
    InternalServerException = ::Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a link.</p>
    #
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #
    #   @return [String]
    #
    # @!attribute link_arn
    #   <p>The Amazon Resource Name (ARN) of the link.</p>
    #
    #   @return [String]
    #
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute site_id
    #   <p>The ID of the site.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the link.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the link.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth
    #   <p>The bandwidth for the link.</p>
    #
    #   @return [Bandwidth]
    #
    # @!attribute provider
    #   <p>The provider of the link.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the link was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute state
    #   <p>The state of the link.</p>
    #
    #   Enum, one of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the link.</p>
    #
    #   @return [Array<Tag>]
    #
    Link = ::Struct.new(
      :link_id,
      :link_arn,
      :global_network_id,
      :site_id,
      :description,
      :type,
      :bandwidth,
      :provider,
      :created_at,
      :state,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the association between a device and a link.</p>
    #
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The device ID for the link association.</p>
    #
    #   @return [String]
    #
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #
    #   @return [String]
    #
    # @!attribute link_association_state
    #   <p>The state of the association.</p>
    #
    #   Enum, one of: ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    LinkAssociation = ::Struct.new(
      :global_network_id,
      :device_id,
      :link_id,
      :link_association_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LinkAssociationState
    #
    module LinkAssociationState
      # No documentation available.
      #
      pending = "PENDING"

      # No documentation available.
      #
      available = "AVAILABLE"

      # No documentation available.
      #
      deleting = "DELETING"

      # No documentation available.
      #
      deleted = "DELETED"
    end

    # Includes enum constants for LinkState
    #
    module LinkState
      # No documentation available.
      #
      pending = "PENDING"

      # No documentation available.
      #
      available = "AVAILABLE"

      # No documentation available.
      #
      deleting = "DELETING"

      # No documentation available.
      #
      updating = "UPDATING"
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute attachment_type
    #   <p>The type of attachment.</p>
    #
    #   Enum, one of: ["CONNECT", "SITE_TO_SITE_VPN", "VPC"]
    #
    #   @return [String]
    #
    # @!attribute edge_location
    #   <p>The Region where the edge is located.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the attachment.</p>
    #
    #   Enum, one of: ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListAttachmentsInput = ::Struct.new(
      :core_network_id,
      :attachment_type,
      :edge_location,
      :state,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attachments
    #   <p>Describes the list of attachments.</p>
    #
    #   @return [Array<Attachment>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListAttachmentsOutput = ::Struct.new(
      :attachments,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute connect_attachment_id
    #   <p>The ID of the attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListConnectPeersInput = ::Struct.new(
      :core_network_id,
      :connect_attachment_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connect_peers
    #   <p>Describes the Connect peers.</p>
    #
    #   @return [Array<ConnectPeerSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListConnectPeersOutput = ::Struct.new(
      :connect_peers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListCoreNetworkPolicyVersionsInput = ::Struct.new(
      :core_network_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_policy_versions
    #   <p>Describes core network policy versions.</p>
    #
    #   @return [Array<CoreNetworkPolicyVersion>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListCoreNetworkPolicyVersionsOutput = ::Struct.new(
      :core_network_policy_versions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListCoreNetworksInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_networks
    #   <p>Describes the list of core networks.</p>
    #
    #   @return [Array<CoreNetworkSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListCoreNetworksOutput = ::Struct.new(
      :core_networks,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #
    #   @return [String]
    #
    ListOrganizationServiceAccessStatusInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_status
    #
    #   @return [OrganizationStatus]
    #
    # @!attribute next_token
    #
    #   @return [String]
    #
    ListOrganizationServiceAccessStatusOutput = ::Struct.new(
      :organization_status,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tag_list
    #   <p>The list of tags.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a location.</p>
    #
    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute address
    #   <p>The physical address.</p>
    #
    #   @return [String]
    #
    # @!attribute latitude
    #   <p>The latitude.</p>
    #
    #   @return [String]
    #
    # @!attribute longitude
    #   <p>The longitude.</p>
    #
    #   @return [String]
    #
    Location = ::Struct.new(
      :address,
      :latitude,
      :longitude,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::NetworkManager::Types::Location [SENSITIVE]>"
      end
    end

    # <p>Describes a network resource.</p>
    #
    # @!attribute registered_gateway_arn
    #   <p>The ARN of the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute core_network_id
    #   <p>a core network ID.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #            <p>The following are the supported resource types for Direct Connect:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>dxcon</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>dx-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>dx-vif</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #           <p>The following are the supported resource types for Network Manager:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>connection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>device</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>link</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>site</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #           <p>The following are the supported resource types for Amazon VPC:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>customer-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-attachment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-connect-peer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-route-table</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>vpn-connection</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute definition
    #   <p>Information about the resource, in JSON format. Network Manager gets this information by describing the resource using its Describe API call.</p>
    #
    #   @return [String]
    #
    # @!attribute definition_timestamp
    #   <p>The time that the resource definition was retrieved.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute metadata
    #   <p>The resource metadata.</p>
    #
    #   @return [Hash<String, String>]
    #
    NetworkResource = ::Struct.new(
      :registered_gateway_arn,
      :core_network_id,
      :aws_region,
      :account_id,
      :resource_type,
      :resource_id,
      :resource_arn,
      :definition,
      :definition_timestamp,
      :tags,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a resource count.</p>
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute count
    #   <p>The resource count.</p>
    #
    #   @return [Integer]
    #
    NetworkResourceCount = ::Struct.new(
      :resource_type,
      :count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a network resource.</p>
    #
    # @!attribute registered_gateway_arn
    #   <p>The ARN of the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute definition
    #   <p>Information about the resource, in JSON format. Network Manager gets this information by describing the resource using its Describe API call.</p>
    #
    #   @return [String]
    #
    # @!attribute name_tag
    #   <p>The value for the Name tag.</p>
    #
    #   @return [String]
    #
    # @!attribute is_middlebox
    #   <p>Indicates whether this is a middlebox appliance.</p>
    #
    #   @return [Boolean]
    #
    NetworkResourceSummary = ::Struct.new(
      :registered_gateway_arn,
      :resource_arn,
      :resource_type,
      :definition,
      :name_tag,
      :is_middlebox,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_middlebox ||= false
      end

    end

    # <p>Describes a network route.</p>
    #
    # @!attribute destination_cidr_block
    #   <p>A unique identifier for the route, such as a CIDR block.</p>
    #
    #   @return [String]
    #
    # @!attribute destinations
    #   <p>The destinations.</p>
    #
    #   @return [Array<NetworkRouteDestination>]
    #
    # @!attribute prefix_list_id
    #   <p>The ID of the prefix list.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The route state. The possible values are <code>active</code> and <code>blackhole</code>.</p>
    #
    #   Enum, one of: ["ACTIVE", "BLACKHOLE"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The route type. The possible values are <code>propagated</code> and <code>static</code>.</p>
    #
    #   Enum, one of: ["PROPAGATED", "STATIC"]
    #
    #   @return [String]
    #
    NetworkRoute = ::Struct.new(
      :destination_cidr_block,
      :destinations,
      :prefix_list_id,
      :state,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the destination of a network route.</p>
    #
    # @!attribute core_network_attachment_id
    #   <p>The ID of a core network attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute transit_gateway_attachment_id
    #   <p>The ID of the transit gateway attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_name
    #   <p>The name of the segment.</p>
    #
    #   @return [String]
    #
    # @!attribute edge_location
    #   <p>The edge location for the network destination.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    NetworkRouteDestination = ::Struct.new(
      :core_network_attachment_id,
      :transit_gateway_attachment_id,
      :segment_name,
      :edge_location,
      :resource_type,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the telemetry information for a resource.</p>
    #
    # @!attribute registered_gateway_arn
    #   <p>The ARN of the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute address
    #   <p>The address.</p>
    #
    #   @return [String]
    #
    # @!attribute health
    #   <p>The connection health.</p>
    #
    #   @return [ConnectionHealth]
    #
    NetworkTelemetry = ::Struct.new(
      :registered_gateway_arn,
      :core_network_id,
      :aws_region,
      :account_id,
      :resource_type,
      :resource_id,
      :resource_arn,
      :address,
      :health,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #
    #   @return [String]
    #
    # @!attribute organization_aws_service_access_status
    #
    #   @return [String]
    #
    # @!attribute slr_deployment_status
    #
    #   @return [String]
    #
    # @!attribute account_status_list
    #
    #   @return [Array<AccountStatus>]
    #
    OrganizationStatus = ::Struct.new(
      :organization_id,
      :organization_aws_service_access_status,
      :slr_deployment_status,
      :account_status_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a path component.</p>
    #
    # @!attribute sequence
    #   <p>The sequence number in the path. The destination is 0.</p>
    #
    #   @return [Integer]
    #
    # @!attribute resource
    #   <p>The resource.</p>
    #
    #   @return [NetworkResourceSummary]
    #
    # @!attribute destination_cidr_block
    #   <p>The destination CIDR block in the route table.</p>
    #
    #   @return [String]
    #
    PathComponent = ::Struct.new(
      :sequence,
      :resource,
      :destination_cidr_block,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a proposed segment change. In some cases, the segment change must first be evaluated and accepted. </p>
    #
    # @!attribute tags
    #   <p>The key-value tags that changed for the segment.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute attachment_policy_rule_number
    #   <p>The rule number in the policy document that applies to this change.</p>
    #
    #   @return [Integer]
    #
    # @!attribute segment_name
    #   <p>The name of the segment to change.</p>
    #
    #   @return [String]
    #
    ProposedSegmentChange = ::Struct.new(
      :tags,
      :attachment_policy_rule_number,
      :segment_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_document
    #   <p>The policy document.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>a core network policy description.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_version_id
    #   <p>The ID of a core network policy. </p>
    #
    #   @return [Integer]
    #
    # @!attribute client_token
    #   <p>The client token associated with the request.</p>
    #
    #   @return [String]
    #
    PutCoreNetworkPolicyInput = ::Struct.new(
      :core_network_id,
      :policy_document,
      :description,
      :latest_version_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_policy
    #   <p>Describes the changed core network policy.</p>
    #
    #   @return [CoreNetworkPolicy]
    #
    PutCoreNetworkPolicyOutput = ::Struct.new(
      :core_network_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_document
    #   <p>The JSON resource policy document.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN of the resource policy. </p>
    #
    #   @return [String]
    #
    PutResourcePolicyInput = ::Struct.new(
      :policy_document,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutResourcePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute transit_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the transit gateway.</p>
    #
    #   @return [String]
    #
    RegisterTransitGatewayInput = ::Struct.new(
      :global_network_id,
      :transit_gateway_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transit_gateway_registration
    #   <p>Information about the transit gateway registration.</p>
    #
    #   @return [TransitGatewayRegistration]
    #
    RegisterTransitGatewayOutput = ::Struct.new(
      :transit_gateway_registration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attachment_id
    #   <p>The ID of the attachment.</p>
    #
    #   @return [String]
    #
    RejectAttachmentInput = ::Struct.new(
      :attachment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attachment
    #   <p>Describes the rejected attachment request.</p>
    #
    #   @return [Attachment]
    #
    RejectAttachmentOutput = ::Struct.new(
      :attachment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a resource relationship.</p>
    #
    # @!attribute from
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute to
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    Relationship = ::Struct.new(
      :from,
      :to,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource could not be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p>The specified resource could not be found.</p>
    #
    #   @return [Hash<String, String>]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_version_id
    #   <p>The ID of the policy version to restore.</p>
    #
    #   @return [Integer]
    #
    RestoreCoreNetworkPolicyVersionInput = ::Struct.new(
      :core_network_id,
      :policy_version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_policy
    #   <p>Describes the restored core network policy.</p>
    #
    #   @return [CoreNetworkPolicy]
    #
    RestoreCoreNetworkPolicyVersionOutput = ::Struct.new(
      :core_network_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a route analysis.</p>
    #
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>The ID of the AWS account that created the route analysis.</p>
    #
    #   @return [String]
    #
    # @!attribute route_analysis_id
    #   <p>The ID of the route analysis.</p>
    #
    #   @return [String]
    #
    # @!attribute start_timestamp
    #   <p>The time that the analysis started.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the route analysis.</p>
    #
    #   Enum, one of: ["RUNNING", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>The source.</p>
    #
    #   @return [RouteAnalysisEndpointOptions]
    #
    # @!attribute destination
    #   <p>The destination.</p>
    #
    #   @return [RouteAnalysisEndpointOptions]
    #
    # @!attribute include_return_path
    #   <p>Indicates whether to analyze the return path. The return path is not analyzed if the forward path
    #               analysis does not succeed.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute use_middleboxes
    #   <p>Indicates whether to include the location of middlebox appliances in the route analysis.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute forward_path
    #   <p>The forward path.</p>
    #
    #   @return [RouteAnalysisPath]
    #
    # @!attribute return_path
    #   <p>The return path.</p>
    #
    #   @return [RouteAnalysisPath]
    #
    RouteAnalysis = ::Struct.new(
      :global_network_id,
      :owner_account_id,
      :route_analysis_id,
      :start_timestamp,
      :status,
      :source,
      :destination,
      :include_return_path,
      :use_middleboxes,
      :forward_path,
      :return_path,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.include_return_path ||= false
        self.use_middleboxes ||= false
      end

    end

    # <p>Describes the status of an analysis at completion.</p>
    #
    # @!attribute result_code
    #   <p>The result of the analysis. If the status is <code>NOT_CONNECTED</code>, check the
    #               reason code.</p>
    #
    #   Enum, one of: ["CONNECTED", "NOT_CONNECTED"]
    #
    #   @return [String]
    #
    # @!attribute reason_code
    #   <p>The reason code. Available only if a connection is not found.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND</code> - Found a black hole route with the destination CIDR block.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CYCLIC_PATH_DETECTED</code> - Found the same resource multiple times while traversing the path.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACTIVE_ROUTE_FOR_DESTINATION_FOUND</code> - Found an inactive route with the destination CIDR block.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MAX_HOPS_EXCEEDED</code> - Analysis exceeded 64 hops without finding the destination.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ROUTE_NOT_FOUND</code> - Cannot find a route table with the destination CIDR block.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TGW_ATTACH_ARN_NO_MATCH</code> - Found an attachment, but not with the correct destination ARN.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TGW_ATTACH_NOT_FOUND</code> - Cannot find an attachment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TGW_ATTACH_NOT_IN_TGW</code> - Found an attachment, but not to the correct transit gateway.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TGW_ATTACH_STABLE_ROUTE_TABLE_NOT_FOUND</code> - The state of the route table association is not associated.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY", "CYCLIC_PATH_DETECTED", "TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND", "ROUTE_NOT_FOUND", "BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND", "INACTIVE_ROUTE_FOR_DESTINATION_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH", "MAX_HOPS_EXCEEDED", "POSSIBLE_MIDDLEBOX", "NO_DESTINATION_ARN_PROVIDED"]
    #
    #   @return [String]
    #
    # @!attribute reason_context
    #   <p>Additional information about the path. Available only if a connection is not found.</p>
    #
    #   @return [Hash<String, String>]
    #
    RouteAnalysisCompletion = ::Struct.new(
      :result_code,
      :reason_code,
      :reason_context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RouteAnalysisCompletionReasonCode
    #
    module RouteAnalysisCompletionReasonCode
      # No documentation available.
      #
      TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND = "TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND"

      # No documentation available.
      #
      TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY = "TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY"

      # No documentation available.
      #
      CYCLIC_PATH_DETECTED = "CYCLIC_PATH_DETECTED"

      # No documentation available.
      #
      TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND = "TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND"

      # No documentation available.
      #
      ROUTE_NOT_FOUND = "ROUTE_NOT_FOUND"

      # No documentation available.
      #
      BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND = "BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND"

      # No documentation available.
      #
      INACTIVE_ROUTE_FOR_DESTINATION_FOUND = "INACTIVE_ROUTE_FOR_DESTINATION_FOUND"

      # No documentation available.
      #
      TRANSIT_GATEWAY_ATTACHMENT = "TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH"

      # No documentation available.
      #
      MAX_HOPS_EXCEEDED = "MAX_HOPS_EXCEEDED"

      # No documentation available.
      #
      POSSIBLE_MIDDLEBOX = "POSSIBLE_MIDDLEBOX"

      # No documentation available.
      #
      NO_DESTINATION_ARN_PROVIDED = "NO_DESTINATION_ARN_PROVIDED"
    end

    # Includes enum constants for RouteAnalysisCompletionResultCode
    #
    module RouteAnalysisCompletionResultCode
      # No documentation available.
      #
      CONNECTED = "CONNECTED"

      # No documentation available.
      #
      NOT_CONNECTED = "NOT_CONNECTED"
    end

    # <p>Describes a source or a destination.</p>
    #
    # @!attribute transit_gateway_attachment_arn
    #   <p>The ARN of the transit gateway attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute transit_gateway_arn
    #   <p>The ARN of the transit gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>The IP address.</p>
    #
    #   @return [String]
    #
    RouteAnalysisEndpointOptions = ::Struct.new(
      :transit_gateway_attachment_arn,
      :transit_gateway_arn,
      :ip_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a source or a destination.</p>
    #
    # @!attribute transit_gateway_attachment_arn
    #   <p>The ARN of the transit gateway attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>The IP address.</p>
    #
    #   @return [String]
    #
    RouteAnalysisEndpointOptionsSpecification = ::Struct.new(
      :transit_gateway_attachment_arn,
      :ip_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a route analysis path.</p>
    #
    # @!attribute completion_status
    #   <p>The status of the analysis at completion.</p>
    #
    #   @return [RouteAnalysisCompletion]
    #
    # @!attribute path
    #   <p>The route analysis path.</p>
    #
    #   @return [Array<PathComponent>]
    #
    RouteAnalysisPath = ::Struct.new(
      :completion_status,
      :path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RouteAnalysisStatus
    #
    module RouteAnalysisStatus
      # No documentation available.
      #
      running = "RUNNING"

      # No documentation available.
      #
      completed = "COMPLETED"

      # No documentation available.
      #
      failed = "FAILED"
    end

    # Includes enum constants for RouteState
    #
    module RouteState
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      BLACKHOLE = "BLACKHOLE"
    end

    # <p>Describes a route table.</p>
    #
    # @!attribute transit_gateway_route_table_arn
    #   <p>The ARN of the transit gateway route table.</p>
    #
    #   @return [String]
    #
    # @!attribute core_network_segment_edge
    #   <p>The segment edge in a core network.</p>
    #
    #   @return [CoreNetworkSegmentEdgeIdentifier]
    #
    RouteTableIdentifier = ::Struct.new(
      :transit_gateway_route_table_arn,
      :core_network_segment_edge,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RouteTableType
    #
    module RouteTableType
      # No documentation available.
      #
      TRANSIT_GATEWAY_ROUTE_TABLE = "TRANSIT_GATEWAY_ROUTE_TABLE"

      # No documentation available.
      #
      CORE_NETWORK_SEGMENT = "CORE_NETWORK_SEGMENT"
    end

    # Includes enum constants for RouteType
    #
    module RouteType
      # No documentation available.
      #
      PROPAGATED = "PROPAGATED"

      # No documentation available.
      #
      STATIC = "STATIC"
    end

    # <p>A service limit was exceeded.</p>
    #
    # @!attribute message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute limit_code
    #   <p>The limit code.</p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The service code.</p>
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :limit_code,
      :service_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a site.</p>
    #
    # @!attribute site_id
    #   <p>The ID of the site.</p>
    #
    #   @return [String]
    #
    # @!attribute site_arn
    #   <p>The Amazon Resource Name (ARN) of the site.</p>
    #
    #   @return [String]
    #
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the site.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the site.</p>
    #
    #   @return [Location]
    #
    # @!attribute created_at
    #   <p>The date and time that the site was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute state
    #   <p>The state of the site.</p>
    #
    #   Enum, one of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the site.</p>
    #
    #   @return [Array<Tag>]
    #
    Site = ::Struct.new(
      :site_id,
      :site_arn,
      :global_network_id,
      :description,
      :location,
      :created_at,
      :state,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::NetworkManager::Types::Site "\
          "site_id=#{site_id || 'nil'}, "\
          "site_arn=#{site_arn || 'nil'}, "\
          "global_network_id=#{global_network_id || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "location=\"[SENSITIVE]\", "\
          "created_at=#{created_at || 'nil'}, "\
          "state=#{state || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # Includes enum constants for SiteState
    #
    module SiteState
      # No documentation available.
      #
      pending = "PENDING"

      # No documentation available.
      #
      available = "AVAILABLE"

      # No documentation available.
      #
      deleting = "DELETING"

      # No documentation available.
      #
      updating = "UPDATING"
    end

    # <p>Creates a site-to-site VPN attachment.</p>
    #
    # @!attribute attachment
    #   <p>Provides details about a site-to-site VPN attachment.</p>
    #
    #   @return [Attachment]
    #
    # @!attribute vpn_connection_arn
    #   <p>The ARN of the site-to-site VPN attachment. </p>
    #
    #   @return [String]
    #
    SiteToSiteVpnAttachment = ::Struct.new(
      :attachment,
      :vpn_connection_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute action
    #
    #   @return [String]
    #
    StartOrganizationServiceAccessUpdateInput = ::Struct.new(
      :action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_status
    #
    #   @return [OrganizationStatus]
    #
    StartOrganizationServiceAccessUpdateOutput = ::Struct.new(
      :organization_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>The source from which traffic originates.</p>
    #
    #   @return [RouteAnalysisEndpointOptionsSpecification]
    #
    # @!attribute destination
    #   <p>The destination.</p>
    #
    #   @return [RouteAnalysisEndpointOptionsSpecification]
    #
    # @!attribute include_return_path
    #   <p>Indicates whether to analyze the return path. The default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute use_middleboxes
    #   <p>Indicates whether to include the location of middlebox appliances in the route analysis.
    #               The default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    StartRouteAnalysisInput = ::Struct.new(
      :global_network_id,
      :source,
      :destination,
      :include_return_path,
      :use_middleboxes,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.include_return_path ||= false
        self.use_middleboxes ||= false
      end

    end

    # @!attribute route_analysis
    #   <p>The route analysis.</p>
    #
    #   @return [RouteAnalysis]
    #
    StartRouteAnalysisOutput = ::Struct.new(
      :route_analysis,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a tag.</p>
    #
    # @!attribute key
    #   <p>The tag key.</p>
    #           <p>Constraints: Maximum length of 128 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The tag value.</p>
    #           <p>Constraints: Maximum length of 256 characters.</p>
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
    #   <p>The tags to apply to the specified resource.</p>
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

    # <p>The request was denied due to request throttling.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>Indicates when to retry the request.</p>
    #
    #   @return [Integer]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a transit gateway Connect peer association.</p>
    #
    # @!attribute transit_gateway_connect_peer_arn
    #   <p>The Amazon Resource Name (ARN) of the transit gateway Connect peer.</p>
    #
    #   @return [String]
    #
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the association.</p>
    #
    #   Enum, one of: ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    TransitGatewayConnectPeerAssociation = ::Struct.new(
      :transit_gateway_connect_peer_arn,
      :global_network_id,
      :device_id,
      :link_id,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TransitGatewayConnectPeerAssociationState
    #
    module TransitGatewayConnectPeerAssociationState
      # No documentation available.
      #
      pending = "PENDING"

      # No documentation available.
      #
      available = "AVAILABLE"

      # No documentation available.
      #
      deleting = "DELETING"

      # No documentation available.
      #
      deleted = "DELETED"
    end

    # <p>Describes the registration of a transit gateway to a global network.</p>
    #
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute transit_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the transit gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the transit gateway registration.</p>
    #
    #   @return [TransitGatewayRegistrationStateReason]
    #
    TransitGatewayRegistration = ::Struct.new(
      :global_network_id,
      :transit_gateway_arn,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TransitGatewayRegistrationState
    #
    module TransitGatewayRegistrationState
      # No documentation available.
      #
      pending = "PENDING"

      # No documentation available.
      #
      available = "AVAILABLE"

      # No documentation available.
      #
      deleting = "DELETING"

      # No documentation available.
      #
      deleted = "DELETED"

      # No documentation available.
      #
      failed = "FAILED"
    end

    # <p>Describes the status of a transit gateway registration.</p>
    #
    # @!attribute code
    #   <p>The code for the state reason.</p>
    #
    #   Enum, one of: ["PENDING", "AVAILABLE", "DELETING", "DELETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message for the state reason.</p>
    #
    #   @return [String]
    #
    TransitGatewayRegistrationStateReason = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TunnelProtocol
    #
    module TunnelProtocol
      # No documentation available.
      #
      GRE = "GRE"
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys to remove from the specified resource.</p>
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

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute link_id
    #   <p>The ID of the link for the first device in the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connected_link_id
    #   <p>The ID of the link for the second device in the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the connection.</p>
    #           <p>Length Constraints: Maximum length of 256 characters.</p>
    #
    #   @return [String]
    #
    UpdateConnectionInput = ::Struct.new(
      :global_network_id,
      :connection_id,
      :link_id,
      :connected_link_id,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection
    #   <p>Information about the connection.</p>
    #
    #   @return [Connection]
    #
    UpdateConnectionOutput = ::Struct.new(
      :connection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the update.</p>
    #
    #   @return [String]
    #
    UpdateCoreNetworkInput = ::Struct.new(
      :core_network_id,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_network
    #   <p>Returns information about a core network update.</p>
    #
    #   @return [CoreNetwork]
    #
    UpdateCoreNetworkOutput = ::Struct.new(
      :core_network,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_location
    #   <p>The Amazon Web Services location of the device, if applicable. For an on-premises device, you can omit this parameter.</p>
    #
    #   @return [AWSLocation]
    #
    # @!attribute description
    #   <p>A description of the device.</p>
    #           <p>Constraints: Maximum length of 256 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute vendor
    #   <p>The vendor of the device.</p>
    #           <p>Constraints: Maximum length of 128 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute model
    #   <p>The model of the device.</p>
    #           <p>Constraints: Maximum length of 128 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute serial_number
    #   <p>The serial number of the device.</p>
    #           <p>Constraints: Maximum length of 128 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>Describes a location.</p>
    #
    #   @return [Location]
    #
    # @!attribute site_id
    #   <p>The ID of the site.</p>
    #
    #   @return [String]
    #
    UpdateDeviceInput = ::Struct.new(
      :global_network_id,
      :device_id,
      :aws_location,
      :description,
      :type,
      :vendor,
      :model,
      :serial_number,
      :location,
      :site_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::NetworkManager::Types::UpdateDeviceInput "\
          "global_network_id=#{global_network_id || 'nil'}, "\
          "device_id=#{device_id || 'nil'}, "\
          "aws_location=#{aws_location || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "vendor=#{vendor || 'nil'}, "\
          "model=#{model || 'nil'}, "\
          "serial_number=#{serial_number || 'nil'}, "\
          "location=\"[SENSITIVE]\", "\
          "site_id=#{site_id || 'nil'}>"
      end
    end

    # @!attribute device
    #   <p>Information about the device.</p>
    #
    #   @return [Device]
    #
    UpdateDeviceOutput = ::Struct.new(
      :device,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of your global network.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the global network.</p>
    #           <p>Constraints: Maximum length of 256 characters.</p>
    #
    #   @return [String]
    #
    UpdateGlobalNetworkInput = ::Struct.new(
      :global_network_id,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network
    #   <p>Information about the global network object.</p>
    #
    #   @return [GlobalNetwork]
    #
    UpdateGlobalNetworkOutput = ::Struct.new(
      :global_network,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the link.</p>
    #           <p>Constraints: Maximum length of 256 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the link.</p>
    #           <p>Constraints: Maximum length of 128 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth
    #   <p>The upload and download speed in Mbps. </p>
    #
    #   @return [Bandwidth]
    #
    # @!attribute provider
    #   <p>The provider of the link.</p>
    #           <p>Constraints: Maximum length of 128 characters.</p>
    #
    #   @return [String]
    #
    UpdateLinkInput = ::Struct.new(
      :global_network_id,
      :link_id,
      :description,
      :type,
      :bandwidth,
      :provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute link
    #   <p>Information about the link.</p>
    #
    #   @return [Link]
    #
    UpdateLinkOutput = ::Struct.new(
      :link,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The resource metadata.</p>
    #
    #   @return [Hash<String, String>]
    #
    UpdateNetworkResourceMetadataInput = ::Struct.new(
      :global_network_id,
      :resource_arn,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The updated resource metadata.</p>
    #
    #   @return [Hash<String, String>]
    #
    UpdateNetworkResourceMetadataOutput = ::Struct.new(
      :resource_arn,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #
    #   @return [String]
    #
    # @!attribute site_id
    #   <p>The ID of your site.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of your site.</p>
    #           <p>Constraints: Maximum length of 256 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The site location:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>Address</code>: The physical address of the site.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Latitude</code>: The latitude of the site. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Longitude</code>: The longitude of the site.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Location]
    #
    UpdateSiteInput = ::Struct.new(
      :global_network_id,
      :site_id,
      :description,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::NetworkManager::Types::UpdateSiteInput "\
          "global_network_id=#{global_network_id || 'nil'}, "\
          "site_id=#{site_id || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "location=\"[SENSITIVE]\">"
      end
    end

    # @!attribute site
    #   <p>Information about the site.</p>
    #
    #   @return [Site]
    #
    UpdateSiteOutput = ::Struct.new(
      :site,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attachment_id
    #   <p>The ID of the attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute add_subnet_arns
    #   <p>Adds a subnet ARN to the VPC attachment.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute remove_subnet_arns
    #   <p>Removes a subnet ARN from the attachment.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute options
    #   <p>Additional options for updating the VPC attachment. </p>
    #
    #   @return [VpcOptions]
    #
    UpdateVpcAttachmentInput = ::Struct.new(
      :attachment_id,
      :add_subnet_arns,
      :remove_subnet_arns,
      :options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vpc_attachment
    #   <p>Describes the updated VPC attachment.</p>
    #
    #   @return [VpcAttachment]
    #
    UpdateVpcAttachmentOutput = ::Struct.new(
      :vpc_attachment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input fails to satisfy the constraints.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the error.</p>
    #
    #   Enum, one of: ["UnknownOperation", "CannotParse", "FieldValidationFailed", "Other"]
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p>The fields that caused the error, if applicable.</p>
    #
    #   @return [Array<ValidationExceptionField>]
    #
    ValidationException = ::Struct.new(
      :message,
      :reason,
      :fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a validation exception for a field.</p>
    #
    # @!attribute name
    #   <p>The name of the field.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message for the field.</p>
    #
    #   @return [String]
    #
    ValidationExceptionField = ::Struct.new(
      :name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ValidationExceptionReason
    #
    module ValidationExceptionReason
      # No documentation available.
      #
      UNKNOWN_OPERATION = "UnknownOperation"

      # No documentation available.
      #
      CANNOT_PARSE = "CannotParse"

      # No documentation available.
      #
      FIELD_VALIDATION_FAILED = "FieldValidationFailed"

      # No documentation available.
      #
      OTHER = "Other"
    end

    # <p>Describes a VPC attachment.</p>
    #
    # @!attribute attachment
    #   <p>Provides details about the VPC attachment.</p>
    #
    #   @return [Attachment]
    #
    # @!attribute subnet_arns
    #   <p>The subnet ARNs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute options
    #   <p>Provides details about the VPC attachment.</p>
    #
    #   @return [VpcOptions]
    #
    VpcAttachment = ::Struct.new(
      :attachment,
      :subnet_arns,
      :options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the VPC options.</p>
    #
    # @!attribute ipv6_support
    #   <p>Indicates whether IPv6 is supported.</p>
    #
    #   @return [Boolean]
    #
    VpcOptions = ::Struct.new(
      :ipv6_support,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.ipv6_support ||= false
      end

    end

  end
end
