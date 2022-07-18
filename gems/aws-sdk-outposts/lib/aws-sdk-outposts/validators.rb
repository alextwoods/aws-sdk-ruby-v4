# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Outposts
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Address
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Address, context: context)
        Hearth::Validator.validate!(input[:contact_name], ::String, context: "#{context}[:contact_name]")
        Hearth::Validator.validate!(input[:contact_phone_number], ::String, context: "#{context}[:contact_phone_number]")
        Hearth::Validator.validate!(input[:address_line1], ::String, context: "#{context}[:address_line1]")
        Hearth::Validator.validate!(input[:address_line2], ::String, context: "#{context}[:address_line2]")
        Hearth::Validator.validate!(input[:address_line3], ::String, context: "#{context}[:address_line3]")
        Hearth::Validator.validate!(input[:city], ::String, context: "#{context}[:city]")
        Hearth::Validator.validate!(input[:state_or_region], ::String, context: "#{context}[:state_or_region]")
        Hearth::Validator.validate!(input[:district_or_county], ::String, context: "#{context}[:district_or_county]")
        Hearth::Validator.validate!(input[:postal_code], ::String, context: "#{context}[:postal_code]")
        Hearth::Validator.validate!(input[:country_code], ::String, context: "#{context}[:country_code]")
        Hearth::Validator.validate!(input[:municipality], ::String, context: "#{context}[:municipality]")
      end
    end

    class AssetInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetInfo, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:rack_id], ::String, context: "#{context}[:rack_id]")
        Hearth::Validator.validate!(input[:asset_type], ::String, context: "#{context}[:asset_type]")
        ComputeAttributes.validate!(input[:compute_attributes], context: "#{context}[:compute_attributes]") unless input[:compute_attributes].nil?
      end
    end

    class AssetListDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AvailabilityZoneIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AvailabilityZoneList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CIDRList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CancelOrderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelOrderInput, context: context)
        Hearth::Validator.validate!(input[:order_id], ::String, context: "#{context}[:order_id]")
      end
    end

    class CancelOrderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelOrderOutput, context: context)
      end
    end

    class CatalogItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CatalogItem, context: context)
        Hearth::Validator.validate!(input[:catalog_item_id], ::String, context: "#{context}[:catalog_item_id]")
        Hearth::Validator.validate!(input[:item_status], ::String, context: "#{context}[:item_status]")
        EC2CapacityListDefinition.validate!(input[:ec2_capacities], context: "#{context}[:ec2_capacities]") unless input[:ec2_capacities].nil?
        Hearth::Validator.validate!(input[:power_kva], ::Float, context: "#{context}[:power_kva]")
        Hearth::Validator.validate!(input[:weight_lbs], ::Integer, context: "#{context}[:weight_lbs]")
        SupportedUplinkGbpsListDefinition.validate!(input[:supported_uplink_gbps], context: "#{context}[:supported_uplink_gbps]") unless input[:supported_uplink_gbps].nil?
        SupportedStorageList.validate!(input[:supported_storage], context: "#{context}[:supported_storage]") unless input[:supported_storage].nil?
      end
    end

    class CatalogItemClassList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CatalogItemListDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CatalogItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ComputeAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComputeAttributes, context: context)
        Hearth::Validator.validate!(input[:host_id], ::String, context: "#{context}[:host_id]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ConnectionDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionDetails, context: context)
        Hearth::Validator.validate!(input[:client_public_key], ::String, context: "#{context}[:client_public_key]")
        Hearth::Validator.validate!(input[:server_public_key], ::String, context: "#{context}[:server_public_key]")
        Hearth::Validator.validate!(input[:server_endpoint], ::String, context: "#{context}[:server_endpoint]")
        Hearth::Validator.validate!(input[:client_tunnel_address], ::String, context: "#{context}[:client_tunnel_address]")
        Hearth::Validator.validate!(input[:server_tunnel_address], ::String, context: "#{context}[:server_tunnel_address]")
        CIDRList.validate!(input[:allowed_ips], context: "#{context}[:allowed_ips]") unless input[:allowed_ips].nil?
      end
    end

    class CountryCodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CreateOrderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOrderInput, context: context)
        Hearth::Validator.validate!(input[:outpost_identifier], ::String, context: "#{context}[:outpost_identifier]")
        LineItemRequestListDefinition.validate!(input[:line_items], context: "#{context}[:line_items]") unless input[:line_items].nil?
        Hearth::Validator.validate!(input[:payment_option], ::String, context: "#{context}[:payment_option]")
        Hearth::Validator.validate!(input[:payment_term], ::String, context: "#{context}[:payment_term]")
      end
    end

    class CreateOrderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOrderOutput, context: context)
        Order.validate!(input[:order], context: "#{context}[:order]") unless input[:order].nil?
      end
    end

    class CreateOutpostInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOutpostInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:availability_zone_id], ::String, context: "#{context}[:availability_zone_id]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:supported_hardware_type], ::String, context: "#{context}[:supported_hardware_type]")
      end
    end

    class CreateOutpostOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOutpostOutput, context: context)
        Outpost.validate!(input[:outpost], context: "#{context}[:outpost]") unless input[:outpost].nil?
      end
    end

    class CreateSiteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSiteInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:notes], ::String, context: "#{context}[:notes]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Address.validate!(input[:operating_address], context: "#{context}[:operating_address]") unless input[:operating_address].nil?
        Address.validate!(input[:shipping_address], context: "#{context}[:shipping_address]") unless input[:shipping_address].nil?
        RackPhysicalProperties.validate!(input[:rack_physical_properties], context: "#{context}[:rack_physical_properties]") unless input[:rack_physical_properties].nil?
      end
    end

    class CreateSiteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSiteOutput, context: context)
        Site.validate!(input[:site], context: "#{context}[:site]") unless input[:site].nil?
      end
    end

    class DeleteOutpostInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOutpostInput, context: context)
        Hearth::Validator.validate!(input[:outpost_id], ::String, context: "#{context}[:outpost_id]")
      end
    end

    class DeleteOutpostOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOutpostOutput, context: context)
      end
    end

    class DeleteSiteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSiteInput, context: context)
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
      end
    end

    class DeleteSiteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSiteOutput, context: context)
      end
    end

    class EC2Capacity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2Capacity, context: context)
        Hearth::Validator.validate!(input[:family], ::String, context: "#{context}[:family]")
        Hearth::Validator.validate!(input[:max_size], ::String, context: "#{context}[:max_size]")
        Hearth::Validator.validate!(input[:quantity], ::String, context: "#{context}[:quantity]")
      end
    end

    class EC2CapacityListDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EC2Capacity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EC2FamilyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetCatalogItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCatalogItemInput, context: context)
        Hearth::Validator.validate!(input[:catalog_item_id], ::String, context: "#{context}[:catalog_item_id]")
      end
    end

    class GetCatalogItemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCatalogItemOutput, context: context)
        CatalogItem.validate!(input[:catalog_item], context: "#{context}[:catalog_item]") unless input[:catalog_item].nil?
      end
    end

    class GetConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectionInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
      end
    end

    class GetConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectionOutput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        ConnectionDetails.validate!(input[:connection_details], context: "#{context}[:connection_details]") unless input[:connection_details].nil?
      end
    end

    class GetOrderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOrderInput, context: context)
        Hearth::Validator.validate!(input[:order_id], ::String, context: "#{context}[:order_id]")
      end
    end

    class GetOrderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOrderOutput, context: context)
        Order.validate!(input[:order], context: "#{context}[:order]") unless input[:order].nil?
      end
    end

    class GetOutpostInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOutpostInput, context: context)
        Hearth::Validator.validate!(input[:outpost_id], ::String, context: "#{context}[:outpost_id]")
      end
    end

    class GetOutpostInstanceTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOutpostInstanceTypesInput, context: context)
        Hearth::Validator.validate!(input[:outpost_id], ::String, context: "#{context}[:outpost_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetOutpostInstanceTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOutpostInstanceTypesOutput, context: context)
        InstanceTypeListDefinition.validate!(input[:instance_types], context: "#{context}[:instance_types]") unless input[:instance_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:outpost_id], ::String, context: "#{context}[:outpost_id]")
        Hearth::Validator.validate!(input[:outpost_arn], ::String, context: "#{context}[:outpost_arn]")
      end
    end

    class GetOutpostOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOutpostOutput, context: context)
        Outpost.validate!(input[:outpost], context: "#{context}[:outpost]") unless input[:outpost].nil?
      end
    end

    class GetSiteAddressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSiteAddressInput, context: context)
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
        Hearth::Validator.validate!(input[:address_type], ::String, context: "#{context}[:address_type]")
      end
    end

    class GetSiteAddressOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSiteAddressOutput, context: context)
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
        Hearth::Validator.validate!(input[:address_type], ::String, context: "#{context}[:address_type]")
        Address.validate!(input[:address], context: "#{context}[:address]") unless input[:address].nil?
      end
    end

    class GetSiteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSiteInput, context: context)
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
      end
    end

    class GetSiteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSiteOutput, context: context)
        Site.validate!(input[:site], context: "#{context}[:site]") unless input[:site].nil?
      end
    end

    class HostIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceTypeItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceTypeItem, context: context)
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
      end
    end

    class InstanceTypeListDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceTypeItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LifeCycleStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LineItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LineItem, context: context)
        Hearth::Validator.validate!(input[:catalog_item_id], ::String, context: "#{context}[:catalog_item_id]")
        Hearth::Validator.validate!(input[:line_item_id], ::String, context: "#{context}[:line_item_id]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class LineItemListDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LineItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LineItemRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LineItemRequest, context: context)
        Hearth::Validator.validate!(input[:catalog_item_id], ::String, context: "#{context}[:catalog_item_id]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
      end
    end

    class LineItemRequestListDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LineItemRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LineItemStatusCounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

    class ListAssetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssetsInput, context: context)
        Hearth::Validator.validate!(input[:outpost_identifier], ::String, context: "#{context}[:outpost_identifier]")
        HostIdList.validate!(input[:host_id_filter], context: "#{context}[:host_id_filter]") unless input[:host_id_filter].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssetsOutput, context: context)
        AssetListDefinition.validate!(input[:assets], context: "#{context}[:assets]") unless input[:assets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCatalogItemsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCatalogItemsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        CatalogItemClassList.validate!(input[:item_class_filter], context: "#{context}[:item_class_filter]") unless input[:item_class_filter].nil?
        SupportedStorageList.validate!(input[:supported_storage_filter], context: "#{context}[:supported_storage_filter]") unless input[:supported_storage_filter].nil?
        EC2FamilyList.validate!(input[:ec2_family_filter], context: "#{context}[:ec2_family_filter]") unless input[:ec2_family_filter].nil?
      end
    end

    class ListCatalogItemsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCatalogItemsOutput, context: context)
        CatalogItemListDefinition.validate!(input[:catalog_items], context: "#{context}[:catalog_items]") unless input[:catalog_items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOrdersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrdersInput, context: context)
        Hearth::Validator.validate!(input[:outpost_identifier_filter], ::String, context: "#{context}[:outpost_identifier_filter]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListOrdersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrdersOutput, context: context)
        OrderSummaryListDefinition.validate!(input[:orders], context: "#{context}[:orders]") unless input[:orders].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOutpostsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOutpostsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        LifeCycleStatusList.validate!(input[:life_cycle_status_filter], context: "#{context}[:life_cycle_status_filter]") unless input[:life_cycle_status_filter].nil?
        AvailabilityZoneList.validate!(input[:availability_zone_filter], context: "#{context}[:availability_zone_filter]") unless input[:availability_zone_filter].nil?
        AvailabilityZoneIdList.validate!(input[:availability_zone_id_filter], context: "#{context}[:availability_zone_id_filter]") unless input[:availability_zone_id_filter].nil?
      end
    end

    class ListOutpostsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOutpostsOutput, context: context)
        OutpostListDefinition.validate!(input[:outposts], context: "#{context}[:outposts]") unless input[:outposts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSitesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSitesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        CountryCodeList.validate!(input[:operating_address_country_code_filter], context: "#{context}[:operating_address_country_code_filter]") unless input[:operating_address_country_code_filter].nil?
        StateOrRegionList.validate!(input[:operating_address_state_or_region_filter], context: "#{context}[:operating_address_state_or_region_filter]") unless input[:operating_address_state_or_region_filter].nil?
        CityList.validate!(input[:operating_address_city_filter], context: "#{context}[:operating_address_city_filter]") unless input[:operating_address_city_filter].nil?
      end
    end

    class ListSitesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSitesOutput, context: context)
        SiteListDefinition.validate!(input[:sites], context: "#{context}[:sites]") unless input[:sites].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Order
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Order, context: context)
        Hearth::Validator.validate!(input[:outpost_id], ::String, context: "#{context}[:outpost_id]")
        Hearth::Validator.validate!(input[:order_id], ::String, context: "#{context}[:order_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        LineItemListDefinition.validate!(input[:line_items], context: "#{context}[:line_items]") unless input[:line_items].nil?
        Hearth::Validator.validate!(input[:payment_option], ::String, context: "#{context}[:payment_option]")
        Hearth::Validator.validate!(input[:order_submission_date], ::Time, context: "#{context}[:order_submission_date]")
        Hearth::Validator.validate!(input[:order_fulfilled_date], ::Time, context: "#{context}[:order_fulfilled_date]")
      end
    end

    class OrderSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrderSummary, context: context)
        Hearth::Validator.validate!(input[:outpost_id], ::String, context: "#{context}[:outpost_id]")
        Hearth::Validator.validate!(input[:order_id], ::String, context: "#{context}[:order_id]")
        Hearth::Validator.validate!(input[:order_type], ::String, context: "#{context}[:order_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        LineItemStatusCounts.validate!(input[:line_item_counts_by_status], context: "#{context}[:line_item_counts_by_status]") unless input[:line_item_counts_by_status].nil?
        Hearth::Validator.validate!(input[:order_submission_date], ::Time, context: "#{context}[:order_submission_date]")
        Hearth::Validator.validate!(input[:order_fulfilled_date], ::Time, context: "#{context}[:order_fulfilled_date]")
      end
    end

    class OrderSummaryListDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OrderSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Outpost
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Outpost, context: context)
        Hearth::Validator.validate!(input[:outpost_id], ::String, context: "#{context}[:outpost_id]")
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:outpost_arn], ::String, context: "#{context}[:outpost_arn]")
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:life_cycle_status], ::String, context: "#{context}[:life_cycle_status]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:availability_zone_id], ::String, context: "#{context}[:availability_zone_id]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:site_arn], ::String, context: "#{context}[:site_arn]")
        Hearth::Validator.validate!(input[:supported_hardware_type], ::String, context: "#{context}[:supported_hardware_type]")
      end
    end

    class RackPhysicalProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RackPhysicalProperties, context: context)
        Hearth::Validator.validate!(input[:power_draw_kva], ::String, context: "#{context}[:power_draw_kva]")
        Hearth::Validator.validate!(input[:power_phase], ::String, context: "#{context}[:power_phase]")
        Hearth::Validator.validate!(input[:power_connector], ::String, context: "#{context}[:power_connector]")
        Hearth::Validator.validate!(input[:power_feed_drop], ::String, context: "#{context}[:power_feed_drop]")
        Hearth::Validator.validate!(input[:uplink_gbps], ::String, context: "#{context}[:uplink_gbps]")
        Hearth::Validator.validate!(input[:uplink_count], ::String, context: "#{context}[:uplink_count]")
        Hearth::Validator.validate!(input[:fiber_optic_cable_type], ::String, context: "#{context}[:fiber_optic_cable_type]")
        Hearth::Validator.validate!(input[:optical_standard], ::String, context: "#{context}[:optical_standard]")
        Hearth::Validator.validate!(input[:maximum_supported_weight_lbs], ::String, context: "#{context}[:maximum_supported_weight_lbs]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Site
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Site, context: context)
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:site_arn], ::String, context: "#{context}[:site_arn]")
        Hearth::Validator.validate!(input[:notes], ::String, context: "#{context}[:notes]")
        Hearth::Validator.validate!(input[:operating_address_country_code], ::String, context: "#{context}[:operating_address_country_code]")
        Hearth::Validator.validate!(input[:operating_address_state_or_region], ::String, context: "#{context}[:operating_address_state_or_region]")
        Hearth::Validator.validate!(input[:operating_address_city], ::String, context: "#{context}[:operating_address_city]")
        RackPhysicalProperties.validate!(input[:rack_physical_properties], context: "#{context}[:rack_physical_properties]") unless input[:rack_physical_properties].nil?
      end
    end

    class StartConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartConnectionInput, context: context)
        Hearth::Validator.validate!(input[:device_serial_number], ::String, context: "#{context}[:device_serial_number]")
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:client_public_key], ::String, context: "#{context}[:client_public_key]")
        Hearth::Validator.validate!(input[:network_interface_device_index], ::Integer, context: "#{context}[:network_interface_device_index]")
      end
    end

    class StartConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartConnectionOutput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:underlay_ip_address], ::String, context: "#{context}[:underlay_ip_address]")
      end
    end

    class StateOrRegionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SupportedStorageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SupportedUplinkGbpsListDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
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

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateOutpostInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOutpostInput, context: context)
        Hearth::Validator.validate!(input[:outpost_id], ::String, context: "#{context}[:outpost_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:supported_hardware_type], ::String, context: "#{context}[:supported_hardware_type]")
      end
    end

    class UpdateOutpostOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOutpostOutput, context: context)
        Outpost.validate!(input[:outpost], context: "#{context}[:outpost]") unless input[:outpost].nil?
      end
    end

    class UpdateSiteAddressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSiteAddressInput, context: context)
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
        Hearth::Validator.validate!(input[:address_type], ::String, context: "#{context}[:address_type]")
        Address.validate!(input[:address], context: "#{context}[:address]") unless input[:address].nil?
      end
    end

    class UpdateSiteAddressOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSiteAddressOutput, context: context)
        Hearth::Validator.validate!(input[:address_type], ::String, context: "#{context}[:address_type]")
        Address.validate!(input[:address], context: "#{context}[:address]") unless input[:address].nil?
      end
    end

    class UpdateSiteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSiteInput, context: context)
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:notes], ::String, context: "#{context}[:notes]")
      end
    end

    class UpdateSiteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSiteOutput, context: context)
        Site.validate!(input[:site], context: "#{context}[:site]") unless input[:site].nil?
      end
    end

    class UpdateSiteRackPhysicalPropertiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSiteRackPhysicalPropertiesInput, context: context)
        Hearth::Validator.validate!(input[:site_id], ::String, context: "#{context}[:site_id]")
        Hearth::Validator.validate!(input[:power_draw_kva], ::String, context: "#{context}[:power_draw_kva]")
        Hearth::Validator.validate!(input[:power_phase], ::String, context: "#{context}[:power_phase]")
        Hearth::Validator.validate!(input[:power_connector], ::String, context: "#{context}[:power_connector]")
        Hearth::Validator.validate!(input[:power_feed_drop], ::String, context: "#{context}[:power_feed_drop]")
        Hearth::Validator.validate!(input[:uplink_gbps], ::String, context: "#{context}[:uplink_gbps]")
        Hearth::Validator.validate!(input[:uplink_count], ::String, context: "#{context}[:uplink_count]")
        Hearth::Validator.validate!(input[:fiber_optic_cable_type], ::String, context: "#{context}[:fiber_optic_cable_type]")
        Hearth::Validator.validate!(input[:optical_standard], ::String, context: "#{context}[:optical_standard]")
        Hearth::Validator.validate!(input[:maximum_supported_weight_lbs], ::String, context: "#{context}[:maximum_supported_weight_lbs]")
      end
    end

    class UpdateSiteRackPhysicalPropertiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSiteRackPhysicalPropertiesOutput, context: context)
        Site.validate!(input[:site], context: "#{context}[:site]") unless input[:site].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OutpostListDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Outpost.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SiteListDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Site.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
