# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Outposts
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module Address
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Address, context: context)
        type = Types::Address.new
        type.contact_name = params[:contact_name]
        type.contact_phone_number = params[:contact_phone_number]
        type.address_line1 = params[:address_line1]
        type.address_line2 = params[:address_line2]
        type.address_line3 = params[:address_line3]
        type.city = params[:city]
        type.state_or_region = params[:state_or_region]
        type.district_or_county = params[:district_or_county]
        type.postal_code = params[:postal_code]
        type.country_code = params[:country_code]
        type.municipality = params[:municipality]
        type
      end
    end

    module AssetInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetInfo, context: context)
        type = Types::AssetInfo.new
        type.asset_id = params[:asset_id]
        type.rack_id = params[:rack_id]
        type.asset_type = params[:asset_type]
        type.compute_attributes = ComputeAttributes.build(params[:compute_attributes], context: "#{context}[:compute_attributes]") unless params[:compute_attributes].nil?
        type
      end
    end

    module AssetListDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AvailabilityZoneIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AvailabilityZoneList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CIDRList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CancelOrderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelOrderInput, context: context)
        type = Types::CancelOrderInput.new
        type.order_id = params[:order_id]
        type
      end
    end

    module CancelOrderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelOrderOutput, context: context)
        type = Types::CancelOrderOutput.new
        type
      end
    end

    module CatalogItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CatalogItem, context: context)
        type = Types::CatalogItem.new
        type.catalog_item_id = params[:catalog_item_id]
        type.item_status = params[:item_status]
        type.ec2_capacities = EC2CapacityListDefinition.build(params[:ec2_capacities], context: "#{context}[:ec2_capacities]") unless params[:ec2_capacities].nil?
        type.power_kva = params[:power_kva]
        type.weight_lbs = params[:weight_lbs]
        type.supported_uplink_gbps = SupportedUplinkGbpsListDefinition.build(params[:supported_uplink_gbps], context: "#{context}[:supported_uplink_gbps]") unless params[:supported_uplink_gbps].nil?
        type.supported_storage = SupportedStorageList.build(params[:supported_storage], context: "#{context}[:supported_storage]") unless params[:supported_storage].nil?
        type
      end
    end

    module CatalogItemClassList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CatalogItemListDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CatalogItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ComputeAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComputeAttributes, context: context)
        type = Types::ComputeAttributes.new
        type.host_id = params[:host_id]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ConnectionDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionDetails, context: context)
        type = Types::ConnectionDetails.new
        type.client_public_key = params[:client_public_key]
        type.server_public_key = params[:server_public_key]
        type.server_endpoint = params[:server_endpoint]
        type.client_tunnel_address = params[:client_tunnel_address]
        type.server_tunnel_address = params[:server_tunnel_address]
        type.allowed_ips = CIDRList.build(params[:allowed_ips], context: "#{context}[:allowed_ips]") unless params[:allowed_ips].nil?
        type
      end
    end

    module CountryCodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CreateOrderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOrderInput, context: context)
        type = Types::CreateOrderInput.new
        type.outpost_identifier = params[:outpost_identifier]
        type.line_items = LineItemRequestListDefinition.build(params[:line_items], context: "#{context}[:line_items]") unless params[:line_items].nil?
        type.payment_option = params[:payment_option]
        type.payment_term = params[:payment_term]
        type
      end
    end

    module CreateOrderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOrderOutput, context: context)
        type = Types::CreateOrderOutput.new
        type.order = Order.build(params[:order], context: "#{context}[:order]") unless params[:order].nil?
        type
      end
    end

    module CreateOutpostInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOutpostInput, context: context)
        type = Types::CreateOutpostInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.site_id = params[:site_id]
        type.availability_zone = params[:availability_zone]
        type.availability_zone_id = params[:availability_zone_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.supported_hardware_type = params[:supported_hardware_type]
        type
      end
    end

    module CreateOutpostOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOutpostOutput, context: context)
        type = Types::CreateOutpostOutput.new
        type.outpost = Outpost.build(params[:outpost], context: "#{context}[:outpost]") unless params[:outpost].nil?
        type
      end
    end

    module CreateSiteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSiteInput, context: context)
        type = Types::CreateSiteInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.notes = params[:notes]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.operating_address = Address.build(params[:operating_address], context: "#{context}[:operating_address]") unless params[:operating_address].nil?
        type.shipping_address = Address.build(params[:shipping_address], context: "#{context}[:shipping_address]") unless params[:shipping_address].nil?
        type.rack_physical_properties = RackPhysicalProperties.build(params[:rack_physical_properties], context: "#{context}[:rack_physical_properties]") unless params[:rack_physical_properties].nil?
        type
      end
    end

    module CreateSiteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSiteOutput, context: context)
        type = Types::CreateSiteOutput.new
        type.site = Site.build(params[:site], context: "#{context}[:site]") unless params[:site].nil?
        type
      end
    end

    module DeleteOutpostInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOutpostInput, context: context)
        type = Types::DeleteOutpostInput.new
        type.outpost_id = params[:outpost_id]
        type
      end
    end

    module DeleteOutpostOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOutpostOutput, context: context)
        type = Types::DeleteOutpostOutput.new
        type
      end
    end

    module DeleteSiteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSiteInput, context: context)
        type = Types::DeleteSiteInput.new
        type.site_id = params[:site_id]
        type
      end
    end

    module DeleteSiteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSiteOutput, context: context)
        type = Types::DeleteSiteOutput.new
        type
      end
    end

    module EC2Capacity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2Capacity, context: context)
        type = Types::EC2Capacity.new
        type.family = params[:family]
        type.max_size = params[:max_size]
        type.quantity = params[:quantity]
        type
      end
    end

    module EC2CapacityListDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EC2Capacity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EC2FamilyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetCatalogItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCatalogItemInput, context: context)
        type = Types::GetCatalogItemInput.new
        type.catalog_item_id = params[:catalog_item_id]
        type
      end
    end

    module GetCatalogItemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCatalogItemOutput, context: context)
        type = Types::GetCatalogItemOutput.new
        type.catalog_item = CatalogItem.build(params[:catalog_item], context: "#{context}[:catalog_item]") unless params[:catalog_item].nil?
        type
      end
    end

    module GetConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectionInput, context: context)
        type = Types::GetConnectionInput.new
        type.connection_id = params[:connection_id]
        type
      end
    end

    module GetConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectionOutput, context: context)
        type = Types::GetConnectionOutput.new
        type.connection_id = params[:connection_id]
        type.connection_details = ConnectionDetails.build(params[:connection_details], context: "#{context}[:connection_details]") unless params[:connection_details].nil?
        type
      end
    end

    module GetOrderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOrderInput, context: context)
        type = Types::GetOrderInput.new
        type.order_id = params[:order_id]
        type
      end
    end

    module GetOrderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOrderOutput, context: context)
        type = Types::GetOrderOutput.new
        type.order = Order.build(params[:order], context: "#{context}[:order]") unless params[:order].nil?
        type
      end
    end

    module GetOutpostInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOutpostInput, context: context)
        type = Types::GetOutpostInput.new
        type.outpost_id = params[:outpost_id]
        type
      end
    end

    module GetOutpostInstanceTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOutpostInstanceTypesInput, context: context)
        type = Types::GetOutpostInstanceTypesInput.new
        type.outpost_id = params[:outpost_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetOutpostInstanceTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOutpostInstanceTypesOutput, context: context)
        type = Types::GetOutpostInstanceTypesOutput.new
        type.instance_types = InstanceTypeListDefinition.build(params[:instance_types], context: "#{context}[:instance_types]") unless params[:instance_types].nil?
        type.next_token = params[:next_token]
        type.outpost_id = params[:outpost_id]
        type.outpost_arn = params[:outpost_arn]
        type
      end
    end

    module GetOutpostOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOutpostOutput, context: context)
        type = Types::GetOutpostOutput.new
        type.outpost = Outpost.build(params[:outpost], context: "#{context}[:outpost]") unless params[:outpost].nil?
        type
      end
    end

    module GetSiteAddressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSiteAddressInput, context: context)
        type = Types::GetSiteAddressInput.new
        type.site_id = params[:site_id]
        type.address_type = params[:address_type]
        type
      end
    end

    module GetSiteAddressOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSiteAddressOutput, context: context)
        type = Types::GetSiteAddressOutput.new
        type.site_id = params[:site_id]
        type.address_type = params[:address_type]
        type.address = Address.build(params[:address], context: "#{context}[:address]") unless params[:address].nil?
        type
      end
    end

    module GetSiteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSiteInput, context: context)
        type = Types::GetSiteInput.new
        type.site_id = params[:site_id]
        type
      end
    end

    module GetSiteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSiteOutput, context: context)
        type = Types::GetSiteOutput.new
        type.site = Site.build(params[:site], context: "#{context}[:site]") unless params[:site].nil?
        type
      end
    end

    module HostIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstanceTypeItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceTypeItem, context: context)
        type = Types::InstanceTypeItem.new
        type.instance_type = params[:instance_type]
        type
      end
    end

    module InstanceTypeListDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceTypeItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module LifeCycleStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LineItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LineItem, context: context)
        type = Types::LineItem.new
        type.catalog_item_id = params[:catalog_item_id]
        type.line_item_id = params[:line_item_id]
        type.quantity = params[:quantity]
        type.status = params[:status]
        type
      end
    end

    module LineItemListDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LineItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LineItemRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LineItemRequest, context: context)
        type = Types::LineItemRequest.new
        type.catalog_item_id = params[:catalog_item_id]
        type.quantity = params[:quantity]
        type
      end
    end

    module LineItemRequestListDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LineItemRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LineItemStatusCounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ListAssetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssetsInput, context: context)
        type = Types::ListAssetsInput.new
        type.outpost_identifier = params[:outpost_identifier]
        type.host_id_filter = HostIdList.build(params[:host_id_filter], context: "#{context}[:host_id_filter]") unless params[:host_id_filter].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssetsOutput, context: context)
        type = Types::ListAssetsOutput.new
        type.assets = AssetListDefinition.build(params[:assets], context: "#{context}[:assets]") unless params[:assets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCatalogItemsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCatalogItemsInput, context: context)
        type = Types::ListCatalogItemsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.item_class_filter = CatalogItemClassList.build(params[:item_class_filter], context: "#{context}[:item_class_filter]") unless params[:item_class_filter].nil?
        type.supported_storage_filter = SupportedStorageList.build(params[:supported_storage_filter], context: "#{context}[:supported_storage_filter]") unless params[:supported_storage_filter].nil?
        type.ec2_family_filter = EC2FamilyList.build(params[:ec2_family_filter], context: "#{context}[:ec2_family_filter]") unless params[:ec2_family_filter].nil?
        type
      end
    end

    module ListCatalogItemsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCatalogItemsOutput, context: context)
        type = Types::ListCatalogItemsOutput.new
        type.catalog_items = CatalogItemListDefinition.build(params[:catalog_items], context: "#{context}[:catalog_items]") unless params[:catalog_items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOrdersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrdersInput, context: context)
        type = Types::ListOrdersInput.new
        type.outpost_identifier_filter = params[:outpost_identifier_filter]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListOrdersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrdersOutput, context: context)
        type = Types::ListOrdersOutput.new
        type.orders = OrderSummaryListDefinition.build(params[:orders], context: "#{context}[:orders]") unless params[:orders].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOutpostsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOutpostsInput, context: context)
        type = Types::ListOutpostsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.life_cycle_status_filter = LifeCycleStatusList.build(params[:life_cycle_status_filter], context: "#{context}[:life_cycle_status_filter]") unless params[:life_cycle_status_filter].nil?
        type.availability_zone_filter = AvailabilityZoneList.build(params[:availability_zone_filter], context: "#{context}[:availability_zone_filter]") unless params[:availability_zone_filter].nil?
        type.availability_zone_id_filter = AvailabilityZoneIdList.build(params[:availability_zone_id_filter], context: "#{context}[:availability_zone_id_filter]") unless params[:availability_zone_id_filter].nil?
        type
      end
    end

    module ListOutpostsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOutpostsOutput, context: context)
        type = Types::ListOutpostsOutput.new
        type.outposts = OutpostListDefinition.build(params[:outposts], context: "#{context}[:outposts]") unless params[:outposts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSitesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSitesInput, context: context)
        type = Types::ListSitesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.operating_address_country_code_filter = CountryCodeList.build(params[:operating_address_country_code_filter], context: "#{context}[:operating_address_country_code_filter]") unless params[:operating_address_country_code_filter].nil?
        type.operating_address_state_or_region_filter = StateOrRegionList.build(params[:operating_address_state_or_region_filter], context: "#{context}[:operating_address_state_or_region_filter]") unless params[:operating_address_state_or_region_filter].nil?
        type.operating_address_city_filter = CityList.build(params[:operating_address_city_filter], context: "#{context}[:operating_address_city_filter]") unless params[:operating_address_city_filter].nil?
        type
      end
    end

    module ListSitesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSitesOutput, context: context)
        type = Types::ListSitesOutput.new
        type.sites = SiteListDefinition.build(params[:sites], context: "#{context}[:sites]") unless params[:sites].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Order
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Order, context: context)
        type = Types::Order.new
        type.outpost_id = params[:outpost_id]
        type.order_id = params[:order_id]
        type.status = params[:status]
        type.line_items = LineItemListDefinition.build(params[:line_items], context: "#{context}[:line_items]") unless params[:line_items].nil?
        type.payment_option = params[:payment_option]
        type.order_submission_date = params[:order_submission_date]
        type.order_fulfilled_date = params[:order_fulfilled_date]
        type
      end
    end

    module OrderSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrderSummary, context: context)
        type = Types::OrderSummary.new
        type.outpost_id = params[:outpost_id]
        type.order_id = params[:order_id]
        type.order_type = params[:order_type]
        type.status = params[:status]
        type.line_item_counts_by_status = LineItemStatusCounts.build(params[:line_item_counts_by_status], context: "#{context}[:line_item_counts_by_status]") unless params[:line_item_counts_by_status].nil?
        type.order_submission_date = params[:order_submission_date]
        type.order_fulfilled_date = params[:order_fulfilled_date]
        type
      end
    end

    module OrderSummaryListDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OrderSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Outpost
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Outpost, context: context)
        type = Types::Outpost.new
        type.outpost_id = params[:outpost_id]
        type.owner_id = params[:owner_id]
        type.outpost_arn = params[:outpost_arn]
        type.site_id = params[:site_id]
        type.name = params[:name]
        type.description = params[:description]
        type.life_cycle_status = params[:life_cycle_status]
        type.availability_zone = params[:availability_zone]
        type.availability_zone_id = params[:availability_zone_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.site_arn = params[:site_arn]
        type.supported_hardware_type = params[:supported_hardware_type]
        type
      end
    end

    module RackPhysicalProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RackPhysicalProperties, context: context)
        type = Types::RackPhysicalProperties.new
        type.power_draw_kva = params[:power_draw_kva]
        type.power_phase = params[:power_phase]
        type.power_connector = params[:power_connector]
        type.power_feed_drop = params[:power_feed_drop]
        type.uplink_gbps = params[:uplink_gbps]
        type.uplink_count = params[:uplink_count]
        type.fiber_optic_cable_type = params[:fiber_optic_cable_type]
        type.optical_standard = params[:optical_standard]
        type.maximum_supported_weight_lbs = params[:maximum_supported_weight_lbs]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module Site
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Site, context: context)
        type = Types::Site.new
        type.site_id = params[:site_id]
        type.account_id = params[:account_id]
        type.name = params[:name]
        type.description = params[:description]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.site_arn = params[:site_arn]
        type.notes = params[:notes]
        type.operating_address_country_code = params[:operating_address_country_code]
        type.operating_address_state_or_region = params[:operating_address_state_or_region]
        type.operating_address_city = params[:operating_address_city]
        type.rack_physical_properties = RackPhysicalProperties.build(params[:rack_physical_properties], context: "#{context}[:rack_physical_properties]") unless params[:rack_physical_properties].nil?
        type
      end
    end

    module StartConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartConnectionInput, context: context)
        type = Types::StartConnectionInput.new
        type.device_serial_number = params[:device_serial_number]
        type.asset_id = params[:asset_id]
        type.client_public_key = params[:client_public_key]
        type.network_interface_device_index = params[:network_interface_device_index]
        type
      end
    end

    module StartConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartConnectionOutput, context: context)
        type = Types::StartConnectionOutput.new
        type.connection_id = params[:connection_id]
        type.underlay_ip_address = params[:underlay_ip_address]
        type
      end
    end

    module StateOrRegionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SupportedStorageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SupportedUplinkGbpsListDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module UpdateOutpostInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOutpostInput, context: context)
        type = Types::UpdateOutpostInput.new
        type.outpost_id = params[:outpost_id]
        type.name = params[:name]
        type.description = params[:description]
        type.supported_hardware_type = params[:supported_hardware_type]
        type
      end
    end

    module UpdateOutpostOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOutpostOutput, context: context)
        type = Types::UpdateOutpostOutput.new
        type.outpost = Outpost.build(params[:outpost], context: "#{context}[:outpost]") unless params[:outpost].nil?
        type
      end
    end

    module UpdateSiteAddressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSiteAddressInput, context: context)
        type = Types::UpdateSiteAddressInput.new
        type.site_id = params[:site_id]
        type.address_type = params[:address_type]
        type.address = Address.build(params[:address], context: "#{context}[:address]") unless params[:address].nil?
        type
      end
    end

    module UpdateSiteAddressOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSiteAddressOutput, context: context)
        type = Types::UpdateSiteAddressOutput.new
        type.address_type = params[:address_type]
        type.address = Address.build(params[:address], context: "#{context}[:address]") unless params[:address].nil?
        type
      end
    end

    module UpdateSiteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSiteInput, context: context)
        type = Types::UpdateSiteInput.new
        type.site_id = params[:site_id]
        type.name = params[:name]
        type.description = params[:description]
        type.notes = params[:notes]
        type
      end
    end

    module UpdateSiteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSiteOutput, context: context)
        type = Types::UpdateSiteOutput.new
        type.site = Site.build(params[:site], context: "#{context}[:site]") unless params[:site].nil?
        type
      end
    end

    module UpdateSiteRackPhysicalPropertiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSiteRackPhysicalPropertiesInput, context: context)
        type = Types::UpdateSiteRackPhysicalPropertiesInput.new
        type.site_id = params[:site_id]
        type.power_draw_kva = params[:power_draw_kva]
        type.power_phase = params[:power_phase]
        type.power_connector = params[:power_connector]
        type.power_feed_drop = params[:power_feed_drop]
        type.uplink_gbps = params[:uplink_gbps]
        type.uplink_count = params[:uplink_count]
        type.fiber_optic_cable_type = params[:fiber_optic_cable_type]
        type.optical_standard = params[:optical_standard]
        type.maximum_supported_weight_lbs = params[:maximum_supported_weight_lbs]
        type
      end
    end

    module UpdateSiteRackPhysicalPropertiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSiteRackPhysicalPropertiesOutput, context: context)
        type = Types::UpdateSiteRackPhysicalPropertiesOutput.new
        type.site = Site.build(params[:site], context: "#{context}[:site]") unless params[:site].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

    module OutpostListDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Outpost.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SiteListDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Site.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
