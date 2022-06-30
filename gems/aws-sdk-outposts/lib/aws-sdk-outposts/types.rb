# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Outposts
  module Types

    # <p>You do not have permission to perform this operation.</p>
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

    # <p>
    #       Information about an address.
    #     </p>
    #
    # @!attribute contact_name
    #   <p>The name of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_phone_number
    #   <p>The phone number of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute address_line1
    #   <p>The first line of the address.</p>
    #
    #   @return [String]
    #
    # @!attribute address_line2
    #   <p>The second line of the address.</p>
    #
    #   @return [String]
    #
    # @!attribute address_line3
    #   <p>The third line of the address.</p>
    #
    #   @return [String]
    #
    # @!attribute city
    #   <p>The city for the address.</p>
    #
    #   @return [String]
    #
    # @!attribute state_or_region
    #   <p>The state for the address.</p>
    #
    #   @return [String]
    #
    # @!attribute district_or_county
    #   <p>The district or county for the address.</p>
    #
    #   @return [String]
    #
    # @!attribute postal_code
    #   <p>The postal code for the address.</p>
    #
    #   @return [String]
    #
    # @!attribute country_code
    #   <p>The ISO-3166 two-letter country code for the address.</p>
    #
    #   @return [String]
    #
    # @!attribute municipality
    #   <p>The municipality for the address.</p>
    #
    #   @return [String]
    #
    Address = ::Struct.new(
      :contact_name,
      :contact_phone_number,
      :address_line1,
      :address_line2,
      :address_line3,
      :city,
      :state_or_region,
      :district_or_county,
      :postal_code,
      :country_code,
      :municipality,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AddressType
    #
    module AddressType
      # No documentation available.
      #
      SHIPPING_ADDRESS = "SHIPPING_ADDRESS"

      # No documentation available.
      #
      OPERATING_ADDRESS = "OPERATING_ADDRESS"
    end

    # <p>
    #       Information about hardware assets.
    #     </p>
    #
    # @!attribute asset_id
    #   <p>
    #         The ID of the asset.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute rack_id
    #   <p>
    #         The rack ID of the asset.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute asset_type
    #   <p>
    #         The type of the asset.
    #       </p>
    #
    #   Enum, one of: ["COMPUTE"]
    #
    #   @return [String]
    #
    # @!attribute compute_attributes
    #   <p>
    #         Information about compute hardware assets.
    #       </p>
    #
    #   @return [ComputeAttributes]
    #
    AssetInfo = ::Struct.new(
      :asset_id,
      :rack_id,
      :asset_type,
      :compute_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssetType
    #
    module AssetType
      # No documentation available.
      #
      COMPUTE = "COMPUTE"
    end

    # @!attribute order_id
    #   <p>
    #         The ID of the order to cancel.
    #       </p>
    #
    #   @return [String]
    #
    CancelOrderInput = ::Struct.new(
      :order_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CancelOrderOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about a catalog item. </p>
    #
    # @!attribute catalog_item_id
    #   <p>
    #         The ID of the catalog item.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute item_status
    #   <p>
    #         The status of a catalog item.
    #       </p>
    #
    #   Enum, one of: ["AVAILABLE", "DISCONTINUED"]
    #
    #   @return [String]
    #
    # @!attribute ec2_capacities
    #   <p>
    #         Information about the EC2 capacity of an item.
    #       </p>
    #
    #   @return [Array<EC2Capacity>]
    #
    # @!attribute power_kva
    #   <p>
    #         Information about the power draw of an item.
    #       </p>
    #
    #   @return [Float]
    #
    # @!attribute weight_lbs
    #   <p> The weight of the item in pounds. </p>
    #
    #   @return [Integer]
    #
    # @!attribute supported_uplink_gbps
    #   <p>
    #         The uplink speed this catalog item requires for the
    #         connection to the Region.
    #       </p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute supported_storage
    #   <p>
    #         The supported storage options for the catalog item.
    #       </p>
    #
    #   @return [Array<String>]
    #
    CatalogItem = ::Struct.new(
      :catalog_item_id,
      :item_status,
      :ec2_capacities,
      :power_kva,
      :weight_lbs,
      :supported_uplink_gbps,
      :supported_storage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CatalogItemClass
    #
    module CatalogItemClass
      # No documentation available.
      #
      RACK = "RACK"

      # No documentation available.
      #
      SERVER = "SERVER"
    end

    # Includes enum constants for CatalogItemStatus
    #
    module CatalogItemStatus
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      DISCONTINUED = "DISCONTINUED"
    end

    # <p>
    #       Information about compute hardware assets.
    #     </p>
    #
    # @!attribute host_id
    #   <p>
    #         The host ID of any Dedicated Hosts on the asset.
    #       </p>
    #
    #   @return [String]
    #
    ComputeAttributes = ::Struct.new(
      :host_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Updating or deleting this resource can cause an inconsistent state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource causing the conflict.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource causing the conflict.</p>
    #
    #   Enum, one of: ["OUTPOST", "ORDER"]
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

    # <p>
    #     Information about a connection.
    #     </p>
    #
    # @!attribute client_public_key
    #   <p>
    #         The public key of the client.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute server_public_key
    #   <p>
    #         The public key of the server.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute server_endpoint
    #   <p>
    #         The endpoint for the server.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute client_tunnel_address
    #   <p>
    #         The client tunnel address.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute server_tunnel_address
    #   <p>
    #         The server tunnel address.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute allowed_ips
    #   <p>
    #         The allowed IP addresses.
    #       </p>
    #
    #   @return [Array<String>]
    #
    ConnectionDetails = ::Struct.new(
      :client_public_key,
      :server_public_key,
      :server_endpoint,
      :client_tunnel_address,
      :server_tunnel_address,
      :allowed_ips,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute outpost_identifier
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the Outpost.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute line_items
    #   <p>The line items that make up the order.</p>
    #
    #   @return [Array<LineItemRequest>]
    #
    # @!attribute payment_option
    #   <p>The payment option for the order.</p>
    #
    #   Enum, one of: ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"]
    #
    #   @return [String]
    #
    # @!attribute payment_term
    #   <p>The payment terms for the order.</p>
    #
    #   Enum, one of: ["THREE_YEARS"]
    #
    #   @return [String]
    #
    CreateOrderInput = ::Struct.new(
      :outpost_identifier,
      :line_items,
      :payment_option,
      :payment_term,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute order
    #   <p>Information about this order.</p>
    #
    #   @return [Order]
    #
    CreateOrderOutput = ::Struct.new(
      :order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the Outpost.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the Outpost.</p>
    #
    #   @return [String]
    #
    # @!attribute site_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the site.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone_id
    #   <p>The ID of the Availability Zone.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to apply to the Outpost.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute supported_hardware_type
    #   <p>
    #         The type of hardware for this Outpost.
    #       </p>
    #
    #   Enum, one of: ["RACK", "SERVER"]
    #
    #   @return [String]
    #
    CreateOutpostInput = ::Struct.new(
      :name,
      :description,
      :site_id,
      :availability_zone,
      :availability_zone_id,
      :tags,
      :supported_hardware_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute outpost
    #   <p>Information about an Outpost.</p>
    #
    #   @return [Outpost]
    #
    CreateOutpostOutput = ::Struct.new(
      :outpost,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the site.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the site.</p>
    #
    #   @return [String]
    #
    # @!attribute notes
    #   <p>Additional information that you provide about site access requirements, electrician
    #         scheduling, personal protective equipment, or regulation of equipment materials that could
    #         affect your installation process. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>
    #         The tags to apply to a site.
    #       </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute operating_address
    #   <p>
    #         The location to install and power on the hardware. This address might be
    #         different from the shipping address.
    #       </p>
    #
    #   @return [Address]
    #
    # @!attribute shipping_address
    #   <p>
    #         The location to ship the hardware. This address might be different
    #         from the operating address.
    #       </p>
    #
    #   @return [Address]
    #
    # @!attribute rack_physical_properties
    #   <p> Information about the physical and logistical details for the rack at this site.
    #         For more information
    #         about hardware requirements for racks, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html checklist">Network
    #           readiness checklist</a> in the Amazon Web Services Outposts User Guide.
    #           </p>
    #
    #   @return [RackPhysicalProperties]
    #
    CreateSiteInput = ::Struct.new(
      :name,
      :description,
      :notes,
      :tags,
      :operating_address,
      :shipping_address,
      :rack_physical_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute site
    #   <p>Information about a site.</p>
    #
    #   @return [Site]
    #
    CreateSiteOutput = ::Struct.new(
      :site,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute outpost_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the Outpost.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    #   @return [String]
    #
    DeleteOutpostInput = ::Struct.new(
      :outpost_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteOutpostOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute site_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the site.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    #   @return [String]
    #
    DeleteSiteInput = ::Struct.new(
      :site_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSiteOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about EC2 capacity. </p>
    #
    # @!attribute family
    #   <p>
    #         The family of the EC2 capacity.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute max_size
    #   <p>
    #         The maximum size of the EC2 capacity.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute quantity
    #   <p>
    #         The quantity of the EC2 capacity.
    #       </p>
    #
    #   @return [String]
    #
    EC2Capacity = ::Struct.new(
      :family,
      :max_size,
      :quantity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FiberOpticCableType
    #
    module FiberOpticCableType
      # No documentation available.
      #
      SINGLE_MODE = "SINGLE_MODE"

      # No documentation available.
      #
      MULTI_MODE = "MULTI_MODE"
    end

    # @!attribute catalog_item_id
    #   <p>The ID of the catalog item.</p>
    #
    #   @return [String]
    #
    GetCatalogItemInput = ::Struct.new(
      :catalog_item_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_item
    #   <p>Information about this catalog item.</p>
    #
    #   @return [CatalogItem]
    #
    GetCatalogItemOutput = ::Struct.new(
      :catalog_item,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_id
    #   <p>
    #         The ID of the connection you request.
    #       </p>
    #
    #   @return [String]
    #
    GetConnectionInput = ::Struct.new(
      :connection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_id
    #   <p>
    #         The ID of the connection you receive.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute connection_details
    #   <p>
    #        Information about a connection.
    #       </p>
    #
    #   @return [ConnectionDetails]
    #
    GetConnectionOutput = ::Struct.new(
      :connection_id,
      :connection_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute order_id
    #   <p>The ID of the order.</p>
    #
    #   @return [String]
    #
    GetOrderInput = ::Struct.new(
      :order_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute order
    #   <p>Information about an order.</p>
    #
    #   @return [Order]
    #
    GetOrderOutput = ::Struct.new(
      :order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute outpost_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the Outpost.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    #   @return [String]
    #
    GetOutpostInput = ::Struct.new(
      :outpost_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute outpost_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the Outpost.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #
    #   @return [Integer]
    #
    GetOutpostInstanceTypesInput = ::Struct.new(
      :outpost_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_types
    #   <p>Information about the instance types.</p>
    #
    #   @return [Array<InstanceTypeItem>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute outpost_id
    #   <p>
    #         The ID of the Outpost.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute outpost_arn
    #   <p>The Amazon Resource Name (ARN) of the Outpost.</p>
    #
    #   @return [String]
    #
    GetOutpostInstanceTypesOutput = ::Struct.new(
      :instance_types,
      :next_token,
      :outpost_id,
      :outpost_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute outpost
    #   <p>Information about an Outpost.</p>
    #
    #   @return [Outpost]
    #
    GetOutpostOutput = ::Struct.new(
      :outpost,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute site_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the site.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute address_type
    #   <p> The type of the address you request. </p>
    #
    #   Enum, one of: ["SHIPPING_ADDRESS", "OPERATING_ADDRESS"]
    #
    #   @return [String]
    #
    GetSiteAddressInput = ::Struct.new(
      :site_id,
      :address_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute site_id
    #   <p>
    #         The ID of the site.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute address_type
    #   <p> The type of the address you receive. </p>
    #
    #   Enum, one of: ["SHIPPING_ADDRESS", "OPERATING_ADDRESS"]
    #
    #   @return [String]
    #
    # @!attribute address
    #   <p>
    #         Information about the address.
    #       </p>
    #
    #   @return [Address]
    #
    GetSiteAddressOutput = ::Struct.new(
      :site_id,
      :address_type,
      :address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute site_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the site.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    #   @return [String]
    #
    GetSiteInput = ::Struct.new(
      :site_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute site
    #   <p>Information about a site.</p>
    #
    #   @return [Site]
    #
    GetSiteOutput = ::Struct.new(
      :site,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an instance type.</p>
    #
    # @!attribute instance_type
    #   <p>The instance type.</p>
    #
    #   @return [String]
    #
    InstanceTypeItem = ::Struct.new(
      :instance_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An internal error has occurred.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a line item.</p>
    #
    # @!attribute catalog_item_id
    #   <p>
    #         The ID of the catalog item.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute line_item_id
    #   <p>The ID of the line item.</p>
    #
    #   @return [String]
    #
    # @!attribute quantity
    #   <p>The quantity of the line item.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the line item.</p>
    #
    #   Enum, one of: ["PREPARING", "BUILDING", "SHIPPED", "DELIVERED", "INSTALLING", "INSTALLED", "ERROR", "CANCELLED"]
    #
    #   @return [String]
    #
    LineItem = ::Struct.new(
      :catalog_item_id,
      :line_item_id,
      :quantity,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.quantity ||= 0
      end

    end

    # <p>Information about a line item request.</p>
    #
    # @!attribute catalog_item_id
    #   <p>The ID of the catalog item.</p>
    #
    #   @return [String]
    #
    # @!attribute quantity
    #   <p>The quantity of a line item request.</p>
    #
    #   @return [Integer]
    #
    LineItemRequest = ::Struct.new(
      :catalog_item_id,
      :quantity,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.quantity ||= 0
      end

    end

    # Includes enum constants for LineItemStatus
    #
    module LineItemStatus
      # No documentation available.
      #
      PREPARING = "PREPARING"

      # No documentation available.
      #
      BUILDING = "BUILDING"

      # No documentation available.
      #
      SHIPPED = "SHIPPED"

      # No documentation available.
      #
      DELIVERED = "DELIVERED"

      # No documentation available.
      #
      INSTALLING = "INSTALLING"

      # No documentation available.
      #
      INSTALLED = "INSTALLED"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"
    end

    # @!attribute outpost_identifier
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the Outpost.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute host_id_filter
    #   <p>
    #         A filter for the host ID of Dedicated Hosts on the Outpost.
    #       </p>
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListAssetsInput = ::Struct.new(
      :outpost_identifier,
      :host_id_filter,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assets
    #   <p>
    #         Information about hardware assets.
    #       </p>
    #
    #   @return [Array<AssetInfo>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListAssetsOutput = ::Struct.new(
      :assets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #
    #   @return [Integer]
    #
    # @!attribute item_class_filter
    #   <p>
    #         A filter for the class of items in the catalog.
    #       </p>
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supported_storage_filter
    #   <p>
    #         A filter for the storage options of items in the catalog.
    #       </p>
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute ec2_family_filter
    #   <p>
    #         A filter for EC2 family options for items in the catalog.
    #       </p>
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    #   @return [Array<String>]
    #
    ListCatalogItemsInput = ::Struct.new(
      :next_token,
      :max_results,
      :item_class_filter,
      :supported_storage_filter,
      :ec2_family_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_items
    #   <p>Information about the catalog items.</p>
    #
    #   @return [Array<CatalogItem>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListCatalogItemsOutput = ::Struct.new(
      :catalog_items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute outpost_identifier_filter
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the Outpost.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #
    #   @return [Integer]
    #
    ListOrdersInput = ::Struct.new(
      :outpost_identifier_filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute orders
    #   <p>
    #         Information about the orders.
    #       </p>
    #
    #   @return [Array<OrderSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListOrdersOutput = ::Struct.new(
      :orders,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #
    #   @return [Integer]
    #
    # @!attribute life_cycle_status_filter
    #   <p>
    #         A filter for the lifecycle status of the Outpost.
    #       </p>
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute availability_zone_filter
    #   <p> A filter for the Availability Zone (<code>us-east-1a</code>) of the Outpost. </p>
    #
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute availability_zone_id_filter
    #   <p>
    #         A filter for the AZ IDs (<code>use1-az1</code>) of the Outpost.
    #       </p>
    #
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    #   @return [Array<String>]
    #
    ListOutpostsInput = ::Struct.new(
      :next_token,
      :max_results,
      :life_cycle_status_filter,
      :availability_zone_filter,
      :availability_zone_id_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute outposts
    #   <p>Information about the Outposts.</p>
    #
    #   @return [Array<Outpost>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListOutpostsOutput = ::Struct.new(
      :outposts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum page size.</p>
    #
    #   @return [Integer]
    #
    # @!attribute operating_address_country_code_filter
    #   <p> A filter for the country code of the Outpost site. </p>
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operating_address_state_or_region_filter
    #   <p> A filter for the state/region of the Outpost site. </p>
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operating_address_city_filter
    #   <p>
    #         A filter for the city of the Outpost site.
    #       </p>
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    #   @return [Array<String>]
    #
    ListSitesInput = ::Struct.new(
      :next_token,
      :max_results,
      :operating_address_country_code_filter,
      :operating_address_state_or_region_filter,
      :operating_address_city_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sites
    #   <p>Information about the sites.</p>
    #
    #   @return [Array<Site>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListSitesOutput = ::Struct.new(
      :sites,
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

    # @!attribute tags
    #   <p>The resource tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MaximumSupportedWeightLbs
    #
    module MaximumSupportedWeightLbs
      # No documentation available.
      #
      NO_LIMIT = "NO_LIMIT"

      # No documentation available.
      #
      MAX_1400_LBS = "MAX_1400_LBS"

      # No documentation available.
      #
      MAX_1600_LBS = "MAX_1600_LBS"

      # No documentation available.
      #
      MAX_1800_LBS = "MAX_1800_LBS"

      # No documentation available.
      #
      MAX_2000_LBS = "MAX_2000_LBS"
    end

    # <p>The specified request is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OpticalStandard
    #
    module OpticalStandard
      # No documentation available.
      #
      OPTIC_10GBASE_SR = "OPTIC_10GBASE_SR"

      # No documentation available.
      #
      OPTIC_10GBASE_IR = "OPTIC_10GBASE_IR"

      # No documentation available.
      #
      OPTIC_10GBASE_LR = "OPTIC_10GBASE_LR"

      # No documentation available.
      #
      OPTIC_40GBASE_SR = "OPTIC_40GBASE_SR"

      # No documentation available.
      #
      OPTIC_40GBASE_ESR = "OPTIC_40GBASE_ESR"

      # No documentation available.
      #
      OPTIC_40GBASE_IR4_LR4L = "OPTIC_40GBASE_IR4_LR4L"

      # No documentation available.
      #
      OPTIC_40GBASE_LR4 = "OPTIC_40GBASE_LR4"

      # No documentation available.
      #
      OPTIC_100GBASE_SR4 = "OPTIC_100GBASE_SR4"

      # No documentation available.
      #
      OPTIC_100GBASE_CWDM4 = "OPTIC_100GBASE_CWDM4"

      # No documentation available.
      #
      OPTIC_100GBASE_LR4 = "OPTIC_100GBASE_LR4"

      # No documentation available.
      #
      OPTIC_100G_PSM4_MSA = "OPTIC_100G_PSM4_MSA"

      # No documentation available.
      #
      OPTIC_1000BASE_LX = "OPTIC_1000BASE_LX"

      # No documentation available.
      #
      OPTIC_1000BASE_SX = "OPTIC_1000BASE_SX"
    end

    # <p>Information about an order.</p>
    #
    # @!attribute outpost_id
    #   <p>
    #         The ID of the Outpost in the order.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute order_id
    #   <p>The ID of the order.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the order.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PREPARING</code> - Order is received and being prepared.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> - Order is either being built, shipped, or installed. To get more
    #             details, see the <code>LineItem</code> status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> - Order is complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELLED</code> - Order is cancelled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code> - Customer should contact support.</p>
    #               </li>
    #            </ul>
    #
    #            <note>
    #               <p>The following status are deprecated: <code>RECEIVED</code>, <code>PENDING</code>,
    #             <code>PROCESSING</code>, <code>INSTALLING</code>, and <code>FULFILLED</code>. </p>
    #            </note>
    #
    #   Enum, one of: ["RECEIVED", "PENDING", "PROCESSING", "INSTALLING", "FULFILLED", "CANCELLED", "PREPARING", "IN_PROGRESS", "COMPLETED", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute line_items
    #   <p>The line items for the order</p>
    #
    #   @return [Array<LineItem>]
    #
    # @!attribute payment_option
    #   <p>The payment option for the order.</p>
    #
    #   Enum, one of: ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"]
    #
    #   @return [String]
    #
    # @!attribute order_submission_date
    #   <p>The submission date for the order.</p>
    #
    #   @return [Time]
    #
    # @!attribute order_fulfilled_date
    #   <p>The fulfillment date of the order.</p>
    #
    #   @return [Time]
    #
    Order = ::Struct.new(
      :outpost_id,
      :order_id,
      :status,
      :line_items,
      :payment_option,
      :order_submission_date,
      :order_fulfilled_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OrderStatus
    #
    module OrderStatus
      # No documentation available.
      #
      RECEIVED = "RECEIVED"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      PROCESSING = "PROCESSING"

      # No documentation available.
      #
      INSTALLING = "INSTALLING"

      # No documentation available.
      #
      FULFILLED = "FULFILLED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      PREPARING = "PREPARING"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # <p>
    #       A summary of line items in your order.
    #     </p>
    #
    # @!attribute outpost_id
    #   <p>
    #         The ID of the Outpost.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute order_id
    #   <p>
    #         The ID of the order.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute order_type
    #   <p>
    #         The type of order.
    #       </p>
    #
    #   Enum, one of: ["OUTPOST", "REPLACEMENT"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the order.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PREPARING</code> - Order is received and is being prepared.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> - Order is either being built, shipped, or installed. For more
    #             information, see the <code>LineItem</code> status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> - Order is complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELLED</code> - Order is cancelled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code> - Customer should contact support.</p>
    #               </li>
    #            </ul>
    #
    #            <note>
    #               <p>The following statuses are deprecated: <code>RECEIVED</code>, <code>PENDING</code>,
    #             <code>PROCESSING</code>, <code>INSTALLING</code>, and <code>FULFILLED</code>. </p>
    #            </note>
    #
    #   Enum, one of: ["RECEIVED", "PENDING", "PROCESSING", "INSTALLING", "FULFILLED", "CANCELLED", "PREPARING", "IN_PROGRESS", "COMPLETED", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute line_item_counts_by_status
    #   <p>
    #         The status of all line items in the order.
    #       </p>
    #
    #   @return [Hash<String, Integer>]
    #
    # @!attribute order_submission_date
    #   <p>
    #         Submission date for the order.
    #       </p>
    #
    #   @return [Time]
    #
    # @!attribute order_fulfilled_date
    #   <p>
    #         Fulfilment date for the order.
    #       </p>
    #
    #   @return [Time]
    #
    OrderSummary = ::Struct.new(
      :outpost_id,
      :order_id,
      :order_type,
      :status,
      :line_item_counts_by_status,
      :order_submission_date,
      :order_fulfilled_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OrderType
    #
    module OrderType
      # No documentation available.
      #
      OUTPOST = "OUTPOST"

      # No documentation available.
      #
      REPLACEMENT = "REPLACEMENT"
    end

    # <p>Information about an Outpost.</p>
    #
    # @!attribute outpost_id
    #   <p>
    #         The ID of the Outpost.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID of the Outpost owner.</p>
    #
    #   @return [String]
    #
    # @!attribute outpost_arn
    #   <p>The Amazon Resource Name (ARN) of the Outpost.</p>
    #
    #   @return [String]
    #
    # @!attribute site_id
    #   <p>
    #         The ID of the site.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Outpost.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the Outpost.</p>
    #
    #   @return [String]
    #
    # @!attribute life_cycle_status
    #   <p>The life cycle status.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone_id
    #   <p>The ID of the Availability Zone.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The Outpost tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute site_arn
    #   <p>The Amazon Resource Name (ARN) of the site.</p>
    #
    #   @return [String]
    #
    # @!attribute supported_hardware_type
    #   <p>
    #         The hardware type.
    #       </p>
    #
    #   Enum, one of: ["RACK", "SERVER"]
    #
    #   @return [String]
    #
    Outpost = ::Struct.new(
      :outpost_id,
      :owner_id,
      :outpost_arn,
      :site_id,
      :name,
      :description,
      :life_cycle_status,
      :availability_zone,
      :availability_zone_id,
      :tags,
      :site_arn,
      :supported_hardware_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PaymentOption
    #
    module PaymentOption
      # No documentation available.
      #
      ALL_UPFRONT = "ALL_UPFRONT"

      # No documentation available.
      #
      NO_UPFRONT = "NO_UPFRONT"

      # No documentation available.
      #
      PARTIAL_UPFRONT = "PARTIAL_UPFRONT"
    end

    # Includes enum constants for PaymentTerm
    #
    module PaymentTerm
      # No documentation available.
      #
      THREE_YEARS = "THREE_YEARS"
    end

    # Includes enum constants for PowerConnector
    #
    module PowerConnector
      # No documentation available.
      #
      L6_30P = "L6_30P"

      # No documentation available.
      #
      IEC309 = "IEC309"

      # No documentation available.
      #
      AH530P7W = "AH530P7W"

      # No documentation available.
      #
      AH532P6W = "AH532P6W"
    end

    # Includes enum constants for PowerDrawKva
    #
    module PowerDrawKva
      # No documentation available.
      #
      POWER_5_KVA = "POWER_5_KVA"

      # No documentation available.
      #
      POWER_10_KVA = "POWER_10_KVA"

      # No documentation available.
      #
      POWER_15_KVA = "POWER_15_KVA"
    end

    # Includes enum constants for PowerFeedDrop
    #
    module PowerFeedDrop
      # No documentation available.
      #
      ABOVE_RACK = "ABOVE_RACK"

      # No documentation available.
      #
      BELOW_RACK = "BELOW_RACK"
    end

    # Includes enum constants for PowerPhase
    #
    module PowerPhase
      # No documentation available.
      #
      SINGLE_PHASE = "SINGLE_PHASE"

      # No documentation available.
      #
      THREE_PHASE = "THREE_PHASE"
    end

    # <p> Information about the physical and logistical details for racks at sites.
    #       For more information
    #       about hardware requirements for racks, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist">Network
    #         readiness checklist</a> in the Amazon Web Services Outposts User Guide.
    #         </p>
    #
    # @!attribute power_draw_kva
    #   <p>The power draw available at the hardware placement position for the rack. </p>
    #
    #   Enum, one of: ["POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA"]
    #
    #   @return [String]
    #
    # @!attribute power_phase
    #   <p>The power option that you can provide for hardware.</p>
    #
    #   Enum, one of: ["SINGLE_PHASE", "THREE_PHASE"]
    #
    #   @return [String]
    #
    # @!attribute power_connector
    #   <p>The power connector for the hardware. </p>
    #
    #   Enum, one of: ["L6_30P", "IEC309", "AH530P7W", "AH532P6W"]
    #
    #   @return [String]
    #
    # @!attribute power_feed_drop
    #   <p>The position of the power feed.</p>
    #
    #   Enum, one of: ["ABOVE_RACK", "BELOW_RACK"]
    #
    #   @return [String]
    #
    # @!attribute uplink_gbps
    #   <p>The uplink speed the rack supports for the connection to the Region. </p>
    #
    #   Enum, one of: ["UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"]
    #
    #   @return [String]
    #
    # @!attribute uplink_count
    #   <p>The number of uplinks each Outpost network device.</p>
    #
    #   Enum, one of: ["UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"]
    #
    #   @return [String]
    #
    # @!attribute fiber_optic_cable_type
    #   <p>The type of fiber used to attach the Outpost to the network. </p>
    #
    #   Enum, one of: ["SINGLE_MODE", "MULTI_MODE"]
    #
    #   @return [String]
    #
    # @!attribute optical_standard
    #   <p>The type of optical standard used to attach the Outpost to the network. This field is
    #         dependent on uplink speed, fiber type, and distance to the upstream device. For more information
    #         about networking requirements for racks, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html facility-networking">Network</a>
    #           in the Amazon Web Services Outposts User Guide.
    #           </p>
    #
    #   Enum, one of: ["OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"]
    #
    #   @return [String]
    #
    # @!attribute maximum_supported_weight_lbs
    #   <p>The maximum rack weight that this site can support. <code>NO_LIMIT</code> is over 2000 lbs
    #         (907 kg). </p>
    #
    #   Enum, one of: ["NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"]
    #
    #   @return [String]
    #
    RackPhysicalProperties = ::Struct.new(
      :power_draw_kva,
      :power_phase,
      :power_connector,
      :power_feed_drop,
      :uplink_gbps,
      :uplink_count,
      :fiber_optic_cable_type,
      :optical_standard,
      :maximum_supported_weight_lbs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      OUTPOST = "OUTPOST"

      # No documentation available.
      #
      ORDER = "ORDER"
    end

    # <p>You have exceeded a service quota.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a site.</p>
    #
    # @!attribute site_id
    #   <p>
    #         The ID of the site.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the site.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the site.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The site tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute site_arn
    #   <p>The Amazon Resource Name (ARN) of the site.</p>
    #
    #   @return [String]
    #
    # @!attribute notes
    #   <p>
    #         Notes about a site.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute operating_address_country_code
    #   <p>
    #         The ISO-3166 two-letter country code where the hardware is installed and powered on.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute operating_address_state_or_region
    #   <p> State or region where the hardware is installed and powered on. </p>
    #
    #   @return [String]
    #
    # @!attribute operating_address_city
    #   <p>
    #         City where the hardware is installed and powered on.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute rack_physical_properties
    #   <p>
    #         Information about the physical and logistical details for a rack at the site.
    #       </p>
    #
    #   @return [RackPhysicalProperties]
    #
    Site = ::Struct.new(
      :site_id,
      :account_id,
      :name,
      :description,
      :tags,
      :site_arn,
      :notes,
      :operating_address_country_code,
      :operating_address_state_or_region,
      :operating_address_city,
      :rack_physical_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_serial_number
    #   <p>
    #         The serial number of the dongle.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute asset_id
    #   <p>
    #         The ID of the Outpost server.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute client_public_key
    #   <p>
    #         The public key of the client.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute network_interface_device_index
    #   <p>
    #         The device index of the network interface on the Outpost server.
    #       </p>
    #
    #   @return [Integer]
    #
    StartConnectionInput = ::Struct.new(
      :device_serial_number,
      :asset_id,
      :client_public_key,
      :network_interface_device_index,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.network_interface_device_index ||= 0
      end

    end

    # @!attribute connection_id
    #   <p>
    #         The ID of the connection.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute underlay_ip_address
    #   <p>
    #         The underlay IP address.
    #       </p>
    #
    #   @return [String]
    #
    StartConnectionOutput = ::Struct.new(
      :connection_id,
      :underlay_ip_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SupportedHardwareType
    #
    module SupportedHardwareType
      # No documentation available.
      #
      RACK = "RACK"

      # No documentation available.
      #
      SERVER = "SERVER"
    end

    # Includes enum constants for SupportedStorageEnum
    #
    module SupportedStorageEnum
      # No documentation available.
      #
      EBS = "EBS"

      # No documentation available.
      #
      S3 = "S3"
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to add to the resource.</p>
    #
    #   @return [Hash<String, String>]
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
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

    # @!attribute outpost_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the Outpost.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Outpost.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the Outpost.</p>
    #
    #   @return [String]
    #
    # @!attribute supported_hardware_type
    #   <p>
    #         The type of hardware for this Outpost.
    #       </p>
    #
    #   Enum, one of: ["RACK", "SERVER"]
    #
    #   @return [String]
    #
    UpdateOutpostInput = ::Struct.new(
      :outpost_id,
      :name,
      :description,
      :supported_hardware_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute outpost
    #   <p>Information about an Outpost.</p>
    #
    #   @return [Outpost]
    #
    UpdateOutpostOutput = ::Struct.new(
      :outpost,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute site_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the site.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute address_type
    #   <p>
    #         The type of the address.
    #       </p>
    #
    #   Enum, one of: ["SHIPPING_ADDRESS", "OPERATING_ADDRESS"]
    #
    #   @return [String]
    #
    # @!attribute address
    #   <p>
    #         The address for the site.
    #       </p>
    #
    #   @return [Address]
    #
    UpdateSiteAddressInput = ::Struct.new(
      :site_id,
      :address_type,
      :address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute address_type
    #   <p>
    #         The type of the address.
    #       </p>
    #
    #   Enum, one of: ["SHIPPING_ADDRESS", "OPERATING_ADDRESS"]
    #
    #   @return [String]
    #
    # @!attribute address
    #   <p>
    #         Information about an address.
    #       </p>
    #
    #   @return [Address]
    #
    UpdateSiteAddressOutput = ::Struct.new(
      :address_type,
      :address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute site_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the site.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the site.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the site.</p>
    #
    #   @return [String]
    #
    # @!attribute notes
    #   <p>
    #         Notes about a site.
    #       </p>
    #
    #   @return [String]
    #
    UpdateSiteInput = ::Struct.new(
      :site_id,
      :name,
      :description,
      :notes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute site
    #   <p>Information about a site.</p>
    #
    #   @return [Site]
    #
    UpdateSiteOutput = ::Struct.new(
      :site,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute site_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the site.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute power_draw_kva
    #   <p>Specify in kVA the power draw available at the hardware placement position for the
    #         rack.</p>
    #
    #   Enum, one of: ["POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA"]
    #
    #   @return [String]
    #
    # @!attribute power_phase
    #   <p> Specify the power option that you can provide for hardware. </p>
    #            <ul>
    #               <li>
    #                  <p>Single-phase AC feed: 200 V to 277 V, 50 Hz or 60 Hz</p>
    #               </li>
    #               <li>
    #                  <p>Three-phase AC feed: 346 V to 480 V, 50 Hz or 60 Hz</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SINGLE_PHASE", "THREE_PHASE"]
    #
    #   @return [String]
    #
    # @!attribute power_connector
    #   <p> Specify the power connector that Amazon Web Services should plan to provide for connections to the
    #         hardware. Note the correlation between <code>PowerPhase</code> and
    #         <code>PowerConnector</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>Single-phase AC feed</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>L6-30P</b> – (common in US); 30A; single phase</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>IEC309 (blue)</b> – P+N+E, 6hr; 32 A; single
    #                 phase</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Three-phase AC feed</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>AH530P7W (red)</b> – 3P+N+E, 7hr; 30A; three
    #                 phase</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>AH532P6W (red)</b> – 3P+N+E, 6hr; 32A; three
    #                 phase</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["L6_30P", "IEC309", "AH530P7W", "AH532P6W"]
    #
    #   @return [String]
    #
    # @!attribute power_feed_drop
    #   <p> Specify whether the power feed comes above or below the rack. </p>
    #
    #   Enum, one of: ["ABOVE_RACK", "BELOW_RACK"]
    #
    #   @return [String]
    #
    # @!attribute uplink_gbps
    #   <p> Specify the uplink speed the rack should support for the connection to the Region.
    #       </p>
    #
    #   Enum, one of: ["UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"]
    #
    #   @return [String]
    #
    # @!attribute uplink_count
    #   <p>Racks come with two Outpost network devices. Depending on the supported uplink speed at
    #         the site, the Outpost network devices provide a variable number of uplinks. Specify the number
    #         of uplinks for each Outpost network device that you intend to use to connect the rack to your
    #         network. Note the correlation between <code>UplinkGbps</code> and <code>UplinkCount</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>1Gbps - Uplinks available: 1, 2, 4, 6, 8</p>
    #               </li>
    #               <li>
    #                  <p>10Gbps - Uplinks available: 1, 2, 4, 8, 12, 16</p>
    #               </li>
    #               <li>
    #                  <p>40 and 100 Gbps- Uplinks available: 1, 2, 4</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"]
    #
    #   @return [String]
    #
    # @!attribute fiber_optic_cable_type
    #   <p> Specify the type of fiber that you will use to attach the Outpost to your network.
    #       </p>
    #
    #   Enum, one of: ["SINGLE_MODE", "MULTI_MODE"]
    #
    #   @return [String]
    #
    # @!attribute optical_standard
    #   <p>Specify the type of optical standard that you will use to attach the Outpost to your
    #         network. This field is dependent on uplink speed, fiber type, and distance to the upstream
    #         device. For more information
    #         about networking requirements for racks, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html facility-networking">Network</a>
    #           in the Amazon Web Services Outposts User Guide.
    #           </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_10GBASE_SR</code>: 10GBASE-SR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_10GBASE_IR</code>: 10GBASE-IR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_10GBASE_LR</code>: 10GBASE-LR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_40GBASE_SR</code>: 40GBASE-SR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_40GBASE_ESR</code>: 40GBASE-ESR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_40GBASE_IR4_LR4L</code>: 40GBASE-IR (LR4L)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_40GBASE_LR4</code>: 40GBASE-LR4</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_100GBASE_SR4</code>: 100GBASE-SR4</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_100GBASE_CWDM4</code>: 100GBASE-CWDM4</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_100GBASE_LR4</code>: 100GBASE-LR4</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_100G_PSM4_MSA</code>: 100G PSM4 MSA</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_1000BASE_LX</code>: 1000Base-LX</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_1000BASE_SX</code> : 1000Base-SX</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"]
    #
    #   @return [String]
    #
    # @!attribute maximum_supported_weight_lbs
    #   <p> Specify the maximum rack weight that this site can support. <code>NO_LIMIT</code> is over
    #         2000lbs. </p>
    #
    #   Enum, one of: ["NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"]
    #
    #   @return [String]
    #
    UpdateSiteRackPhysicalPropertiesInput = ::Struct.new(
      :site_id,
      :power_draw_kva,
      :power_phase,
      :power_connector,
      :power_feed_drop,
      :uplink_gbps,
      :uplink_count,
      :fiber_optic_cable_type,
      :optical_standard,
      :maximum_supported_weight_lbs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute site
    #   <p>Information about a site.</p>
    #
    #   @return [Site]
    #
    UpdateSiteRackPhysicalPropertiesOutput = ::Struct.new(
      :site,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UplinkCount
    #
    module UplinkCount
      # No documentation available.
      #
      UPLINK_COUNT_1 = "UPLINK_COUNT_1"

      # No documentation available.
      #
      UPLINK_COUNT_2 = "UPLINK_COUNT_2"

      # No documentation available.
      #
      UPLINK_COUNT_3 = "UPLINK_COUNT_3"

      # No documentation available.
      #
      UPLINK_COUNT_4 = "UPLINK_COUNT_4"

      # No documentation available.
      #
      UPLINK_COUNT_5 = "UPLINK_COUNT_5"

      # No documentation available.
      #
      UPLINK_COUNT_6 = "UPLINK_COUNT_6"

      # No documentation available.
      #
      UPLINK_COUNT_7 = "UPLINK_COUNT_7"

      # No documentation available.
      #
      UPLINK_COUNT_8 = "UPLINK_COUNT_8"

      # No documentation available.
      #
      UPLINK_COUNT_12 = "UPLINK_COUNT_12"

      # No documentation available.
      #
      UPLINK_COUNT_16 = "UPLINK_COUNT_16"
    end

    # Includes enum constants for UplinkGbps
    #
    module UplinkGbps
      # No documentation available.
      #
      UPLINK_1G = "UPLINK_1G"

      # No documentation available.
      #
      UPLINK_10G = "UPLINK_10G"

      # No documentation available.
      #
      UPLINK_40G = "UPLINK_40G"

      # No documentation available.
      #
      UPLINK_100G = "UPLINK_100G"
    end

    # <p>A parameter is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
